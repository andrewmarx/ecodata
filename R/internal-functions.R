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

