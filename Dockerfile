FROM ghcr.io/graalvm/graalvm-ce:ol8-java17-22.2.0 AS build
WORKDIR /app
COPY ./ ./
RUN yes | bash ./build.sh

FROM scratch
COPY --from=build /app/target/aot /target/aot
EXPOSE 8080
CMD ["/target/aot"]
#FROM alpine:3.16.2
#COPY --from=build /app/target/aot /target/aot
#RUN chmod +x /target/aot
#CMD ["/target/aot"]
#docker build -t spring_boot_3_aot:0.1 .