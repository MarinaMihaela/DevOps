Am ales sa containerizez aplicatia Java din fisierul `Main.java`.

Am creeat un fisier Dockerfile pe care l-am pus in acelasi folder cu fisierul java.

Am builduit local docker image-ul si am testat pentru a ma asigiura ca functioneaza. (se poate observa in imaginile atasate mai jos)

![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/aa37acb4-9b9e-4547-a5a2-3c1c1739b68d)

![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/f99ac245-d6ef-4066-90f4-545b6762334f)

Am creat repository-ul dockerhub 

![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/83de7a11-2a87-46dd-85a0-c2478d3f48e8)

Am creat un GitHub Actions workflow file. Moentan exista probleme la logarea in DockerHub, insa imi propun sa revin asupra lor odata ce parcurg a 3-a parte a temei. 

De asemenea, mentionez ca am mutat Dockerfile-ul in directorul principal(alaturi de programul java), deoarece nu putea fi citit din 2-simpleapp. 

![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/11654b8e-9da4-4b57-b9b1-6881339e2b92)

