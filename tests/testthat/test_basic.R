context("basic checks")

test_that("m2ll computation succeeds", {
 library(rdec)
 data(rdtest)
 f1 = rdec(rdec.y~rdec.x, id=rdtest$rdec.id, 
   S=rdtest$rdec.s, 
   omega.init = c(.5,.5), 
   omega.low=c(.01,.01), 
   omega.high=c(.95, .95), data=rdtest )
 expect_true(abs(f1$m2ll - 352.8368)<.001)
})
