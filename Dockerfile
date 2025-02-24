FROM eclipse-temurin:21
RUN mkdir /opt/freerouting
RUN curl -L --output /opt/freerouting/freerouting-2.0.1.jar "https://github.com/freerouting/freerouting/releases/download/v2.0.1/freerouting-2.0.1.jar"
RUN ln -s /opt/freerouting/freerouting-2.0.1.jar /opt/freerouting/freerouting.jar
CMD ["java", "-jar", "/opt/freerouting/freerouting.jar"]
