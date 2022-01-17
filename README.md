# **polygone: helper functions for manipulating spatial data in R**

This package is a an extension of existing R packages such as *sf* and *lwgeom*. The aim is to simplify common tasks carried out on spatial data such as computing contiguities, determine leaf nodes and merging polygons.

## Installation

Simply run the following to install the latest developer version:

    library(devtools)
    instal_github("thesixmax/polygone")

## List of functions

The following is the up to date list of functions available in the package. Please refer to the individual manual pages for more information. Currently, extended documentation with examples is work in progress.

-   `st_rook` : Compute a sparse index list of rook contiguities for an sf POLYGON object.

-   `st_leaf_nodes` : Compute leaf nodes of an sf LINESTRING object.

-   `st_nearest_node` : Compute the minimum distance linestring connection from an sf POINT object to the nodes of an sf LINESTRING object.

## Acknowledgement

This package is part of a project which gratefully acknowledges financial support from [**data.org**](https://data.org).
