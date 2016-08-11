#!/bin/bash

echo "Running Tailon as python tailon -b 0.0.0.0:8084 -f $BASE"
tailon -b 0.0.0.0:8084 -f "${BASE}"
