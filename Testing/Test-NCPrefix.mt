(* Wolfram Language Test file *)

SNC[m, n];

Test[
	NCPrefix[m, {n}],
	{m**n},
	TestID -> "Test-NCPrefix-20200404-Y9G6R9"
]

Test[
	NCPrefix[m, {m, m}],
	{m**m, m**m},
	TestID -> "Test-NCPrefix-20200404-P6R9N4"
]

Test[
	NCPrefix[n, {n, m**n}],
	{n**n, n**m**n},
	TestID -> "Test-NCPrefix-20200404-K2S2X0"
]

Test[
	NCPrefix[m**n, {n, m**n}],
	{m**n**n, m**n**m**n},
	TestID -> "Test-NCPrefix-20200404-B1L3O5"
]

