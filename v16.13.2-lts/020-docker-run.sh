#!/bin/bash

mlkdcknoderun \
  -u 1000:1000 \
  -w $(pwd) \
  -v $(pwd):$(pwd) \
  16.13.2
