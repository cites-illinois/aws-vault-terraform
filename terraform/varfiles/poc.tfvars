service = "ICS Vault"
contact = "sbutler1@illinois.edu"
data_classification = "Sensitive"
environment = "Development"

project = "sbutler1-vault"
key_name = "sbutler1@illinois.edu"
key_file = "~/.ssh/main-work-aws"
ssh_allow_cidrs = {
    "sbutler1 home" = [ "98.212.144.170/32" ]
}
app_allow_cidrs = {
    "sbutler1 home" = [ "98.212.144.170/32" ]
}

deploy_bucket = "uiuc-sbutler1-sandbox"
deploy_prefix = "vault/"

vault_key_user_roles = [
    "TechServicesStaff",
]
vault_server_admin_groups = [
    "ICS Admins",
]
vault_server_fqdn = "sbutler1-vault.ics.illinois.edu"
vault_server_public_fqdns = [
    "sbutler1-vault-a.ics.illinois.edu",
    "sbutler1-vault-b.ics.illinois.edu",
]
vault_server_private_ips = [
    "10.224.255.51",
    "10.224.255.181",
]
