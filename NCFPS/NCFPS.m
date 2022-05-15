(* Wolfram Language Package *)

(* Created by the Wolfram Workbench Feb 9, 2020 *)

BeginPackage["NCFPS`", {"NonCommutativeMultiply`"}]
(* Exported symbols added here with SymbolName::usage *) 

Clear[A]
A::usage="\
A[i, w] is the coordinate function a^i_w."

Clear[Antipode]
Antipode::usage="\
Antipode[a, x] returns the antipode of the expression a containing coordinate functions over x."

Clear[CharacteristicSeries]
CharacteristicSeries::usage="\
CharacteristicSeries[{w_1, w_2, ...}] returns the series w_1 + w_2 + ... ."

Clear[CompositionInverse]
CompositionInverse::usage="\
CompositionInverse[c, {x_0, x_1, ...}, deg] returns the compositional inverse of c over the alphabet {x_0, x_1, ...}. The result is a polynomial up to degree deg."

Clear[CompositionProduct]
CompositionProduct::usage="\
CompositionProduct[c, {d_1, d_2, ...}, {x_0, x_1, ...}] calculates the composition product between series c and vector-valued series {d_1, d_2, ...} over the alphabet {x_0, x_1, ...}.
CompositionProduct[c, {x_0, x_1, ...}, power] calculates the composition product of c with itself power times."

Clear[CompressWord]
CompressWord::usage="\
CompressWord[c] returns c in a form where consecutive runs of letters in words are expressed as powers."

Clear[DeCompressWord]
DeCompressWord::usage="\
DeCompressWord[c] returns c in a form where words containing exponents are expanded fully."

(*TODO: update usage notes to be more readble without a Frontend.*)
Clear[GlobalGrowthConstants]
GlobalGrowthConstants::usage="\
GlobalGrowthConstants[c] estimates series coefficient growth constants K and M according to |(c, \[Eta])| <= KM^(|\[Eta]|).
GlobalGrowthConstants[c, {x_0, x_1, ...}] estimates K, M_0, M_1, ... according to |(c, \[Eta])| <= KSubsuperscript[M, 0, Subscript[\[LeftBracketingBar]\[Eta]\[RightBracketingBar], Subscript[x, 0]]]Subsuperscript[M, 1, Subscript[\[LeftBracketingBar]\[Eta]\[RightBracketingBar], Subscript[x, 1]]]\[CenterEllipsis]Subsuperscript[M, m, Subscript[\[LeftBracketingBar]\[Eta]\[RightBracketingBar], Subscript[x, m]]]."

Clear[FirstLetter]
FirstLetter::usage="\
FirstLetter[w] returns the first letter of the word w, extended linearly to series."

Clear[HelpNCFPS]
HelpNCFPS::usage="\
List all functions associated with the NCFPS package."

Clear[ImproperPart]
ImproperPart::usage="\
ImproperPart[c] returns the portion of c with words of length 0."

Clear[KleeneStar]
KleeneStar::usage="\
KleeneStar[{x_0, x_1, ...}, len] produces a list of all possible words of length len and shorter from the letters x_0, x_1, ... ."

Clear[LanguageFilter]
LanguageFilter::usage="\
LanguageFilter[c, L] gives the largest polynomial in c whose support is a subset of L.
LanguageFilter[c, Y, X] gives the largest polynomial in c with a support Y, where Y \[Subset] X."

Clear[LeftShift]
LeftShift::usage="\
LeftShift[v**w, v] returns w, extended linearly to series.
LeftShift[c, w, n] repeats the shift n times."

Clear[LocalGrowthConstants]
LocalGrowthConstants::usage="\
LocalGrowthConstants[c] estimates series coefficient growth constants K and M according to |(c, \[Eta])| <= KM^(|\[Eta]|)|\[Eta]|!.
LocalGrowthConstants[c, {x_0, x_1, ...}] estimates K, M_0, M_1, ... according to |(c, \[Eta])| <= KSubsuperscript[M, 0, Subscript[\[LeftBracketingBar]\[Eta]\[RightBracketingBar], Subscript[x, 0]]]Subsuperscript[M, 1, Subscript[\[LeftBracketingBar]\[Eta]\[RightBracketingBar], Subscript[x, 1]]]\[CenterEllipsis]Subsuperscript[M, m, Subscript[\[LeftBracketingBar]\[Eta]\[RightBracketingBar], Subscript[x, m]]]Subscript[\[LeftBracketingBar]\[Eta]\[RightBracketingBar], Subscript[x, 0]]!Subscript[\[LeftBracketingBar]\[Eta]\[RightBracketingBar], Subscript[x, 1]]!\[CenterEllipsis]Subscript[\[LeftBracketingBar]\[Eta]\[RightBracketingBar], Subscript[x, m]]!"

