variable "location" {
    type = string
    description = "Regiao de deploy na AWS"

    validation {
        condition = contains(["us-east-1", "us-west-1"], lower(var.location))
        error_message = "Unsupported region specified. Supported regions include: us-east-1, us-west-1"
    }
}