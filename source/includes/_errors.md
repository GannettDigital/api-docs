# Error Codes

The ReachLocal API uses standard HTTP status codes to communicate errors


Error Code | Meaning
---------- | -------
200 | OK - Everything went as planned.
400 | Bad Request - Something in your header or request body was malformed.
401 | Unauthorized - Necessary credentials were either missing or invalid.
403 | Forbidden - The end user is authenticated, but is not authorized to access the requested resource.
404 | Not Found - The object you’re requesting doesn’t exist.
429 | Too Many Requests - You are calling our APIs more frequently than we allow.
5xx | Server Error - Something went wrong on our end.

In addition to the status code, the HTTP body of the response will also contain a JSON representation of the error.
