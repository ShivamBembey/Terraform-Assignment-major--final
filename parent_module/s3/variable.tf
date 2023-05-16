variable "bucket_name" {
    type = list(string)  
}

variable tags_groupA {
    type = map(any)
}

variable "acl_value" {
    type = string
}

variable "obj_ownership" {
    type = string
}

variable "versioning_config" {
    type = string
}