FROM fedora:33

RUN yum update -y && yum upgrade -y

RUN yum install -y python3 vim wget ca-certificates gnupg cmake gcc clang unzip bzip2 \
  less rpm-build make docbook-xsl git ccache autoconf autoconf-archive automake \
  python3-devel pkgconfig libtool bison flex libxslt glib2-devel json-c-devel \
  libcap-devel libdbi-devel libnet-devel openssl-devel pcre-devel libuuid-devel \
  libesmtp-devel libcurl-devel librabbitmq-devel libmaxminddb-devel riemann-c-client-devel \
  hiredis-devel systemd-devel systemd-units cyrus-sasl-devel mongo-c-driver-devel \
  java-devel librdkafka-devel zlib-devel paho-c-devel net-snmp-devel
