# Control Plane Failure


  
  - In this lecture we will use how to troubleshoot the Control Plane components.

  - To check the status of the nodes if they are healthy

    ```
    kubectl get nodes
    ```

  - To check the status of the pods if the are running

    ```
    kubectl get pods
    ```

  - To check the status of all the pods of the Control Plane components(if they are deployed with kubeadm tool) and make sure they are **`Running`**

    ```
    kubectl get pods -n kube-system
    ```

    ![image](https://github.com/user-attachments/assets/778b18a0-6eb4-4c6a-900c-f09d030a9166)


  - If the Control Plane components are deployed as services then check the status of all the components

![image](https://github.com/user-attachments/assets/720f89df-9c37-476b-9203-adbc1a90837c)


  - To check the status of **`kube-apiserver`** 

    ```
    service kube-apiserver status
    ```

  - To check the status of **`kube-controller-manager`** 

    ```
    service kube-controller-manager status
    ```

  - To check the status of **`kube-scheduler`** 

    ```
    service kube-scheduler status
    ```

![image](https://github.com/user-attachments/assets/87709232-2ef1-49e9-a44c-53a48d5bfb2f)


  - To check the status of **`kubelet`** 

    ```
    service kubelet status
    ```

  - To check the status of **`kube-proxy`** on the worker nodes.

    ```
    service kube-proxy status
    ```

  - To check the logs of the Control Plane components deployed as Pods:

    ```
    kubectl logs kube-apiserver-master -n kube-system
    ```

   ![image](https://github.com/user-attachments/assets/7ea8c8f0-3267-41d8-9867-4f4021a69df9)


  - To check the logs of the Control Plane components deployed as SystemD Service

    ```
    sudo journalctl -u kube-apiserver
    ```


