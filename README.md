## Ansible playbook for automating WordPress installation and SSL generation using Certbot (Let's Encrypt)

## Prerequisites :

Create a `.env` file in the root folder.

```dotenv
HOST=your.ec2.ip.address
USER=host_user
KEY_PATH=/path/to/your/key.pem
```

Create a `secrets.yml` file in the Vault folder.

```
domain_name: yourdomain.name
dbase_name: database name
dbase_password: password
dbase_username: username
email_address: email@example.com
```
Encrypt `secret.yml` with Ansible Vault for better security
```
ansible-vault encrypt secrets.yml
```

Run `run.sh` script to execute 
```
chmod +x run.sh
./run.sh
```


