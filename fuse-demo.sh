#!/usr/bin/env bash

mkdir -p /gcs

echo "--- Mounting GCS ---"
time gcsfuse --enable-hns=false --implicit-dirs --key-file /auth $GCS_FUSE_BUCKET /gcs
echo "--- GCS Mounted ---"

dd if=/dev/zero of=/gcs/file-write bs=512 count=2024 status=progress

sleep infinity
