(* Wolfram Language Test file *)

SNC[m, n];

x = {m, n};
x3 = {m, n, p};
xr = {n, m};
x3r = {p, n, m};
xm = {m};
xn = {n};

Test[
	RhoRightAugment[a, 1, x]
	,
	0
	,
	TestID->"Test-RhoRightAugment-20200517-A6L1S5"
]

(*TODO: Have a check on the index being < Length[x]*)
Test[
	RhoRightAugment[A[1, m], 2, x]
	,
	RhoRightAugment[A[1, m], 2, x]
	,
	TestID->"Test-RhoRightAugment-20200517-H9I0D3"
]

(*TODO: Single letter alphabets are invalid?*)
Test[
	RhoRightAugment[A[1, m], 0, xm]
	,
	RhoRightAugment[A[1, m], 0, xm]
	,
	TestID->"Test-RhoRightAugment-20200531-J3A3N7"
]

Test[
	RhoRightAugment[A[1, m], 0, x]
	,
	-A[1, m**m] + A[1, 1] * A[1, m**n]
	,
	TestID->"Test-RhoRightAugment-20200517-G6Y5M0"
]

Test[
	RhoRightAugment[A[1, n], 0, x]
	,
	-A[1, n**m] + A[1, 1] * A[1, n**n]
	,
	TestID->"Test-RhoRightAugment-20200517-S1J2F6"
]

Test[
	RhoRightAugment[A[1, 1], 0, x]
	,
	-A[1, m] + A[1, 1] A[1, n]
	,
	TestID->"Test-RhoRightAugment-20200517-P6U1Z0"
]

Test[
	RhoRightAugment[A[1, m**n], 1, x]
	,
	-A[1, m**n**n]
	,
	TestID->"Test-RhoRightAugment-20200517-R4I5P4"
]

Test[
	RhoRightAugment[A[2, n**n], 1, x]
	,
	-A[2, n**n**n]
	,
	TestID->"Test-RhoRightAugment-20200517-E5O6T2"
]

Test[
	RhoRightAugment[A[1, m] + A[2, m], 1, x]
	,
	-A[1, m**n] - A[2, m**n]
	,
	TestID->"Test-RhoRightAugment-20200517-O2W4H8"
]

Test[
	RhoRightAugment[A[1, m] - A[1, m], 0, x]
	,
	0
	,
	TestID->"Test-RhoRightAugment-20200517-O2T6T2"
]

Test[
	RhoRightAugment[3 A[2, m], 0, x]
	,
	-3 A[2, m**m] + 3 A[1, 1] A[2, m**n]
	,
	TestID->"Test-RhoRightAugment-20200519-E1E5G7"
]

Test[
	RhoRightAugment[-A[1, m], 1, x]
	,
	A[1, m**n]
	,
	TestID->"Test-RhoRightAugment-20200519-U3Q5Y4"
]

