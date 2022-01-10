(* Wolfram Language Test file *)

(* Global Definitions *)

SNC[m, n];
alph = {m, n};
series = {m, n, m + n, n - m, m - n, 2*m, 2*n, n*2, m*2, 
	2 + m, m + 2, 2 - m, m - 2,	2 + n, n + 2, 2 - n, n - 2, 
	a*m, m*a, a*n, n*a, z*m, m*z, z*n, n*z, 
	a + m, a + n, a - m, a - n, m - a, n - a, 
	a + 2m, a + 2n, a - 2m, a - 2n, 2n - a, 2m - a,
	2 + a*m, 2 + a*n, 2 - a*m, 2 - a*n, a*n - 2, a*m - 2,
	m**m, m**n, n**m, n**n, 
	2*m**n, m**n*2, a*m**n, m**n*a, 
	2 + m**n, m**n - 2, 2 - m**n, 
	2 + a*m**n, 2 - a*m**n, a*m**n - 2,
	(*unexpanded series*)m**(m - n), (n - m)**m, 
	n**(2 + n), (m - 2)**n, 2**(m + n), 2*(m + n), 2*(m**n - n),
	n**(a + n), (m - a)**n, a**(m + n), a*(m + n), a*(m**n - n),
	n**(z + n), (m - z)**n, z**(m + n), z*(m + n), z*(m**n - n),
	2*n**(a*m**n - 3*z*m**(n - m))
	};
	
Clear[DevlinPolynomial]
DevlinPolynomial[n_Integer /; n > 1, 
  alphabet_List] := (n - 1) DevlinPolynomial[n - 1, alphabet] ** 
    alphabet[[2]] + (n - 2) DevlinPolynomial[n - 2, alphabet] ** 
    alphabet[[1]]
DevlinPolynomial[1, alphabet_List] := 1
DevlinPolynomial[0, alphabet_List] := 0

(*-----------------------------------*)
(* Begin Tests *)

(*Devlin Test*)

(*-----------------------------------*)

