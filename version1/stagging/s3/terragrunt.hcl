terraform {
    source = "../../../infrastructure-module/s3"
}

include "root" {
    path = find_in_parent_folders()
}

include "env" {
    path = find_in_parent_folders("env.hcl")
    expose = true
    merge_strategy = "no_merge"
}

inputs = {
    env_tag = include.env.locals.env_tag
    buck_name = "trfrmfar"    
}