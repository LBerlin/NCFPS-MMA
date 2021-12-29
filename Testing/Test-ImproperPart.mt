(* Wolfram Language Test file *)

SNC[m, n];

Test[
	ImproperPart[a],
	a,
	TestID -> "Test-ImproperPart-20200330-X5O2P9"
]

Test[
	ImproperPart[m],
	0,
	TestID -> "Test-ImproperPart-20200330-W5V7T9"
]

Test[
	ImproperPart[3 m],
	0,
	TestID -> "Test-ImproperPart-20200330-Q6A0F9"
]

Test[
	ImproperPart[-m],
	0,
	TestID -> "Test-ImproperPart-20200330-E6Y9V6"
]

Test[
	ImproperPart[2 + a + a m],
	2 + a,
	TestID -> "Test-ImproperPart-20200330-Q3H7F9"
]

Test[
	ImproperPart[m**n],
	0,
	TestID -> "Test-ImproperPart-20200330-R6S7W3"
]

Test[
	ImproperPart[2 m**n],
	0,
	TestID -> "Test-ImproperPart-20200330-Y2Z2R8"
]

Test[
	ImproperPart[-m**n],
	0,
	TestID -> "Test-ImproperPart-20200330-G2E2Y5"
]

Test[
	ImproperPart[m**n z],
	0,
	TestID -> "Test-ImproperPart-20200330-L3M5I1"
]

Test[
	ImproperPart[m**n z - z],
	-z,
	TestID -> "Test-ImproperPart-20200330-F2Y2Y2"
]

Test[
	ImproperPart[a (1 + m)],
	a,
	TestID -> "Test-ImproperPart-20200330-N6H8Y7"
]

Test[
	ImproperPart[2 m**(n + 3 m**n)],
	0,
	TestID -> "Test-ImproperPart-20200330-I2C1A2"
]

Test[
	ImproperPart[2 m**(a + 3 m**n)],
	0,
	TestID -> "Test-ImproperPart-20200330-Z8D9F8"
]