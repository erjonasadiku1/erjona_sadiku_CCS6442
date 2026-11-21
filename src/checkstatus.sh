#!/bin/sh
until pg_isready -h postgres -p 5432
do
  echo "Database is not ready yet, checking again in 2 seconds"
  sleep 2
done

echo "Database exists and is ready"