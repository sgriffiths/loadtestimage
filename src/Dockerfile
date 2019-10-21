FROM openjdk:11-jre-slim

#==============
# Set version and paths for Jmeter
#==============
ENV JMETER_VERSION=5.1.1
ENV JMETER_HOME=/usr/local/apache-jmeter-${JMETER_VERSION}
ENV PATH=${JMETER_HOME}/bin:${PATH}
ENV PLUGINS_PATH $JMETER_PATH/plugins


#==============
# Install dependencies for Taurus and Az CLI
#==============
RUN apt-get update && apt-get install -y \
    python-pip \
    wget

RUN pip install yq

# Install jq
WORKDIR /bin
RUN wget "http://stedolan.github.io/jq/download/linux64/jq" && chmod 755 jq


# hadolint ignore=DL3009
RUN apt-get update -qq && apt-get install -qq --no-install-recommends \
  curl \
  gnupg2

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -qq --no-install-recommends \
  nodejs \
  yarn \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g envsub

#==============
# Run pip install - required by Taurus
#==============
RUN pip install bzt

#==============
# Copy jmeter and plugins to container
#==============
ADD jmeter/apache-jmeter-5.1.1.tgz /usr/local/
COPY jmeter/plugins /usr/local/apache-jmeter-5.1.1/lib/ext

#Copy BackendListener file
#COPY BackendListener.xslt /app/BackendListener.xslt

WORKDIR /app

COPY localentrypoint.sh .
RUN chmod +x ./localentrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
