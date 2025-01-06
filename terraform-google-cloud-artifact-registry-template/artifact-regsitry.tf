module "registry" {
    for_each = {
      for k, v in try(var.registry,{}): k => v if v.delete != true 
    }
    source                        = "/home/niketa_kulshrestha/artifact-registry/terraform-google-cloud-artifact-registry-module"
    project                       = each.value.project_id
    repository_id                 = each.key
    format                        = each.value.format
    location                      = each.value.location
    description                   = each.value.description
    labels                        = each.value.labels
    kms_key_name                  = each.value.kms_key_name
    docker_config                 = each.value.docker_config
    maven_config                  = each.value.maven_config
    mode                          = each.value.mode
    virtual_repository_config     = each.value.virtual_repository_config
    cleanup_policies              = each.value.cleanup_policies
    remote_repository_config      = each.value.remote_repository_config
    cleanup_policy_dry_run        = each.value.cleanup_policy_dry_run
    #depends_on                    = [ module.sslcert ]
}