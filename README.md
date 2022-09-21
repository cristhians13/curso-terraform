# Curso Terraform - Do básico ao avançado 
https://www.udemy.com/course/terraform-do-basico-ao-avancado/

**Recursos criados**
- 00-aws-bucket
- 01-azure-storage-account
- 02-aws-azure-remote-state
- 03-aws-vpc
- 04-azure-vnet
- 05-aws-vm-com-vpc-remote-state
- 06-azure-vm-com-vnet-remote-state
- 07-terraform-import
- 08-aws-vm-com-provisioners
- 09-azure-vm-com-provisioners
- 10-modulo-local
- 11-modulo-remoto

---
### Requerimentos
- Azure Client
- Terraform

---
### env.tfvars

É preciso do arquivo de variáveis *env.tfvars*, pois nele estará todas as variáveis usada no ambiente.

Exemplo do arquivo *env.tfvars*:
```bash
# ##################
# Location / Region
location = "Brazil South"

# TAGs and Infor
env_lower = "teste"
env_upper = "TESTE"
project   = "Curso-Terraform"
...
...

```

---
### Comandos Terraform

```bash
terraform init
terraform plan --var-file=../env.tfvars
terraform apply --var-file=../env.tfvars
```

---
### 