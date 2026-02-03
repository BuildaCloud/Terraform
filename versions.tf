terraform {
    #utiliser le tfstate de gitlab
    backend "http" {}
    #configuration des versions de terraform et du provider
    required_version = ">= 0.13"
    required_providers {
        vra = {
        source = "vmware/vra"
        version = ">= 0.8.3"
        }
    }
}