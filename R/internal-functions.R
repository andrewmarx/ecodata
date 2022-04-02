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
    sd <- c(
      'Landscape Ecology', 'LE Description',
      'Molecular Ecology', 'ME Description',
      'Quantitative Ecology', 'QE Description'
    )

    data.frame(subdiscipline = sd[c(TRUE, FALSE)],
               description = sd[c(FALSE, TRUE)])
  }

#' Get topics data frame
#'
#' Returns the data frame of topics and their descriptions.
#'
#' @noRd
.get_topics <- function() {
  topics <- c(
    'Topic 1', 'Topic 1 Description',
    'Topic 2', 'Topic 2 Description',
    'Topic 3', 'Topic 3 Description'
  )

  data.frame(topic = topics[c(TRUE, FALSE)],
             description = topics[c(FALSE, TRUE)])
}

#' Get subdisciplines/topics pivot data frame
#'
#' Returns the data frame of topics assigned to subdisciplines.
#'
#' @noRd
.get_st_pivot <- function() {
  st <- c(
    'Landscape Ecology', 'Topic 1',
    'Landscape Ecology', 'Topic 3',
    'Molecular Ecology', 'Topic 2',
    'Molecular Ecology', 'Topic 3',
    'Quantitative Ecology', 'Topic 1',
    'Quantitative Ecology', 'Topic 2'
  )

  data.frame(subdiscipline = st[c(TRUE, FALSE)],
             topic = st[c(FALSE, TRUE)])
}

#' Get data sets data frame
#'
#' Returns the data frame of the data sets.
#'
#' @noRd
.get_data_sets <- function() {
  ds <- c(
    'Data set 1', 'Data Set 1 Description',
    'Data set 2', 'Data Set 2 Description',
    'Data set 3', 'Data Set 3 Description'
  )

  data.frame(data_set = ds[c(TRUE, FALSE)],
             description = ds[c(FALSE, TRUE)])
}

#' Get topics/data sets pivot data frame
#'
#' Returns the data frame of data sets assigned to topics
#'
#' @noRd
.get_td_pivot <- function() {
  td <- c(
    'Topic 1', 'Data set 1',
    'Topic 1', 'Data set 2',
    'Topic 2', 'Data set 2',
    'Topic 2', 'Data set 3',
    'Topic 3', 'Data set 1',
    'Topic 3', 'Data set 3'
  )

  data.frame(topic = td[c(TRUE, FALSE)],
             data_set = td[c(FALSE, TRUE)])
}
