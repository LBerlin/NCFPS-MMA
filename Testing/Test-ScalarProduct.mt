(* Mathematica Test File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)

BeginTestSection["Test-ScalarProduct.mt"]

SNC[m, n, o];
alph = {m, n, o};

(*Create a list of coefficients for all words in a given language*)
Clear[CoefficientVector]
CoefficientVector[c_, lang_] :=
  {ImproperPart@c} ~Join~ Table[Coefficient[ExpandNonCommutativeMultiply@c, i], {i, Drop[lang, 1]}]

series = {2, m, n, o, m + n, n - m, m - n, o + m + n, 2*m, 2*n, n*2, m*2,
  2 + m, m + 2, 2 - m, m - 2,	2 + n, n + 2, 2 - n, n - 2,
  a*m, m*a, a*n, n*a, z*m, m*z, z*n, n*z,
  a + m, a + n, a - m, a - n, m - a, n - a,
  a + 2m, a + 2n, a - 2m, a - 2n, 2n - a, 2m - a,
  2 + a*m, 2 + a*n, 2 - a*m, 2 - a*n, a*n - 2, a*m - 2,
  m**m, m**n, n**m, n**n, o**m,
  2*m**n, m**n*2, a*m**n, m**n*a,
  2 + m**n, m**n - 2, 2 - m**n,
  2 + a*m**n, 2 - a*m**n, a*m**n - 2,
  m**n**o, m**o**m, o**n**o,
  (*unexpanded series*)m**(m - n), (n - m)**m,
  n**(2 + n), (m - 2)**n, 2**(m + n), 2*(m + n), 2*(m**n - n),
  n**(a + n), (m - a)**n, a**(m + n), a*(m + n), a*(m**n - n),
  n**(z + n), (m - z)**n, z**(m + n), z*(m + n), z*(m**n - n),
  2*n**(a*m**n - 3*z*m**(n - m))
};

maxDegree = 3;

testLanguage = KleeneStar[alph, maxDegree]

seriesRand = Plus @@ ReleaseHold[testLanguage*Hold@RandomInteger[10]];

seriesRandArray = Table[Delete[seriesRand,
  Position[IntegerDigits[RandomInteger[2^Length[seriesRand]], 2], 1]], {i, 2^maxDegree}];

