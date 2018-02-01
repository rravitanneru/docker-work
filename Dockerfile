FROM ubuntu


WORKDIR /app
ADD app.js /app
RUN apt-get update && apt-get install nodejs -y  && \
    apt-get install npm -y  && \
    npm install express 
    

EXPOSE 80

CMD nodejs app.js
