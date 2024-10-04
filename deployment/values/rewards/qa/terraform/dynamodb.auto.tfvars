dynamodb_attributes = [
  {
    create_aws_dynamodb_table = true

    name         = "rewards-users-[JIRA_ID]-qa"
    description  = "DynamoDB table for rewards users"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "username"
    range_key    = "site_domain"

    restore_source_name    = "ygg-rewards-users-qa-tf"
    restore_to_latest_time = true

    attributes = [
      {
        name = "username"
        type = "S"
      },
      {
        name = "site_domain"
        type = "S"
      }
    ]
  },
  {
    create_aws_dynamodb_table = true

    name         = "rewards-phygital-cards-[JIRA_ID]-qa"
    description  = "DynamoDB table for rewards phygital cards qa"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "pack_code"
    range_key    = "brand_code"

    restore_source_name    = "ygg-rewards-phygital-cards-qa-tf"
    restore_to_latest_time = true

    attributes = [
      {
        name = "pack_code"
        type = "S"
      },
      {
        name = "brand_code"
        type = "S"
      }
    ]
  },
  {
    create_aws_dynamodb_table = true

    name         = "rewards-phygital-locks-[JIRA_ID]-qa"
    description  = "DynamoDB table for rewards phygital locks qa"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "brand_code"

    restore_source_name    = "ygg-rewards-phygital-locks-qa-tf"
    restore_to_latest_time = true

    attributes = [
      {
        name = "brand_code"
        type = "S"
      }
    ]
  },
  {
    create_aws_dynamodb_table = true

    name         = "rewards-auto-onboarding-details-[JIRA_ID]-qa"
    description  = "DynamoDB table for rewards auto onboarding details qa"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "uuid"

#    restore_source_name    = "ygg-rewards-auto-onboarding-details-qa-tf"
#    restore_to_latest_time = true

    attributes = [
      {
        name = "uuid"
        type = "S"
      }
    ]

    ttl = [
      {
        enabled        = "true"
        attribute_name = "removal_timestamp"
      }
    ]
  }
]