#!/usr/bin/env bash

mkdir -p /gcs

gcsfuse --enable-hns=false --implicit-dirs --key-file /auth $GCS_FUSE_BUCKET /gcs

dd if=/dev/zero of=/gcs/file-write bs=512 count=2097152

sleep infinity
