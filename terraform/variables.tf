variable "dev-server" {
    type = string
    description = "The name of the development server"
    default = "dev-server"
}

variable "prod-server" {
    type = string
    description = "The name of the production server"
    default = "prod-server"
}

variable "machine-type" {
    type = string
    description = "The machine type used by both servers"
    default = "n1-standard-1"
}

variable "gcp-zone" {
    type = string
    description = "The zone where we are launching the servers"
    default = "us-central1-a"
}