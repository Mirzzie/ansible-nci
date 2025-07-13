export $(cat .env | xargs)
envsubst < Inventory/hosts.ini > Inventory/inventory.ini
ansible-playbook -i inventory.ini blueprint.yml --ask-vault-pass