#!/usr/bin/env bash

export REMOTE_BRANCH="$1"
export PR_SHA="$2"

if ! git merge-base --is-ancestor ${REMOTE_BRANCH} ${PR_SHA}; then
    echo "This branch is not up to date with ${REMOTE_BRANCH}";
    exit 1;
fi
