(* Wolfram Language Test file *)

SNC[m, n];

Test[
	FirstLetter[a],
	0,
	TestID -> "Test-FirstLetter-20200329-P2D1W8"
]

Test[
	FirstLetter[m**n],
	m,
	TestID -> "Test-FirstLetter-20200329-H7D3R3"
]

Test[
	FirstLetter[3 n**m],
	3 n,
	TestID -> "Test-FirstLetter-20200329-Q6Q1M4"
]

Test[
	FirstLetter[a m],
	a m,
	TestID -> "Test-FirstLetter-20200329-W2B8O9"
]

Test[
	FirstLetter[m z],
	m z,
	TestID -> "Test-FirstLetter-20200329-D1X4F3"
]

Test[
	FirstLetter[m**n z],
	m z,
	TestID -> "Test-FirstLetter-20200329-A7W4P7"
]

Test[
	FirstLetter[2 + n**m + 3 m],
	n + 3 m,
	TestID -> "Test-FirstLetter-20200329-J4H9X1"
]

Test[
	FirstLetter[a**n**m],
	a n,
	TestID -> "Test-FirstLetter-20200329-W8B5Y5"
]

Test[
	FirstLetter[-m**n],
	-m,
	TestID -> "Test-FirstLetter-20200329-U5M7S1"
]

Test[
	FirstLetter[m n**m],
	m n,
	TestID -> "Test-FirstLetter-20200329-J5P3L9"
]

Test[
	FirstLetter[m**(n**m - n + 2)],
	2 m,
	TestID -> "Test-FirstLetter-20200330-A3U6S6"
]

Test[
	FirstLetter[m**(n**m - m)],
	0,
	TestID -> "Test-FirstLetter-20200330-H9S5V5"
]

Test[
	FirstLetter[3 n**(m + n)],
	6 n,
	TestID -> "Test-FirstLetter-20200330-M3J4Q9"
]