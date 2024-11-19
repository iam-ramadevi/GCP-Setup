# Application Failure
  
  

  - step by step in troubleshooting Application failure.

  - To check the Application/Service status of the webserver

    ```
    curl http://web-service-ip:node-port
    ```

   ![image](https://github.com/user-attachments/assets/6f5ad3ea-1b80-4d88-b539-0eefb013a92d)



  - To check the endpoint of the service and compare it with the selectors

    ```
    kubectl describe service web-service
    ```   

    ![image](https://github.com/user-attachments/assets/bebad049-caf6-4c61-bb35-aa5639771079)



  - To check the status and logs of the pod

    ```
    kubectl get pod
    ```

    ```
    kubectl describe pod web
    ```

    ```
    kubectl logs web
    ```

  - To check the logs of the previous pod

    ```
    kubectl logs web -f --previous
    ```
    
   ![image](https://github.com/user-attachments/assets/f7fa02f6-944d-4cbf-badf-04ac474b179c)




