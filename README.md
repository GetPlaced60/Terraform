# README

## Terraform Project Overview

This repository contains Terraform configuration files to manage and deploy infrastructure on various cloud providers. Terraform is an Infrastructure as Code (IaC) tool that allows you to define, provision, and manage infrastructure using declarative configuration files.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- **Terraform**: Ensure you have Terraform installed. You can download it from the [official Terraform website](https://www.terraform.io/downloads.html).
- **Cloud Provider Account**: An account with the cloud provider (e.g., AWS, Azure, GCP) for which you are deploying infrastructure.
- **Credentials**: Properly configured credentials for your cloud provider.

## Getting Started

Follow these steps to set up and deploy your infrastructure using Terraform:

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
```

### 2. Initialize the Terraform Configuration

```bash
terraform init
```

This command initializes your working directory containing Terraform configuration files. It downloads the necessary provider plugins and sets up the backend configuration.

### 3. Format and Validate the Configuration

```bash
terraform fmt
terraform validate
```

- **`terraform fmt`**: Formats the configuration files to a canonical format.
- **`terraform validate`**: Validates the configuration files for syntax and internal consistency.

### 4. Plan the Infrastructure Deployment

```bash
terraform plan
```

This command creates an execution plan, which shows what actions Terraform will take to create, update, or delete resources.

### 5. Apply the Configuration

```bash
terraform apply
```

This command applies the changes required to reach the desired state of the configuration. You will be prompted to confirm before applying the changes.

### 6. Destroy the Infrastructure (Optional)

```bash
terraform destroy
```

This command destroys the infrastructure managed by the Terraform configuration. Use this to clean up resources when they are no longer needed.

## Directory Structure

```plaintext
your-repo-name/
├── main.tf         # Main Terraform configuration file
├── variables.tf    # Variable definitions
├── outputs.tf      # Output definitions
├── provider.tf     # Provider configurations
├── modules/        # Directory for reusable modules
│   └── module_name/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
├── environments/   # Environment-specific configurations
│   ├── dev/
│   ├── prod/
└── README.md       # This file
```

## Variables

Variables are defined in the `variables.tf` file. You can override these variables by creating a `terraform.tfvars` file or using the `-var` option in the `terraform plan` and `terraform apply` commands.

Example `terraform.tfvars`:

```plaintext
variable_name = "value"
```
## To create EC2 in AWS

resource "aws_instance" "web" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform"
    env = "production"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "terra-test-5628"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

## Outputs

Outputs are defined in the `outputs.tf` file and are used to display useful information after the infrastructure is created.

## Modules

Modules are located in the `modules/` directory. Each module should have its own directory containing its configuration files (`main.tf`, `variables.tf`, `outputs.tf`).

## Environments

Environment-specific configurations are located in the `environments/` directory. Each environment (e.g., `dev`, `prod`) should have its own directory with specific configuration files.

## Contributing

If you want to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add some feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Open a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact

If you have any questions or feedback, feel free to contact [Getplaced](mailto:your-getplaced60@gmail.com.

---

Here are some of the most important Terraform commands that you will use frequently:

## Terraform Commands

### Initialization

- **`terraform init`**
  
  Initializes the Terraform working directory, downloads the provider plugins, and sets up the backend configuration.

  ```bash
  terraform init
  ```

### Formatting and Validating

- **`terraform fmt`**
  
  Formats the Terraform configuration files to a canonical format and style.

  ```bash
  terraform fmt
  ```

- **`terraform validate`**
  
  Validates the Terraform configuration files for syntax and internal consistency.

  ```bash
  terraform validate
  ```

### Planning and Applying

- **`terraform plan`**
  
  Creates an execution plan, showing what actions Terraform will take to create, update, or destroy infrastructure resources.

  ```bash
  terraform plan
  ```

- **`terraform apply`**
  
  Applies the changes required to reach the desired state of the configuration. You will be prompted to confirm before applying the changes.

  ```bash
  terraform apply
  ```

### Destroying

- **`terraform destroy`**
  
  Destroys the infrastructure managed by the Terraform configuration.

  ```bash
  terraform destroy
  ```

### Resource Targeting

- **`terraform apply -target=resource`**
  
  Applies changes only to the targeted resource.

  ```bash
  terraform apply -target=aws_instance.my_instance
  ```

- **`terraform plan -target=resource`**
  
  Plans changes only for the targeted resource.

  ```bash
  terraform plan -target=aws_instance.my_instance
  ```

### State Management

- **`terraform state list`**
  
  Lists all resources in the Terraform state.

  ```bash
  terraform state list
  ```

- **`terraform state show resource`**
  
  Shows detailed information about a specific resource in the state.

  ```bash
  terraform state show aws_instance.my_instance
  ```

- **`terraform state rm resource`**
  
  Removes a specific resource from the state file.

  ```bash
  terraform state rm aws_instance.my_instance
  ```

### Importing

- **`terraform import resource ID`**
  
  Imports an existing infrastructure resource into Terraform's state.

  ```bash
  terraform import aws_instance.my_instance i-1234567890abcdef0
  ```

### Output

- **`terraform output`**
  
  Displays the outputs defined in the configuration.

  ```bash
  terraform output
  ```

- **`terraform output -json`**
  
  Displays the outputs in JSON format.

  ```bash
  terraform output -json
  ```

### Providers

- **`terraform providers`**
  
  Displays the providers required by the configuration.

  ```bash
  terraform providers
  ```

### Modules

- **`terraform get`**
  
  Downloads and installs modules needed for the configuration.

  ```bash
  terraform get
  ```

### Workspace Management

- **`terraform workspace list`**
  
  Lists all Terraform workspaces.

  ```bash
  terraform workspace list
  ```

- **`terraform workspace new NAME`**
  
  Creates a new Terraform workspace.

  ```bash
  terraform workspace new my_workspace
  ```

- **`terraform workspace select NAME`**
  
  Selects an existing Terraform workspace.

  ```bash
  terraform workspace select my_workspace
  ```

### Miscellaneous

- **`terraform version`**
  
  Displays the version of Terraform.

  ```bash
  terraform version
  ```

- **`terraform show`**
  
  Provides a human-readable output of the Terraform state or plan file.

  ```bash
  terraform show
  ```

- **`terraform graph`**
  
  Generates a visual representation of the Terraform resources and their relationships.

  ```bash
  terraform graph
  ```

These commands cover the most common tasks you will perform with Terraform, from initializing your configuration to applying changes, managing state, and working with modules and workspaces.