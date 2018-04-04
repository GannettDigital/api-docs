# Client Reporting

## Authorization

All requests must include an [Authorization](#authentication) header.

The email address used to obtain the OAuth access token must be associated with the GMAID of the requested advertiser.  If it is not, the API will return an HTTP response with status code 403 and the following body:

`{ "message": "Forbidden" }`

## API Rate LImits

ReachLocal enforces API rate limits for its REST APIs. Rate limit configuration consists of a per second request limit. Limits are set to 20 requests / second.

If you exceed the rate limit allowance your request will be rejected. An ```HTTP 429 (Too Many Requests)​``` response will be returned. Clients must back off until the end of the current rate limit window before making any more requests.

Example response body for throttled request

`{ "message": "Too Many Requests" }`

We reserve the right to alter rate limits other functionality to prevent abuse, spam, denial-of-service attacks, or other security issues. Where possible we'll return a descriptive error message, but the nature of this type of rate limiting often prevents us from providing more information.