module "rgs" {
  source = "../../Modules/Resource_group"
  rgs     = var.rgs
}

module "Stg" {
  depends_on = [module.rgs]
  source     = "../../Modules/Storage_account"
  Stg        = var.Stg
}
module "vnet" {
  depends_on = [module.rgs]
  source     = "../../Modules/Vnet"
  vnet       = var.vnet
}
module "pip" {
  depends_on = [module.rgs]
  source     = "../../Modules/Public_ip"
  pip        = var.pip
}
module "vms" {
  depends_on = [module.pip,module.key_secret]
  source     = "../../Modules/Azure_compute"
  vms        = var.vms
}
module "key_vault" {
  depends_on = [module.rgs]
  source     = "../../Modules/Azure_key_vault"
  key_vault  =var.key_vault
}

module "key_secret" {
  depends_on = [module.key_vault]
  source     = "../../Modules/Azure_key_Secret"
  key_secret  = var.key_secret
}

# module "sql_server" {
#   depends_on = [module.rgs]
#   source     = "../../Modules/Sql_server"
#   sql_server =  var.sql_server
# }

# module "sql_database" {
#    depends_on = [module.rgs]
#   source     = "../../Modules/Sql_database"
#   sql_db = var.sql_db
# }


