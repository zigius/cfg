# returns ips of machines in aws containing the given string
# example: sh find_instances.sh comp-prod
find-instances() {
  regex="${1:-}"
  printf "\e[1;34m%-6s\e[m" "regex ${regex} region eu-west-1"
  aws ec2 describe-instances --region eu-west-1 --output json --filter "Name=tag:Name,Values=*$regex*" | jq '.Reservations[]?.Instances[]? | {name: (.Tags[]?|select(.Key=="Name")|.Value), privateIp:.NetworkInterfaces[]?.PrivateIpAddresses[]?.PrivateIpAddress, publicIp:.NetworkInterfaces[]?.Association.PublicIp}'
}

