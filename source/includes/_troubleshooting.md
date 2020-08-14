## Troubleshooting

### 400 - Bad Request

#### Invalid Grant

Invalid grant error messages occurs when either:
* A request is made for an access token with invalid credentials (username or password)
* When a request is made to refresh an access token with an expired refresh token, one that has already been used to obtain an access token so it is no longer valid.

To resolve this check your username and password for accuracy, then follow steps at [Requesting Access and Refresh Tokens](https://reachlocal.github.io/api-docs/#api-access-step-2-authorization-requesting-access-and-refresh-tokens) to request a new refresh token.

### Example Response
```javascript
{
    "error": "invalid_grant",
    "error_description": "The provided authorization credentials are invalid. Refer to documentation at https://reachlocal.github.io/api-docs/#error-codes for further information."
}
```

### 401 - Unauthorized

Unauthorized messages can occur when a request for a report endpoint is made using an expired token.

To resolve this, follow steps at [Requesting Access and Refresh Tokens](https://reachlocal.github.io/api-docs/#api-access-step-2-authorization-requesting-access-and-refresh-tokens)

### Example Response

```javascript
{
    "message": "Unauthorized"
}
```
