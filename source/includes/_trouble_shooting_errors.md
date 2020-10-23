## Troubleshooting Errors

### 400 - Bad Request

**Invalid Grant**

> Example Response

```json
{ "error": "invalid_grant", "error_description": "The provided authorization credentials are invalid. Refer to documentation at https://reachlocal.github.io/api-docs/#error-codes for further information." }
```

Invalid grant error messages occurs when either:

- A request is made for an access token with invalid credentials (username or password)

- When a request is made to refresh an access token with an expired refresh token, one that has already been used to obtain an access token so it is no longer valid.

To resolve this check your username and password for accuracy, then follow steps at [Requesting Access and Refresh Tokens](https://reachlocal.github.io/api-docs/#api-access-step-2-authorization-requesting-access-and-refresh-tokens) to request a new refresh token.

### 401 - Unauthorized

> Example Response

```json
{ "message": "Unauthorized" }
```

Unauthorized messages can occur when a request for a report endpoint is made using an expired token.

To resolve this, follow steps at [Requesting Access and Refresh Tokens](https://reachlocal.github.io/api-docs/#api-access-step-2-authorization-requesting-access-and-refresh-tokens)

### 403 - Forbidden

> Example Response

```json
{ "name": "not_authorized", "message": "You are not permitted to perform this action." }
```

**HIPAA Permissions**

The business user must be set up to allow access to HIPAA information to access HIPAA data through the API. You can reach your account team to check and/or edit privileges on your business user. Please follow the needed due diligence when adding HIPAA privileges to your business user account since the implications of it are far beyond API access to data.

This control applies to APIs that provide data that are classified as HIPAA and protected by law.

