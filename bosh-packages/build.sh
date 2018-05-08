#!/bin/bash

set -e

docker build -t dpb587/bosh-docker-example:ruby-2.4-r4 \
  --build-arg bucket=bosh-packages-ruby-release \
  --build-arg package=ruby-2.4-r4 \
  --build-arg blobstore_id=5c202242-bb0d-46e5-6d53-db94f049215f \
  --build-arg blobstore_sha1=3f1809b9d7e326d8a701de516fb51ea4245913c6 \
  .

docker build -t dpb587/bosh-docker-example:golang-1.10-linux \
  --build-arg bucket=bosh-packages-golang-release \
  --build-arg package=golang-1.10-linux \
  --build-arg blobstore_id=439a17e0-0aed-4623-40ff-5982fbfb28db \
  --build-arg blobstore_sha1=212148ae3c30da937bea9403c857069c4530c4e3 \
  .

docker build -t dpb587/bosh-docker-example:postgres-9.4 \
  --build-arg bucket=blob.cfblob.com \
  --build-arg package=postgres-9.4 \
  --build-arg blobstore_id=396a76b4-28d9-46ee-6a62-b0f3b7c6b225 \
  --build-arg blobstore_sha1=2701bfffc3ccd052d7fcca8eeea70d623aea399a \
  .
