provider "aws" {
    region = "us-east-1"
    profile = "default"
    assume_role {
                role_arn = "arn:aws:iam::272225370236:role/packershit"
                session_name = "<SESSION NAME>"
                external_id  = "<EXTERNAL ID>"
            }
    
}
