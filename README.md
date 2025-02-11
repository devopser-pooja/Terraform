# Terraform
Terraform is a ipen source code tool which manage any infrastructure as a code 
scale up f-add code file to multiple repo and local repo
custom storage
security - can add log to code file for more security

# Code file is in Block Format
1.Provider Block
2.Resource Block
3.Variable Block
4.Output Block
5.Data Source Block
6.Terraform Block
7.Depend on Block
8.Module Block


 # Lifecycle of Terraform
 The Terraform lifecycle is a set of stages that a resource goes through from its creation to its destruction. These stages include:

1. **Planning:** Terraform analyzes your configuration files and determines the changes needed to reach the desired state.
2. **Applying:** Terraform executes the plan, creating, updating, or destroying resources as necessary.
3. **Destroying:** Terraform removes resources when they are no longer needed or when the configuration is updated to remove them.

Additionally, the lifecycle meta-argument within a resource block allows you to customize the default behavior of these stages. For example, 
you can use `create_before_destroy` to ensure a new resource is created before the old one is destroyed, minimizing downtime. You can also 
use `prevent_destroy` to protect critical resources from accidental deletion.
