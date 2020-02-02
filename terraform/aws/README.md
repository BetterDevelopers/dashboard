# AWS RDS Intitialization

1. Install [Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html)

2. Set your AWS credentials locally (for now)
```
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

3. From this directory - run `terraform apply` to begin RDS setup
(if setting PATH while installing Terraform gave you trouble you can use the absolute path e.g. `~/Downloads/terraform apply`)

4. Use `terraform destory` to remove the created instance