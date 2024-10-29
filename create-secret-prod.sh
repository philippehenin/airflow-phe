kubectl create secret generic phe-webserver-secret --from-literal="webserver-secret-key=$(python3 -c 'import secrets; print(secrets.token_hex(16))')"
