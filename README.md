# GCS Fuse Demo

[Dockerfile](./Dockerfile) Builds a container that contains the gcsfuse binary and the `fuse` tools.
[fuse-demo.sh](./fuse-demo.sh) A demo script for mounting the GCS bucket to the local filesystem.

### GCS Fuse flags

- `--enable-hns=false` drastically improves the startup speed of gcsfuse; Hierarchical Namespace (HNS) support is disabled by default for buckets
- `--implicit-dirs` infers directories from object key prefixes
- `--key-file /auth` uses the JSON service account token provided in the file `/auth`; this can be mounted using Northflank's secret files feature
- `$GCS_FUSE_BUCKET` an environment variable specifying the bucket name
- `/gcs` the target mount path for the fuse mount
