(* Mathematica Test File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)

SNC[m, n];

Test[
    WordLength[m],
    1,
    TestID -> "Test-WordLength-20200426-1918081"
]

Test[
    WordLength[1],
    0,
    TestID -> "Test-WordLength-20200426-4600237"
]

Test[
    WordLength[a],
    0,
    TestID -> "Test-WordLength-20200426-4754091"
]

Test[
    WordLength[m**n],
    2,
    TestID -> "Test-WordLength-20200426-5325027"
]

Test[
    WordLength[m**m],
    2,
    TestID -> "Test-WordLength-20200426-5527128"
]

Test[
    WordLength[m**n**m],
    3,
    TestID -> "Test-WordLength-20200426-5557339"
]

Test[
    WordLength[{m, m}],
    {1, 1},
    TestID -> "Test-WordLength-20200426-5631881"
]

Test[
    WordLength[{1, m}],
    {0, 1},
    TestID -> "Test-WordLength-20200426-5643929"
]

Test[
    WordLength[{a, m**n**n}],
    {0, 3},
    TestID -> "Test-WordLength-20200426-5912665"
]

Test[
    WordLength[{m**n**m, a, m}],
    {3, 0, 1},
    TestID -> "Test-WordLength-20200426-040750"
]

(*==================================================*)

Test[
    WordLength[m, m],
    1,
    TestID -> "Test-WordLength-20200426-4659193"
]

Test[
    WordLength[m, n],
    0,
    TestID -> "Test-WordLength-20200426-5303101"
]

Test[
    WordLength[n, m],
    0,
    TestID -> "Test-WordLength-20200426-5314268"
]

Test[
    WordLength[a, m],
    0,
    TestID -> "Test-WordLength-20200426-5357022"
]

Test[
    WordLength[1, m],
    0,
    TestID -> "Test-WordLength-20200426-5500152"
]

Test[
    WordLength[m**n, m],
    1,
    TestID -> "Test-WordLength-20200426-049073"
]

Test[
    WordLength[m**n, n],
    1,
    TestID -> "Test-WordLength-20200426-107096"
]

Test[
    WordLength[m**m, m],
    2,
    TestID -> "Test-WordLength-20200426-120620"
]

Test[
    WordLength[m**m, n],
    0,
    TestID -> "Test-WordLength-20200426-135152"
]

Test[
    WordLength[m**n**m, m],
    2,
    TestID -> "Test-WordLength-20200426-234400"
]

Test[
    WordLength[m**n**m, n],
    1,
    TestID -> "Test-WordLength-20200426-247575"
]

Test[
    WordLength[{m, m}, m],
    {1, 1},
    TestID -> "Test-WordLength-20200426-331657"
]

Test[
    WordLength[{m, m}, n],
    {0, 0},
    TestID -> "Test-WordLength-20200426-506253"
]

Test[
    WordLength[{1, m}, m],
    {0, 1},
    TestID -> "Test-WordLength-20200426-427350"
]

Test[
    WordLength[{1, m}, n],
    {0, 0},
    TestID -> "Test-WordLength-20200426-701145"
]

Test[
    WordLength[{a, m**n**n}, n],
    {0, 2},
    TestID -> "Test-WordLength-20200426-758133"
]

Test[
    WordLength[{a, m**n**n}, m],
    {0, 1},
    TestID -> "Test-WordLength-20200426-836431"
]

Test[
    WordLength[{m**n**m, a, m}, m],
    {2, 0, 1},
    TestID -> "Test-WordLength-20200426-1028086"
]

Test[
    WordLength[{m**n**m, a, m}, n],
    {1, 0, 0},
    TestID -> "Test-WordLength-20200426-1117931"
]