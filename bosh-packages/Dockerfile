FROM dpb587/bosh-ubuntu-trusty-stemcell:3541.9

ARG package
ARG bucket
ARG blobstore_id
ARG blobstore_sha1
RUN : \
  && export BOSH_COMPILE_TARGET=/var/vcap/data/compile/$package \
  && export BOSH_INSTALL_TARGET=/var/vcap/packages/$package \
  && wget -qO /tmp/package https://$bucket.s3.amazonaws.com/$blobstore_id \
  && echo "$blobstore_sha1  /tmp/package" | shasum -c \
  && mkdir -p $BOSH_COMPILE_TARGET $BOSH_INSTALL_TARGET \
  && tar -xzf /tmp/package -C $BOSH_COMPILE_TARGET \
  && cd $BOSH_COMPILE_TARGET \
  && bash -xe packaging \
  && rm -fr $BOSH_COMPILE_TARGET

