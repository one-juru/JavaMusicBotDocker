FROM java:8-jdk-alpine
 
# Install wget
RUN apk update && apk add --no-cache wget

# Get the "latest" bot release
RUN wget https://github.com/jagrosh/MusicBot/releases/download/0.3.4/JMusicBot-0.3.5.jar
 
# The startup command to execute the jar
CMD ["java", "-Dnogui=true", "-jar", "/JMusicBot-0.3.5.jar"]
