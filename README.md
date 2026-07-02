Self host Wallabag and Jellyfin on EKS.

Technologies:
1. FluxCD
2. EKS
3. Terraform
4. Kubernetes
5. AWS
6. Helm

To run this project:

cd Terraform
terraform init
terraform apply

Clean up

make sure to manually delete loadbalancers created by K8s ingress

cd Terraform
terraform destroy
