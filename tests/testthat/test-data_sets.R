
test_that("Testing subdiscipline relationships", {
  sd <- .get_subdisciplines()
  st <- .get_st_pivot()

  expect_setequal(sd$subdiscipline, st$subdiscipline)
})

test_that("Testing topic relationships", {
  topics <- .get_topics()
  st <- .get_st_pivot()
  td <- .get_td_pivot()

  expect_setequal(topics$topic, st$topic)
  expect_setequal(topics$topic, td$topic)
})

test_that("Testing data set relationships", {
  ds <- .get_data_sets()
  td <- .get_td_pivot()

  expect_setequal(ds$data_set, td$data_set)
})
