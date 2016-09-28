#!/bin/bash

split -b 1k split.data split.data

ls -alhF

cat split.dataa* >> split.data.recovery

split -l 50 split.data split.data.line

ls -alhF

cat split.data.linea* >>  split.data.line.recovery
