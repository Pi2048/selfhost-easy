possiblekeys=( "/etc/ssh/ssh_host_rsa_key.pub"
                "/etc/ssh/ssh_host_dsa_key.pub"
                "/etc/ssh/ssh_host_ecdsa_key.pub"
                "/etc/ssh/ssh_host_ed25519_key.pub")
for key in "${possiblekeys[@]}"
do
    if [ -f $key ];
    then
        ssh-keygen -lf $key
        sha256="`awk '{print $2}' $key | base64 -d | sha256sum | awk '{print $1}' | xxd -r -p | base64 | rev | cut -c 2- | rev`"
        echo "  - SHA256:$sha256"
    fi
done
