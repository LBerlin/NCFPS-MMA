(* Wolfram Language Test file *)

SNC[m, n];

Test[
	ProperQ[a],
	False,
	TestID -> "Test-ProperQ-20200330-L9M0G6"
]

Test[
	ProperQ[m],
	True,
	TestID -> "Test-ProperQ-20200330-K0O9O6"
]

Test[
	ProperQ[m**n],
	True,
	TestID -> "Test-ProperQ-20200330-M9D1W1"
]

Test[
	ProperQ[a m],
	True,
	TestID -> "Test-ProperQ-20200330-G8F0M2"
]

Test[
	ProperQ[m z],
	True,
	TestID -> "Test-ProperQ-20200330-P7H7Z0"
]

Test[
	ProperQ[m n],
	True,
	TestID -> "Test-ProperQ-20200330-U8K9I3"
]

Test[
	ProperQ[1 + m],
	False,
	TestID -> "Test-ProperQ-20200330-P2K9P0"
]

Test[
	ProperQ[a + a n**m],
	False,
	TestID -> "Test-ProperQ-20200330-U7S6V5"
]

Test[
	ProperQ[a (m**n - n**m)],
	True,
	TestID -> "Test-ProperQ-20200330-K3C5T4"
]

Test[
	ProperQ[2 m**(1 + m**n)],
	True,
	TestID -> "Test-ProperQ-20200330-L2D8S7"
]

Test[
	ProperQ[2 (m + 1/2) - 1],
	True,
	TestID -> "Test-ProperQ-20200330-V1R6A3"
]