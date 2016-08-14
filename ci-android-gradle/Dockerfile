FROM ubuntu:14.04
MAINTAINER summer

# install basic tools
RUN apt-get update
RUN apt-get install -y wget curl unzip git

# install Android SDK dependencies
RUN apt-get install -y openjdk-7-jdk lib32z1 lib32ncurses5 lib32bz2-1.0 g++-multilib
RUN apt-get install -y --no-install-recommends maven

# Main Android SDK
RUN wget -qO- "http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz" | tar -zxv -C /opt/
# RUN echo y | /opt/android-sdk-linux/tools/android update sdk --all --filter platform-tools,build-tools-20.0.0 --no-ui --force --proxy-host 192.168.1.7 --proxy-port 7070

ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

ARG ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS=

RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter tools --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter platform-tools --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter build-tools-23.0.2 --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter extra-android-support --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter android-23 --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter extra-android-m2repository --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter extra-google-m2repository --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter android-17 --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter android-18 --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter android-19 --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter android-21 --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter android-22 --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}
RUN echo y | /opt/android-sdk-linux/tools/android update sdk --filter android-20 --no-ui --force -a ${ANDROID_SDK_UPDATE_ADDITIONAL_PARAMS}


# install gradle
ARG GRADLE_VERSION=2.14.1

RUN curl -sLO https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-all.zip && \
  unzip gradle-${GRADLE_VERSION}-all.zip && \
  ln -s gradle-${GRADLE_VERSION} gradle && \
  rm gradle-${GRADLE_VERSION}-all.zip 

ENV GRADLE_HOME /gradle
ENV PATH $PATH:$GRADLE_HOME/bin

# setup sshd
RUN apt-get install -y openssh-server
#RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
#RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN echo 'root:123456' | chpasswd
RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

# append env to profile, and login by ssh to use it
RUN echo export GRADLE_HOME=/gradle >> /etc/profile
RUN echo export ANDROID_HOME=/opt/android-sdk-linux >> /etc/profile
RUN echo export PATH='$PATH:$GRADLE_HOME/bin:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools' >> /etc/profile

# copy enterpoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 22

# clean
RUN apt-get clean

VOLUME /workspace
WORKDIR /workspace
ENTRYPOINT ["/entrypoint.sh"]
