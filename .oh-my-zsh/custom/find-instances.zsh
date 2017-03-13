# returns ips of machines in aws containing the given string
# example: sh find_instances.sh comp-prod
find-instances() {
  aws ec2 describe-instances --region eu-west-1 --output json --filter "Name=tag:Name,Values=*$1*" --query "Reservations[].Instances[].[Tags[?Key=='Name'].Value, PublicIpAddress]"
}
