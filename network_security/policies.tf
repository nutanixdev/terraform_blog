resource "nutanix_network_security_rule" "isolation" {
    name        = "example-isolation-rule"
    description = "Isolation Rule Example"

    isolation_rule_action = "MONITOR"

    isolation_rule_first_entity_filter_kind_list = ["vm"]
    isolation_rule_first_entity_filter_type      = "CATEGORIES_MATCH_ALL"
    isolation_rule_first_entity_filter_params {
        name   = "Environment"
        values = ["Dev"]
    }

    isolation_rule_second_entity_filter_kind_list = ["vm"]
    isolation_rule_second_entity_filter_type      = "CATEGORIES_MATCH_ALL"
    isolation_rule_second_entity_filter_params {
        name   = "Environment"
        values = ["Production"]
    }
}