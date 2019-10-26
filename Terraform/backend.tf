terraform {
    backend "s3"{
        bucket = "interview-experian-mustafa"
        region =  "us-east-1"
        key = "infra.state"
    }
}