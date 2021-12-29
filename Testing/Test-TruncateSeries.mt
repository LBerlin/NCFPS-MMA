(* Mathematica Test File *)

SNC[m, n];

Test[
    TruncateSeries[1, 1],
    1,
    TestID -> "Test-TruncateSeries-20200426-2544791"
]

Test[
    TruncateSeries[1 + m, 1],
    1 + m,
    TestID -> "Test-TruncateSeries-20200426-2655200"
]

Test[
    TruncateSeries[3 m, 1],
    3 m,
    TestID -> "Test-TruncateSeries-20200426-2852046"
]

Test[
    TruncateSeries[m, 1],
    m,
    TestID -> "Test-TruncateSeries-20200426-2935855"
]

Test[
    TruncateSeries[m**n, 1],
    0,
    TestID -> "Test-TruncateSeries-20200426-2954242"
]

Test[
    TruncateSeries[3 m**n, 1],
    0,
    TestID -> "Test-TruncateSeries-20200426-3134469"
]

Test[
    TruncateSeries[m**n, 2],
    m**n,
    TestID -> "Test-TruncateSeries-20200426-3157228"
]

Test[
    TruncateSeries[-n**m, 2],
    -n**m,
    TestID -> "Test-TruncateSeries-20200426-3337909"
]

Test[
    TruncateSeries[a b x y + a m**m - z n**n**n**n, 3],
    a b x y + a m**m,
    TestID -> "Test-TruncateSeries-20200426-3507215"
]

Test[
    TruncateSeries[a m**n z, 2],
    a m**n z,
    TestID -> "Test-TruncateSeries-20200426-3801621"
]

Test[
    TruncateSeries[a m, 1],
    a m,
    TestID -> "Test-TruncateSeries-20200426-4009157"
]

Test[
    TruncateSeries[m z, 1],
    m z,
    TestID -> "Test-TruncateSeries-20200426-4023355"
]

Test[
    TruncateSeries[m**n**n**m**n - a m**n**m + 1 + a, 2],
    1 + a,
    TestID -> "Test-TruncateSeries-20200426-4809343"
]