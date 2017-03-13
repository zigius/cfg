azure-list(){
  file=${TMPDIR}azurenics.json
  echo ${file}
  azure network nic list --json > ${file}
  cat ${file} | jq --arg engine "$1" -c '.[] | select(.id | contains($engine)) | {name: .name, ip: .ipConfigurations[0].privateIPAddress}'
}
