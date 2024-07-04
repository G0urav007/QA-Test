# QA Test Project

## Setup Instructions

### Prerequisites

- Minikube
- kubectl
- Git

### Steps

1. **Clone the Repository**:

    ```sh
    git clone https://github.com/Vengatesh-m/qa-test
    cd qa-test
    ```

2. **Start Minikube**:

    ```sh
    minikube start
    ```

3. **Deploy Services**:

    ```sh
    kubectl apply -f backend-deployment.yaml
    kubectl apply -f frontend-deployment.yaml
    ```

4. **Verify Deployment**:

    Access the frontend service URL:

    ```sh
    minikube service frontend-service --url
    ```

    Ensure the greeting message from the backend is displayed.

5. **Run Automated Test**:

    ```sh
    ./test.sh
    ```

    The script will check if the frontend correctly displays the message returned by the backend.

## Deliverables

- Kubernetes deployment and service files.
- Automated test script (`test.sh`).
- This README file with setup and execution instructions.
