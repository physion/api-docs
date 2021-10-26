--- 

title: Ovation for Service Labs 

language_tabs: 
   - shell 

toc_footers: 
   - <a href='#'>Sign Up for a Developer Key</a> 
   - <a href='https://github.com/lavkumarv'>Documentation Powered by lav</a> 

includes: 
   - errors 

search: true 

--- 

# Introduction 

LIMS+: logical sample tracking, document and training record management 

**Version:** 1.0.0 

# Authentication 

|apiKey|*API Key*|
|---|---| 

# /V3/PROJECT_TEMPLATES/{PROJECT_TEMPLATE_ID}/TEST_PANELS
## ***GET*** 

**Summary:** Get available Test Panels

### HTTP Request 
`***GET*** /v3/project_templates/{project_template_id}/test_panels` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| project_template_id | path | Associated project_template group | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Test Panels |

# /V3/PROJECT_TEMPLATES/{PROJECT_TEMPLATE_ID}/SAMPLE_LABELS
## ***GET*** 

**Summary:** Get available sample labels

### HTTP Request 
`***GET*** /v3/project_templates/{project_template_id}/sample_labels` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| project_template_id | path | Associated project_template group | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Sample Labels |

# /V3/PROJECT_TEMPLATES
## ***GET*** 

**Summary:** Get available project templates for a given organization

### HTTP Request 
`***GET*** /v3/project_templates` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| organizationId | query | Associated organization | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Project Templates |

# /V3/PROJECT_TEMPLATES/{PROJECTTEMPLATEID}/REQUISITIONS
## ***GET*** 

**Summary:** Get a Requisition

### HTTP Request 
`***GET*** /v3/project_templates/{projectTemplateId}/requisitions` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| projectTemplateId | path | Associated project_template group | Yes | string |
| startDate | query | Filters documents created_at starting from this date. | Yes | string |
| endDate | query | Filters requisitions created_at ending on this date. | Yes | string |
| page | query | Page of results. | No | integer |
| perPage | query | Results per page. Maximum of 5000. | No | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Requisition record |

## ***POST*** 

**Summary:** Create a new Requisition

### HTTP Request 
`***POST*** /v3/project_templates/{projectTemplateId}/requisitions` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| projectTemplateId | path | Associated project_template group | Yes | string |
| body | body | Requisition record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 201 | Created Requisition |
| 401 | Authentication Error |
| 404 | Project Template ID not found |
| 422 | Validation Error |

# /V3/PROJECT_TEMPLATES/{PROJECTTEMPLATEID}/REQUISITIONS/{IDENTIFIER}
## ***GET*** 

**Summary:** Get a Requisition

### HTTP Request 
`***GET*** /v3/project_templates/{projectTemplateId}/requisitions/{identifier}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| projectTemplateId | path | Associated project_template group | Yes | string |
| identifier | path | Requisition identifier | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Requisition record |

## ***PUT*** 

**Summary:** Update a Requisition

### HTTP Request 
`***PUT*** /v3/project_templates/{projectTemplateId}/requisitions/{identifier}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| projectTemplateId | path | Associated project_template group | Yes | string |
| identifier | path | Requisition identifier | Yes | string |
| body | body | Requisition record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Requisition record |

## ***DELETE*** 

**Summary:** Delete a Requisition

### HTTP Request 
`***DELETE*** /v3/project_templates/{projectTemplateId}/requisitions/{identifier}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| projectTemplateId | path | Associated project_template group | Yes | string |
| identifier | path | Requisition identifier | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Requisition deleted |

# /V3/SALES_REPS
## ***POST*** 

**Summary:** Sales Rep

### HTTP Request 
`***POST*** /v3/sales_reps` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Sales Rep Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created Sales Rep Record |

## ***GET*** 

**Summary:** Sales Rep

### HTTP Request 
`***GET*** /v3/sales_reps` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| organizationId | query | Organization ID | Yes | integer |
| sales_group_id | query | Sales Group ID | No | integer |
| email | query | Sales Group Email | No | string |
| page | query | Page of results. | No | integer |
| perPage | query | Results per page. Maximum of 5000. | No | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get all Sales Reps |

# /V3/SALES_REPS/{ID}
## ***PUT*** 

**Summary:** Sales Rep

### HTTP Request 
`***PUT*** /v3/sales_reps/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Rep ID | Yes | integer |
| body | body | Sales Rep Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Updated Sales Rep Record |

## ***GET*** 

**Summary:** Sales Rep

### HTTP Request 
`***GET*** /v3/sales_reps/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Rep ID | Yes | integer |
| organizationId | query | Organization ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get Sales Rep Record |

## ***DELETE*** 

**Summary:** Delete Sales Rep

### HTTP Request 
`***DELETE*** /v3/sales_reps/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Rep ID | Yes | integer |
| organizationId | query | Organization ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Sales Rep archived |

# /V3/SALES_GROUPS
## ***POST*** 

