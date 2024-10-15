#!/bin/bash

HADOOP_AWS_VERSION="3.2.0"
AWS_SDK_VERSION="1.11.563"

# Download Hadoop AWS JAR
wget -q -O /opt/hive/lib/hadoop-aws-${HADOOP_AWS_VERSION}.jar \
  https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/${HADOOP_AWS_VERSION}/hadoop-aws-${HADOOP_AWS_VERSION}.jar

# Download AWS SDK JAR
wget -q -O /opt/hive/lib/aws-java-sdk-bundle-${AWS_SDK_VERSION}.jar \
  https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/${AWS_SDK_VERSION}/aws-java-sdk-bundle-${AWS_SDK_VERSION}.jar

echo "Downloaded S3A dependencies successfully"