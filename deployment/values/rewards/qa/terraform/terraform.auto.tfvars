application_namespace_charts = [
  # namespace
  {
    create_helm_release = true

    namespace        = "rewards"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-namespace"
    chart            = "namespace"
    version          = "1.0.1"
    wait             = true
    atomic           = true
    timeout          = 600
    values_file_name = "values-namespace.yaml"
  },
]

# Variables for access control helm releases
application_access_control_charts = [
  # users
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-users"
    chart            = "users"
    version          = "1.0.0"
    wait             = true
    atomic           = true
    timeout          = 600
    values_file_name = "values-users.yaml"
  },
]
# Variables for K8s secret provider class
application_secret_provider_class_charts = [
  # rewards-envs
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-spc"
    chart            = "secret-provider-class"
    version          = "1.0.2"
    wait             = true
    atomic           = true
    timeout          = 600
    values_file_name = "values-secret-provider-class.yaml"
  },
]

# variables for Initial Applications helm releases
application_database_charts = [
  # database
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-database"
    chart            = "database"
    version          = "1.1.0"
    wait             = true
    timeout          = 600
    atomic           = true
    cleanup_on_fail  = true
    values_file_name = "values-database.yaml"
  },
  # redis
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-redis"
    chart            = "redis"
    version          = "1.1.0"
    wait             = true
    timeout          = 600
    atomic           = true
    cleanup_on_fail  = true
    values_file_name = "values-redis.yaml"
  },
  # ebs
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-ebs"
    chart            = "ebs"
    version          = "1.0.0"
    timeout          = 600
    atomic           = true
    cleanup_on_fail  = true
    values_file_name = "values-ebs.yaml"
  },
]

# variables for migration helm releases
application_migration_charts = [
  # migration
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-migration"
    chart            = "migration"
    version          = "1.0.3"
    timeout          = 600
    wait             = true
    wait_for_jobs    = true
    replace          = true
    values_file_name = "values-migration.yaml"
  },
  # collectstatic
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-collectstatic"
    chart            = "collectstatic"
    version          = "1.0.3"
    timeout          = 600
    wait             = true
    wait_for_jobs    = true
    replace          = true
    values_file_name = "values-collectstatic.yaml"
  },

]

# variable for application helm releases
application_charts = [
  # app
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-app"
    chart            = "app"
    version          = "1.1.0"
    timeout          = 600
    atomic           = true
    cleanup_on_fail  = true
    values_file_name = "values-app.yaml"
  },
  # cronjob
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-cronjob"
    chart            = "cronjob"
    version          = "1.0.1"
    timeout          = 600
    atomic           = true
    cleanup_on_fail  = true
    values_file_name = "values-cronjob.yaml"
  },
  # ingress
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-ingress"
    chart            = "ingress"
    version          = "1.0.0"
    timeout          = 600
    atomic           = true
    cleanup_on_fail  = true
    values_file_name = "values-ingress.yaml"
  },
  # nginx
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-nginx"
    chart            = "nginx"
    version          = "1.1.0"
    timeout          = 600
    atomic           = true
    cleanup_on_fail  = true
    values_file_name = "values-nginx.yaml"
  },
  # worker
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-worker"
    chart            = "worker"
    version          = "1.1.0"
    timeout          = 600
    atomic           = true
    cleanup_on_fail  = true
    values_file_name = "values-worker.yaml"
  },
  # load-data
  {
    create_helm_release = true

    namespace        = "rewards-[JIRA_ID]"
    create_namespace = false
    repository       = "oci://459037613883.dkr.ecr.us-east-1.amazonaws.com/production/helm/ygag"
    release_name     = "rewards-[JIRA_ID]-load-data"
    chart            = "job"
    version          = "1.0.0"
    timeout          = 600
    wait             = true
    wait_for_jobs    = true
    replace          = true
    values_file_name = "values-load-data.yaml"
  },
]

# variables for application data resource finding created load balancer in above step
application_ingress = {
  name      = "rewards-[JIRA_ID]-ingress"
  namespace = "rewards-[JIRA_ID]"
}

application_database_loadbalancer = {
  name      = "rewards-[JIRA_ID]-database"
  namespace = "rewards-[JIRA_ID]"
}

# variables for application application route 53
application_route53 = {
  create_record = true

  name    = "rewards-[JIRA_ID].sit.yougotagift.co"
  zone_id = "Z072540022LEC2L6IO1NI"
  type    = "A"
}

# variables NLB database route 53
application_database_route53 = {
  create_record = "[APP_DB_LB_DEPLOY]"

  name          = "db.rewards-[JIRA_ID].sit.yougotagift.co"
  zone_id       = "Z072540022LEC2L6IO1NI"
  type          = "CNAME"
  ttl           = "300"
}