**Summary:** Sales Group

### HTTP Request 
`***POST*** /v3/sales_groups` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Sales Group Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created Sales Group Record |

## ***GET*** 

**Summary:** Sales Group

### HTTP Request 
`***GET*** /v3/sales_groups` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| organizationId | query | Organization id | Yes | integer |
| name | query | Sales Group Name. | No | string |
| parentId | query | Sales Group Parent ID. | No | integer |
| page | query | Page of results. | No | integer |
| perPage | query | Results per page. Maximum of 5000. | No | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get all Sales Group |

# /V3/SALES_GROUPS/{ID}
## ***PUT*** 

**Summary:** Sales Group

### HTTP Request 
`***PUT*** /v3/sales_groups/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Group id | Yes | integer |
| body | body | Sales Group Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Updated Sales Group Record |

## ***GET*** 

**Summary:** Sales Groups

### HTTP Request 
`***GET*** /v3/sales_groups/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Group id | Yes | integer |
| organizationId | query | Organization id | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get Sales Group Record |

## ***DELETE*** 

**Summary:** Delete Sales Group

### HTTP Request 
`***DELETE*** /v3/sales_groups/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Group id | Yes | integer |
| organizationId | query | Organization id | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Sales Group archived |

# /V3/PROJECT_TEMPLATES/{PROJECT_TEMPLATE_ID}/WEBHOOK_ENDPOINTS
## ***GET*** 

**Summary:** Get webhooks

### HTTP Request 
`***GET*** /v3/project_templates/{project_template_id}/webhook_endpoints` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| project_template_id | path | Associated project_template group | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Webhook Endpoints |

## ***POST*** 

**Summary:** Create a Webhook Endpoint

### HTTP Request 
`***POST*** /v3/project_templates/{project_template_id}/webhook_endpoints` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| project_template_id | path | Associated project_template group | Yes | string |
| body | body | Webhook Endpoint Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 201 | Created Webhook Endpoint |

# /V3/PROJECT_TEMPLATES/{PROJECT_TEMPLATE_ID}/WEBHOOK_ENDPOINTS/{ID}
## ***GET*** 

**Summary:** Get webhooks

### HTTP Request 
`***GET*** /v3/project_templates/{project_template_id}/webhook_endpoints/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| project_template_id | path | Associated project_template group | Yes | string |
| id | path |  | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Webhook Endpoint |

# /V3/WEBHOOK_ENDPOINT_EVENTS
## ***GET*** 

**Summary:** Get webhook endpoint events

### HTTP Request 
`***GET*** /v3/webhook_endpoint_events` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| organizationId | query | Organization ID | Yes | integer |
| project_template_ids | query | Project Template Ids | No | array |
| webhook_endpoint_ids | query | Webhook Endpoint Ids | No | array |
| event_type | query | Type of event. | No | string |
| event_status | query | Status of event. | No | string |
| start_date | query | Beginning date to query data. | No | string |
| end_date | query | End date to query data. | No | string |
| per_page | query | Results per page. Max 1000 | No | integer |
| page | query | Page of results. | No | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Webhook Endpoint Events |
| 422 | "param" not found |

# /V3/WEBHOOK_ENDPOINT_EVENTS/RETRY_EVENTS
## ***POST*** 

**Summary:** Retry webhook endpoint events

### HTTP Request 
`***POST*** /v3/webhook_endpoint_events/retry_events` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Sales Group Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | All webhook endpoint events successfully submitted. |
| 422 | Error while trying to requeue Webhook Endpoint Events |

# /V3/DOCUMENTS
## ***GET*** 

**Summary:** Get all Documents for Project Template

### HTTP Request 
`***GET*** /v3/documents` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| projectTemplateId | query | Filters documents by project template. | Yes | integer |
| requisitionIdentifier | query | Filters documents for specific Requisition Identifier | No | string |
| requisitionId | query | Filters documents for specific Requisition ID | No | integer |
| folderName | query | Filters documents by folder name. | No | string |
| startDate | query | Filters documents created_at starting from this date. | Yes | string |
| endDate | query | Filters documents created_at ending from this date. | Yes | string |
| page | query | Page number being requested. | No | integer |
| perPage | query | Number of documents to return per page. Maximum of 5000. | No | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | All documents for a Project Template |

## ***POST*** 

**Summary:** Create a new Document

### HTTP Request 
`***POST*** /v3/documents` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Document record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created Document |

# /V3/WORKFLOW_DEFINITIONS
## ***GET*** 

**Summary:** Get all Workflow Definitions for an Organization

### HTTP Request 
`***GET*** /v3/workflow_definitions` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| organizationId | query | Filters workflow definitions by organization. | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get all Workflow Definitions for an Organization |

# /V3/RESOURCES
## ***POST*** 

**Summary:** Create a Resource

### HTTP Request 
`***POST*** /v3/resources` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Resource record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 201 | Resource record |

