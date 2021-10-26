--- 

title: Ovation API Reference 

language_tabs: 
   - shell
   - ruby
   - python
   - javascript

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
# Requisitions
## Get Requisitions 

**Summary:** Get Requisitions

### HTTP Request 
`GET /v3/project_templates/{projectTemplateId}/requisitions` 

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
## Get Requisition

**Summary:** Get a Requisition

### HTTP Request 
`GET /v3/project_templates/{projectTemplateId}/requisitions/{identifier}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| projectTemplateId | path | Associated project_template group | Yes | string |
| identifier | path | Requisition identifier | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Requisition record |
## Post Requisition

**Summary:** Create a new Requisition

### HTTP Request 
`POST /v3/project_templates/{projectTemplateId}/requisitions` 

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

## Put Requisition

**Summary:** Update a Requisition

### HTTP Request 
`PUT /v3/project_templates/{projectTemplateId}/requisitions/{identifier}` 

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

## Archive Requisition

**Summary:** Archive a Requisition

### HTTP Request 
`DELETE /v3/project_templates/{projectTemplateId}/requisitions/{identifier}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| projectTemplateId | path | Associated project_template group | Yes | string |
| identifier | path | Requisition identifier | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Requisition deleted |

# Sales Rep
## Post Sales Rep

**Summary:** Create a Sales Rep

### HTTP Request 
`POST /v3/sales_reps` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Sales Rep Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created Sales Rep Record |

## Get Sales Reps

**Summary:** Get All Sales Reps

### HTTP Request 
`GET /v3/sales_reps` 

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
## Get Sales Rep 

**Summary:** Get a Sales Rep

### HTTP Request 
`GET /v3/sales_reps/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Rep ID | Yes | integer |
| organizationId | query | Organization ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get Sales Rep Record |
## Put Sales Rep 

**Summary:** Update a Sales Rep

### HTTP Request 
`PUT /v3/sales_reps/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Rep ID | Yes | integer |
| body | body | Sales Rep Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Updated Sales Rep Record |

## Delete Sales Rep

**Summary:** Delete a Sales Rep

### HTTP Request 
`DELETE /v3/sales_reps/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Rep ID | Yes | integer |
| organizationId | query | Organization ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Sales Rep archived |

# Sales Group
## Post Sales Group 

**Summary:** Create a Sales Group

### HTTP Request 
`POST /v3/sales_groups` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Sales Group Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created Sales Group Record |

## Get Sales Groups

**Summary:** Get All Sales Groups

### HTTP Request 
`GET /v3/sales_groups` 

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
## Put Sales Group 

**Summary:** Update a Sales Group

### HTTP Request 
`PUT /v3/sales_groups/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Group id | Yes | integer |
| body | body | Sales Group Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Updated Sales Group Record |

## Get Sales Group 

**Summary:** Get a Sales Group

### HTTP Request 
`GET /v3/sales_groups/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Group id | Yes | integer |
| organizationId | query | Organization id | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get Sales Group Record |

## Delete Sales Group 

**Summary:** Delete a Sales Group

### HTTP Request 
`DELETE /v3/sales_groups/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Group id | Yes | integer |
| organizationId | query | Organization id | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Sales Group archived |

# Webhook Endpoints
## Get Webhook Endpoints 

**Summary:** Get Webhook Endpoints

### HTTP Request 
`GET /v3/project_templates/{project_template_id}/webhook_endpoints` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| project_template_id | path | Associated project_template group | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Webhook Endpoints |

## Post Webhook Endpoint 

**Summary:** Create a Webhook Endpoint

### HTTP Request 
`POST /v3/project_templates/{project_template_id}/webhook_endpoints` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| project_template_id | path | Associated project_template group | Yes | string |
| body | body | Webhook Endpoint Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 201 | Created Webhook Endpoint |

## Get Webhook Endpoint

**Summary:** Get a Webhook Endpoint

