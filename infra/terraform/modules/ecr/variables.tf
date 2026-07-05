variable "repository_names" {
  description = "List of ECR repositories"
  type        = list(string)
  default     = ["frontend", "backend", ]
}

variable "image_tag_mutability" {
  description = "Image tag mutability"
  type        = string
  default     = "MUTABLE"
}

variable "scan_on_push" {
  description = "Enable image scanning"
  type        = bool
  default     = true
}