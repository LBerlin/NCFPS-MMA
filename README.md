# NonCommutative Formal Power Series

## Description

NonCommutative Formal Power Series (NCFPS) is a Mathematica-based package for working with formal power series over noncommutative variables. It implements basic algebraic operations like the concatenation product and the shuffle product, as well as special purpose operations used in nonlinear control theory.

## Documentation

Descriptions and interactive examples of the included functions are available in the attached [documentation notebook](Documentation/Documentation.nb). Examples to get started using the package are also available in the [examples folder](Documentation/Examples).

## Installation

### From the Repository

This repository is structured to allow the paclet to be fetched directly from Mathematica. This makes updating to new package versions more convenient when compared to the method given below of installing from a file.

First, register the repository as a paclet site in Mathematica.

```wolfram
PacletSiteRegister["https://raw.githubusercontent.com/LBerlin/NCFPS-MMA/main"]
```

Then Mathematica should be able to find the latest version of the package available on this repository and install it.

```wolfram
PacletInstall["NCFPS"]
```

Now it should be possible to load in NCFPS, even after restarting Mathematica.

```wolfram
<<NCFPS`
```

### From File

Start by downloading the paclet file from the [latest release](https://github.com/LBerlin/NCFPS-MMA/releases/latest). Note the path where the file is saved.

Launch Mathematica and install the paclet using the file path.

```wolfram
PacletInstall["C:\\Users\\Alice\\Downloads\\NCFPS-0.1.0.paclet"]
```

Now it should be possible to load in NCFPS, even after restarting Mathematica.

```wolfram
<<NCFPS`
```

## Updating

### From the Repository

If the the repository has been added to your Mathematica as a paclet site as described in the [Installation section](#installation), then it is possible to update to newer version directly from a notebook. First, check for updates to the paclet site.

```wolfram
PacletSiteUpdate[PacletSites[]]
```

If a newer version is available, Mathematica will grab it.

```wolfram
PacletInstall["NCFPS"]
```

It is recommended at this point to uninstall any older versions of the package.

```wolfram
PacletUninstall[Drop[PacletFind["NCFPS"], 1]]
```

### From File

You can check the current installed version of the package with `PacletFind`.

```wolfram
PacletFind["NCFPS"]
```

If the [latest release](https://github.com/LBerlin/NCFPS-MMA/releases/latest) is more recent than the installed version, then download and install the newer paclet file.

```wolfram
PacletInstall["C:\\Users\\Alice\\Downloads\\NCFPS-0.1.0.paclet"]
```

It is recommended at this point to uninstall any older versions of the package.

```wolfram
PacletUninstall[Drop[PacletFind["NCFPS"], 1]]
```

## Issues

For any problems/bugs/issues/concerns please open an issue in the *Issues* tab above.

## Additional Resources

- An in-depth primer on this package's mathematic topics is available at http://www.ece.odu.edu/~sgray/fps-book/.

## Acknowledgments

Development of this package was supported in part by the National Science Foundation under grants CMMI-1839378 and CMMI-1839387.
