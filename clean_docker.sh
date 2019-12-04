#!/usr/bin/env bash
docker system  prune  -a --filter "until=48h"
