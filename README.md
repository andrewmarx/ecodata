# ecodata

## Introduction

This package is designed to provide a variety of ecological datasets for educational purposes. It goes beyond the typical R data package and provides two extra features:

* *Datasets created dynamically from user-contributed functions.* These functions can do things like subset included data files, modify them, combine them, or even create artificial datasets entirely from scratch.
* *Dataset categorization.* Ecology is a broad field with many subdisciplines and types of analyses. A collection of datasets large enough to be broadly useful can be overwhelming to filter through individually, so the package has a system for categorization by *subdiscipline* and *topic*, which simplifies the process of exploring the various options.


## Installation

#### CRAN

The package has not been submitted to CRAN (Yet!).


#### GitHub

The latest version of the package can be installed directly from GitHub using `devtools::install_github("andrewmarx/ecodata")`.


## Usage

There are two approaches for accessing data in the package.

The first approach is to access the raw data like you would in typical data packages. This approach only applies to the original data files that were imported into the package. These can be listed using `data(package="ecodata")`. The documentation for them can be viewed using `help()`, for example: `help("lepanthes_rupestris")`. The documentation is also available in the online documentation: [Reference](https://andrewmarx.github.io/ecodata/reference/index.html)

The second approach to accessing datasets, including the dynamically generated ones, is via the `ecodata()` function. It handles the category selection process and runs the contributed functions that dynamically generate datasets. The manual pages for `ecodata()` explain the usage and have an example of how to use it.
