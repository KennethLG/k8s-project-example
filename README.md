
# Kubernetes Project Example

This project includes two microservices: `echo-service` and `gateway-service`, which demonstrate a simple backend and a gateway pattern within a Kubernetes environment.

## Important Kubernetes Commands

- **Get specific resources in all namespaces:**
  ```bash
  kubectl get deployments,services,configmaps,secrets,ingresses
  ```

- **Get all resources in a specific namespace:**
  ```bash
  kubectl get all --namespace echo-namespace
  ```

- **Apply a configuration to a resource by filename:**
  ```bash
  kubectl apply -f <filename>
  ```

- **Delete a resource by filename:**
  ```bash
  kubectl delete -f <filename>
  ```

- **Restart a deployment:**
  ```bash
  kubectl rollout restart deployment <deployment-name>
  ```

## Key Kubernetes Resources

- **Deployments (`deployment.yaml`):** Manages the deployment of stateless applications. It keeps a set number of replicas of pods running and updates them in a controlled way.

- **Services (`service.yaml`):** Provides a stable interface to pods, balancing traffic and enabling service discovery within the cluster.

- **ConfigMaps (`configmap.yaml`):** Manages configuration data and variables for pods, allowing you to separate configuration from the application code.

- **Secrets (`secret.yaml`):** Securely stores sensitive data, such as passwords or API keys, that you want to keep confidential.

- **Ingresses (not yet defined in this project):** Manages external access to the services within the cluster, typically HTTP.

## Project Structure

- `/services`: Contains source code for the individual microservices.
- `/deployments`: Contains all Kubernetes deployment YAML files.
- `/scripts`: Contains utility scripts such as `build.sh` for building Docker images and `deploy.sh` for deploying services.

For detailed explanations and more commands, refer to the Kubernetes documentation.
