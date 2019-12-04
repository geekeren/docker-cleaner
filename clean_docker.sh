#!/bin/bash
set -e
while true; do
  echo "Starting an new job to clean Docker..."
  echo "CLEAN_FILTER:${CLEAN_FILTER}, CLEAN_INTERVAL: ${CLEAN_INTERVAL}"
  docker system prune -a -f --filter ${CLEAN_FILTER}
  echo "All docker images after cleaning are at below:"
  docker images -a
  echo "Clean Docker job finised, next job will start after ${CLEAN_INTERVAL} seconds"
  sleep $CLEAN_INTERVAL
done
