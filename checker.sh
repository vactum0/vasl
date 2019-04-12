#!/bin/bash
dig -f subdomains ANY 2> /dev/null | awk '/CNAME/ {print}'