# terraform-aws-audit-member

[![Lint Status](https://github.com/DNXLabs/terraform-aws-audit-member/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-audit-member/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-audit-member)](https://github.com/DNXLabs/terraform-aws-audit-member/blob/master/LICENSE)

This terraform module enables guardduty for a member account

In addition you have the options to:

 - Enable or Disable guardduty.
 - Set an email to be used in services like guardduty
 - Create a read-only role for accessing audit account


<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| aws.account | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| email | Email to be used in services like Guardduty | `string` | n/a | yes |
| guardduty | Enable/Disables guardduty | `bool` | `true` | no |
| guardduty\_detector\_id | GuardDuty detector ID | `any` | n/a | yes |
| master\_account\_id | Master account ID | `any` | n/a | yes |
| name | Name of this account | `string` | n/a | yes |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Author

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-audit-member/blob/master/LICENSE) for full details.