Clear[MapCoordinateFunctions]
MapCoordinateFunctions::usage="\
MapCoordinateFunctions[a, c] applies the coordinate function expression a to the series c."

Clear[ModifiedCompositionProduct]
ModifiedCompositionProduct::usage="\
ModifiedCompositionProduct[c, {d_1, d_2, ...}, {x_0, x_1, ...}] calculates the modified composition product between series c and vector-valued series {d_1, d_2, ...} over the alphabet {x_0, x_1, ...}.
ModifiedCompositionProduct[c, {x_0, x_1, ...}, power] calculates the modified composition product of c with itself power times."

Clear[NCDegree]
NCDegree::usage = "\
NCDegree[c] returns the degree of the series c.
NCDegree[c, x] returns the partial degree of the series c with respect to the letter x."

Clear[NCOrder]
NCOrder::usage = "\
NCOrder[c] returns the order of the series c.
NCOrder[c, x] returns the partial order of the series c with respect to the letter x."
 
Clear[NCPrefix]
NCPrefix::usage="\
NCPrefix[w_p, {w_1, w_2, ...}] returns {w_p**w_1, w_p**w_1, ...}."

Clear[ProductPower]
ProductPower::usage = "\
ProductPower[f, c, n] applies the product f to series c successively n times.
ProductPower[f, c, n, i] allows an additional argument i to be passed to the product."

Clear[ProperPart]
ProperPart::usage = "\
ProperPart[c] returns the portion of c with words of length > 0."

Clear[ProperQ]
ProperQ::usage="\
ProperQ[c] tests whether c is free of terms with words of length 0, returning True if so."

Clear[RealizationToSeries]
RealizationToSeries::usage="\
RealizationToSeries[g, h, x_0, X, deg] creates a series representation over X of the realization (g, h, x_0). The result is truncated to degree deg."

Clear[RelativeDegree]
RelativeDegree::usage="\
RelativeDegree[c, X, x_0] returns the relative degree of a series c over an alphabet X whose drift letter is x_0."

Clear[RhoRightAugment]
RhoRightAugment::usage="\
RhoRightAugment[a, i, x] performs a performs a modified right-hand augmentation by x_i on the coordinate functions in a."
 
Clear[RightAugment]
RightAugment::usage="\
RightAugment[a, i, x] performs a right-hand augmentation by x_i on the coordinate functions in a."

Clear[ScalarProduct]
ScalarProduct::usage="\
ScalarProduct[c, d] returns the scalar product of series c and series d."

Clear[ShuffleInverse]
ShuffleInverse::usage="\
ShuffleInverse[c, deg] calculates the shuffle inverse of series c, truncated to degree deg."

Clear[ShufflePower]
ShufflePower::usage="\
ShufflePower[c, power] calculates the shuffle product of series c with itself, repeated power times."

Clear[ShuffleProduct]
ShuffleProduct::usage="\
ShuffleProduct[c, d] returns the shuffle product of series c and series d."

Clear[Support]
Support::usage="\
Support[c] returns a list of all unique words in the series c."

Clear[TruncateSeries]
TruncateSeries::usage="\
TruncateSeries[c, deg] returns c as a polynomial of degree deg."

Clear[UltrametricDistance]
UltrametricDistance::usage = "\
UltrametericDistance[c, d, r] finds the ultrametric distance between the series c and d, with base r."

Clear[WordLength]
WordLength::usage="\
WordLength[x] returns the length of the word x.
WordLength[x, x_i] returns the number of occurrences of the letter x_i in x."


Begin["`Private`"]
(* Implementation of the package *)


