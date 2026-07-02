Self host Wallabag and Jellyfin on EKS.

Technologies:
1. FluxCD
2. EKS
3. Terraform
4. Kubernetes
5. AWS
6. Helm

To run this project:

Create Wallabag credentials on AWS

aws ssm put-parameter 
--name "/K8s/Wallabag/wallabag-credentials" 
--type "SecureString" 
--value '{"SYMFONY__ENV__DATABASE_PASSWORD": "your_password", "SYMFONY__ENV__DATABASE_USER": "your_db_user"}'

create an AWS S3 Bucket for Terraform backend state

cd Terraform
terraform init
terraform apply

Clean up

make sure to manually delete loadbalancers created by K8s ingress

cd Terraform
terraform destroy
