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
   
    Currently facing issues with logging into DockerHub, which will be revisited after completing the third part of the assignment.


  ![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/11654b8e-9da4-4b57-b9b1-6881339e2b92)

Mentions: I moved the Dockerfile to the main directory (alongside the Java program) because it couldn't be read from the 2-simpleapp directory.




