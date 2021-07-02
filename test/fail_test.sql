-- Start transaction and plan the tests.
BEGIN;

-- start with a plan, plan is a function to indicate how many test should be executed
SELECT plan(2);

-- Run the tests.
SELECT pass('My test passed, w00t!' );
SELECT pass('My test passed, w00t!' );

-- Finish the tests and clean up.
SELECT * FROM finish();
ROLLBACK;
