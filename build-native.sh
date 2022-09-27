#!/usr/bin/env bash
rm -rf target && ./mvnw spring-javaformat:apply -DskipTests -Pnative spring-javaformat:apply clean spring-boot:build-image
#rm -rf target && ./mvnw spring-javaformat:apply  -DskipTests -Pnative spring-javaformat:apply clean package && ./target/aot
