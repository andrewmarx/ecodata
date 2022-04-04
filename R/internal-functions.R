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

#' Get data sets data frame
#'
#' Returns the data frame of the data sets.
#'
#' @noRd
.get_data_sets <- function() {
  ._data_sets
}

#' Get topics/data sets pivot data frame
#'
#' Returns the data frame of data sets assigned to topics
#'
#' @noRd
.get_td_pivot <- function() {
  ._td_pivot
}

#' Get the data set builder
#'
#' Returns a list with the info necessary to build a data set
#'
#' @noRd
.get_data_set_builder <- function() {
  list("Data set 1" = list(
    desc = "",
    files = c("file1", "file2"),
    params = NA,
    fn = function(f, p) {
    }
  ))
}