Test[
	RhoRightAugment[A[1, m] A[1, n], 0, x] //Expand
	,
	(-A[1, m**m] + A[1, 1] A[1, m**n]) A[1, n] 
		+ A[1, m] (-A[1, n**m] + A[1, 1] A[1, n**n]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200519-Q6D9A0"
]

Test[
	RhoRightAugment[A[1, m**n] (A[2, m] - A[1, n]), 1, x] //Expand
	,
	-A[1, m**n**n] (A[2, m] - A[1, n]) + A[1, m**n] (-A[2, m**n] + A[1, n**n]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200519-N5W0M8"
]

Test[
	RhoRightAugment[A[1, m] + 3 A[2, n] A[2, m], 0, x] //Expand
	,
	-A[1, m**m] + A[1, 1] * A[1, m**n] 
		+ 3 (-A[2, n**m] + A[1, 1] A[2, n**n]) * A[2, m] 
		+ 3 A[2, n] (-A[2, m**m] + A[1, 1] A[2, m**n]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200519-C6S8U0"
]

Test[
	RhoRightAugment[A[1, m]^2, 0, x] //Expand
	,
	2 A[1, m] (-A[1, m**m] + A[1, 1] A[1, m**n]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200519-B4O8F9"
]

Test[
	RhoRightAugment[A[1, n]^3, 0, x] //Expand
	,
	3 A[1, n]^2 (-A[1, n**m] + A[1, 1] A[1, n**n]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200519-L4R7N7"
]

(*TODO: Should guard against exponents that are not nonnegative integers.*)
Test[
	RhoRightAugment[A[1, m]^3.5, 0, x]
	,
	RhoRightAugment[A[1, m]^3.5, 0, x]
	,
	TestID->"Test-RhoRightAugment-20200519-B2X0B3"
]

Test[
	RhoRightAugment[A[1, m]^-2, 0, xr]
	,
	RhoRightAugment[A[1, m]^-2, 0, xr]
	,
	TestID->"Test-RhoRightAugment-20200604-G2D6E7"
]

Test[
	RhoRightAugment[4 A[3, m**n] (A[1, n**n]^3 A[1, m**n] + A[2, n]), 1, x] //Expand
	,
	-4 A[3, m**n**n] (A[1, n**n]^3 A[1, m**n] + A[2, n]) 
		+ 4 A[3, m**n] (-3 A[1, n**n]^2 A[1, n**n**n] A[1, m**n] 
		- A[1, n**n]^3 A[1, m**n**n] - A[2, n**n]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200519-U9W5U1"
]

(*==============================================*)
(*Three letters.*)
Test[
	RhoRightAugment[A[1, 1], 1, x3]
	,
	-A[1, n]
	,
	TestID->"Test-RhoRightAugment-20200602-F5U8G6"
]

Test[
	RhoRightAugment[A[2, 1], 0, x3]
	,
	-A[2, m] + A[1, 1] * A[2, n] + A[2, 1] * A[2, p]
	,
	TestID->"Test-RhoRightAugment-20200602-Q7E9N5"
]

Test[
	RhoRightAugment[A[3, m], 2, x3]
	,
	-A[3, m**p]
	,
	TestID->"Test-RhoRightAugment-20200602-N6X7Q5"
]

Test[
	RhoRightAugment[A[2, p], 1, x3]
	,
	-A[2, p**n]
	,
	TestID->"Test-RhoRightAugment-20200602-V1W4K5"
]

Test[
	RhoRightAugment[A[1, n], 0, x3]
	,
	-A[1, n**m] + A[1, 1] * A[1, n**n] + A[2, 1] * A[1, n**p]
	,
	TestID->"Test-RhoRightAugment-20200602-A6B5C6"
]

Test[
	RhoRightAugment[A[2, m**n], 0, x3]
	,
	-A[2, m**n**m] + A[1, 1] * A[2, m**n**n] + A[2, 1] * A[2, m**n**p]
	,
	TestID->"Test-RhoRightAugment-20200602-L6Z7F9"
]

Test[
	RhoRightAugment[A[2, m] + A[3, p], 0, x3]
	,
	-A[2, m**m] + A[1, 1] * A[2, m**n] + A[2, 1] * A[2, m**p]
		- A[3, p**m] + A[1, 1] * A[3, p**n] + A[2, 1] * A[3, p**p]
	,
	TestID->"Test-RhoRightAugment-20200602-U2G1K6"
]

Test[
	RhoRightAugment[3 A[3, m], 0, x3] //Expand
	,
	3 (-A[3, m**m] + A[1, 1] * A[3, m**n] + A[2, 1] * A[3, m**p]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200603-K7G4O9"
]

Test[
	RhoRightAugment[A[2, n] A[3, n**m], 0, x3] //Expand
	,
	(-A[2, n**m] + A[1, 1] A[2, n**n] + A[2, 1] A[2, n**p]) A[3, n**m]
		+ A[2, n] (-A[3, n**m**m] + A[1, 1] A[3, n**m**n] + A[2, 1] A[3, n**m**p]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200603-R9A9W6"
]

Test[
	RhoRightAugment[A[2, n] A[3, n**m], 2, x3]
	,
	-A[2, n**p] A[3, n**m] - A[2, n] A[3, n**m**p]
	,
	TestID->"Test-RhoRightAugment-20200603-L3Y7U7"
]

Test[
	RhoRightAugment[A[2, m**n]^3, 1, x3]
	,
	-3 A[2, m**n]^2 A[2, m**n**n]
	,
	TestID->"Test-RhoRightAugment-20200603-R1A9F1"
]

Test[
	RhoRightAugment[A[2, m**n]^3, 0, x3] //Expand
	,
	3 A[2, m**n]^2 (-A[2, m**n**m] + A[1, 1] A[2, m**n**n] + A[2, 1] A[2, m**n**p]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200603-P5A0J4"
]

(*======================================*)
(*Reverse canonical alphabet.*)

Test[
	RhoRightAugment[a, 1, xr]
	,
	0
	,
	TestID->"Test-RhoRightAugment-20200604-C5A2K8"
]

(*TODO: Have a check on the index being < Length[x]*)
Test[
	RhoRightAugment[A[1, m], 2, xr]
	,
	RhoRightAugment[A[1, m], 2, xr]
	,
	TestID->"Test-RhoRightAugment-20200604-I0O8M5"
]

Test[
	RhoRightAugment[A[1, m], 0, xr]
	,
	-A[1, m**n] + A[1, 1] * A[1, m**m]
	,
	TestID->"Test-RhoRightAugment-20200604-I4E8C7"
]

Test[
	RhoRightAugment[A[1, n], 0, xr]
	,
	-A[1, n**n] + A[1, 1] * A[1, n**m]
	,
	TestID->"Test-RhoRightAugment-20200604-T4B4S6"
]

Test[
	RhoRightAugment[A[1, 1], 0, xr]
	,
	-A[1, n] + A[1, 1] A[1, m]
	,
	TestID->"Test-RhoRightAugment-20200604-I9V5V9"
]

Test[
	RhoRightAugment[A[1, m**n], 1, xr]
	,
	-A[1, m**n**m]
	,
	TestID->"Test-RhoRightAugment-20200604-T7I0P6"
]

Test[
	RhoRightAugment[A[2, n**n], 1, xr]
	,
	-A[2, n**n**m]
	,
	TestID->"Test-RhoRightAugment-20200604-B9F2P2"
]

Test[
	RhoRightAugment[A[1, m] + A[2, m], 1, xr]
	,
	-A[1, m**m] - A[2, m**m]
	,
	TestID->"Test-RhoRightAugment-20200604-L6X5U5"
]

Test[
	RhoRightAugment[A[1, m] - A[1, m], 0, xr]
	,
	0
	,
	TestID->"Test-RhoRightAugment-20200604-B5F1G1"
]

Test[
	RhoRightAugment[3 A[2, m], 0, xr]
	,
	-3 A[2, m**n] + 3 A[1, 1] A[2, m**m]
	,
	TestID->"Test-RhoRightAugment-20200604-L5O0O4"
]

Test[
	RhoRightAugment[-A[1, m], 1, xr]
	,
	A[1, m**m]
	,
	TestID->"Test-RhoRightAugment-20200604-J8H7O0"
]

Test[
	RhoRightAugment[A[1, m] A[1, n], 0, xr] //Expand
	,
	(-A[1, m**n] + A[1, 1] A[1, m**m]) A[1, n] 
		+ A[1, m] (-A[1, n**n] + A[1, 1] A[1, n**m]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200604-T6K5N4"
]

Test[
	RhoRightAugment[A[1, m**n] (A[2, m] - A[1, n]), 1, xr] //Expand
	,
	-A[1, m**n**m] (A[2, m] - A[1, n]) + A[1, m**n] (-A[2, m**m] + A[1, n**m]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200604-L8J1O5"
]

Test[
	RhoRightAugment[A[1, m] + 3 A[2, n] A[2, m], 0, xr] //Expand
	,
	-A[1, m**n] + A[1, 1] * A[1, m**m] 
		+ 3 (-A[2, n**n] + A[1, 1] A[2, n**m]) * A[2, m] 
		+ 3 A[2, n] (-A[2, m**n] + A[1, 1] A[2, m**m]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200604-L8Y9M1"
]

Test[
	RhoRightAugment[A[1, m]^2, 0, xr] //Expand
	,
	2 A[1, m] (-A[1, m**n] + A[1, 1] A[1, m**m]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200604-Y3D3K7"
]

Test[
	RhoRightAugment[A[1, n]^3, 0, xr] //Expand
	,
	3 A[1, n]^2 (-A[1, n**n] + A[1, 1] A[1, n**m]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200604-R9X3X0"
]

(*TODO: Should guard against exponents that are not nonnegative integers.*)
Test[
	RhoRightAugment[A[1, m]^3.5, 0, xr]
	,
	RhoRightAugment[A[1, m]^3.5, 0, xr]
	,
	TestID->"Test-RhoRightAugment-20200604-A2G6R9"
]

Test[
	RhoRightAugment[A[1, m]^-2, 0, xr]
	,
	RhoRightAugment[A[1, m]^-2, 0, xr]
	,
	TestID->"Test-RhoRightAugment-20200604-F9X3F6"
]

Test[
	RhoRightAugment[4 A[3, m**n] (A[1, n**n]^3 A[1, m**n] + A[2, n]), 1, xr] //Expand
	,
	-4 A[3, m**n**m] (A[1, n**n]^3 A[1, m**n] + A[2, n]) 
		+ 4 A[3, m**n] (-3 A[1, n**n]^2 A[1, n**n**m] A[1, m**n] 
		- A[1, n**n]^3 A[1, m**n**m] - A[2, n**m]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200604-E7U4N0"
]

(*==============================================*)
(*Three letters.*)
Test[
	RhoRightAugment[A[1, 1], 1, x3r]
	,
	-A[1, n]
	,
	TestID->"Test-RhoRightAugment-20200604-L7K1S8"
]

Test[
	RhoRightAugment[A[2, 1], 0, x3r]
	,
	-A[2, p] + A[1, 1] * A[2, n] + A[2, 1] * A[2, m]
	,
	TestID->"Test-RhoRightAugment-20200604-G0I2E8"
]

Test[
	RhoRightAugment[A[3, m], 2, x3r]
	,
	-A[3, m**m]
	,
	TestID->"Test-RhoRightAugment-20200604-O0Q9R2"
]

Test[
	RhoRightAugment[A[2, p], 1, x3r]
	,
	-A[2, p**n]
	,
	TestID->"Test-RhoRightAugment-20200604-D5H8F8"
]

Test[
	RhoRightAugment[A[1, n], 0, x3r]
	,
	-A[1, n**p] + A[1, 1] * A[1, n**n] + A[2, 1] * A[1, n**m]
	,
	TestID->"Test-RhoRightAugment-20200604-V3U8H3"
]

Test[
	RhoRightAugment[A[2, m**n], 0, x3r]
	,
	-A[2, m**n**p] + A[1, 1] * A[2, m**n**n] + A[2, 1] * A[2, m**n**m]
	,
	TestID->"Test-RhoRightAugment-20200604-R6F3E3"
]

Test[
	RhoRightAugment[A[2, m] + A[3, p], 0, x3r]
	,
	-A[2, m**p] + A[1, 1] * A[2, m**n] + A[2, 1] * A[2, m**m]
		- A[3, p**p] + A[1, 1] * A[3, p**n] + A[2, 1] * A[3, p**m]
	,
	TestID->"Test-RhoRightAugment-20200604-P3V0M8"
]

Test[
	RhoRightAugment[3 A[3, m], 0, x3r] //Expand
	,
	3 (-A[3, m**p] + A[1, 1] * A[3, m**n] + A[2, 1] * A[3, m**m]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200604-X1K4P4"
]

Test[
	RhoRightAugment[A[2, n] A[3, n**m], 0, x3r] //Expand
	,
	(-A[2, n**p] + A[1, 1] A[2, n**n] + A[2, 1] A[2, n**m]) A[3, n**m]
		+ A[2, n] (-A[3, n**m**p] + A[1, 1] A[3, n**m**n] + A[2, 1] A[3, n**m**m]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200604-J3Y4X6"
]

Test[
	RhoRightAugment[A[2, n] A[3, n**m], 2, x3r]
	,
	-A[2, n**m] A[3, n**m] - A[2, n] A[3, n**m**m]
	,
	TestID->"Test-RhoRightAugment-20200604-E6L2T2"
]

Test[
	RhoRightAugment[A[2, m**n]^3, 1, x3r]
	,
	-3 A[2, m**n]^2 A[2, m**n**n]
	,
	TestID->"Test-RhoRightAugment-20200604-N1D9D9"
]

Test[
	RhoRightAugment[A[2, m**n]^3, 0, x3r] //Expand
	,
	3 A[2, m**n]^2 (-A[2, m**n**p] + A[1, 1] A[2, m**n**n] + A[2, 1] A[2, m**n**m]) //Expand
	,
	TestID->"Test-RhoRightAugment-20200604-T9C5J6"
]