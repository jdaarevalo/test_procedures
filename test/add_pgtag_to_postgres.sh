#!/bin/bash

# do pgTAP available to all new databases
psql -U postgres -c "CREATE EXTENSION IF NOT EXISTS pgtap;"


