FROM eclipse-temurin:17-jre
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
#Testing purpose adding some data to verify jenkins coifguration
