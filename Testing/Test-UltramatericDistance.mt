(* Wolfram Language Test file *)

SNC[m, n];

Test[
	UltrametricDistance[1, 1, 1/2],
	0,
	TestID -> "Test-UltramatericDistance-20200427-I2F4Q6"
]

Test[
	UltrametricDistance[1, a, 1/2]
	,
	1
	,
	TestID->"Test-UltramatericDistance-20200426-S5C2G0"
]

Test[
	UltrametricDistance[a, 1, 1/2]
	,
	1
	,
	TestID->"Test-UltramatericDistance-20200426-I7I7A7"
]

Test[
	UltrametricDistance[m, 1, 1/2]
	,
	1
	,
	TestID->"Test-UltramatericDistance-20200426-W3O9M9"
]

Test[
	UltrametricDistance[1, m, 1/2]
	,
	1
	,
	TestID->"Test-UltramatericDistance-20200426-K8Y4S6"
]

Test[
	UltrametricDistance[1, m**n, 1/2]
	,
	1
	,
	TestID->"Test-UltramatericDistance-20200426-I7L8E5"
]

Test[
	UltrametricDistance[1, m**n**m, 1/2]
	,
	1
	,
	TestID->"Test-UltramatericDistance-20200426-J1D0Y1"
]

Test[
	UltrametricDistance[m, m, 1/2]
	,
	0
	,
	TestID->"Test-UltramatericDistance-20200426-X7G1R7"
]

Test[
	UltrametricDistance[m, n, 1/2]
	,
	1/2
	,
	TestID->"Test-UltramatericDistance-20200426-O7S6B9"
]

Test[
	UltrametricDistance[m, n**n, 1/2]
	,
	1/2
	,
	TestID->"Test-UltramatericDistance-20200426-X5B4V4"
]

Test[
	UltrametricDistance[n**n, n, 1/2]
	,
	1/2
	,
	TestID->"Test-UltramatericDistance-20200426-Z9Q4U4"
]

Test[
	UltrametricDistance[m**n**n**m, m**n**m**n, 1/2]
	,
	1/2^4
	,
	TestID->"Test-UltramatericDistance-20200426-L5K7W8"
]

Test[
	UltrametricDistance[2 m, -m, 1/2]
	,
	1/2
	,
	TestID->"Test-UltramatericDistance-20200426-M1I3K3"
]

Test[
	UltrametricDistance[a m, z n, 1/2]
	,
	1/2
	,
	TestID->"Test-UltramatericDistance-20200427-I2W7G2"
]

Test[
	UltrametricDistance[2 + m, a, 1/2]
	,
	1
	,
	TestID->"Test-UltramatericDistance-20200427-T6W2A7"
]

Test[
	UltrametricDistance[m**m**m**m**m**m + n**n, m**m, 1/2]
	,
	1/2^2
	,
	TestID->"Test-UltramatericDistance-20200427-L2H3U4"
]

Test[
	UltrametricDistance[a**a, m, 1/2]
	,
	1
	,
	TestID->"Test-UltramatericDistance-20200427-X7F6C2"
]

Test[
	UltrametricDistance[m**(n**(m**(n - 1))), m, 1/2]
	,
	1/2
	,
	TestID->"Test-UltramatericDistance-20200427-R8C8C6"
]

Test[
	UltrametricDistance[0, 0, 1/2]
	,
	0
	,
	TestID->"Test-UltramatericDistance-20200427-Y3X5K7"
]

Test[
	UltrametricDistance[0, 1, 1/2]
	,
	1
	,
	TestID->"Test-UltramatericDistance-20200427-Z9M2S8"
]

Test[
	UltrametricDistance[1, 0, 1/2]
	,
	1
	,
	TestID->"Test-UltramatericDistance-20200427-T9Z7T4"
]

Test[
	UltrametricDistance[0, m, 1/2]
	,
	1/2
	,
	TestID->"Test-UltramatericDistance-20200427-U6D8Y8"
]

Test[
	UltrametricDistance[m**n**m, -m**n**m, 1/2]
	,
	1/2^3
	,
	TestID->"Test-UltramatericDistance-20200427-Y0G2R8"
]

Test[
	UltrametricDistance[m**n, m**n, 1/2]
	,
	0
	,
	TestID->"Test-UltramatericDistance-20200427-V2B3X5"
]

Test[
	UltrametricDistance[m**n**m**n**m + n, n, 1/2]
	,
	1/2^5
	,
	TestID->"Test-UltramatericDistance-20200427-S1W8T0"
]

Test[
	UltrametricDistance[m**(n**(m + a)), a m**n, 1/2]
	,
	1/2^3
	,
	TestID->"Test-UltramatericDistance-20200427-T5A9X3"
]

Test[
	UltrametricDistance[m**n**n**n**n - m**n**n**n, m**n**n, 1/2]
	,
	1/2^3
	,
	TestID->"Test-UltramatericDistance-20200427-E0G9R9"
]

Test[
	UltrametricDistance[m**n**n, m**n**n**n**n - m**n**n**n, 1/2]
	,
	1/2^3
	,
	TestID->"Test-UltramatericDistance-20200427-B2J2B6"
]