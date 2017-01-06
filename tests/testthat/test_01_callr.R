library(testthat)
library(callr)

Sys.setenv("R_TESTS" = "")

test_that( "callr works on travis", {
	do_something_dumb <- function() {
			callrtestthattravistest::dummy() == 42L
		}
	
	some_result <- callr::r( do_something_dumb , show = TRUE )
	expect_true( some_result )
})
