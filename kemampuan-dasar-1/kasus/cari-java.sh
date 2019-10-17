#!/bin/bash
find $1 -mindepth 1 -type d \( ! -iname "*.java" \)  | while read line;do
echo "Ada file Java pada direktori $line"
done