# /V3/PROVIDER_ACCOUNTS
## ***GET*** 

**Summary:** Get Provider Accounts

### HTTP Request 
`***GET*** /v3/provider_accounts` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| organizationId | query | Organization ID | Yes | integer |
| name | query | Provider Account Name | No | string |
| externalIdentifier | query | Provider Account External Identifier. | No | string |
| accountNumber | query | Provider Account Number | No | string |
| page | query | Page of results. | No | integer |
| perPage | query | Results per page. Maximum of 5000. | No | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider Accounts |

## ***POST*** 

**Summary:** Create Provider Account

### HTTP Request 
`***POST*** /v3/provider_accounts` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Provider Account record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created Provider |

# /V3/PROVIDER_ACCOUNTS/{ID}
## ***GET*** 

**Summary:** Get Provider Account

### HTTP Request 
`***GET*** /v3/provider_accounts/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Account ID | Yes | integer |
| organizationId | query | OrganizationId | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider record |

## ***PUT*** 

**Summary:** Update Provider

### HTTP Request 
`***PUT*** /v3/provider_accounts/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Account ID | Yes | integer |
| body | body | Provider Account record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider record |

## ***DELETE*** 

**Summary:** Delete Provider Account

### HTTP Request 
`***DELETE*** /v3/provider_accounts/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Provider Account ID | Yes | integer |
| organizationId | query | Organization ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider Account archived |

# /V3/PROVIDER_ACCOUNTS/{PROVIDERACCOUNTID}/PROVIDER_ACCOUNT_CONTACTS
## ***POST*** 

**Summary:** Create a Provider Account Contact

### HTTP Request 
`***POST*** /v3/provider_accounts/{providerAccountId}/provider_account_contacts` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account ID | Yes | integer |
| body | body | Provider Account Contact record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created Provider Account Contact |

## ***GET*** 

**Summary:** Get Provider Account Contacts

### HTTP Request 
`***GET*** /v3/provider_accounts/{providerAccountId}/provider_account_contacts` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account ID | Yes | integer |
| externalIdentifier | query | Provider Account Contact External ID. | No | string |
| name | query | Provider Account Contact Email. | No | string |
| page | query | Page of results. | No | integer |
| perPage | query | Results per page. Maximum of 5000. | No | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get Provider Account Contacts |

# /V3/PROVIDER_ACCOUNTS/{PROVIDERACCOUNTID}/PROVIDER_ACCOUNT_CONTACTS/{ID}
## ***GET*** 

**Summary:** Get a Provider Account Contact

### HTTP Request 
`***GET*** /v3/provider_accounts/{providerAccountId}/provider_account_contacts/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account ID | Yes | integer |
| id | path | Provider Account Contact ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Got Provider Account Contact |

## ***PUT*** 

**Summary:** Update a Provider Account Contact

### HTTP Request 
`***PUT*** /v3/provider_accounts/{providerAccountId}/provider_account_contacts/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account ID | Yes | integer |
| id | path | Provider Account Contact ID | Yes | integer |
| body | body | Provider Account Contact record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created Provider Account Contact |

## ***DELETE*** 

**Summary:** Delete Provider Account Contact

### HTTP Request 
`***DELETE*** /v3/provider_accounts/{providerAccountId}/provider_account_contacts/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account ID | Yes | integer |
| id | path | Provider Account Contact ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider Account Contact archived |

# /V3/PROVIDER_ACCOUNTS/{PROVIDERACCOUNTID}/PROVIDERS
## ***GET*** 

**Summary:** Get Providers

### HTTP Request 
`***GET*** /v3/provider_accounts/{providerAccountId}/providers` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account id | Yes | integer |
| registryIdentifier | query | Provider Registry Identifier. | No | string |
| licensingRegistry | query | Provider Licensing Identifier | No | string |
| name | query | Provider Name | No | string |
| page | query | Page of results. | No | integer |
| perPage | query | Results per page. Maximum of 5000. | No | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get Providers |

## ***POST*** 

**Summary:** Create Provider

### HTTP Request 
`***POST*** /v3/provider_accounts/{providerAccountId}/providers` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account id | Yes | integer |
| body | body | Provider record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider record |

# /V3/PROVIDER_ACCOUNTS/{PROVIDERACCOUNTID}/PROVIDERS/{ID}
## ***GET*** 

**Summary:** Get Provider

### HTTP Request 
`***GET*** /v3/provider_accounts/{providerAccountId}/providers/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account id | Yes | integer |
| id | path | Provider ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get Provider |

## ***DELETE*** 

**Summary:** Delete Provider

### HTTP Request 
`***DELETE*** /v3/provider_accounts/{providerAccountId}/providers/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account id | Yes | integer |
| id | path | Provider ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider archived |

<!-- Converted with the swagger-to-slate https://github.com/lavkumarv/swagger-to-slate -->
