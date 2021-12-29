(* Wolfram Language Test file *)

SNC[m, n];

Test[
	NCDegree[0],
	-Infinity,
	TestID->"Test-NCDegree-20200425-B4K1Q4"
]

Test[
	NCDegree[m],
	1,
	TestID->"Test-NCDegree-20200425-N1W3P3"
]

Test[
	NCDegree[m + m**m],
	2,
	TestID->"Test-NCDegree-20200425-V2K2E1"
]

Test[
	NCDegree[3 m],
	1,
	TestID->"Test-NCDegree-20200425-L6C5I8"
]

Test[
	NCDegree[a],
	0,
	TestID->"Test-NCDegree-20200425-P3G8H5"
]

Test[
	NCDegree[2 m**n],
	2,
	TestID->"Test-NCDegree-20200425-G3Q4W7"
]

Test[
	NCDegree[-m],
	1,
	TestID->"Test-NCDegree-20200425-Z6X6J1"
]

Test[
	NCDegree[a m z],
	1,
	TestID->"Test-NCDegree-20200425-I9U7R9"
]

Test[
	NCDegree[m**n**m + a b y z],
	3,
	TestID->"Test-NCDegree-20200425-H7Q4I4"
]

Test[
	NCDegree[m + a m],
	1,
	TestID->"Test-NCDegree-20200425-R3R3H0"
]

Test[
	NCDegree[m**n + a m z],
	2,
	TestID->"Test-NCDegree-20200425-A3R4M3"
]

Test[
	NCDegree[m**m - a m**n],
	2,
	TestID->"Test-NCDegree-20200425-B4V4I4"
]

Test[
	NCDegree[m**(m + n**m)],
	3,
	TestID->"Test-NCDegree-20200425-Q6Y0V9"
]

Test[
	NCDegree[a n**(m**(m**n - 3 m) + 4 m)**n a],
	5,
	TestID->"Test-NCDegree-20200425-L9R7H9"
]

Test[
	NCDegree[(m**n - n)**(m + n**m)],
	4,
	TestID->"Test-NCDegree-20200425-X6O0K2"
]

(*===========================================*)

Test[
	NCDegree[0, m],
	-Infinity,
	TestID->"Test-NCDegree-20200425-I2V9J2"
]

Test[
	NCDegree[m, m],
	1,
	TestID->"Test-NCDegree-20200425-U8E2X9"
]

Test[
	NCDegree[m + m**m, m],
	2,
	TestID->"Test-NCDegree-20200425-B5U2S1"
]

Test[
	NCDegree[3 m, m],
	1,
	TestID->"Test-NCDegree-20200425-S8W1C9"
]

Test[
	NCDegree[a, n],
	0,
	TestID->"Test-NCDegree-20200425-G4P4N6"
]

Test[
	NCDegree[2 m**n, n],
	1,
	TestID->"Test-NCDegree-20200425-N1N6D6"
]

Test[
	NCDegree[-m, m],
	1,
	TestID->"Test-NCDegree-20200425-T5Y0E9"
]

Test[
	NCDegree[a m z, m],
	1,
	TestID->"Test-NCDegree-20200425-N2Z4J8"
]

Test[
	NCDegree[m**n**m + a b y z, n],
	1,
	TestID->"Test-NCDegree-20200425-V5P2K4"
]

Test[
	NCDegree[m + a m, m],
	1,
	TestID->"Test-NCDegree-20200425-Q7E7P9"
]

Test[
	NCDegree[m**n + a m z, n],
	1,
	TestID->"Test-NCDegree-20200425-R6U3Q1"
]

Test[
	NCDegree[m**m - a m**n, m],
	2,
	TestID->"Test-NCDegree-20200425-N7Q1O3"
]

Test[
	NCDegree[m**(m + n**m), n],
	1,
	TestID->"Test-NCDegree-20200425-E5O1S0"
]

Test[
	NCDegree[m**(m + n**m), m],
	2,
	TestID->"Test-NCDegree-20200425-P5W1C1"
]

Test[
	NCDegree[a n**(m**(m**n - 3 m) + 4 m)**n a, m],
	2,
	TestID->"Test-NCDegree-20200425-P7J0Y2"
]

Test[
	NCDegree[a n**(m**(m**n - 3 m) + 4 m)**n a, n],
	3,
	TestID->"Test-NCDegree-20200425-P8X1N3"
]

Test[
	NCDegree[(m**n - n)**(m + n**m), m],
	2,
	TestID->"Test-NCDegree-20200425-F1B6Z9"
]

Test[
	NCDegree[(m**n - n)**(m + m**m), m],
	3,
	TestID->"Test-NCDegree-20200425-M5I4M0"
]

Test[
	NCDegree[m**n**m + n**n**n, m],
	2,
	TestID->"Test-NCDegree-20200425-O1Y7S7"
]

Test[
	NCDegree[n**n, m],
	0,
	TestID->"Test-NCDegree-20200425-S5V6P9"
]

Test[
	NCDegree[m**n - n, n],
	1,
	TestID->"Test-NCDegree-20200425-G3F7P9"
]

Test[
	NCDegree[m, a],
	NCDegree[m, a],
	TestID -> "Test-NCDegree-20200425-J3V3T0"
]
	