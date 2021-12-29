(* Wolfram Language Test file *)

SNC[m, n];

Test[
	KleeneStar[{m}, 0]
	,
	{1}
	,
	TestID->"Test-KleeneStar-20200513-J5X7R7"
]

Test[
	KleeneStar[{m}, 1]
	,
	{1, m}
	,
	TestID->"Test-KleeneStar-20200513-X0T7P3"
]

Test[
	KleeneStar[{m}, 2]
	,
	{1, m, m**m}
	,
	TestID->"Test-KleeneStar-20200513-C0L4C7"
]

Test[
	KleeneStar[{m, n}, 0]
	,
	{1}
	,
	TestID->"Test-KleeneStar-20200513-Z1Z9H6"
]

Test[
	KleeneStar[{m, n}, 1]
	,
	{1, m, n}
	,
	TestID->"Test-KleeneStar-20200513-Y8K7Q2"
]

Test[
	KleeneStar[{m, n}, 2]
	,
	{1, m, n, m**m, m**n, n**m, n**n}
	,
	TestID->"Test-KleeneStar-20200513-Q5O2X7"
]

(* TODO: Add message - nonunique list elements *)
Test[
	KleeneStar[{m, m}, 2]
	,
	{1, m, m**m}
	,
	TestID->"Test-KleeneStar-20200513-O9N4Z2"
]

(* TODO: Add message - commutative list elements *)
Test[
	KleeneStar[{a, m}, 1]
	,
	{1, m}
	,
	TestID->"Test-KleeneStar-20200513-C4J0B9"
]

(* TODO: Add message - second argument is not a positive integer *)
Test[
	KleeneStar[{m, n}, -1]
	,
	KleeneStar[{m, n}, -1]
	,
	TestID->"Test-KleeneStar-20200513-H4M6S0"
]


(*TODO: Add message - second argument is not a positive integer*)
Test[
	KleeneStar[{m, n}, a]
	,
	KleeneStar[{m, n}, a]
	,
	TestID->"Test-KleeneStar-20200513-D7K5G5"
]