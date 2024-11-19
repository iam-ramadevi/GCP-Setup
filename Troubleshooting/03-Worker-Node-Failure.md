# Worker Node Failure

  

  - Lets check the status of the Nodes in the cluster, are they **`Ready`** or **`NotReady`**

    ```
    kubectl get nodes
    ```

  - If they are **`NotReady`** then check the **`LastHeartbeatTime`** of the node to find out the time when node might have crashed

    ```
    kubectl describe node worker-1
    ```

  ![image](https://github.com/user-attachments/assets/d6b38f1e-9178-4855-8b50-56feb23e79a0)



  - Check the possible **`CPU`** and **`MEMORY`**  using **`top`** and **`df -h`** 

 
    ![image](https://github.com/user-attachments/assets/4f376e0d-3345-4ee8-bde1-31dbcfcd5873)



  - Check the status and the logs of the **`kubelet`** for the possible issues.

    ```
    serivce kubelet status
    ```

    ```
    sudo journalctl -u kubelet
    ```
    ![image](https://github.com/user-attachments/assets/c17b7da0-5d00-4eef-b6a6-0d2b24b6618d)

  
    
  - Check the **`kubelet`** Certificates, they are not expired, and in the right group and issued by the right CA.

    ```
    openssl x509 -in /var/lib/kubelet/worker-1.crt -text
    ```

   ![image](https://github.com/user-attachments/assets/9fb609f9-4737-4819-9f33-0a99dc3c6b1f)



