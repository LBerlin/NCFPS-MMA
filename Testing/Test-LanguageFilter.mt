(* Wolfram Language Test file *)

SNC[m, n];

Test[
	LanguageFilter[m, {m}],
	m,
	TestID -> "Test-LanguageFilter-20200417-Y4J0G8"
]

Test[
	LanguageFilter[m, {m, n}],
	m,
	TestID -> "Test-LanguageFilter-20200417-M8H7O5"
]

Test[
	LanguageFilter[m, {n}],
	0,
	TestID -> "Test-LanguageFilter-20200417-C5V9B1"
]

Test[
	LanguageFilter[m, {m**n}],
	0,
	TestID -> "Test-LanguageFilter-20200417-X7M7Y9"
]

Test[
	LanguageFilter[3 m, {m}],
	3 m,
	TestID -> "Test-LanguageFilter-20200417-B5W6L8"
]

Test[
	LanguageFilter[a m, {m}],
	a m,
	TestID -> "Test-LanguageFilter-20200417-V3M9U4"
]

Test[
	LanguageFilter[m z, {m}],
	m z,
	TestID -> "Test-LanguageFilter-20200417-J0P7K1"
]

Test[
	LanguageFilter[-m, {m}],
	-m,
	TestID -> "Test-LanguageFilter-20200417-B9W5Q7"
]

Test[
	LanguageFilter[m - 1, {1, m}],
	m - 1,
	TestID -> "Test-LanguageFilter-20200417-D0M8V2"
]

Test[
	LanguageFilter[m - 1, {m}],
	m,
	TestID -> "Test-LanguageFilter-20200417-L9D2I7"
]

Test[
	LanguageFilter[m - 1, {n}],
	0,
	TestID -> "Test-LanguageFilter-20200417-L5A0E6"
]

Test[
	LanguageFilter[m**(n + 2), {m}],
	2 m,
	TestID -> "Test-LanguageFilter-20200417-M9L9F5"
]

Test[
	LanguageFilter[(n - a)**n, {n}],
	-a n,
	TestID -> "Test-LanguageFilter-20200417-X4V0W9"
]

Test[
	LanguageFilter[m**(1 + 2 n), {m**n, n}],
	2 m**n,
	TestID -> "Test-LanguageFilter-20200417-P1U0B7"
]

(*------------------------------------------*)

Test[
	LanguageFilter[m, {m}, {m}],
	m,
	TestID -> "Test-LanguageFilter-20200417-H8U2J5"
]

Test[
	LanguageFilter[n, {m}, {m, n}],
	0,
	TestID -> "Test-LanguageFilter-20200417-L2X7E9"
]

Test[
	LanguageFilter[m, {m}, {n}],
	LanguageFilter[m, {m}, {n}],
	TestID -> "Test-LanguageFilter-20200417-O8T1R4"
]

Test[
	LanguageFilter[m, {m, n}, {n}],
	LanguageFilter[m, {m, n}, {n}],
	TestID -> "Test-LanguageFilter-20200417-R2P3Q1"
]

Test[
	LanguageFilter[m**n, {m}, {m, n}],
	0,
	TestID -> "Test-LanguageFilter-20200417-Q7X3S2"
]

Test[
	LanguageFilter[m**n, {m}, {m}],
	0,
	TestID -> "Test-LanguageFilter-20200417-S7R5E2"
]

Test[
	LanguageFilter[m**n, {m, n}, {m, n}],
	m**n,
	TestID -> "Test-LanguageFilter-20200417-B3Q8T2"
]

Test[
	LanguageFilter[3 m**n, {m, n}, {m, n}],
	3 m**n,
	TestID -> "Test-LanguageFilter-20200417-L8P7V9"
]

Test[
	LanguageFilter[-z n**m, {m, n}, {m, n}],
	-n**m z,
	TestID -> "Test-LanguageFilter-20200417-A1T1R0"
]

Test[
	LanguageFilter[m**m + n**m -1, {m}, {m, n}],
	m**m - 1,
	TestID -> "Test-LanguageFilter-20200417-J3Z9Y6"
]

Test[
	LanguageFilter[n**(m + n), {m}, {m, n}],
	0,
	TestID -> "Test-LanguageFilter-20200417-X3A7D7"
]

Test[
	LanguageFilter[n**(m + n), {n}, {m, n}],
	n**n,
	TestID -> "Test-LanguageFilter-20200417-B1X6X2"
]
