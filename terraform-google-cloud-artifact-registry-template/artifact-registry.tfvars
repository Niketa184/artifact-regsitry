registry                                                          = {
    "gcp-yyz-prd-napg-crun-01-ar-01"                               = {  
        delete                                                    = false
        project_id                                                = "my-project-amit1-415215"
        format                                                    = "Docker"
        location                                                  = "northamerica-northeast2"
        description                                               = "This repository is for Cloud Run TnC Urls"
        labels                                                    = {
          "dataclass"                                             = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
          "env"                                                   = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
          "appname"                                               = "notset",                         # Example          - <application name>
          "appid"                                                 = "notset",                         # Example          - <Application: Number>
          "appowner"                                              = "notset",                 # Example          - <FirstName.LastName@rci.rogers.ca>
          "costcenter"                                            = "notset",                  # Example          - <651.2245.0254>
          "canumber"                                              = "notset",                     # Example          - <21mb700467>
          "pii"                                                   = "true",                           # Values Supported - [true, false]
          "compliance"                                            = "notset",                            # Values Supported - [sox, pci, both, none]
          "sharedservices"                                        = "false",                           # Values Supported - [true, false]
          "triageticket"                                          = "notset",                         # Example          - <cloudops-4492>
          "businessunit"                                          = "dig",                            # Example          - [it, dig, ebu]
          "appclass"                                              = "critical"                        # Values Supported - [vital, critical, important, productivity]
          #"expirationdate"                                       = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
        }
        kms_key_name                                              = null
        docker_config                                             = [
          {
            immutable_tags                                        = false
          }
        ]
        maven_config                                              = [
          /* {
            allow_snapshot_overwrites                             = false
            version_policy                                        = null      
          } */
        ]
        mode                                                      = "STANDARD_REPOSITORY"
        virtual_repository_config                                 = [
          /* {
            upstream_policies                                     = [
              {
                id                                                = ""
                priority                                          =""
                repository                                        =""
              }
            ]
          } */
        ]
        cleanup_policies                                          = [
          /* {
            id                                                    = "delete-prerelease"
            action                                                = "DELETE"
            condition                                             = [
              {
                tag_state                                         = "TAGGED"
                tag_prefixes                                      = ["alpha", "v0"]
                version_name_prefixes                             = []
                package_name_prefixes                             = []
                older_than                                        = "2592000s"
                newer_than                                        = null
              }
            ]
            most_recent_versions                                  = [
              {
                package_name_prefixes                             = null
                keep_count                                        = 0
              }
            ]
          } */
        ]
        remote_repository_config                                  = [
          /* {
            apt_repository                                        = [
              {
                public_repository                                 = [
                  {
                    repository_base                               = null
                    repository_path                               = null
                  }                             
                ]
              }
            ]
            docker_repository                                     = [ 
              {
                public_repository                                 = "DOCKER_HUB"
                custom_repository                                 = [
                  {
                    uri                                           = null
                  }
                ]
              }
            ]
            maven_repository                                      = [ 
              {
                public_repository                                 = null
                custom_repository                                 = [
                  {
                    uri = null
                  }
                ]
              } 
            ]
            npm_repository                                        = [
              {
                public_repository                                 = null
                custom_repository                                 = [
                  {
                    uri                                           = null
                  }
                ]
              } 
            ]
            python_repository                                     = [ 
              {
                public_repository                                 = null
                custom_repository                                 = [
                  {
                    uri                                           = null                                
                  }
                ]                                
              }
            ]                                
            yum_repository                                        = [
              {
                public_repository                                 = [
                  {
                    repository_base                               = null
                    repository_path                               = null
                  }
                ]
              } 
            ]
            upstream_credentials                                  = [
              {
                username_password_credentials                     = [
                  {
                    password_secret_version                       = null
                    username                                      = null
                  }
                ]
              }
            ]
            disable_upstream_validation                           = null
          } */
        ]
        cleanup_policy_dry_run                                    = true
    }
}