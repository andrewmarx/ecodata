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
