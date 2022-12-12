FROM amazoncorretto:17.0.5-alpine3.16

# /Users/adam/Library/Java/JavaVirtualMachines/corretto-17.0.5/Contents/Home/bin/java
    # -Dspring.profiles.active=local
    # -Dfile.encoding=UTF-8
    # -jar /Users/adam/coding/java/reservation-system/target/reservation-system-0.0.1-SNAPSHOT.jar

ENV APP_HOME=/home/reservation-system

RUN mkdir -p ${APP_HOME}
WORKDIR ${APP_HOME}

COPY /target/reservation-system-0.0.1-SNAPSHOT.jar ${APP_HOME}/reservation-system.jar

RUN adduser -D app_user
USER app_user

# runtime configuration
EXPOSE 8080
ENTRYPOINT ["java", "-Dspring.profiles.active=local", "-Dfile.encoding=UTF-8", "-jar", "/home/reservation-system/reservation-system.jar"]