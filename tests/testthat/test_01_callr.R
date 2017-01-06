library(testthat)
library(callr)

test_that( "callr works on travis", {
	do_something_dumb <- function() {
			callrtestthattravistest::dummy() == 42L
		}
	
	some_result <- callr::r( do_something_dumb , show = TRUE )
	expect_true( some_result )
})
