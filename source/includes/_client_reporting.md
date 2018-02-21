# Client Reporting

## Authorization

All requests must include an [Authorization](#authentication) header.

The email address used to obtain the OAuth access token must be associated with the GMAID of the requested advertiser.  If it is not, the API will return an HTTP response with status code 403 and the following body:

`{ "message": "Forbidden" }`
