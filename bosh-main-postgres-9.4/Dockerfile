FROM dpb587/bosh-ubuntu-trusty-stemcell:3541.9

COPY --from=dpb587/bosh-docker-example:ruby-2.4-r4 /var/vcap/packages/ruby-2.4-r4 /var/vcap/packages/ruby-2.4-r4
RUN echo "source /var/vcap/packages/ruby-2.4-r4/bosh/runtime.env" >> ~/.bashrc && cp /var/vcap/packages/ruby-2.4-r4/bosh/runtime.env /etc/profile.d/ruby-2.4-r4

COPY --from=dpb587/bosh-docker-example:golang-1.10-linux /var/vcap/packages/golang-1.10-linux /var/vcap/packages/golang-1.10-linux
RUN echo "source /var/vcap/packages/golang-1.10-linux/bosh/runtime.env" >> ~/.bashrc && cp /var/vcap/packages/golang-1.10-linux/bosh/runtime.env /etc/profile.d/golang-1.10-linux
