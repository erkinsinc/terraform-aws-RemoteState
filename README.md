# Remote  State is for Team Collaboration
## There are 4 teams where class9 acts as main team=1st team
### in order for smooth transaction remote_state.tf should also be integrated in each team as it gives path to the main setup


data "terraform_remote_state" "main" {
	backend = "s3"
	config = {
	    bucket = "test-bucket3-terraform1"
        key = "path/to/my/key"
        region = "us-east-1"
	}
}


output "full_list" {
	value = "${data.terraform_remote_state.main.outputs.*}"
}