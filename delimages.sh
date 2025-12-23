#!/bin/bash
for i in $(docker images -q | sort -u); do
  [ "$i" = "18b0fda1fa3d" ] || [ "$i" = "7171c97a5162" ] || docker rmi -f "$i"
done

