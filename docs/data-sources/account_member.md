---
page_title: "cloudflare_account_member Data Source - Cloudflare"
subcategory: ""
description: |-
  
---

# cloudflare_account_member (Data Source)



## Example Usage

```terraform
data "cloudflare_account_member" "example_account_member" {
  account_id = "023e105f4ecef8ad9ca31a8372d0c353"
  member_id = "4536bcfad5faccb111b47003c79917fa"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `account_id` (String) Account identifier tag.

### Optional

- `filter` (Attributes) (see [below for nested schema](#nestedatt--filter))
- `member_id` (String) Membership identifier tag.

### Read-Only

- `id` (String) Membership identifier tag.
- `policies` (Attributes List) Access policy for the membership (see [below for nested schema](#nestedatt--policies))
- `roles` (Attributes List) Roles assigned to this Member. (see [below for nested schema](#nestedatt--roles))
- `status` (String) A member's status in the account.
Available values: "accepted", "pending".
- `user` (Attributes) Details of the user associated to the membership. (see [below for nested schema](#nestedatt--user))

<a id="nestedatt--filter"></a>
### Nested Schema for `filter`

Optional:

- `direction` (String) Direction to order results.
Available values: "asc", "desc".
- `order` (String) Field to order results by.
Available values: "user.first_name", "user.last_name", "user.email", "status".
- `status` (String) A member's status in the account.
Available values: "accepted", "pending", "rejected".


<a id="nestedatt--policies"></a>
### Nested Schema for `policies`

Read-Only:

- `access` (String) Allow or deny operations against the resources.
Available values: "allow", "deny".
- `id` (String) Policy identifier.
- `permission_groups` (Attributes List) A set of permission groups that are specified to the policy. (see [below for nested schema](#nestedatt--policies--permission_groups))
- `resource_groups` (Attributes List) A list of resource groups that the policy applies to. (see [below for nested schema](#nestedatt--policies--resource_groups))

<a id="nestedatt--policies--permission_groups"></a>
### Nested Schema for `policies.permission_groups`

Read-Only:

- `id` (String) Identifier of the permission group.
- `meta` (Attributes) Attributes associated to the permission group. (see [below for nested schema](#nestedatt--policies--permission_groups--meta))
- `name` (String) Name of the permission group.

<a id="nestedatt--policies--permission_groups--meta"></a>
### Nested Schema for `policies.permission_groups.meta`

Read-Only:

- `key` (String)
- `value` (String)



<a id="nestedatt--policies--resource_groups"></a>
### Nested Schema for `policies.resource_groups`

Read-Only:

- `id` (String) Identifier of the resource group.
- `meta` (Attributes) Attributes associated to the resource group. (see [below for nested schema](#nestedatt--policies--resource_groups--meta))
- `name` (String) Name of the resource group.
- `scope` (Attributes List) The scope associated to the resource group (see [below for nested schema](#nestedatt--policies--resource_groups--scope))

<a id="nestedatt--policies--resource_groups--meta"></a>
### Nested Schema for `policies.resource_groups.meta`

Read-Only:

- `key` (String)
- `value` (String)


<a id="nestedatt--policies--resource_groups--scope"></a>
### Nested Schema for `policies.resource_groups.scope`

Read-Only:

- `key` (String) This is a combination of pre-defined resource name and identifier (like Account ID etc.)
- `objects` (Attributes List) A list of scope objects for additional context. (see [below for nested schema](#nestedatt--policies--resource_groups--scope--objects))

<a id="nestedatt--policies--resource_groups--scope--objects"></a>
### Nested Schema for `policies.resource_groups.scope.objects`

Read-Only:

- `key` (String) This is a combination of pre-defined resource name and identifier (like Zone ID etc.)





<a id="nestedatt--roles"></a>
### Nested Schema for `roles`

Read-Only:

- `description` (String) Description of role's permissions.
- `id` (String) Role identifier tag.
- `name` (String) Role name.
- `permissions` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions))

<a id="nestedatt--roles--permissions"></a>
### Nested Schema for `roles.permissions`

Read-Only:

- `analytics` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--analytics))
- `billing` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--billing))
- `cache_purge` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--cache_purge))
- `dns` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--dns))
- `dns_records` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--dns_records))
- `lb` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--lb))
- `logs` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--logs))
- `organization` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--organization))
- `ssl` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--ssl))
- `waf` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--waf))
- `zone_settings` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--zone_settings))
- `zones` (Attributes) (see [below for nested schema](#nestedatt--roles--permissions--zones))

<a id="nestedatt--roles--permissions--analytics"></a>
### Nested Schema for `roles.permissions.analytics`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)


<a id="nestedatt--roles--permissions--billing"></a>
### Nested Schema for `roles.permissions.billing`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)


<a id="nestedatt--roles--permissions--cache_purge"></a>
### Nested Schema for `roles.permissions.cache_purge`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)


<a id="nestedatt--roles--permissions--dns"></a>
### Nested Schema for `roles.permissions.dns`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)


<a id="nestedatt--roles--permissions--dns_records"></a>
### Nested Schema for `roles.permissions.dns_records`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)


<a id="nestedatt--roles--permissions--lb"></a>
### Nested Schema for `roles.permissions.lb`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)


<a id="nestedatt--roles--permissions--logs"></a>
### Nested Schema for `roles.permissions.logs`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)


<a id="nestedatt--roles--permissions--organization"></a>
### Nested Schema for `roles.permissions.organization`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)


<a id="nestedatt--roles--permissions--ssl"></a>
### Nested Schema for `roles.permissions.ssl`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)


<a id="nestedatt--roles--permissions--waf"></a>
### Nested Schema for `roles.permissions.waf`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)


<a id="nestedatt--roles--permissions--zone_settings"></a>
### Nested Schema for `roles.permissions.zone_settings`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)


<a id="nestedatt--roles--permissions--zones"></a>
### Nested Schema for `roles.permissions.zones`

Read-Only:

- `read` (Boolean)
- `write` (Boolean)




<a id="nestedatt--user"></a>
### Nested Schema for `user`

Read-Only:

- `email` (String) The contact email address of the user.
- `first_name` (String) User's first name
- `id` (String) Identifier
- `last_name` (String) User's last name
- `two_factor_authentication_enabled` (Boolean) Indicates whether two-factor authentication is enabled for the user account. Does not apply to API authentication.


