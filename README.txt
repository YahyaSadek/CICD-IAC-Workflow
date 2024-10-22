YahyaSadekMohammedSadek


PREREQUISITES:
-Git Repository with stage branch and main branch 
-IAM User, S3 Bucket 
-Prepare GitHub Repository secrets:
    AWS_ACCESS_KEY_ID
    AWS_SECRET_ACCESS_KEY
    BUCKET_TF_STATE (the S3 bucket name that will contain the terraform state)

Workflow:
(Terraform)
GitHub Actions will use an ubuntu-latest runner to execute commands in the terraform folder
1)check the sourcecode. 2)setup terraform. 3)initialization of terraform using the backend s3 bucket state file
4)formatting the terraform files. 5) validating the terraform syntax. 6)terraform plan to see the applied changes
7)if there has been a merge to main branch or a direct push in the main branch or if t he pull request to the main branch is approved, terraform will apply the changes to the infrastructure.
8)configure the AWS Credentials on the GitHub Actions Runner. 9)generate The KubeConfig file in /home/runner/.kube/config so we can use kubectl
10)install (if only run for the first time) the nginx ingress controller that will we be attached using kubernetes ingress yaml file to the application service.


Notes:
- in the variables.tf file , mention the name of the S3 Bucket created
- the name of the EKS Cluster must match that used in the Application Actions Workflow
- this workflow must be executed first before the application workflow to setup the infrastructure for the first time.

