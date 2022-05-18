resource "kubernetes_deployment" "helloworld" {
    metadata {
      name = "helloworld"
    }
    spec {
        selector {
          match_labels = {
            "app" = "helloworld"
          }
        }
        replicas = 2
        template {
          metadata {
            labels = {
              "app" = "helloworld"
            }
          }
          spec {
            container {
              name = "helloworld"
              image = "karthequian/helloworld:latest"
              port {
                container_port = 80
              }
            }
          }
        }
    }
    # https://registry.terraform.io/providers/mingfang/k8s/latest/docs/resources/apps_v1_stateful_set
    # lifecycle {
    #   pre_stop {
    #       exec   {
    #           command = [
    #                 "/bin/bash",
    #                 "'-c'",
    #                 "/azp/config.sh"
    #           ]
    #       } 
    #   }
    # }
}