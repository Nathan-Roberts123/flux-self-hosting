# Self-Hosted Wallabag and Jellyfin on Amazon EKS

This project deploys self-hosted instances of Wallabag and Jellyfin on Amazon EKS using GitOps principles.

## Technologies Used

* FluxCD
* Amazon EKS
* Terraform
* Kubernetes
* AWS
* Helm

## Prerequisites

Before deploying the infrastructure, create the Wallabag credentials in AWS Systems Manager Parameter Store:

```bash
aws ssm put-parameter \
  --name "/K8s/Wallabag/wallabag-credentials" \
  --type "SecureString" \
  --value '{"SYMFONY__ENV__DATABASE_PASSWORD":"your_password","SYMFONY__ENV__DATABASE_USER":"your_db_user"}'
```

Create an S3 bucket that will be used as the Terraform backend for storing state files.

## Deployment

```bash
cd terraform
terraform init
terraform apply
```

## Cleanup

Before destroying the infrastructure, manually delete any load balancers created by Kubernetes Ingress resources to avoid dependency issues.

```bash
cd terraform
terraform destroy
```
