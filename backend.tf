terraform {
	backend "s3" {
        bucket = "test-bucket3-terraform1"
        key = "path/to/my/key"
        region = "us-east-1"
	}
}