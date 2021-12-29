(* Wolfram Language Test file *)

SNC[m, n];

Test[
	CharacteristicSeries[{m}],
	m,
	TestID -> "test-CharacteristicSeries-01"
]

Test[
	CharacteristicSeries[{m, n}],
	m + n,
	TestID -> "test-CharacteristicSeries-02"
]

Test[
	CharacteristicSeries[{m**n}],
	m**n,
	TestID -> "test-CharacteristicSeries-03"
]

Test[	
	CharacteristicSeries[{m**n, m**n}],
	2 m**n,
	TestID -> "test-CharacteristicSeries-04"
]

Test[
	CharacteristicSeries[{m**n, m}],
	m + m**n,
	TestID -> "test-CharacteristicSeries-05"
]

Test[
	CharacteristicSeries[{m**n, n, n**m}],
	m**n + n + n**m,
	TestID -> "test-CharacteristicSeries-06"
]