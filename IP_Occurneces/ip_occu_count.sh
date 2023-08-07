#!/bin/bash


input_file= $1

if [[ ! -f "$input_file" ]]; then
   echo " File not found"
   exit 1
fi 

decalre -A ip_count

while read -r ip; do
  ip_count["ip"]=$((ip_count["$ip"] + 1))
done <"input.file"

max_count=0
max_occuerneces_ip=""

for ip in "${!ip_count[@]}";do
   count=${ip_count["$ip"]}
   if [[ "$count" -gt "$max_count"]];then
   max_occuerneces_ip="$ip"
   max_count="$count"
   fi
done

#result

if [[ -n "$max_occuerneces_ip"]]; then
  echo "Most Occuerences IP : $max_occuerneces_ip"
else
  echo "No Ip Addresse are Duplicate"
fi
