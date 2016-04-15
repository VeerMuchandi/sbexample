FROM 172.25.142.206:5000/cife-demo1/springboot-sti:latest
EXPOSE 8080 
RUN curl https://raw.githubusercontent.com/VeerMuchandi/sbexample/master/app.jar -o /opt/openshift/app.jar 
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/openshift/app.jar"]
