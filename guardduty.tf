data "aws_guardduty_detector" "master" {
  count = var.guardduty ? 1 : 0
}

resource "aws_guardduty_detector" "member" {
  count    = var.guardduty ? 1 : 0
  provider = aws.account
  enable   = true
}

resource "aws_guardduty_member" "member" {
  count = var.guardduty ? 1 : 0

  account_id                 = aws_guardduty_detector.member[0].account_id
  detector_id                = data.aws_guardduty_detector.master[0].id
  email                      = var.email
  invite                     = true
  disable_email_notification = true
}

resource "aws_guardduty_invite_accepter" "member" {
  count = var.guardduty ? 1 : 0

  depends_on = [aws_guardduty_member.member]
  provider   = aws.account

  detector_id       = aws_guardduty_detector.member[0].id
  master_account_id = data.aws_organizations_organization.selected.master_account_id
}
