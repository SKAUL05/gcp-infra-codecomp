variable "project" {
  description = "Project ID"
  type = string
}

variable "service_list" {
    description = "List of Services to be Enabled"
    type = list
    default = [
    "logging.googleapis.com",
    "iam.googleapis.com",
    "admin.googleapis.com",
    "appengine.googleapis.com",
    "storage-api.googleapis.com",
    "cloudbuild.googleapis.com",
	"containerregistry.googleapis.com",
  ]
}
