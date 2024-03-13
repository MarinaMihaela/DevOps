1. Containerize the Java Application
   
    Created a Dockerfile for the Java application and placed it in the same folder as the Java file.
   
    Built a local Docker image and tested to ensure it functions correctly.

   ![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/aa37acb4-9b9e-4547-a5a2-3c1c1739b68d)

  ![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/f99ac245-d6ef-4066-90f4-545b6762334f)

2. Create DockerHub Repository
   
    Created a repository on DockerHub to store the Docker image.
   
   ![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/83de7a11-2a87-46dd-85a0-c2478d3f48e8)

4. Set Up GitHub Actions Workflow
   
    Created a GitHub Actions workflow file to automate the deployment process.
   
   ![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/73b71a9f-f38a-4a4d-829b-924560047944)

5. Check to see if the image was pushed to the Docker registry
   
   ![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/976a7e1d-42fe-49d3-84c9-b2eae3ac7b42)

6. Pull image locally

![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/35410b2d-80c4-4cd3-87c1-0f0bf723ae5a)

![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/e32fd34a-3d63-4866-b7d9-3256f6e9b1bc)




 

Mentions: I moved the Dockerfile to the main directory (alongside the Java program) because it couldn't be read from the 2-simpleapp directory.




