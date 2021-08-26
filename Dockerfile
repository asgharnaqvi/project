
FROM centos:7
#Copying script and jar file
COPY ./asghar.sh /root/dockerfiles
COPY Asghar-1.0.war /root/dockerfiles 
#Giving permission to execute
RUN chmod +x /asghar.sh
#This script runs when the container runs
ENTRYPOINT ["/asghar.sh"]
#These are the arguements
CMD ["1","2","3"]
#Exposing the port number
EXPOSE 80

