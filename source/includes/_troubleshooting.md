# Troubleshooting

## 400 - Bad Request

### Invalid Refresh Token

Invalid refresh token errors (400-Bad Request) message occurs when a request is made to refresh an access token with an expired refresh token. An expired refresh token is one that has already been used to obtain an access token so it is no longer valid.

To resolve this, follow steps at [Requesting Access and Refresh Tokens](https://reachlocal.github.io/api-docs/#api-access-step-2-authorization-requesting-access-and-refresh-tokens)

### Example Response
```javascript
{
    "error": "Invalid refresh token",
    "error_description": "The authorization server encountered an unexpected condition which prevented it from fulfilling the request."
}
```

### Invalid Grant

Invalid grant messages occur when a request is made for an access token with invalid credentials (username or password).

To resolve this, try logging in again or resetting your password.

### Example Response
```javascript
{
    "error": "invalid_grant",
    "error_description": "The provided authorization grant is invalid, expired, revoked, does not match the redirection URI used in the authorization request, or was issued to another client."
}
```

## 401 - Unauthorized

Unauthorized messages can occur when a request for a report endpoint is made using an expired token.

To resolve this, follow steps at [Requesting Access and Refresh Tokens](https://reachlocal.github.io/api-docs/#api-access-step-2-authorization-requesting-access-and-refresh-tokens)

### Example Response

```javascript
{
    "message": "Unauthorized"
}
```
