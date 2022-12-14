# ReservationSystem

A simple Spring Boot app representing an amenity reservation system. The foundation of the app was generated with [Bootify.io](https://bootify.io/docs/), and written while following this [freeCodeCamp tutorial](https://www.freecodecamp.org/news/spring-boot-tutorial-build-fast-modern-java-app/).


## Technologies Used
- Spring Boot
- Thymeleaf
- Hibernate
- Swagger
- Spring Security
- Bootify
- Maven
- JPA
- H2 In-Memory Database
- Bootstrap

## Notes

- The tutorial is a bit out of date so it was useful to reference the tutorial's [git repo](https://github.com/yigiterinc/amenity-reservation-system)
- My IntelliJ run configurations were added to this repo
- After starting the application it is accessible at http://localhost:8080
- The Swagger link is here: http://localhost:8080/swagger-ui/index.html?configUrl=/v3/api-docs/swagger-config#/
- The h2 console is here: http://localhost:8080/h2-console
- The JDBC URL should be: jdbc:h2:mem:reservation-system
- For login purposes, 2 default users are created within the [main application class](https://github.com/adam112henry/reservation-system/blob/main/src/main/java/com/reservation_system/ReservationSystemApplication.java)

## Development

During development it is recommended to use the profile `local`. In IntelliJ, `-Dspring.profiles.active=local` can be added in the VM options of the Run Configuration after enabling this property in "Modify options".

Update your local database connection in `application.yml` or create your own `application-local.yml` file to override settings for development.

Lombok must be supported by your IDE. For this, in IntelliJ install the Lombok plugin and enable annotation processing - [learn more](https://bootify.io/intellij/spring-boot-with-lombok.html).

## Build

The application can be built using the following command:

```
mvnw clean package
```

The application can then be started with the following command - here with the profile `production`:

```
java -Dspring.profiles.active=production -jar ./target/reservation-system-0.0.1-SNAPSHOT.jar
```

## Docker

```shell
# prune all of docker
$ docker system prune -a --volumes
# build the container
$ docker build -t reservation-system:latest .
# create and run the container - i.e. first time
$ docker run --platform linux/amd64 --name reservation-system -d -p 8200:8080 reservation-system:latest
# -OR- start the existing container
$ docker start reservation-system
# mapped to http://localhost:8200
```

## Further readings

* [Maven docs](https://maven.apache.org/guides/index.html)  
* [Spring Boot reference](https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/)  
* [Spring Data JPA reference](https://docs.spring.io/spring-data/jpa/docs/current/reference/html/)  
