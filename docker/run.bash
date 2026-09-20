#!/bin/bash
# Bind-mounts src/ so edits are picked up live by the dev server.
docker run -it --rm --net=host -v "./src":/app/src managing_conflicting_tasks_website
