(* Wolfram Language Test file *)

SNC[m, n];

Test[
	Support[m],
	{m},
	TestID -> "Test-Support-20200426-W0S0O0"
]

Test[
	Support[3 m],
	{m},
	TestID -> "Test-Support-20200426-C6G1R1"
]

Test[
	Support[-m],
	{m},
	TestID -> "Test-Support-20200426-O5E3B8"
]

Test[
	Support[a m],
	{m},
	TestID -> "Test-Support-20200426-X3W7A5"
]

Test[
	Support[m z],
	{m},
	TestID -> "Test-Support-20200426-E0U5M0"
]

Test[
	Support[a b m x],
	{m},
	TestID -> "Test-Support-20200426-P3F7W5"
]

Test[
	Support[a],
	{1},
	TestID -> "Test-Support-20200426-F1B9Y8"
]

Test[
	Support[3],
	{1},
	TestID -> "Test-Support-20200426-T3O1E2"
]

Test[
	Support[a + m],
	{1, m},
	TestID -> "Test-Support-20200426-O3L2N7"
]

Test[
	Support[2(a + m)],
	{1, m},
	TestID -> "Test-Support-20200426-I1A8J5"
]

Test[
	Support[m**n],
	{m**n},
	TestID -> "Test-Support-20200426-R5V3C4"
]

Test[
	Support[3 m**n],
	{m**n},
	TestID -> "Test-Support-20200426-B4L5T7"
]

Test[
	Support[-m**n],
	{m**n},
	TestID -> "Test-Support-20200426-N1X2L9"
]

Test[
	Support[a m**n],
	{m**n},
	TestID -> "Test-Support-20200426-T2J6H5"
]

Test[
	Support[m**n z],
	{m**n},
	TestID -> "Test-Support-20200426-L6P9H5"
]

Test[
	Support[a b m**n z],
	{m**n},
	TestID -> "Test-Support-20200426-E9W9A3"
]

Test[
	Support[a + m**n],
	{1, m**n},
	TestID -> "Test-Support-20200426-H4Z5H4"
]

Test[
	Support[2(a + m**n)],
	{1, m**n},
	TestID -> "Test-Support-20200426-L5U5X4"
]

Test[
	Support[a z + a m**n**m - z m],
	Sort@{1, m**n**m, m},
	TestID -> "Test-Support-20200426-V1Y4K7"
]

Test[
	Support[m**(n - 2 m) + 2(m + n**n + n)**m + m**n],
	Sort@{m**n, n**n**m, n**m},
	TestID -> "Test-Support-20200426-E5B3M7"
]

Test[
	Support[n**(5 a + m**(3 n**n - m)**n - (a m**(n + m) + n)**m)],
	Sort@{n, n**m**n**n**n, n**m**m**n, n**m**n**m, n**m**m**m, n**n**m},
	TestID -> "Test-Support-20200426-U1S6A9"
]