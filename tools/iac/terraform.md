### Terraform Language
- Blocks: Containers for objects like resources.
- Arguments: Assign values to a name.
- Expressions: Represent a value.

___
General Syntax for Resource Creation:
  - Resource = Name of provider (ex. aws)
  - TYPE = Resource to be created
  - NAME = Reference name to be called in later code
  - CONFIG = Arguments to define resource attributes
```terraform
resource "<PROVIDER>_<TYPE>" "<NAME>" {
  [CONFIG ...]
}
```
