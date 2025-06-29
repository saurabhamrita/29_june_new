resource "azurerm_resource_group" "tf1" {
  name     = "sp1"
  location = "West Europe"
}
resource "azurerm_resource_group" "tf2" {
  name     = "sp2"
  location = "West Europe"
}
resource "azurerm_resource_group" "tf3" {
  name     = "sp3"
  location = "West Europe"
}
resource "azurerm_resource_group" "tf4" {
  name     = "sp4"
  location = "West Europe"
}
resource "azurerm_resource_group" "tf5" {
  name     = "sp5"
  location = "West Europe"
}
resource "azurerm_storage_account" "ram1" {
  name                     = "sita1"
  resource_group_name      = azurerm_resource_group.tf1.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_account" "ram2" {
  name                     = "sita2342"
  resource_group_name      = azurerm_resource_group.tf2.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_account" "ram3" {
  name                     = "sita3"
  resource_group_name      = azurerm_resource_group.tf3.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_account" "ram4" {
  name                     = "sita4"
  resource_group_name      = azurerm_resource_group.tf4.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_account" "ram5" {
  name                     = "sita5"
  resource_group_name      = azurerm_resource_group.tf5.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_resource_group" "ac1"{
name = "dc1"
location = "West Europe"   
}
resource "azurerm_resource_group" "ac2"{
name = "dc2"
location = "West Europe"   
}
resource "azurerm_resource_group" "ac3"{
name = "dc3"
location = "West Europe"   
}
resource "azurerm_resource_group" "ac4"{
name = "dc4"
location = "West Europe"   
}
resource "azurerm_resource_group" "ac5"{
name = "dc5"
location = "West Europe"   
}
resource "azurerm_storage_account" "sk1"{
name = "ck1"
resource_group_name = "dc1"
depends_on = [azurerm_resource_group.ac1]
 location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_account" "sk2"{
name = "ck2"
resource_group_name = "dc2"
depends_on = [azurerm_resource_group.ac2]
 location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_account" "sk3"{
name = "ck3"
resource_group_name = "dc3"
depends_on = [azurerm_resource_group.ac3]
 location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_account" "sk4"{
name = "ck4"
resource_group_name = "dc4"
depends_on = [azurerm_resource_group.ac4]
 location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_account" "sk5"{
name = "ck5"
resource_group_name = "dc5"
depends_on = [azurerm_resource_group.ac5]
 location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}