(*Antipode*)
Antipode[A[s_, a_NonCommutativeMultiply], x_List] := (-1)^(WordLength[a] - 1) * 
	Fold[RhoRightAugment[#1, FirstPosition[x, #2][[1]] - 1, x]&, A[s, 1], a]
Antipode[A[s_, 1], x_List] := -A[s, 1]
Antipode[a_A, x_List] := RhoRightAugment[A[a[[1]], 1], FirstPosition[x, a[[2]]][[1]] - 1, x]

(*--------------------------------------------------------------*)

(* CharacteristicSeries *)
CharacteristicSeries[x_List] := Apply[Plus, x]

(*--------------------------------------------------------------*)

(*CompositionInverse*)
Clear[CompositionInverseAux]

CompositionInverse[ser_, alph_, deg_] :=
  CompositionInverseAux[NCExpand@ser, alph, deg]

CompositionInverseAux[ser_, alph_, deg_] :=
 Module[{lang = KleeneStar[alph, deg]},
  Apply[Plus,
   lang*Map[MapCoordinateFunctions[#, ser] &,
     Map[Antipode[#, alph] &,
      Map[A[1, #] &, lang]
      ]
     ]
   ]
  ]

(*--------------------------------------------------------------*)

(*CompositionProduct*) 
Clear[CompositionProductAux]

CompositionProduct[a_, b_List, x_List] := CompositionProductAux[a, b, x]
CompositionProduct[a_, x_List, n_Integer] := Nest[CompositionProductAux[#, {a}, x]&, a, n-1]
CompositionProduct[a_, x_List, 0] := 1

CompositionProductAux[a_Plus, b_List, x_List] := CompositionProductAux[#, b, x] & /@ a
CompositionProductAux[a_?CommutativeQ, b_List, x_List] := a
CompositionProductAux[(c_: 1) * HoldPattern[a_Symbol ** b1__], b_List, x_List] :=
	ExpandNonCommutativeMultiply[
    c *
        If[SameQ[a, First[x]],
          First[x] ** CompositionProductAux[NonCommutativeMultiply[b1], NonCommutativeMultiply[b], x],
          First[x] **
              ShuffleProduct[
                NonCommutativeMultiply[Part[b, Part[Flatten[Position[x, a]] - 1, 1]]],
                CompositionProductAux[NonCommutativeMultiply[b1], NonCommutativeMultiply[b], x]
              ]
        ]
  ]
CompositionProductAux[(c_: 1) * a_Symbol, b_List, x_List] :=
	ExpandNonCommutativeMultiply[
    c *
        If[SameQ[a, First[x]],
          First[x],
          First[x] ** Part[b, Part[Flatten[Position[x, a]] - 1, 1]]
        ]
  ]

(*--------------------------------------------------------------*)

(* CompressWord *)
Clear[CompressWordAux]

CompressWord[a_] := CompressWordAux[DeCompressWord[a]]

CompressWordAux[a_Plus] := Map[CompressWord, a]
CompressWordAux[c_ * a_NonCommutativeMultiply] := c * CompressWord[a]
CompressWordAux[a_NonCommutativeMultiply] :=
  Module[{sets},
    sets = Split[Apply[List, a]];
 	  Apply[NonCommutativeMultiply,
      Table[Power[sets[[i, 1]], Length[sets[[i]]]], {i, 1, Length[sets]}]
    ]
  ]
CompressWordAux[a_] := a

(*--------------------------------------------------------------*)

(* DeCompressWord *)
DeCompressWord[a_Plus] := Map[DeCompressWord, a]
DeCompressWord[(c_:1) * a_NonCommutativeMultiply] := c * Map[DeCompressWord, a]
DeCompressWord[(c_:1) * a_Power] := c * Apply[NonCommutativeMultiply, 
	Nest[Prepend[#, a[[1]]]&, {}, a[[2]]]]
DeCompressWord[a_] := a

(*--------------------------------------------------------------*)

(* FirstLetter *)
Clear[FirstLetterAux];

FirstLetter[a_] := FirstLetterAux[ExpandNonCommutativeMultiply[a]]

  FirstLetterAux[a_Plus] := Map[FirstLetterAux, a]
  FirstLetterAux[a_?CommutativeQ] := 0
  FirstLetterAux[(c_: 1) * HoldPattern[a1_ ** a__]] := c * a1
  FirstLetterAux[a1_] := a1

(*--------------------------------------------------------------*)

(* GlobalGrowthConstant *)
Clear[GlobalGrowthConstantsAux]
  	
GlobalGrowthConstants[c_] := GlobalGrowthConstantsAux[ExpandNonCommutativeMultiply@c]
GlobalGrowthConstants[c_, x_List] := 
Module[
  {mod = LinearModelFit[GlobalGrowthConstantsAux[ExpandNonCommutativeMultiply@c, x], x, x]},
  Print[mod["ParameterTable"]];
  E^mod["BestFitParameters"]
]

GlobalGrowthConstantsAux[a_Plus] :=
  GlobalGrowthConstantsAux[Map[GlobalGrowthConstantsAux, Apply[List, a]]]
GlobalGrowthConstantsAux[b_List] :=
 Module[
  {grp = Split[b, #1[[1]] == #2[[1]] &], a, nrm, nrml, x},
  a = Table[
    {grp[[j, 1, 1]], Max@Table[grp[[j, i, 2]], {i, Length@grp[[j]]}]},
    {j, Length@grp}
    ];
  nrm = Normal[LinearModelFit[a, x, x]];
  nrml = nrm + 
    Max@Table[a[[i, 2]] - (nrm /. x -> (a[[i, 1]])), {i, 1, Length@a}];
  Print[
   Show[
    ListPlot[a, PlotStyle -> Red, 
     AxesLabel -> {"|\[Eta]|", "ln[|(c,\[Eta])|]"}],
    Plot[nrml, {x, a[[1, 1]], a[[-1, 1]]}]
    ]
   ];
  {E^(nrml /. x -> 0), E^Coefficient[nrml, x]}
 ]
GlobalGrowthConstantsAux[c_?CommutativeQ] := {0, Log@Abs@c}
GlobalGrowthConstantsAux[(c_ : 1)*w_] := {WordLength[w], Log@Abs@c}

(*Fine growth case*)
GlobalGrowthConstantsAux[s_Plus, x_List] := Map[GlobalGrowthConstantsAux[#, x] &, Apply[List, s]]
GlobalGrowthConstantsAux[w_?CommutativeQ, x_List] := 
 Flatten[{ConstantArray[0, Length@x], Abs@Log@Abs@w}]
GlobalGrowthConstantsAux[(c_ : 1)*w_, x_List] := 
 Flatten[{Table[WordLength[w, x[[n]]], {n, 1, Length@x}], 
   Abs@Log@Abs@c}]
 
(*--------------------------------------------------------------*)

(*HelpNCFPS*)
HelpNCFPS := ?NCFPS`*

(*--------------------------------------------------------------*)

(*ImproperPart*)
Clear[ImproperAux]

ImproperPart[x_] := ImproperAux[ExpandNonCommutativeMultiply[x]]

  ImproperAux[sers_Plus] := Map[ImproperPart, sers]
  ImproperAux[x_?CommutativeQ] := x
  ImproperAux[x_] := 0

(*--------------------------------------------------------------*)

(* Kleene Star *)
Clear[KleeneStarAux]

KleeneStar[y_List, n_Integer] := Flatten[NestList[Function[w, KleeneStarAux[w, y]], {1}, n]]

  KleeneStarAux[ff_, x_List] := Flatten[Map[Function[w, NCPrefix[w, x]], ff]]

(*--------------------------------------------------------------*)

(*LanguageFilter*)
Clear[LanguageFilterAux]

LanguageFilter[c_, x__List] := LanguageFilterAux[ExpandNonCommutativeMultiply[c], x]

  LanguageFilterAux[c_Plus, l_List] := Map[LanguageFilterAux[#, l]&, c]
  LanguageFilterAux[(a_:1) * w_NonCommutativeMultiply, l_List] /; MemberQ[l, w] := a * w
  (* could put the commutativeQ before the above, then have below be fall thru *)
  LanguageFilterAux[(a_:1) * x_?(!CommutativeQ[#]&), l_List] /; MemberQ[l, x] := a * x
  LanguageFilterAux[b_?CommutativeQ, l_List] /; MemberQ[l, 1]:=b
  LanguageFilterAux[_, _List] := 0

  LanguageFilterAux[c_Plus, l_List, x_List] := Map[LanguageFilterAux[#, l, x]&, c]
  LanguageFilterAux[w_, l_List, x_List] /; And @@ (FreeQ[w, #]& /@ Complement[x, l]) := w
  LanguageFilterAux[_, _List, _List] := 0

(*--------------------------------------------------------------*)

(* Left Shift *)
Clear[LeftShiftAux]

LeftShift[polynomial_, monomial_] :=
  LeftShiftAux[ExpandNonCommutativeMultiply[polynomial], monomial]
LeftShift[polynomial_, monomial_, n_Integer?NonNegative] := 
  LeftShiftAux[
    ExpandNonCommutativeMultiply[polynomial],
    Nest[NonCommutativeMultiply[#, monomial]&, 1, n]
  ]

  LeftShiftAux[polynomial_Plus, monomial_] := Map[LeftShiftAux[#, monomial]&, polynomial]
  LeftShiftAux[(a_:1) * monomial_, monomial_] := a
  LeftShiftAux[(a_:1) * HoldPattern[monomial_**exp__], monomial_] := a * NonCommutativeMultiply[exp]
  LeftShiftAux[exp_, monomial_NonCommutativeMultiply] := 
  	LeftShiftAux[LeftShiftAux[exp, First[monomial]], Delete[monomial, 1]]
  LeftShiftAux[exp_, 1]:= exp
  LeftShiftAux[exp_, monomial_] := 0

(*--------------------------------------------------------------*)

(* LocalGrowthConstant *)
Clear[LocalGrowthConstantsAux]

LocalGrowthConstants[c_] := LocalGrowthConstantsAux[ExpandNonCommutativeMultiply@c]
LocalGrowthConstants[c_, x_List] := 
  Module[
  	{mod = LinearModelFit[LocalGrowthConstantsAux[ExpandNonCommutativeMultiply@c, x], x, x]},
	Print[mod["ParameterTable"]];
	E^mod["BestFitParameters"]
  ]

  LocalGrowthConstantsAux[a_Plus] :=
    LocalGrowthConstantsAux[Map[LocalGrowthConstantsAux, Apply[List, a]]]
  LocalGrowthConstantsAux[b_List] := 
    Module[
      {grp = Split[b, #1[[1]] == #2[[1]] &], a, nrm, nrml, x},
      a = Table[
      	{grp[[j, 1, 1]], Max@Table[grp[[j, i, 2]], {i, Length@grp[[j]]}]}, 
      	{j, Length@grp}
      ];
      nrm = Normal[LinearModelFit[a, x, x]];
	  nrml = nrm 
	    + Max@Table[a[[i, 2]] - (nrm /. x -> (a[[i, 1]])), {i, 1, Length@a}]; 
	  Print[
	  	Show[
	  	  ListPlot[a, PlotStyle -> Red, 
	  	  	AxesLabel -> {"|\[Eta]|", "ln[|(c,\[Eta])|/|\[Eta]|!]"}], 
		  Plot[nrml, {x, a[[1, 1]], a[[-1, 1]]}]
		]
	  ];
      {E^(nrml /. x -> 0), E^Coefficient[nrml, x]}
    ]
  LocalGrowthConstantsAux[c_?CommutativeQ] := List[0, Log@Abs@c]
  LocalGrowthConstantsAux[(c_:1) * w_] := List[WordLength[w], Log[Abs@c / (WordLength[w]!)]]

  (* Fine Growth Case *)
  LocalGrowthConstantsAux[s_Plus, x_List] := Map[LocalGrowthConstantsAux[#, x]&, Apply[List, s]]
  LocalGrowthConstantsAux[w_?CommutativeQ, x_List] :=
    Flatten[{ConstantArray[0, Length@x], Abs@Log@Abs@w}]
  LocalGrowthConstantsAux[(c_:1) * w_, x_List] :=
    Flatten[{Table[WordLength[w, x[[n]]], {n, 1, Length@x}],
  	  Abs[
        Log@Abs@c /
          Apply[Times,
            Table[WordLength[w, x[[n]]]!, {n, Length@x}]
          ]
      ]
    }]

(*--------------------------------------------------------------*)

(*MapCoordinateFunctions*)
(*Clear[MCF10](*For faster execution using data types introduced in V10*)
Clear[MCFOld](*For older versions*)
MCF10[a_,c_]:=a/.<|A[1]->ImproperPart[c]|>~Join~Association[Map[A[#]->Coefficient[c,#]&,DeleteCases[Support[c],_?CommutativeQ]]]/.{_A->0}
MCFOld[a_,c_]:=a/.({A[1]->ImproperPart[c]}~Join~Map[A[#]->Coefficient[c,#]&,DeleteCases[Support[c],_?CommutativeQ]])/.{_A->0}

MapCoordinateFunctions[a_,c_]:=If[$VersionNumber<10,MCFOld[a,ExpandNonCommutativeMultiply[c]],MCF10[a,ExpandNonCommutativeMultiply[c]]]*)
MapCoordinateFunctions[a_, c_List] :=
  a /.
    Join[
      <|
        MapIndexed[
          A[#2[[1]], 1] -> ImproperPart[#]&,
          c
        ]
      |>,
      <|
        MapIndexed[
          Map[
            Function[u, A[#2[[1]], u] -> Coefficient[#, u]],
            DeleteCases[Support[#], _?CommutativeQ]
          ]&,
          c
        ]
      |>
    ] /. {_A -> 0}
MapCoordinateFunctions[a_, c_] :=
  a /.
    Join[
      <|A[1, 1] -> ImproperPart[c]|>,
      <|
        Map[
          A[1, #] -> Coefficient[c, #]&,
          DeleteCases[Support[c], _?CommutativeQ]]
      |>
    ] /. {_A -> 0}

(*--------------------------------------------------------------*)

(*ModifiedCompositionProduct*)
Clear[ModifiedCompositionProductAux]

ModifiedCompositionProduct[a_, b_List, x_List] := ModifiedCompositionProductAux[a, b, x]
ModifiedCompositionProduct[a_, x_List, n_Integer] := Nest[ModifiedCompositionProduct[#, {a}, x]&, a, n - 1]
ModifiedCompositionProduct[a_, x_List, 0] := 1

  ModifiedCompositionProductAux[a_Plus, b_List, x_List] := ModifiedCompositionProductAux[#, b, x] & /@ a 
  ModifiedCompositionProductAux[a_?CommutativeQ, b_List, x_List] := a 
  ModifiedCompositionProductAux[(c_:1) * HoldPattern[a_Symbol ** b1__], b_List, x_List] := 
   	ExpandNonCommutativeMultiply[
      If[SameQ[a, First@x],
        c * First[x] ** ModifiedCompositionProductAux[NonCommutativeMultiply[b1], NonCommutativeMultiply[b], x],
        c * a ** ModifiedCompositionProductAux[NonCommutativeMultiply[b1],NonCommutativeMultiply[b], x] + c * First[x] **
          ShuffleProduct[
            NonCommutativeMultiply[
              Part[b,
                Part[Flatten[Position[x, a]] - 1,
                  1
                ]
              ]
            ],
            ModifiedCompositionProductAux[NonCommutativeMultiply[b1], NonCommutativeMultiply[b], x]
          ]
      ]
    ]
  ModifiedCompositionProductAux[(c_:1) * a_Symbol, b_List, x_List] := 
   	ExpandNonCommutativeMultiply[
      c *
        If[SameQ[a, First@x],
          First@x,
          a + First[x] **
            Part[b,
              Part[Flatten[Position[x, a]] - 1,
                1
              ]
            ]
        ]
    ]

(*--------------------------------------------------------------*)

(*NCDegree*)
Clear[NCDegreeAux]

(*Full Degree*)
NCDegree[a_] := NCDegreeAux[ExpandNonCommutativeMultiply[a]]

  NCDegreeAux[a_Plus] := 
    Max[Map[NCDegreeAux, Apply[List, a]]]
  NCDegreeAux[0] := -Infinity
  NCDegreeAux[a_?CommutativeQ] := 0
  NCDegreeAux[(c_: 1) * HoldPattern[a_NonCommutativeMultiply]] := Length[a]
  NCDegreeAux[a_] := 1
  
(*Partial Degree*)
NCDegree[a_, x_Symbol] := NCDegreeAux[ExpandNonCommutativeMultiply[a], x]
    
  NCDegreeAux[a_Plus, x_Symbol] := 
    Max[Map[NCDegreeAux[#, x] &, Apply[List, a]]]
  NCDegreeAux[0, x_Symbol] := -Infinity
  NCDegreeAux[a_?CommutativeQ, x_Symbol] := 0
  NCDegreeAux[(c_: 1) * HoldPattern[a_NonCommutativeMultiply], x_Symbol] := 
  	Count[a, x]
  NCDegreeAux[(c_:1) * x_, x_Symbol] := 1
  NCDegreeAux[a_, x_Symbol] := 0

(*--------------------------------------------------------------*)

(*NCOrder*)
Clear[NCOrderAux]

(*Full Order*)
NCOrder[a_] := NCOrderAux[ExpandNonCommutativeMultiply[a]]

  NCOrderAux[a_Plus] := Min[Map[NCOrder, Apply[List, a]]]
  NCOrderAux[(c_:1) * a_NonCommutativeMultiply] := Length[a]
  NCOrderAux[(c_:1) * a_Symbol] := 1
  NCOrderAux[0] := Infinity
  NCOrderAux[a_] := 0

(*Partial Order*)
NCOrder[a_, x_Symbol] := NCOrderAux[ExpandNonCommutativeMultiply[a], x]

  NCOrderAux[a_Plus, x_Symbol] := Min[Map[NCOrder[#, x]&, Apply[List, a]]]
  NCOrderAux[(c_:1) * a_NonCommutativeMultiply, x_Symbol] := Count[a, x]
  NCOrderAux[(c_:1) * a_Symbol, x_Symbol] := If[SameQ[a, x], 1, 0]
  NCOrderAux[0, x_Symbol] := Infinity
  NCOrderAux[a_, x_Symbol] := 0

(*--------------------------------------------------------------*)

(* NCPrefix *)
NCPrefix[w_, x_List] := Flatten[Inner[NonCommutativeMultiply, {{w}}, {{x}}, Plus]]

(*--------------------------------------------------------------*)

(* pPrime *)
(* Used for ShuffleInverse *)
pPrime[p_] := ExpandNonCommutativeMultiply[1 - (1 / (p - ProperPart[p])) * p]

(*--------------------------------------------------------------*)

(* ProductPower *)
ProductPower[f_, s_, 0] := 1
ProductPower[f_, s_, 0, a_] := 1
ProductPower[f_, s_, n_Integer] := Nest[f[#, s]&, s, n-1]
ProductPower[f_, s_, n_Integer, a_] := Nest[f[#, {s}, a]&, s, n-1]

(*--------------------------------------------------------------*)

(* ProperPart *)
Clear[ProperPartAux]

ProperPart[a_] := ProperPartAux[ExpandNonCommutativeMultiply[a]]

  ProperPartAux[a_Plus] := Map[ProperPartAux, a]
  ProperPartAux[a_?CommutativeQ] := 0
  ProperPartAux[a_] := a

(*--------------------------------------------------------------*)

(* ProperQ *)
Clear[ProperQAux]

ProperQ[a_] := ProperQAux[ExpandNonCommutativeMultiply[a]]

  ProperQAux[a_Plus] := Apply[And, Map[ProperQAux, Apply[List, a]]]
  ProperQAux[0] := True
  ProperQAux[a_?CommutativeQ] := False
  ProperQAux[a_] := True

  
(*--------------------------------------------------------------*)

(*RealizationToSeries*)
RealizationToSeries[l1_List, f_, ic_List, x_List, d_Integer?Positive] := 
	Part[Inner[NonCommutativeMultiply, {Flatten[NestList[Table[D[#, 
	{Table[Symbol[StringInsert["z", ToString[n], -1]], {n, Length[ic]}]}].
	Apply[l1[[j]], Table[Symbol[StringInsert["z", ToString[n], -1]], {n, Length[ic]}]], 
	{j, Length[l1]}]&, Apply[f, Table[Symbol[StringInsert["z", ToString[n], -1]],
	{n, Length[ic]}]], d] /. Table[Symbol[StringInsert["z", ToString[n], -1]] -> ic[[n]],
	{n, Length[ic]}]]}, Flatten[NestList[Transpose[{Table[Inner[NonCommutativeMultiply, 
	{{#}}, {{x[[k]]}}, Plus], {k, Length[x]}]}]&, 1, d]], Plus], 1]

(*--------------------------------------------------------------*)

(* RelativeDegree *)
RelativeDegree[poly_, x_List, a_Symbol] := Module[{supp = Support[poly], suppF, relDeg},
	suppF = Select[supp, # =!= a && LeftShift[#, a, Length[#]] =!= 1&];
	relDeg = Min @ Table[Catch[If[Length[suppF[[i]]] > 0, For[j = 1, j <= Length[suppF[[i]]],
		j++, If[suppF[[i]][[j]] =!= a, Throw[j]]], Throw[1]]], {i, 1, Length[suppF]}];
	If[relDeg != Infinity && MemberQ[supp, Apply[NonCommutativeMultiply, 
		Nest[Prepend[#, a]&, Cases[x, Except[a]], relDeg - 1]]], {relDeg}, {}]]

(*--------------------------------------------------------------*)

(*RhoRightAugment*)
(*There is no need to include a Liebniz rule in this function since it will be resolved when RightAugment is called.*)
RhoRightAugment[a_Plus, i_, x_List] := Map[RhoRightAugment[#, i, x]&, a]
RhoRightAugment[a_, 0, x_List] := 
	RhoRightAugment[a, 0, x] = 
		-RightAugment[a, 0, x] + Sum[A[ic, 1] * RightAugment[a, ic, x], {ic, 1, Length[x] - 1}]
RhoRightAugment[a_, i_, x_List] := -RightAugment[a, i, x]
  
(*--------------------------------------------------------------*)

(*RightAugment*)
(*TODO: It may become more sensible to turn to a form like RightAugment[A[1, x0], x1] rather than rely on the index and aphabet.
		But then how to distinguish between the drift letter and other inputs?
		- Take only drift letter instead of assuming alphabet is sorted. This is closer in-line to functions that assume variables.*)
RightAugment[a_Plus, i_, x_List] := Map[RightAugment[#, i, x]&, a]
RightAugment[a_Times, i_, x_List] := 
	RightAugment[a, i, x] =
		Sum[MapAt[RightAugment[#, i, x]&, a, ic], {ic, Length[a]}]
RightAugment[a_A^exp_, i_, x_List] := exp * a^(exp - 1) * RightAugment[a, i, x]
RightAugment[a_A, i_, x_List] := A[a[[1]], a[[2]] ** x[[i + 1]]]
RightAugment[a_, i_, x_List] := 0

(*--------------------------------------------------------------*)

(*ScalarProduct*)
ScalarProduct[c_, d_] :=
  Module[{cExp = NCExpand@c, dExp = NCExpand@d},
    (*Multiply the constant terms*)
    ImproperPart@cExp * ImproperPart@dExp +
      Sum[
        Coefficient[cExp, i] * Coefficient[dExp, i]
        ,
        (*Only sum the words in both supports*)
        {i, Intersection[Support@ProperPart@cExp, Support@ProperPart@dExp]}
      ]
  ]

(*--------------------------------------------------------------*)

(*ShuffleInverse*)
ShuffleInverse[p_, k_] := 
	(1 / (p - ProperPart[p])) * Total[NestList[ShuffleProduct[pPrime[p], #]&, 1, k]]

(*--------------------------------------------------------------*)

(*ShufflePower*)
  ShufflePower[p_, k_] := Nest[ShuffleProduct[p, #]&, 1, k]

(*--------------------------------------------------------------*)

(* Shuffle Product *)
(* inspired by http://www2.fc.up.pt/mathschool/sites/default/files/symbol-nosol.pdf *)

ShuffleProduct[a_Plus, b_] := ShuffleProduct[#, b] & /@ a
ShuffleProduct[a_, b_Plus] := ShuffleProduct[a, #] & /@ b

ShuffleProduct[a_?CommutativeQ, b_] := a * b
ShuffleProduct[a_, b_?CommutativeQ] := a * b

ShuffleProduct[(c_:1) * HoldPattern[a1_ ** a__], (d_: 1)*HoldPattern[b1_ ** b__]] := 
    c * d * (a1 ** ShuffleProduct[NonCommutativeMultiply[a], NonCommutativeMultiply[b1, b]] + 
    b1 ** ShuffleProduct[NonCommutativeMultiply[a1, a], NonCommutativeMultiply[b]])

ShuffleProduct[a1_, (d_:1) * HoldPattern[b1_ ** b__]] :=
    d * (a1 ** NonCommutativeMultiply[b1, b] + b1 ** ShuffleProduct[a1, NonCommutativeMultiply[b]])

ShuffleProduct[(c_:1) * HoldPattern[a1_ ** a__], b1_] :=
    c * (a1 ** ShuffleProduct[NonCommutativeMultiply[a], b1] + b1 ** NonCommutativeMultiply[a1, a])

ShuffleProduct[a1_, b1_] := a1 ** b1 + b1 ** a1

(*--------------------------------------------------------------*)

(* Support *)
Clear[SupportAux]

Support[a_] := SupportAux[ExpandNonCommutativeMultiply[a]]

  SupportAux[a_Plus] := Union[Flatten[Map[SupportAux, Apply[List, a]]]]
  SupportAux[0] := {}
  SupportAux[a_?CommutativeQ] := {1}
  SupportAux[a_Times] := Select[Level[a, {1}], Not[CommutativeQ[#]]&]
  SupportAux[a_] := {a} /; Not[CommutativeQ[a]]

(*--------------------------------------------------------------*)

(* TruncateSeries *)

TruncateSeries[a_Plus, b_Integer] := Map[TruncateSeries[#, b]&, a]
TruncateSeries[Times[a_, c__], b_Integer] := If[WordLength[a] > b, 0, c * a] /; Not[CommutativeQ[a]]
TruncateSeries[a_, b_Integer] := If[WordLength[a] > b, 0, a]
  (*TruncateSeries[c_,n_Integer]:=(c-ProperPart[c])+Take[Coefficient[c,Support[Drop[c,1]]],
   Length[Select[WordLengthList[Support[ProperPart[c]]] ,#<=n&]]].Take[Support[ProperPart[c]],
    Length[Select[WordLengthList[Support[ProperPart[c]]] ,#<=n&]]]*)

(*--------------------------------------------------------------*)

(*UltrametricDistance*)
UltrametricDistance[c_, d_, r_] := r^NCOrder[c - d]

(*--------------------------------------------------------------*)

(* WordLength *)
Clear[WordLengthAux]

  (* Full Length *)
WordLength[a_] := WordLengthAux[a]

  (* Result is undetermined for things other than monomials, including 0 *)
  WordLengthAux[w_List] := Map[WordLength, w]

  WordLengthAux[a_NonCommutativeMultiply] := Length[a]
  WordLengthAux[a_?CommutativeQ] := 0 (*/; Not[PossibleZeroQ[a]];*)
  WordLengthAux[a_Symbol] := 1

  (* Partial Length *)
WordLength[a_, b_Symbol] := WordLengthAux[a, b] 

  WordLengthAux[w_List, b_Symbol] := Map[Function[v, WordLength[v, b]], w]

  WordLengthAux[a_NonCommutativeMultiply, b_Symbol] := Count[a, b]
  WordLengthAux[a_?CommutativeQ, b_Symbol] := 0 (*/; Not[PossibleZeroQ[a]];*)
  WordLengthAux[b_Symbol, b_Symbol] := 1
  WordLengthAux[a_Symbol, b_Symbol] := 0

  

End[]

EndPackage[]

