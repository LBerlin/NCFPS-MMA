(* Wolfram Language Test file *)

SNC[m, n];

Test[
	LeftShift[m, m],
	1,
	TestID -> "Test-LeftShift-20200418-D9E9S1"
]

Test[
	LeftShift[m**n, m],
	n,
	TestID -> "Test-LeftShift-20200418-H8D7R3"
]

Test[
	LeftShift[n**m, m],
	0,
	TestID -> "Test-LeftShift-20200418-O8O4V6"
]

Test[
	LeftShift[n, m],
	0,
	TestID -> "Test-LeftShift-20200418-M8G1C9"
]

Test[
	LeftShift[n**m**m, n**m],
	m,
	TestID -> "Test-LeftShift-20200418-H7L7S2"
]

Test[
	LeftShift[3 n**n**m, n],
	3 n**m,
	TestID -> "Test-LeftShift-20200418-M0U9V9"
]

Test[
	LeftShift[-a m**n**m**n**m z, m**n],
	-a m**n**m z,
	TestID -> "Test-LeftShift-20200418-G3B6Q1"
]

Test[
	LeftShift[1 + m**n**m**n**m - 3 n**m**n**m + 4 m**n**m, m**n**m],
	n**m + 4,
	TestID -> "Test-LeftShift-20200418-X0R9R2"
]

Test[
	LeftShift[n**(3 m + z m**m - n**m), n**m],
	3 + z m,
	TestID -> "Test-LeftShift-20200418-B5M7P5"
]

Test[
	LeftShift[(m - m**m)**n, m**n],
	1,
	TestID -> "Test-LeftShift-20200418-T2X3O9"
]

Test[
	LeftShift[(m + m**m)**n, n],
	0,
	TestID -> "Test-LeftShift-20200418-D9H9L2"
]

Test[
	LeftShift[a**b, b],
	0,
	TestID -> "Test-LeftShift-20200418-J1B5M3"
]

(*============================================================*)

Test[
	LeftShift[m**n**m**n**m, m**n, 2],
	m,
	TestID -> "Test-LeftShift-20200418-B7C6P5"
]

Test[
	LeftShift[m**m**n, m, 3],
	0,
	TestID -> "Test-LeftShift-20200418-K3W5W2"
]

Test[
	LeftShift[m**m**(n + m)**n, m, 3],
	n,
	TestID -> "Test-LeftShift-20200418-Z3Q0V1"
]

Test[
	LeftShift[m**(n - m**(m - n**(m - m**m)))**n, m**m**n, 2],
	-1,
	TestID -> "Test-LeftShift-20200418-I6U9M3"
]

Test[
	LeftShift[m**n**n**n**m, n, 3],
	0,
	TestID -> "Test-LeftShift-20200418-C1F1N2"
]
	