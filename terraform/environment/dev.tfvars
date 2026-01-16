# Copyright 2025 TechBrain. All rights reserverd.
#
# Created on: 2025.12.01
# Created by: Przemyslaw Chmielecki
# Modified on: 2026.01.07
# Modified by: Przemyslaw Chmielecki

subscription_id   = "8dac1cb1-7130-4137-a400-92c8b6c10bd9" #PAYG
prefix            = "ds"
rg_name           = "ghashopdemo-rg-ds"
location          = "westeurope"
retention_in_days = 30
# app_service_plan_name = "asp" #< --- in root main during calling ASP module
# app_service_name      = "app" # <--- in root main during calling ASP module
os_type  = "Linux"
sku_name = "F1"

tags = {
  project     = "shopping-list-demo"
  environment = "dev"
  cicd        = "gha"
}