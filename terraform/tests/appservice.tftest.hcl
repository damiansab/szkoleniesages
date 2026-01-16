# Copyright 2025 TechBrain. All rights reserverd.
#
# Created on: 2025.12.01
# Created by: Przemyslaw Chmielecki
# Modified on: 2026.01.07
# Modified by: Przemyslaw Chmielecki
  
# WORKS!

#1 Testcase
run "app_service_plan_sku" {
  command = plan

  # Needed to be injected for tests needs (cannot get from variables.tf or dev.tfvars)
  variables {
    subscription_id = "8dac1cb1-7130-4137-a400-92c8b6c10bd9" #PAYG
    rg_name         = "ghashopdemo-rg-ds"
    location        = "westeurope"
    prefix          = "ghashopdemo-ds"
    os_type         = "Linux"
    sku_name        = "F1"
  }

  assert {
    condition     = azurerm_service_plan.asp.sku_name == "F1"
    error_message = "App Service Plan must use F1"
  }
}

#2 Testcase
run "app_service_https_only" {
  command = plan
  
  # Needed to be injected for tests needs (cannot get from variables.tf or dev.tfvars)
  variables {
    subscription_id = "8dac1cb1-7130-4137-a400-92c8b6c10bd9" #PAYG
    rg_name         = "ghashopdemo-rg-ds"
    location        = "westeurope"
    prefix          = "ghashopdemo-ds"
    os_type         = "Linux"
    sku_name        = "F1"
  }

  assert {
    condition     = azurerm_linux_web_app.app.https_only == true
    error_message = "HTTPS must be enabled"
  }
}