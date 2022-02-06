ARG BASE_IMAGE=tomcat:9-jre8-openjdk-slim
FROM ${BASE_IMAGE}

ENV PATH_WAR_CODE=/code/*.war
ENV PATH_WEBAPPS=/usr/local/tomcat/webapps/
ENV WAR_NAME=ROOT.war

COPY cmd.sh ./

CMD sh cmd.sh