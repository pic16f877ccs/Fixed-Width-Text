#!/bin/bash

fwt () {
   if [ -n "$1" ]; then
       max_len="$(wc -L <$1)";
       while read var; do
          len=${#var};
          for i in $(seq 1 $(( max_len-len ))); do
             var=${var}' ';
          done 
          echo "${var}";
       done <"$1"
   else
       echo "No input file specified!";
   fi
}
