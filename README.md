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
- 12-depends-on-modulo-remoto
- 13-count-aws-vpc
- 14-for-each-azure-resource-group
- 15-provider-aws-vpc
- 16-lifecycle-aws-bucket
- 17-conditional-expressions-aws-vpc
- 18-for-expressions-aws-vpc
- 19-splat-expressions-aws-vpc
- 20-dynamic-blocks-aws-vpc
- 21-workspace-aws-vpc
- 22-data-source-aws-vpc
- 23-null-resource-azure-resource-group
- 24-time-sleep-azure-resource-group

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