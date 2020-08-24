# Error Codes

The ReachLocal API uses standard HTTP status codes to communicate errors

Error Code | Meaning
---------- | -------
200 | OK - Everything went as planned.
400 | Bad Request - Something in your header or request body was malformed.
401 | Unauthorized - Necessary credentials were either missing or invalid.
403 | Forbidden - The end user is authenticated, but is not authorized to access the requested resource. The API response will give information on why this is the case. Unauthorized permissions can be due to advertisers not being active or the user calling the API does not have privileges to access HIPAA info.
404 | Not Found - The object you’re requesting doesn’t exist.
422 | Unprocessable Entity - There is a missing or invalid parameter. The API response will state what parameter needs attention.
429 | Too Many Requests - You are calling our APIs more frequently than we allow.
5xx | Server Error - Something went wrong on our end.

In addition to the status code, the HTTP body of the response will also contain a JSON representation of the error.
