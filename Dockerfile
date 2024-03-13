FROM openjdk:11

WORKDIR /usr/src/app

COPY Main.java .

RUN javac Main.java

CMD ["java", "Main"]
