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


## Contributing Datasets

The GitHub repository has been setup for users to suggest datasets to include in the package here: [Discussions](https://github.com/andrewmarx/ecodata/discussions/categories/dataset-suggestions).

Any type of ecological data will be considered, but due to CRAN package limits, very large datasets will not be implemented right away. Initially, the priority will be for datasets that can be used for multiple educational topics. Variety is welcome, and having multiple datasets per topic is an eventual goal. Datasets that consist of multiple files (e.g., related tables) are also welcome.

An important consideration for all datasets will be the license they are covered under. Currently, it is preferred that all datasets added to the package currently be publicly available under the [CC0 License](https://creativecommons.org/share-your-work/public-domain/cc0/), but other licenses may be considered

When suggesting datasets, please include the ecological subdiscipline(s) (e.g., Quant, Spatial, Landscape, Molecular, Disease, Movement, etc) and educational topic(s) within those subdisciplines the data can be used for.

If a dataset included in the package has additional uses it hasn't been categorized for, feel free to suggest additional categories.


