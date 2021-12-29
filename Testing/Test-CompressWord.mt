(* Wolfram Language Test file *)

SNC[m, n];

Test[
	CompressWord[m**n],
	m**n,
	TestID -> "Test-CompressWord-20200327-E8F8N8"
]

Test[
	CompressWord[m**n**m],
	m**n**m,
	TestID -> "Test-CompressWord-20200327-E7D2B9"
]

Test[
	CompressWord[m**m],
	m^2,
	TestID -> "Test-CompressWord-20200327-X7H0H5"
]

Test[
	CompressWord[m**m**m**n**m**m],
	m^3**n**m^2,
	TestID -> "Test-CompressWord-20200327-L6L4J1"
]

Test[
	CompressWord[n**m**m**m**n],
	n**m^3**n,
	TestID -> "Test-CompressWord-20200327-Q8T0H8"
]

Test[
	CompressWord[3 m**n**n],
	3 m**n^2,
	TestID -> "Test-CompressWord-20200327-Q5F6J7"
]

Test[
	CompressWord[-m**m**n],
	-m^2**n,
	TestID -> "Test-CompressWord-20200327-X3U4D7"
]

Test[
	CompressWord[m m**n],
	m m**n,
	TestID -> "Test-CompressWord-20200327-N3Q2F9"
]

Test[
	CompressWord[m m**m**n],
	m m^2**n,
	TestID -> "Test-CompressWord-20200327-Z5H3K7"
]

Test[
	CompressWord[m**m**n m],
	m m^2**n,
	TestID -> "Test-CompressWord-20200327-O7U4R1"
]

Test[
	CompressWord[n**n**m + n**n**m],
	2 n^2**m,
	TestID -> "Test-CompressWord-20200327-T9G0P0"
]

Test[
	CompressWord[m**n**n + n**n**m],
	m**n^2 + n^2**m,
	TestID -> "Test-CompressWord-20200327-A3J2G6"
]

Test[
	CompressWord[m**n^2],
	m**n^2,
	TestID -> "Test-CompressWord-20200327-A9N0Y8"
]

Test[
	CompressWord[m**n^2**n],
	m**n^3,
	TestID -> "Test-CompressWord-20200327-S3J8M5"
]

Test[
	CompressWord[n**m**m^2 + n**m^2**m],
	2 n**m^3,
	TestID -> "Test-CompressWord-20200327-Q0K2H4"
]

Test[
	CompressWord[m^2**n^3**m^4],
	m^2**n^3**m^4,
	TestID -> "Test-CompressWord-20200327-V7S7W4"
]

Test[
	CompressWord[m^2**m**m^3],
	m^6,
	TestID -> "Test-CompressWord-20200327-Y6R3H6"
]

Test[
	CompressWord[m**m**a**m],
	a m^3,
	TestID -> "Test-CompressWord-20200327-U1E0F8"
]

Test[
	CompressWord[m**n**n z],
	m**n^2 z,
	TestID -> "Test-CompressWord-20200329-L8K0M0"
]

Test[
	CompressWord[n**n**m z + m**n**n],
	n^2**m z + m**n^2,
	TestID -> "Test-CompressWord-20200329-P2M0B1"
]