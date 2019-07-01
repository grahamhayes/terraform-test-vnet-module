resource "azurerm_resource_group" "${var.rg_name}" {
  name     = "${var.rg_name}"
  location = "${var.location}"
}

resource "azurerm_virtual_network" "${var.name}" {
  name                = "${var.name}"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
  address_space       = ["${var.address_space}"]

  ddos_protection_plan {
    id     = "${azurerm_ddos_protection_plan.test.id}"
    enable = true
  }

  subnet {
    name           = "${var.name}-subnet3"
    address_prefix = "${var.address_space}"
  }
}
