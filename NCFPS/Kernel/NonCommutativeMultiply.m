(*
Copyright (c) 2017, J. William Helton and Mauricio C. de Oliveira
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name NCAlgebra nor the names of its contributors may be
      used to endorse or promote products derived from this software without
      specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*)

(* :Title: 	NCMultiplication // Mathematica 1.2 and 2.0 *)

(* :Author: 	Unknown. *)

(* :Context: 	NonCommutativeMultiply` *)

(* :Summary:
*)

(* :Alias:
*)

(* :Warnings: 
*)

(* :History:
   :8/30/99:    ForceCommutativeAllQ set true. (mark - per - dell)
   :9/21/92:    Added two lines of code which used to be in 
                NCUsage.m (mstankus)
*)
BeginPackage[ "NonCommutativeMultiply`" ]

Clear[CommutativeQ];

CommutativeQ::usage = 
     "CommutativeQ[x] is True if x is commutative (the default), \
     and False if x is non-commutative.  See SetCommutative, \
     SetNonCommutative and CommutativeAllQ.";

Clear[SetCommutative];

SetCommutative::usage = 
     "SetCommutative[a, b, c, ...] sets all the symbols a, b, c, ... \
      to be commutative. See SetNonCommutative and CommutativeQ.";

Clear[SetNonCommutative];

SetNonCommutative::usage = 
     "SetNonCommutative[a, b, c, ...] sets all the symbols a, b, c, ... \
      to be non-commutative. See SetCommutative and CommutativeQ.";

Clear[CommutativeAllQ];

CommutativeAllQ::usage = 
     "CommutativeAllQ[expr] is True if expr does not have any  \
      non-commuting sub-expressions, and False otherwise. \
      See CommutativeQ.";

Clear[ExpandNonCommutativeMultiply];

ExpandNonCommutativeMultiply::usage =
     "ExpandNonCommutativeMultiply[expr] expands out \
      NonCommutativeMultiply's in expr. It's aliases are \
      NCE,NCExpand and ExpandNC. For example, NCE[a**(b+c)] \
      will result in a**b + a**c.";

Clear[TimesToNCM];

TimesToNCM::usage =
     "TimesToNCM[expr] returns expr/.Times->NonCommutativeMultiply.";

Clear[CommuteEverything];

CommuteEverything::usage = 
     "Answers the question \"what does it sound like?\". \
      CommuteEverything[expr] returns \
      expr/.NonCommuativeMultiply->Times";

(* MAURICIO: JUNE 2009: THESE DECLARATIONS BECAUSE SOME RULES ARE DEFINED IN THIS FILE BEFORE LOAD NCTRANSPOSE, ETC *)

Clear[aj];
Clear[tp];
Clear[rt];
Clear[inv];

Clear[SNC];
Clear[NCExpand];

Clear[MatMult]
MatMult::usage="MatMult is the noncommutative generalization of the Dot product for matrices and vectors."

Begin[ "`Private`" ]

SNC=SetNonCommutative;
NCExpand=ExpandNonCommutativeMultiply;

Unprotect[NonCommutativeMultiply];
ClearAttributes[NonCommutativeMultiply, {OneIdentity, Flat}]
(* ---------------------------------------------------------------- *)
(*  Set all varibles to be commutative by default.                  *)
(* ---------------------------------------------------------------- *)

Global`$NC$ForceCommutativeAllQ=True; (* Mark Stankus's choice *)

CommutativeQ[x_Symbol] := True;
CommutativeQ[x_Integer] := True;
CommutativeQ[x_Real] := True;
CommutativeQ[x_String] := True;
If[Global`$NC$ForceCommutativeAllQ===True
  , CommutativeQ[x_] := CommutativeAllQ[x];
  , CommutativeQ[x_] := True;
];

CommutativeAllQ[x_Symbol] := CommutativeQ[x];
CommutativeAllQ[x_Integer] := True;
CommutativeAllQ[x_Real] := True;
CommutativeAllQ[x_String] := True;
CommutativeAllQ[c_?NumberQ] := True;
CommutativeAllQ[f_[x___]] := 
     If[CommutativeQ[f], Apply[And,Map[CommutativeAllQ,{x}]]
                       , False
     ];

(* ---------------------------------------------------------------- *)
(*  Set commutative and non-commutative commands.                   *)
(* ---------------------------------------------------------------- *)
SetNonCommutative[a__] :=
 (Function[x, 
       Which[NumberQ[x]
          ,Print["Warning: Tried to set the number ",Format[x,InputForm],
                  " to be noncommutative."];
          ,Head[x]===Plus
          ,Print["Warning: Tried to set the expression",Format[x,InputForm],
                  " to be noncommutative."];
          ,Head[x]===Times
          ,Print["Warning: Tried to set the expression",Format[x,InputForm],
                  " to be noncommutative."];
          ,Head[x]===NonCommutativeMultiply
          ,Print["Warning: Tried to set the expression",Format[x,InputForm],
                  " to be noncommutative."];
          ,Head[x]===List
          , Map[SetNonCommutative,x];
(*
            Print["Warning: Tried to set the list ",Format[x,InputForm],
                  " to be noncommutative."];
*)
          ,True
          ,CommutativeQ[x] = False; 
           CommutativeQ[x[___]] = False]] /@ {a});

SetCommutative[a__] :=
 (Function[x, CommutativeQ[x] = True; CommutativeQ[x[___]] = True] /@ {a});

SetNonCommutative[NonCommutativeMultiply];

(* ---------------------------------------------------------------- *)
(*  NonCommutative Muliplication book-keeping.                      *)
(* ---------------------------------------------------------------- *)
Literal[NonCommutativeMultiply[a___, NonCommutativeMultiply[b__], c___]] :=
 NonCommutativeMultiply[a, b, c];
Literal[NonCommutativeMultiply[a___, b_ c_, d___]]:=
 b NonCommutativeMultiply[a, c, d] /; CommutativeAllQ[b]
Literal[NonCommutativeMultiply[a___, b_, c___]] :=
 b NonCommutativeMultiply[a, c] /; CommutativeAllQ[b]
Literal[NonCommutativeMultiply[a_]] := a;
NonCommutativeMultiply[] := 1;

(* ---------------------------------------------------------------- *)
(*  We added Expand[] outside  the original Eran formula for ENCM,  *)
(*  this was neccessary to deal with commuting elements.	    *)
(* ---------------------------------------------------------------- *)

ExpandNonCommutativeMultiply[expr_] :=
 Expand[expr //. Literal[NonCommutativeMultiply[a___, b_Plus, c___]] :>
 (NonCommutativeMultiply[a, #, c]& /@ b)];

(* 05/14/2012 MAURICIO - BEGIN COMMENT *)
(* Szabolcs HorvÃ¡t <szhorvat@gmail.com> suggested a rule like:

   ExpandNonCommutativeMultiply[expr_] :=
     Expand[expr //. (HoldPattern[e_NonCommutativeMultiply] :> Distribute[e])];

   But it fails on exp2 = x ** inv[1 + x ** (1 + x)]

*)
(* 05/14/2012 MAURICIO - END *)

(* ---------------------------------------------------------------- *)
(*  This concludes material obtained from ERAN@SLACVM.BITNET at     *)
(*  Stanford Linear Accelerator                                     *)
(* ---------------------------------------------------------------- *)

TimesToNCM[expr_]:=expr/.Times->NonCommutativeMultiply;

(* MAURICIO: JUNE 2009: ADDED HOLDPATTERN TO PROTECT CE *)

CommuteEverything[v_] := v //. {
 NonCommutativeMultiply -> Times,
 HoldPattern[tp[x_]]->x, 
 HoldPattern[aj[x_]]->Conjugate[x], 
 HoldPattern[rt[x_]]->x^(1/2),
 HoldPattern[inv[x_]]->x^(-1)
};

MatMult[x_?MatrixQ, y_?MatrixQ] := Inner[NonCommutativeMultiply,x,y,Plus];
MatMult[x_List,y_List]:=Inner[NonCommutativeMultiply,x,y,Plus];
MatMult[x_,y_,z__]:=MatMult[MatMult[x,y],z];

End[]

EndPackage[]

