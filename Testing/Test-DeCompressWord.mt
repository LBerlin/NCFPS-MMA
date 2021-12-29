(* Wolfram Language Test file *)

SNC[m, n];

Test[
	DeCompressWord[m],
	m,
	TestID -> "Test-DeCompressWord-20200328-A2B8H6"
]

Test[
	DeCompressWord[a],
	a,
	TestID -> "Test-DeCompressWord-20200328-K0C8Q9"
]

Test[
	DeCompressWord[n**m],
	n**m,
	TestID -> "Test-DeCompressWord-20200328-P9J2L3"
]

Test[
	DeCompressWord[n^2],
	n**n,
	TestID -> "Test-DeCompressWord-20200328-Y9S4K8"
]

Test[
	DeCompressWord[n^2**m],
	n**n**m,
	TestID -> "Test-DeCompressWord-20200328-B8T4A9"
]

Test[
	DeCompressWord[n**m^3**n],
	n**m**m**m**n,
	TestID -> "Test-DeCompressWord-20200328-R6A5M4"
]

Test[
	DeCompressWord[m**m^2],
	m**m**m,
	TestID -> "Test-DeCompressWord-20200328-X6I1E0"
]

Test[
	DeCompressWord[n**m**n^3],
	n**m**n**n**n,
	TestID -> "Test-DeCompressWord-20200328-O7V7B4"
]

Test[
	DeCompressWord[n m^3],
	n m**m**m,
	TestID -> "Test-DeCompressWord-20200328-U0L5R6"
]

Test[
	DeCompressWord[n^2**m**n^3],
	n**n**m**n**n**n,
	TestID -> "Test-DeCompressWord-20200328-P9G8B6"
]

Test[
	DeCompressWord[3 n^2**m],
	3 n**n**m,
	TestID -> "Test-DeCompressWord-20200328-U1M7M3"
]

Test[
	DeCompressWord[-n^2**m],
	-n**n**m,
	TestID -> "Test-DeCompressWord-20200328-P1J5U8"
]

Test[
	DeCompressWord[n^2**m + n**n**m],
	2 n**n**m,
	TestID -> "Test-DeCompressWord-20200328-L5B7Y3"
]

Test[
	DeCompressWord[n**n^2**n],
	n**n**n**n,
	TestID -> "Test-DeCompressWord-20200328-P6C3N1"
]

Test[
	DeCompressWord[a^3],
	a^3,
	TestID -> "Test-DeCompressWord-20200328-U4B1S7"
]

Test[
	DeCompressWord[m**n^2 z],
	m**n**n z,
	TestID -> "Test-DeCompressWord-20200329-C3U0T9"
]

Test[
	DeCompressWord[n^2**m z + m**n^2],
	n**n**m z + m**n**n,
	TestID -> "Test-DeCompressWord-20200329-J2B2G7"
]