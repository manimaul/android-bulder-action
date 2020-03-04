FROM debian:buster

RUN apt update && \
    apt install -y unzip wget openjdk-11-jre-headless libncurses5

WORKDIR /android-sdk

# https://developer.android.com/studio
ENV TOOLS "commandlinetools-linux-6200805_latest.zip"
RUN wget https://dl.google.com/android/repository/${TOOLS}
RUN unzip ${TOOLS} && rm ${TOOLS}
ENV ANDROID_SDK_ROOT /android-sdk
ENV PATH ${ANDROID_SDK_ROOT}/tools/bin:${PATH}
RUN yes | sdkmanager --sdk_root=$ANDROID_SDK_ROOT --licenses
RUN sdkmanager --sdk_root=$ANDROID_SDK_ROOT "ndk;21.0.6113669"
ENV ANDROID_NDK_HOME /android-sdk/ndk/21.0.6113669
