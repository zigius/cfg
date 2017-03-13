find-instance-ip() {
  aws ec2 describe-instances --region eu-central-1 --output json --filter "Name=tag:Name,Values=*$1*" --query "Reservations[].Instances[].[Tags[?Key=='Name'].Value, PublicIpAddress]"
}

copy-instance-ip() {
  aws ec2 describe-instances --region eu-central-1 --output json --filter "Name=tag:Name,Values=*$1*" --query "Reservations[].Instances[].[Tags[?Key=='Name'].Value, PublicIpAddress]" | jq '.[0]' | jq '.[1]' | tr -d '"' | pbcopy
}


