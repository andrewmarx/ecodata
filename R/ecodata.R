# Copyright (c) 2022 Andrew Marx. All rights reserved.
# Licensed under GPLv3.0. See LICENSE file in the project root for details.

#' Load and/or save a data set
#'
#' Load a data set directly to an R object, save it as file, or both.
#'
#' This function is used to load one of the static or dynamic data sets provided
#' by the package. It can be either loaded directly into R as an object, or it
#' can be saved to a file by specifying the path parameter, or both.
#'
#' @param subdiscipline A string containing the name of an ecological discipline
#' @param topic A string containing the name of an analytical topic
#' @param data A string containing the name of a data set
#' @param path A string containing the path to save the data file
#'
#' @return An R object
#'
#' @example inst/examples/example.R
#'
#' @export

setGeneric(
  "ecodata",
  function(subdiscipline, topic, data, path) {
    standardGeneric("ecodata")
  })

#' @rdname ecodata
setMethod(
  "ecodata",
  signature(subdiscipline = "missing",
            topic = "missing",
            data = "missing",
            path = "missing"),
  function() {
    cat("A list of subdisciplines. Choose one for the first parameter:\n\n")

    sd = .get_subdisciplines()

    for (i in 1:nrow(sd)) {
      cat("\"", sd[i, 1], "\"\n", sep = "")
      cat("    ", sd[i, 2], "\n\n")
    }

    invisible(NULL)
  })

#' @rdname ecodata
setMethod(
  "ecodata",
  signature(subdiscipline = "character",
            topic = "missing",
            data = "missing",
            path = "missing"),
  function(subdiscipline) {
    sd = .get_subdisciplines()

    if (!subdiscipline %in% sd$subdiscipline) stop("Invalid subdiscipline. Make sure the spelling (including capitalization) matches one of the options from ecodata()", call. = FALSE)

    cat("A list of topics for ", subdiscipline, ". Choose one for the second parameter:\n\n", sep = "")

    st_pivot = .get_st_pivot()
    st_pivot = st_pivot[st_pivot$subdiscipline == subdiscipline, ]

    topics = .get_topics()
    topics = topics[topics$topic %in% st_pivot$topic, ]

    for (i in 1:nrow(topics)) {
      cat("\"", topics$topic[i], "\"\n", sep = "")
      cat("    ", topics$description[i], "\n\n")
    }

    invisible(topics)
  })

#' @rdname ecodata
setMethod(
  "ecodata",
  signature(subdiscipline = "character",
            topic = "character",
            data = "missing",
            path = "missing"),
  function(subdiscipline, topic) {
    capture.output(topics <- ecodata(subdiscipline))

    if (!topic %in% topics$topic) stop("Invalid topic. Make sure the spelling (including capitalization) matches one of the options from ecodata(subdiscipline)", call. = FALSE)

    cat("A list of topics for ", subdiscipline, " and ", topic, ". Choose one for the third parameter:\n\n", sep = "")

    td_pivot = .get_td_pivot()
    td_pivot = td_pivot[td_pivot$topic == topic, ]

    ds = .get_data_sets()
    ds = ds[ds$data_set %in% td_pivot$data_set, ]

    for (i in 1:nrow(ds)) {
      cat("\"", ds$data_set[i], "\"\n", sep = "")
      cat("    ", ds$description[i], "\n\n")
    }

    invisible(ds)
  })

#' @rdname ecodata
setMethod(
  "ecodata",
  signature(subdiscipline = "character",
            topic = "character",
            data = "character",
            path = "missing"),
  function(subdiscipline, topic, data) {
    capture.output(data_sets <- ecodata(subdiscipline, topic))

    if (!data %in% data_sets$data_set) stop("Invalid data set. Make sure the spelling (including capitalization) matches one of the options from ecodata(subdiscipline, topic)", call. = FALSE)

    .pkgenv$data_sets[[data]]$fn(.pkgenv$data_sets[[data]]$files, .pkgenv$data_sets[[data]]$params)
  })

#' @rdname ecodata
setMethod(
  "ecodata",
  signature(subdiscipline = "character",
            topic = "character",
            data = "character",
            path = "character"),
  function(subdiscipline, topic, data, path) {
    # TODO: same as ecodata(subdiscipline, topic, data), but with file export
    #   and invisible() return
    print("Not implemented yet")
  })

