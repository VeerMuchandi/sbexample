FROM 172.25.142.206:5000/cife-demo1/springboot-sti:latest
EXPOSE 8080 
RUN curl http://ttdevbld:8081/nexus/content/repositories/releases/net/atpco/datatable/fareclass-datatable-service/0.0.1/fareclass-datatable-service-0.0.1.jar -o /opt/openshift/app.jar 
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/openshift/app.jar"]
