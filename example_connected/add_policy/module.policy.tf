module "policy" {
  source         = "JamesWoolfenden/simplepolicy/bridgecrew"
  version        = "0.0.5"
  frameworks     = var.frameworks
  guidelines     = var.guidelines
  conditions     = var.conditions
  cloud_provider = var.cloud_provider
  title          = var.title
  severity       = var.severity
  category       = var.category
}
