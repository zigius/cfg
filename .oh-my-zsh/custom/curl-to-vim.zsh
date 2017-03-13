curl-to-vim(){
  curl -s "$1" | jq '.' | n -
}

