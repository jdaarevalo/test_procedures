-- Start transaction and plan the tests.
BEGIN;

-- start with a plan, plan is a function to indicate how many test should be executed on this test
SELECT plan(2);

\set account_id 5
\set invite_id 10
\set invite_error_id 100
\set list_id 99

-- Creation of account table 
-- ## Create functions to create and fill tables 
CREATE TABLE IF NOT EXISTS account (
  id INT NOT NULL,
  username varchar(450) NOT NULL,
  email	varchar(450) NOT NULL,
  validated varchar(450) NOT NULL
);

insert into accounts
(id, username, email, validated)
values (:account_id, 'test', 'test@gurn.io', '1');

-- Run the tests.
SELECT pass( 'My test passed, w00t!' );
SELECT ok( 9 + 2 = 11, 'boolean validation' );

-- Finish the tests and clean up.
SELECT * FROM finish();
ROLLBACK;
