export $(cat .env | xargs)
envsubst < Inventory/hosts.ini > Inventory/inventory.ini
ansible-playbook -i Inventory/inventory.ini blueprint.yml --ask-vault-pass