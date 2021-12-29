(* Wolfram Language Test file *)

SNC[m, n];
x = {m, n};
xm = {m};
xn = {n};

Test[
	RightAugment[a, 1, x]
	,
	0
	,
	TestID->"Test-RightAugment-20200517-A6L1S5"
]

(*TODO: Have a check on the index being < Length[x]*)
Test[
	RightAugment[A[1, m], 2, x]
	,
	RightAugment[A[1, m], 2, x]
	,
	TestID->"Test-RightAugment-20200517-H9I0D3"
]

Test[
	RightAugment[A[1, m], 0, x]
	,
	A[1, m**m]
	,
	TestID->"Test-RightAugment-20200517-G6Y5M0"
]

Test[
	RightAugment[A[1, n], 0, x]
	,
	A[1, n**m]
	,
	TestID->"Test-RightAugment-20200517-S1J2F6"
]

Test[
	RightAugment[A[1, m], 0, xn]
	,
	A[1, m**n]
	,
	TestID->"Test-RightAugment-20200519-Y1F4Y1"
]

Test[
	RightAugment[A[1, 1], 0, x]
	,
	A[1, m]
	,
	TestID->"Test-RightAugment-20200517-P6U1Z0"
]

Test[
	RightAugment[A[1, m**n], 1, x]
	,
	A[1, m**n**n]
	,
	TestID->"Test-RightAugment-20200517-R4I5P4"
]

Test[
	RightAugment[A[2, n**n], 1, x]
	,
	A[2, n**n**n]
	,
	TestID->"Test-RightAugment-20200517-E5O6T2"
]

Test[
	RightAugment[A[1, m] + A[2, m], 1, x]
	,
	A[1, m**n] + A[2, m**n]
	,
	TestID->"Test-RightAugment-20200517-O2W4H8"
]

Test[
	RightAugment[A[1, m] - A[1, m], 0, x]
	,
	0
	,
	TestID->"Test-RightAugment-20200517-O2T6T2"
]

Test[
	RightAugment[3 A[2, m], 0, x]
	,
	3 A[2, m**m]
	,
	TestID->"Test-RightAugment-20200519-E1E5G7"
]

Test[
	RightAugment[-A[1, m], 1, x]
	,
	-A[1, m**n]
	,
	TestID->"Test-RightAugment-20200519-U3Q5Y4"
]

Test[
	RightAugment[A[1, m] A[1, n], 0, x]
	,
	A[1, m**m] A[1, n] + A[1, m] A[1, n**m]
	,
	TestID->"Test-RightAugment-20200519-Q6D9A0"
]

Test[
	RightAugment[A[1, m**n] (A[2, m] - A[1, n]), 1, x]
	,
	A[1, m**n**n] (A[2, m] - A[1, n]) + A[1, m**n] (A[2, m**n] - A[1, n**n])
	,
	TestID->"Test-RightAugment-20200519-N5W0M8"
]

Test[
	RightAugment[A[1, m] + 3 A[2, n] A[2, m], 0, x]
	,
	A[1, m**m] + 3 A[2, n**m] A[2, m] + 3 A[2, n] A[2, m**m]
	,
	TestID->"Test-RightAugment-20200519-C6S8U0"
]

Test[
	RightAugment[A[1, m]^2, 0, x]
	,
	2 A[1, m] A[1, m**m]
	,
	TestID->"Test-RightAugment-20200519-B4O8F9"
]

Test[
	RightAugment[A[1, n]^3, 0, x]
	,
	3 A[1, n]^2 A[1, n**m]
	,
	TestID->"Test-RightAugment-20200519-L4R7N7"
]

(*TODO: Should guard against exponents that are not nonnegative integers.*)
Test[
	RightAugment[A[1, m]^3.5, 0, x]
	,
	RightAugment[A[1, m]^3.5, 0, x]
	,
	TestID->"Test-RightAugment-20200519-B2X0B3"
]

Test[
	RightAugment[4 A[3, m**n] (A[1, n**n]^3 A[1, m**n] + A[2, n]), 1, x]
	,
	4 A[3, m**n**n] (A[1, n**n]^3 A[1, m**n] + A[2, n]) + 4 A[3, m**n] (3 A[1, n**n]^2 A[1, n**n**n] A[1, m**n] + A[1, n**n]^3 A[1, m**n**n] + A[2, n**n])
	,
	TestID->"Test-RightAugment-20200519-U9W5U1"
]