Test[
	ser = series[[1]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-1"
]
Test[
	ser = series[[2]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-2"
]
Test[
	ser = series[[3]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-3"
]
Test[
	ser = series[[4]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-4"
]
Test[
	ser = series[[5]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-5"
]
Test[
	ser = series[[6]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-6"
]
Test[
	ser = series[[7]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-7"
]
Test[
	ser = series[[8]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-8"
]
Test[
	ser = series[[9]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-9"
]
Test[
	ser = series[[10]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-10"
]
Test[
	ser = series[[11]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-11"
]
Test[
	ser = series[[12]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-12"
]
Test[
	ser = series[[13]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-13"
]
Test[
	ser = series[[14]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-14"
]
Test[
	ser = series[[15]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-15"
]
Test[
	ser = series[[16]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-16"
]
Test[
	ser = series[[17]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-17"
]
Test[
	ser = series[[18]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-18"
]
Test[
	ser = series[[19]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-19"
]
Test[
	ser = series[[20]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-20"
]
Test[
	ser = series[[21]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-21"
]
(*TODO 22-25 fail because ModifiedCompositionProduct fails for commutative coeffs that follow alphabetically.*)
Test[
	ser = series[[22]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-22"
]
Test[
	ser = series[[23]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-23"
]
Test[
	ser = series[[24]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-24"
]
Test[
	ser = series[[25]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-25"
]
Test[
	ser = series[[26]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-26"
]
Test[
	ser = series[[27]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-27"
]
Test[
	ser = series[[28]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-28"
]
Test[
	ser = series[[29]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-29"
]
Test[
	ser = series[[30]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-30"
]
Test[
	ser = series[[31]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-31"
]
Test[
	ser = series[[32]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-32"
]
Test[
	ser = series[[33]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-33"
]
Test[
	ser = series[[34]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-34"
]
Test[
	ser = series[[35]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-35"
]
Test[
	ser = series[[36]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-36"
]
Test[
	ser = series[[37]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-37"
]
Test[
	ser = series[[38]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-38"
]
Test[
	ser = series[[39]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-39"
]
Test[
	ser = series[[40]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-40"
]
Test[
	ser = series[[41]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-41"
]
Test[
	ser = series[[42]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-42"
]
Test[
	ser = series[[43]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-43"
]
Test[
	ser = series[[44]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-44"
]
Test[
	ser = series[[45]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-45"
]
Test[
	ser = series[[46]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-46"
]
Test[
	ser = series[[47]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-47"
]
Test[
	ser = series[[48]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-48"
]
Test[
	ser = series[[49]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-49"
]
Test[
	ser = series[[50]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-50"
]
Test[
	ser = series[[51]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-51"
]
Test[
	ser = series[[52]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-52"
]
Test[
	ser = series[[53]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-53"
]
Test[
	ser = series[[54]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-54"
]
Test[
	ser = series[[55]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-55"
]
Test[
	ser = series[[56]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-56"
]
Test[
	ser = series[[57]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-57"
]
Test[
	ser = series[[58]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-58"
]
Test[
	ser = series[[59]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-59"
]
Test[
	ser = series[[60]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-60"
]
Test[
	ser = series[[61]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-61"
]
Test[
	ser = series[[62]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-62"
]
Test[
	ser = series[[63]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-63"
]
Test[
	ser = series[[64]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-64"
]
Test[
	ser = series[[65]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-65"
]
Test[
	ser = series[[66]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-66"
]
Test[
	ser = series[[67]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-67"
]
Test[
	ser = series[[68]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-68"
]
Test[
	ser = series[[69]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-69"
]
(*TODO 70-74 fail because ModifiedCompositionProduct fails for commutative coeffs that follow alphabetically.*)
Test[
	ser = series[[70]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-70"
]
Test[
	ser = series[[71]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-71"
]
Test[
	ser = series[[72]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-72"
]
Test[
	ser = series[[73]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-73"
]
Test[
	ser = series[[74]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-74"
]
Test[
	ser = series[[75]];
	degree = 5;
	invSer = CompositionInverse[ser, alph, degree];
	NCOrder[ser + ModifiedCompositionProduct[invSer, {ser}, alph]] > degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Identity-75"
]

(*----------------------------------------------------*)

Test[
	ser = series[[1]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-1"
]
Test[
	ser = series[[2]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-2"
]
Test[
	ser = series[[3]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-3"
]
Test[
	ser = series[[4]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-4"
]
Test[
	ser = series[[5]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-5"
]
Test[
	ser = series[[6]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-6"
]
Test[
	ser = series[[7]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-7"
]
Test[
	ser = series[[8]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-8"
]
Test[
	ser = series[[9]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-9"
]
Test[
	ser = series[[10]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-10"
]
Test[
	ser = series[[11]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-11"
]
Test[
	ser = series[[12]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-12"
]
Test[
	ser = series[[13]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-13"
]
Test[
	ser = series[[14]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-14"
]
Test[
	ser = series[[15]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-15"
]
Test[
	ser = series[[16]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-16"
]
Test[
	ser = series[[17]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-17"
]
Test[
	ser = series[[18]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-18"
]
Test[
	ser = series[[19]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-19"
]
Test[
	ser = series[[20]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-20"
]
Test[
	ser = series[[21]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-21"
]
Test[
	ser = series[[22]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-22"
]
Test[
	ser = series[[23]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-23"
]
Test[
	ser = series[[24]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-24"
]
Test[
	ser = series[[25]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-25"
]
Test[
	ser = series[[26]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-26"
]
Test[
	ser = series[[27]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-27"
]
Test[
	ser = series[[28]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-28"
]
Test[
	ser = series[[29]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-29"
]
Test[
	ser = series[[30]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-30"
]
Test[
	ser = series[[31]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-31"
]
Test[
	ser = series[[32]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-32"
]
Test[
	ser = series[[33]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-33"
]
Test[
	ser = series[[34]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-34"
]
Test[
	ser = series[[35]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-35"
]
Test[
	ser = series[[36]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-36"
]
Test[
	ser = series[[37]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-37"
]
Test[
	ser = series[[38]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-38"
]
Test[
	ser = series[[39]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-39"
]
Test[
	ser = series[[40]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-40"
]
Test[
	ser = series[[41]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-41"
]
Test[
	ser = series[[42]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-42"
]
Test[
	ser = series[[43]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-43"
]
Test[
	ser = series[[44]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-44"
]
Test[
	ser = series[[45]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-45"
]
Test[
	ser = series[[46]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-46"
]
Test[
	ser = series[[47]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-47"
]
Test[
	ser = series[[48]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-48"
]
Test[
	ser = series[[49]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-49"
]
Test[
	ser = series[[50]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-50"
]
Test[
	ser = series[[51]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-51"
]
Test[
	ser = series[[52]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-52"
]
Test[
	ser = series[[53]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-53"
]
Test[
	ser = series[[54]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-54"
]
Test[
	ser = series[[55]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-55"
]
Test[
	ser = series[[56]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-56"
]
Test[
	ser = series[[57]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-57"
]
Test[
	ser = series[[58]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-58"
]
Test[
	ser = series[[59]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-59"
]
Test[
	ser = series[[60]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-60"
]
Test[
	ser = series[[61]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-61"
]
Test[
	ser = series[[62]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-62"
]
Test[
	ser = series[[63]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-63"
]
Test[
	ser = series[[64]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-64"
]
Test[
	ser = series[[65]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-65"
]
Test[
	ser = series[[66]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-66"
]
Test[
	ser = series[[67]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-67"
]
Test[
	ser = series[[68]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-68"
]
Test[
	ser = series[[69]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-69"
]
Test[
	ser = series[[70]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-70"
]
Test[
	ser = series[[71]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-71"
]
Test[
	ser = series[[72]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-72"
]
Test[
	ser = series[[73]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-73"
]
Test[
	ser = series[[74]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-74"
]
Test[
	ser = series[[75]];
	degree = 5;
	NCDegree[CompositionInverse[ser, alph, degree]] <= degree
	,
	True
	,
	TestID->"Test-CompositionInverse-Degree-75"
]