VerificationTest[
  ser1 = series[[1]];
  ser2 = series[[75]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-1"
]
VerificationTest[
  ser1 = series[[2]];
  ser2 = series[[27]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-2"
]
VerificationTest[
  ser1 = series[[3]];
  ser2 = series[[27]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-3"
]
VerificationTest[
  ser1 = series[[4]];
  ser2 = series[[69]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-4"
]
VerificationTest[
  ser1 = series[[5]];
  ser2 = series[[54]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-5"
]
VerificationTest[
  ser1 = series[[6]];
  ser2 = series[[51]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-6"
]
VerificationTest[
  ser1 = series[[7]];
  ser2 = series[[28]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-7"
]
VerificationTest[
  ser1 = series[[8]];
  ser2 = series[[23]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-8"
]
VerificationTest[
  ser1 = series[[9]];
  ser2 = series[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-9"
]
VerificationTest[
  ser1 = series[[10]];
  ser2 = series[[31]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-10"
]
VerificationTest[
  ser1 = series[[11]];
  ser2 = series[[21]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-11"
]
VerificationTest[
  ser1 = series[[12]];
  ser2 = series[[28]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-12"
]
VerificationTest[
  ser1 = series[[13]];
  ser2 = series[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-13"
]
VerificationTest[
  ser1 = series[[14]];
  ser2 = series[[30]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-14"
]
VerificationTest[
  ser1 = series[[15]];
  ser2 = series[[34]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-15"
]
VerificationTest[
  ser1 = series[[16]];
  ser2 = series[[61]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-16"
]
VerificationTest[
  ser1 = series[[17]];
  ser2 = series[[42]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-17"
]
VerificationTest[
  ser1 = series[[18]];
  ser2 = series[[38]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-18"
]
VerificationTest[
  ser1 = series[[19]];
  ser2 = series[[25]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-19"
]
VerificationTest[
  ser1 = series[[20]];
  ser2 = series[[19]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-20"
]
VerificationTest[
  ser1 = series[[21]];
  ser2 = series[[30]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-21"
]
VerificationTest[
  ser1 = series[[22]];
  ser2 = series[[76]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-22"
]
VerificationTest[
  ser1 = series[[23]];
  ser2 = series[[69]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-23"
]
VerificationTest[
  ser1 = series[[24]];
  ser2 = series[[32]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-24"
]
VerificationTest[
  ser1 = series[[25]];
  ser2 = series[[32]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-25"
]
VerificationTest[
  ser1 = series[[26]];
  ser2 = series[[24]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-26"
]
VerificationTest[
  ser1 = series[[27]];
  ser2 = series[[40]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-27"
]
VerificationTest[
  ser1 = series[[28]];
  ser2 = series[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-28"
]
VerificationTest[
  ser1 = series[[29]];
  ser2 = series[[23]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-29"
]
VerificationTest[
  ser1 = series[[30]];
  ser2 = series[[18]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-30"
]
VerificationTest[
  ser1 = series[[31]];
  ser2 = series[[81]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-31"
]
VerificationTest[
  ser1 = series[[32]];
  ser2 = series[[58]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-32"
]
VerificationTest[
  ser1 = series[[33]];
  ser2 = series[[23]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-33"
]
VerificationTest[
  ser1 = series[[34]];
  ser2 = series[[78]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-34"
]
VerificationTest[
  ser1 = series[[35]];
  ser2 = series[[38]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-35"
]
VerificationTest[
  ser1 = series[[36]];
  ser2 = series[[55]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-36"
]
VerificationTest[
  ser1 = series[[37]];
  ser2 = series[[16]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-37"
]
VerificationTest[
  ser1 = series[[38]];
  ser2 = series[[46]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-38"
]
VerificationTest[
  ser1 = series[[39]];
  ser2 = series[[63]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-39"
]
VerificationTest[
  ser1 = series[[40]];
  ser2 = series[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-40"
]
VerificationTest[
  ser1 = series[[41]];
  ser2 = series[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-41"
]
VerificationTest[
  ser1 = series[[42]];
  ser2 = series[[65]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-42"
]
VerificationTest[
  ser1 = series[[43]];
  ser2 = series[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-43"
]
VerificationTest[
  ser1 = series[[44]];
  ser2 = series[[43]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-44"
]
VerificationTest[
  ser1 = series[[45]];
  ser2 = series[[24]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-45"
]
VerificationTest[
  ser1 = series[[46]];
  ser2 = series[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-46"
]
VerificationTest[
  ser1 = series[[47]];
  ser2 = series[[22]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-47"
]
VerificationTest[
  ser1 = series[[48]];
  ser2 = series[[81]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-48"
]
VerificationTest[
  ser1 = series[[49]];
  ser2 = series[[54]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-49"
]
VerificationTest[
  ser1 = series[[50]];
  ser2 = series[[53]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-50"
]
VerificationTest[
  ser1 = series[[51]];
  ser2 = series[[29]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-51"
]
VerificationTest[
  ser1 = series[[52]];
  ser2 = series[[55]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-52"
]
VerificationTest[
  ser1 = series[[53]];
  ser2 = series[[10]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-53"
]
VerificationTest[
  ser1 = series[[54]];
  ser2 = series[[73]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-54"
]
VerificationTest[
  ser1 = series[[55]];
  ser2 = series[[48]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-55"
]
VerificationTest[
  ser1 = series[[56]];
  ser2 = series[[19]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-56"
]
VerificationTest[
  ser1 = series[[57]];
  ser2 = series[[76]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-57"
]
VerificationTest[
  ser1 = series[[58]];
  ser2 = series[[13]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-58"
]
VerificationTest[
  ser1 = series[[59]];
  ser2 = series[[56]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-59"
]
VerificationTest[
  ser1 = series[[60]];
  ser2 = series[[73]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-60"
]
VerificationTest[
  ser1 = series[[61]];
  ser2 = series[[39]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-61"
]
VerificationTest[
  ser1 = series[[62]];
  ser2 = series[[50]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-62"
]
VerificationTest[
  ser1 = series[[63]];
  ser2 = series[[72]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-63"
]
VerificationTest[
  ser1 = series[[64]];
  ser2 = series[[66]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-64"
]
VerificationTest[
  ser1 = series[[65]];
  ser2 = series[[32]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-65"
]
VerificationTest[
  ser1 = series[[66]];
  ser2 = series[[52]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-66"
]
VerificationTest[
  ser1 = series[[67]];
  ser2 = series[[81]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-67"
]
VerificationTest[
  ser1 = series[[68]];
  ser2 = series[[44]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-68"
]
VerificationTest[
  ser1 = series[[69]];
  ser2 = series[[54]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-69"
]
VerificationTest[
  ser1 = series[[70]];
  ser2 = series[[18]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-70"
]
VerificationTest[
  ser1 = series[[71]];
  ser2 = series[[29]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-71"
]
VerificationTest[
  ser1 = series[[72]];
  ser2 = series[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-72"
]
VerificationTest[
  ser1 = series[[73]];
  ser2 = series[[26]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-73"
]
VerificationTest[
  ser1 = series[[74]];
  ser2 = series[[81]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-74"
]
VerificationTest[
  ser1 = series[[75]];
  ser2 = series[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-75"
]
VerificationTest[
  ser1 = series[[76]];
  ser2 = series[[80]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-76"
]
VerificationTest[
  ser1 = series[[77]];
  ser2 = series[[13]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-77"
]
VerificationTest[
  ser1 = series[[78]];
  ser2 = series[[34]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-78"
]
VerificationTest[
  ser1 = series[[79]];
  ser2 = series[[76]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-79"
]
VerificationTest[
  ser1 = series[[80]];
  ser2 = series[[36]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-80"
]
VerificationTest[
  ser1 = series[[81]];
  ser2 = series[[66]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-81"
]
VerificationTest[
  ser1 = series[[82]];
  ser2 = series[[81]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-82"
]
VerificationTest[
  ser1 = seriesRandArray[[1]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-1-1"
]
VerificationTest[
  ser1 = seriesRandArray[[1]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-1-2"
]
VerificationTest[
  ser1 = seriesRandArray[[1]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-1-3"
]
VerificationTest[
  ser1 = seriesRandArray[[1]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-1-4"
]
VerificationTest[
  ser1 = seriesRandArray[[1]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-1-5"
]
VerificationTest[
  ser1 = seriesRandArray[[1]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-1-6"
]
VerificationTest[
  ser1 = seriesRandArray[[1]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-1-7"
]
VerificationTest[
  ser1 = seriesRandArray[[1]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-1-8"
]
VerificationTest[
  ser1 = seriesRandArray[[2]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-2-1"
]
VerificationTest[
  ser1 = seriesRandArray[[2]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-2-2"
]
VerificationTest[
  ser1 = seriesRandArray[[2]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-2-3"
]
VerificationTest[
  ser1 = seriesRandArray[[2]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-2-4"
]
VerificationTest[
  ser1 = seriesRandArray[[2]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-2-5"
]
VerificationTest[
  ser1 = seriesRandArray[[2]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-2-6"
]
VerificationTest[
  ser1 = seriesRandArray[[2]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-2-7"
]
VerificationTest[
  ser1 = seriesRandArray[[2]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-2-8"
]
VerificationTest[
  ser1 = seriesRandArray[[3]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-3-1"
]
VerificationTest[
  ser1 = seriesRandArray[[3]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-3-2"
]
VerificationTest[
  ser1 = seriesRandArray[[3]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-3-3"
]
VerificationTest[
  ser1 = seriesRandArray[[3]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-3-4"
]
VerificationTest[
  ser1 = seriesRandArray[[3]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-3-5"
]
VerificationTest[
  ser1 = seriesRandArray[[3]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-3-6"
]
VerificationTest[
  ser1 = seriesRandArray[[3]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-3-7"
]
VerificationTest[
  ser1 = seriesRandArray[[3]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-3-8"
]
VerificationTest[
  ser1 = seriesRandArray[[4]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-4-1"
]
VerificationTest[
  ser1 = seriesRandArray[[4]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-4-2"
]
VerificationTest[
  ser1 = seriesRandArray[[4]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-4-3"
]
VerificationTest[
  ser1 = seriesRandArray[[4]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-4-4"
]
VerificationTest[
  ser1 = seriesRandArray[[4]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-4-5"
]
VerificationTest[
  ser1 = seriesRandArray[[4]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-4-6"
]
VerificationTest[
  ser1 = seriesRandArray[[4]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-4-7"
]
VerificationTest[
  ser1 = seriesRandArray[[4]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-4-8"
]
VerificationTest[
  ser1 = seriesRandArray[[5]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-5-1"
]
VerificationTest[
  ser1 = seriesRandArray[[5]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-5-2"
]
VerificationTest[
  ser1 = seriesRandArray[[5]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-5-3"
]
VerificationTest[
  ser1 = seriesRandArray[[5]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-5-4"
]
VerificationTest[
  ser1 = seriesRandArray[[5]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-5-5"
]
VerificationTest[
  ser1 = seriesRandArray[[5]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-5-6"
]
VerificationTest[
  ser1 = seriesRandArray[[5]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-5-7"
]
VerificationTest[
  ser1 = seriesRandArray[[5]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-5-8"
]
VerificationTest[
  ser1 = seriesRandArray[[6]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-6-1"
]
VerificationTest[
  ser1 = seriesRandArray[[6]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-6-2"
]
VerificationTest[
  ser1 = seriesRandArray[[6]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-6-3"
]
VerificationTest[
  ser1 = seriesRandArray[[6]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-6-4"
]
VerificationTest[
  ser1 = seriesRandArray[[6]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-6-5"
]
VerificationTest[
  ser1 = seriesRandArray[[6]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-6-6"
]
VerificationTest[
  ser1 = seriesRandArray[[6]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-6-7"
]
VerificationTest[
  ser1 = seriesRandArray[[6]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-6-8"
]
VerificationTest[
  ser1 = seriesRandArray[[7]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-7-1"
]
VerificationTest[
  ser1 = seriesRandArray[[7]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-7-2"
]
VerificationTest[
  ser1 = seriesRandArray[[7]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-7-3"
]
VerificationTest[
  ser1 = seriesRandArray[[7]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-7-4"
]
VerificationTest[
  ser1 = seriesRandArray[[7]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-7-5"
]
VerificationTest[
  ser1 = seriesRandArray[[7]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-7-6"
]
VerificationTest[
  ser1 = seriesRandArray[[7]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-7-7"
]
VerificationTest[
  ser1 = seriesRandArray[[7]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-7-8"
]
VerificationTest[
  ser1 = seriesRandArray[[8]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-8-1"
]
VerificationTest[
  ser1 = seriesRandArray[[8]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-8-2"
]
VerificationTest[
  ser1 = seriesRandArray[[8]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-8-3"
]
VerificationTest[
  ser1 = seriesRandArray[[8]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-8-4"
]
VerificationTest[
  ser1 = seriesRandArray[[8]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-8-5"
]
VerificationTest[
  ser1 = seriesRandArray[[8]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-8-6"
]
VerificationTest[
  ser1 = seriesRandArray[[8]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-8-7"
]
VerificationTest[
  ser1 = seriesRandArray[[8]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Randoms-8-8"
]
VerificationTest[
  ser1 = series[[1]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-1"
]
VerificationTest[
  ser1 = series[[2]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-2"
]
VerificationTest[
  ser1 = series[[3]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-3"
]
VerificationTest[
  ser1 = series[[4]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-4"
]
VerificationTest[
  ser1 = series[[5]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-5"
]
VerificationTest[
  ser1 = series[[6]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-6"
]
VerificationTest[
  ser1 = series[[7]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-7"
]
VerificationTest[
  ser1 = series[[8]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-8"
]
VerificationTest[
  ser1 = series[[9]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-9"
]
VerificationTest[
  ser1 = series[[10]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-10"
]
VerificationTest[
  ser1 = series[[11]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-11"
]
VerificationTest[
  ser1 = series[[12]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-12"
]
VerificationTest[
  ser1 = series[[13]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-13"
]
VerificationTest[
  ser1 = series[[14]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-14"
]
VerificationTest[
  ser1 = series[[15]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-15"
]
VerificationTest[
  ser1 = series[[16]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-16"
]
VerificationTest[
  ser1 = series[[17]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-17"
]
VerificationTest[
  ser1 = series[[18]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-18"
]
VerificationTest[
  ser1 = series[[19]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-19"
]
VerificationTest[
  ser1 = series[[20]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-20"
]
VerificationTest[
  ser1 = series[[21]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-21"
]
VerificationTest[
  ser1 = series[[22]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-22"
]
VerificationTest[
  ser1 = series[[23]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-23"
]
VerificationTest[
  ser1 = series[[24]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-24"
]
VerificationTest[
  ser1 = series[[25]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-25"
]
VerificationTest[
  ser1 = series[[26]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-26"
]
VerificationTest[
  ser1 = series[[27]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-27"
]
VerificationTest[
  ser1 = series[[28]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-28"
]
VerificationTest[
  ser1 = series[[29]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-29"
]
VerificationTest[
  ser1 = series[[30]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-30"
]
VerificationTest[
  ser1 = series[[31]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-31"
]
VerificationTest[
  ser1 = series[[32]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-32"
]
VerificationTest[
  ser1 = series[[33]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-33"
]
VerificationTest[
  ser1 = series[[34]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-34"
]
VerificationTest[
  ser1 = series[[35]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-35"
]
VerificationTest[
  ser1 = series[[36]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-36"
]
VerificationTest[
  ser1 = series[[37]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-37"
]
VerificationTest[
  ser1 = series[[38]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-38"
]
VerificationTest[
  ser1 = series[[39]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-39"
]
VerificationTest[
  ser1 = series[[40]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-40"
]
VerificationTest[
  ser1 = series[[41]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-41"
]
VerificationTest[
  ser1 = series[[42]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-42"
]
VerificationTest[
  ser1 = series[[43]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-43"
]
VerificationTest[
  ser1 = series[[44]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-44"
]
VerificationTest[
  ser1 = series[[45]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-45"
]
VerificationTest[
  ser1 = series[[46]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-46"
]
VerificationTest[
  ser1 = series[[47]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-47"
]
VerificationTest[
  ser1 = series[[48]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-48"
]
VerificationTest[
  ser1 = series[[49]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-49"
]
VerificationTest[
  ser1 = series[[50]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-50"
]
VerificationTest[
  ser1 = series[[51]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-51"
]
VerificationTest[
  ser1 = series[[52]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-52"
]
VerificationTest[
  ser1 = series[[53]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-53"
]
VerificationTest[
  ser1 = series[[54]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-54"
]
VerificationTest[
  ser1 = series[[55]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-55"
]
VerificationTest[
  ser1 = series[[56]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-56"
]
VerificationTest[
  ser1 = series[[57]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-57"
]
VerificationTest[
  ser1 = series[[58]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-58"
]
VerificationTest[
  ser1 = series[[59]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-59"
]
VerificationTest[
  ser1 = series[[60]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-60"
]
VerificationTest[
  ser1 = series[[61]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-61"
]
VerificationTest[
  ser1 = series[[62]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-62"
]
VerificationTest[
  ser1 = series[[63]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-63"
]
VerificationTest[
  ser1 = series[[64]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-64"
]
VerificationTest[
  ser1 = series[[65]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-65"
]
VerificationTest[
  ser1 = series[[66]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-66"
]
VerificationTest[
  ser1 = series[[67]];
  ser2 = seriesRandArray[[8]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-67"
]
VerificationTest[
  ser1 = series[[68]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-68"
]
VerificationTest[
  ser1 = series[[69]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-69"
]
VerificationTest[
  ser1 = series[[70]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-70"
]
VerificationTest[
  ser1 = series[[71]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-71"
]
VerificationTest[
  ser1 = series[[72]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-72"
]
VerificationTest[
  ser1 = series[[73]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-73"
]
VerificationTest[
  ser1 = series[[74]];
  ser2 = seriesRandArray[[2]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-74"
]
VerificationTest[
  ser1 = series[[75]];
  ser2 = seriesRandArray[[6]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-75"
]
VerificationTest[
  ser1 = series[[76]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-76"
]
VerificationTest[
  ser1 = series[[77]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-77"
]
VerificationTest[
  ser1 = series[[78]];
  ser2 = seriesRandArray[[7]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-78"
]
VerificationTest[
  ser1 = series[[79]];
  ser2 = seriesRandArray[[5]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-79"
]
VerificationTest[
  ser1 = series[[80]];
  ser2 = seriesRandArray[[1]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-80"
]
VerificationTest[
  ser1 = series[[81]];
  ser2 = seriesRandArray[[3]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-81"
]
VerificationTest[
  ser1 = series[[82]];
  ser2 = seriesRandArray[[4]];
  ScalarProduct[ser1, ser2]
  ,
  CoefficientVector[ser1, testLanguage].CoefficientVector[ser2, testLanguage]
  ,
  TestID->"Test-ScalarProduct-Mixed-82"
]