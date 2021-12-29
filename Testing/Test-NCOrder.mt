(* Wolfram Language Test file *)

SNC[m, n];

Test[
	NCOrder[0],
	Infinity,
	TestID -> "Test-NCOrder-20200425-Y5M6U9"
]

Test[
	NCOrder[m],
	1,
	TestID -> "Test-NCOrder-20200425-Q8A9E7"
]

Test[
	NCOrder[m + m**m],
	1,
	TestID -> "Test-NCOrder-20200425-X3M1V5"
]

Test[
	NCOrder[3 m],
	1,
	TestID -> "Test-NCOrder-20200425-S4E9N3"
]

Test[
	NCOrder[a],
	0,
	TestID -> "Test-NCOrder-20200425-F2A5I6"
]

Test[
	NCOrder[2 m**n],
	2,
	TestID -> "Test-NCOrder-20200425-T8J3T3"
]

Test[
	NCOrder[-m],
	1,
	TestID -> "Test-NCOrder-20200425-J6I5U5"
]

Test[
	NCOrder[a m z],
	1,
	TestID -> "Test-NCOrder-20200425-U0E8H9"
]

Test[
	NCOrder[m**n**m + a b y z],
	0,
	TestID -> "Test-NCOrder-20200425-I8L2P0"
]

Test[
	NCOrder[m + a m],
	1,
	TestID -> "Test-NCOrder-20200425-P2X7V0"
]

Test[
	NCOrder[m**n + a m z],
	1,
	TestID -> "Test-NCOrder-20200425-B9X9M0"
]

Test[
	NCOrder[m**m - a m**n],
	2,
	TestID -> "Test-NCOrder-20200425-I9F1M3"
]

Test[
	NCOrder[m**(m + n**m)],
	2,
	TestID -> "Test-NCOrder-20200425-N2A1A3"
]

Test[
	NCOrder[a n**(m**(m**n - 3 m) + 4 m)**n a],
	3,
	TestID -> "Test-NCOrder-20200425-T0B2N9"
]

Test[
	NCOrder[(m**n - n)**(m + n**m)],
	2,
	TestID -> "Test-NCOrder-20200425-D8W0A5"
]

(*===========================================*)

Test[
	NCOrder[0, m],
	Infinity,
	TestID -> "Test-NCOrder-20200425-Y9F6V1"
]

Test[
	NCOrder[m, m],
	1,
	TestID -> "Test-NCOrder-20200425-J8I6T0"
]

Test[
	NCOrder[m + m**m, m],
	1,
	TestID -> "Test-NCOrder-20200425-M7Q4I7"
]

Test[
	NCOrder[3 m, m],
	1,
	TestID -> "Test-NCOrder-20200425-V6V2L5"
]

Test[
	NCOrder[a, n],
	0,
	TestID -> "Test-NCOrder-20200425-C6M2U6"
]

Test[
	NCOrder[2 m**n, n],
	1,
	TestID -> "Test-NCOrder-20200425-N7N0D3"
]

Test[
	NCOrder[-m, m],
	1,
	TestID -> "Test-NCOrder-20200425-Y6K4F0"
]

Test[
	NCOrder[a m z, m],
	1,
	TestID -> "Test-NCOrder-20200425-L4J4K7"
]

Test[
	NCOrder[m**n**m + a b y z, n],
	0,
	TestID -> "Test-NCOrder-20200425-D1T6H3"
]

Test[
	NCOrder[m + a m, m],
	1,
	TestID -> "Test-NCOrder-20200425-O2P9E7"
]

Test[
	NCOrder[m**n + a m z, n],
	1,
	TestID -> "Test-NCOrder-20200425-B6W3F6"
]

Test[
	NCOrder[m**m - a m**n, m],
	1,
	TestID -> "Test-NCOrder-20200425-G2O9M8"
]

Test[
	NCOrder[m**(m + n**m), n],
	1,
	TestID -> "Test-NCOrder-20200425-B1V0Y9"
]

Test[
	NCOrder[m**(m + n**m), m],
	2,
	TestID -> "Test-NCOrder-20200425-A1Y8T4"
]

Test[
	NCOrder[a n**(m**(m**n - 3 m) + 4 m)**n a, m],
	1,
	TestID -> "Test-NCOrder-20200425-D9Q7Q2"
]

Test[
	NCOrder[a n**(m**(m**n - 3 m) + 4 m)**n a, n],
	2,
	TestID -> "Test-NCOrder-20200425-O8I4S7"
]

Test[
	NCOrder[(m**n - n)**(m + n**m), m],
	1,
	TestID -> "Test-NCOrder-20200425-M3D4N7"
]

Test[
	NCOrder[(m**n - n)**(m + m**m), m],
	1,
	TestID -> "Test-NCOrder-20200425-W8O3I2"
]

Test[
	NCOrder[m**n**m + n**n**n, m],
	0,
	TestID -> "Test-NCOrder-20200425-A5P5G3"
]

Test[
	NCOrder[n**n, m],
	0,
	TestID -> "Test-NCOrder-20200425-K6A0A2"
]

Test[
	NCOrder[m**n - n, n],
	1,
	TestID -> "Test-NCOrder-20200425-U6X9Y2"
]

Test[
	NCOrder[n**n - m**n**m, n],
	1,
	TestID -> "Test-NCOrder-20200425-A3V6A6"
]

Test[
	NCOrder[n**n - m**n**m, m],
	0,
	TestID -> "Test-NCOrder-20200425-X2A8A9"
]

Test[
	NCOrder[m, a],
	NCOrder[m, a],
	TestID -> "Test-NCOrder-20200425-H4O7Z9"
]
