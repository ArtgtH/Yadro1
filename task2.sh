#!/bin/bash
some_path="/var/log/syslog"
grep "error" "${some_path}" | head -n 5
