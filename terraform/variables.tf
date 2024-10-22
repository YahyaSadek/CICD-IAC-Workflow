variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "clusterName" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "vprofile-eks"
}


variable "BucketName" {
  description = "S3 BucketName"
  type        = string
  default     = "<YourS3Bucket>"
}