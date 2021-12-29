(* Wolfram Language Test file *)

SNC[m, n];

Test[
	ProperPart[a],
	0,
	TestID -> "Test-ProperPart-20200330-O9U6W0"
]

Test[
	ProperPart[m],
	m,
	TestID -> "Test-ProperPart-20200330-A3A6N6"
]

Test[
	ProperPart[3 m],
	3 m,
	TestID -> "Test-ProperPart-20200330-E8T8Q7"
]

Test[
	ProperPart[-m],
	-m,
	TestID -> "Test-ProperPart-20200330-Y4R6P2"
]

Test[
	ProperPart[2 + a + a m],
	a m,
	TestID -> "Test-ProperPart-20200330-G9Z3B1"
]

Test[
	ProperPart[m**n],
	m**n,
	TestID -> "Test-ProperPart-20200330-D3K1N0"
]

Test[
	ProperPart[2 m**n],
	2 m**n,
	TestID -> "Test-ProperPart-20200330-B0C8A8"
]

Test[
	ProperPart[-m**n],
	-m**n,
	TestID -> "Test-ProperPart-20200330-V8H3D8"
]

Test[
	ProperPart[m**n z],
	m**n z,
	TestID -> "Test-ProperPart-20200330-T7B6J6"
]

Test[
	ProperPart[m**n z - z],
	m**n z,
	TestID -> "Test-ProperPart-20200330-X9J4F8"
]

Test[
	ProperPart[a (1 + m)],
	a m,
	TestID -> "Test-ProperPart-20200330-I1C5J2"
]

Test[
	ProperPart[2 m**(n + 3 m**n)],
	2 m**n + 6 m**m**n,
	TestID -> "Test-ProperPart-20200330-B7M2C4"
]

Test[
	ProperPart[2 m**(a + 3 m**n)],
	2 a m + 6 m**m**n,
	TestID -> "Test-ProperPart-20200330-Y1H5B7"
]