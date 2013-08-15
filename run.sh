#!/bin/sh -x

MEMORY_LIMIT=512M

# without NR
#java -Xss1M -Xmx$MEMORY_LIMIT -XX:MaxPermSize=$MEMORY_LIMIT -jar build/libs/spring-boot-sample-tomcat.jar

# with NR
java -javaagent:./newrelic/newrelic-agent-2.21.3.jar -Dnewrelic.home=./newrelic/ -Xss1M -Xmx$MEMORY_LIMIT -XX:MaxPermSize=$MEMORY_LIMIT -jar build/libs/spring-boot-sample-tomcat.jar