### HTTP Request 
`GET /v3/project_templates/{project_template_id}/webhook_endpoints/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| project_template_id | path | Associated project_template group | Yes | string |
| id | path |  | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Webhook Endpoint |

# Webhook Endpoint Events
## Get Webhook Endpoint Events

**Summary:** Get All Webhook Endpoint Events

### HTTP Request 
`GET /v3/webhook_endpoint_events` 

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

## Retry Webhook Endpoint Events

**Summary:** Retry webhook endpoint events

### HTTP Request 
`POST /v3/webhook_endpoint_events/retry_events` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Sales Group Record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | All webhook endpoint events successfully submitted. |
| 422 | Error while trying to requeue Webhook Endpoint Events |

# Documents
## Get Documents 

**Summary:** Get all Documents for Project Template

### HTTP Request 
`GET /v3/documents` 

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

## Post Document 

**Summary:** Create a new Document

### HTTP Request 
`POST /v3/documents` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Document record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created Document |

# Workflow Definitions
## Get Workflow Definitions

**Summary:** Get all Workflow Definitions for an Organization

### HTTP Request 
`GET /v3/workflow_definitions` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| organizationId | query | Filters workflow definitions by organization. | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get all Workflow Definitions for an Organization |

# Resources
## Post Resource 

**Summary:** Create a Resource

### HTTP Request 
`POST /v3/resources` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Resource record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 201 | Resource record |

# Provider Accounts
## Get Provider Accounts

**Summary:** Get All Provider Accounts

### HTTP Request 
`GET /v3/provider_accounts` 

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

## Post Provider Account

**Summary:** Create a Provider Account

### HTTP Request 
`POST /v3/provider_accounts` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body | Provider Account record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created Provider |

## Get Provider Account

**Summary:** Get a Provider Account

### HTTP Request 
`GET /v3/provider_accounts/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Account ID | Yes | integer |
| organizationId | query | OrganizationId | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider record |

## Put Provider Account

**Summary:** Update a Provider Account

### HTTP Request 
`PUT /v3/provider_accounts/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Sales Account ID | Yes | integer |
| body | body | Provider Account record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider record |

## Delete Provider Account

**Summary:** Delete a Provider Account

### HTTP Request 
`DELETE /v3/provider_accounts/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path | Provider Account ID | Yes | integer |
| organizationId | query | Organization ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider Account archived |

# Provider Account Contacts
## Post Provider Account Contact

**Summary:** Create a Provider Account Contact

### HTTP Request 
`POST /v3/provider_accounts/{providerAccountId}/provider_account_contacts` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account ID | Yes | integer |
| body | body | Provider Account Contact record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created Provider Account Contact |

## Get Provider Account Contacts

**Summary:** Get a Provider Account Contacts

### HTTP Request 
`GET /v3/provider_accounts/{providerAccountId}/provider_account_contacts` 

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

## Get Provider Account Contact 

**Summary:** Get a Provider Account Contact

### HTTP Request 
`GET /v3/provider_accounts/{providerAccountId}/provider_account_contacts/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account ID | Yes | integer |
| id | path | Provider Account Contact ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Got Provider Account Contact |

## Put Provider Account Contact 

**Summary:** Update a Provider Account Contact

### HTTP Request 
`PUT /v3/provider_accounts/{providerAccountId}/provider_account_contacts/{id}` 

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

## Delete Provider Account Contact

**Summary:** Delete a Provider Account Contact

### HTTP Request 
`DELETE /v3/provider_accounts/{providerAccountId}/provider_account_contacts/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account ID | Yes | integer |
| id | path | Provider Account Contact ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider Account Contact archived |

# Providers
## Get Providers 

**Summary:** Get All Providers

### HTTP Request 
`GET /v3/provider_accounts/{providerAccountId}/providers` 

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

## Post Provider 

**Summary:** Create a Provider

### HTTP Request 
`POST /v3/provider_accounts/{providerAccountId}/providers` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account id | Yes | integer |
| body | body | Provider record | Yes |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider record |

## Get Provider

**Summary:** Get a Provider

### HTTP Request 
`GET /v3/provider_accounts/{providerAccountId}/providers/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account id | Yes | integer |
| id | path | Provider ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Get Provider |

## Delete Provider

**Summary:** Delete a Provider

### HTTP Request 
`DELETE /v3/provider_accounts/{providerAccountId}/providers/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| providerAccountId | path | Provider Account id | Yes | integer |
| id | path | Provider ID | Yes | integer |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Provider archived |

# Test Panels
## Get All Test Panels

**Summary:** Get available Test Panels

### HTTP Request 
`GET /v3/project_templates/{project_template_id}/test_panels` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| project_template_id | path | Associated project_template group | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Test Panels |

# Sample Labels
## Get All Sample Labels

**Summary:** Get available sample labels

### HTTP Request 
`GET /v3/project_templates/{project_template_id}/sample_labels` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| project_template_id | path | Associated project_template group | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Sample Labels |

# Project Templates
## Get All Project Templates

**Summary:** Get available project templates for a given organization

### HTTP Request 
`GET /v3/project_templates` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| organizationId | query | Associated organization | Yes | string |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Project Templates |