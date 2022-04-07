# Copyright (c) 2022 Andrew Marx. All rights reserved.
# Licensed under GPLv3.0. See LICENSE file in the project root for details.
#
# This file is for internal functions. They are subject to change and should not
# be used by users.
#

#' Get subdisciplines data frame
#'
#' Returns the data frame of subdisciplines and their descriptions.
#'
#' @noRd
.get_subdisciplines <- function() {
    ._subdisciplines
  }

#' Get topics data frame
#'
#' Returns the data frame of topics and their descriptions.
#'
#' @noRd
.get_topics <- function() {
  ._topics
}

#' Get subdisciplines/topics pivot data frame
#'
#' Returns the data frame of topics assigned to subdisciplines.
#'
#' @noRd
.get_st_pivot <- function() {
  ._st_pivot
}

#' Get datafiles data frame
#'
#' Returns a data frame of the datafiles
#'
#' @noRd
.get_datafiles <- function() {
  data.frame("datafile" = ._datafiles,
             "description" = paste0("Raw data file. See help(\"", ._datafiles, "\") for details."))
}

#' Get datasets data frame
#'
#' Returns a data frame of the datasets.
#'
#' @noRd
.get_datasets <- function() {
  dataset_list <- lapply(seq_along(.pkgenv$datasets), function(i) {
    list("dataset" = names(.pkgenv$datasets)[i],
         "description" = .pkgenv$datasets[[i]]$desc)
  })

  datasets <- do.call(rbind.data.frame, dataset_list)

  data.frame(Map(c, datasets, .get_datafiles()))
}

#' Get topics/datasets pivot data frame
#'
#' Returns the data frame of datasets assigned to topics
#'
#' @noRd
.get_td_pivot <- function() {
  ._td_pivot
}


