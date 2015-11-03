**Get DigitalOcean API Token**

 Instructions to do that can be found in this link: [How to Generate a Personal Access Token.](https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-api-v2#HowToGenerateaPersonalAccessToken)

_Follow [this article](https://www.digitalocean.com/community/tutorials/how-to-use-ssh-keys-with-digitalocean-droplets) to create new SSH key._


**Install Terraform**
```sh
curl https://releases.hashicorp.com/terraform/0.6.6/terraform_0.6.6_linux_amd64.zip
 > ~/Downloads/terraform_0.6.6_linux_amd64.zip

mkdir -p ~/opt/terraform

unzip ~/Downloads/terraform_0.6.6_linux_amd64.zip -d ~/opt/terraform

export PATH=$PATH:/opt/terraform
```

**Edit terraform variables**

`do_token` DigitalOcean API Token  
`pub_key`  SSH public key  
`pvt_key`  SSH private key  

```sh
cp terraform.tfvars.template terraform.tfvars
```


Run `terraform plan` command to see execution plan

**Apply**
```sh
terraform apply
```
