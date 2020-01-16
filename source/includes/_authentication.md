# API Access

We have a two-step access process; authentication and authorization.

* The authentication process registers your application to a business user email.

* The authorization process determines the advertising data the business user is allowed to access.

Note: Business user’s access to advertiser’s data (GMAIDs) is maintained through Campaign Central/Corp.

## Step 1: Authentication

The first step is to register your application with Reach Local. Please contact your account manager, DMC or [LOCALiQ API Support](mailto:apiservices@localiq.com) to request API access.

You will get a response within 1 business day. The response email will contain a Client Id and a Client Secret token.

* The Client Id token is a public identifier for your application that will differentiate it amongst other Reach Local API integrations.

* The client secret is a secret known only to the application and the authorization server.

## Step 2: Authorization

The second step involves receiving an Authorization token, which is then used to request an Access and Refresh token. **There are two ways to receive an Authorization token: User login method and Direct access method.**

### Authorization Token (User login method)

Through a browser initiate the authorization with your Client Id and Client Secret tokens [Step 1] and your REDIRECT_URI (the redirect URI is where all API related responses will be sent)

`https://api.reachlocalservices.com/oauth/authorize?client_id=[CLIENT_ID]&response_type=code&redirect_uri=[REDIRECT_URI]`

For user login: Please enter your business user credentials.

![login screen](/images/login.png)

Upon successful authentication, you will be redirected to the REDIRECT_URI along with an Authorization token. This token expires in 10 minutes.

**Note:**

ReachLocal credentials: Business User credentials are provided to you by your account team during account creation. These  credentials allow you to access the account data through the APIs as well as the Client Center.

If you need to check if you have a Business User created or need to reset your password, you can navigate to ReachSecurePay (`https://reachsecurepay.com/client/index.php`) and enter your email address. If you encounter the error message “Email Address is invalid” or “Email Address not found”, please contact your account management team

If you progress to the login screen, you can select “Create a new password” which will either send you a password reset email or allow you to set your password manually (this will only occur if your password has never been set).

The business user must be set up to allow access to HIPAA information to access HIPAA data through the API. You can reach your account team to check and/or edit privileges on your business user. Please follow the needed due diligence when adding HIPAA privileges to your business user account since the implications of it are far beyond API access to data.

This control applies to APIs that provide data that are classified as HIPAA and protected by law.

### Requesting Access and Refresh Tokens

Please use the Authorization token to request an Access and Refresh token.

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/oauth/token")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request.body = "{\n\t\"client_id\": \"CLIENT_ID\",\n\t\"client_secret\": \"CLIENT_SECRET\",\n\t\"code\": \"AUTHORIZATION_TOKEN\",\n\t\"grant_type\": \"authorization_code\",\n\t\"redirect_uri\": \"REDIRECT_URI\"\n}"

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n\t\"client_id\": \"CLIENT_ID\",\n\t\"client_secret\": \"CLIENT_SECRET\",\n\t\"code\": \"AUTHORIZATION_TOKEN\",\n\t\"grant_type\": \"authorization_code\",\n\t\"redirect_uri\": \"REDIRECT_URI\"\n}");
Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/oauth/token")
  .post(body)
  .addHeader("content-type", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl -X POST \
  https://api.reachlocalservices.com/oauth/token \
  -H 'content-type: application/json' \
  -d '{
  "client_id": "CLIENT_ID",
  "client_secret": "CLIENT_SECRET",
  "code": "AUTHORIZATION_TOKEN",
  "grant_type": "authorization_code",
  "redirect_uri": "REDIRECT_URI"
}'
```
> The above command returns JSON structured like this:

```json
{
  "access_token": "8821d2a47a88d1cbaced1043aee73ccc4608d7cacb068c0eb09e468e91cdb49b",
  "token_type": "bearer",
  "expires_in": 7200,
  "refresh_token": "5d59deea16599eb316a63989a9974568da4f5570e7ef9969c693f0b1ce1052cb",
  "created_at": 1495549720
}

```
### Authorization Token (Direct access method)

Another way to get the Authorization, Access and Refresh tokens today is to use the direct access approach. OAuth 2 provides a "password" grant type which can be used to exchange your business user credentials for an Access token directly. This method is easier to use for straight API integrations where user interaction isn't desired or possible.

Replace the CLIENT_ID, CLIENT_SECRET, USERNAME and PASSWORD with the correct values for your account.

**Note:**

ReachLocal credentials: Business User credentials are provided to you by your account team during account creation. These  credentials allow you to access the account data through the APIs as well as the Client Center.

If you need to check if you have a Business User created or need to reset your password, you can navigate to ReachSecurePay (`https://reachsecurepay.com/client/index.php`) and enter your email address. If you encounter the error message “Email Address is invalid” or “Email Address not found”, please contact your account management team

If you progress to the login screen, you can select “Create a new password” which will either send you a password reset email or allow you to set your password manually (this will only occur if your password has never been set).

The business user must be set up to allow access to HIPAA information to access HIPAA data through the API. You can reach your account team to check and/or edit privileges on your business user. Please follow the needed due diligence when adding HIPAA privileges to your business user account since the implications of it are far beyond API access to data.

This control applies to APIs that provide data that are classified as HIPAA and protected by law.

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/oauth/token")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["Content-Type"] = 'application/json'
request.body = "{\n\t\"client_id\": \"CLIENT_ID\",\n\t\"client_secret\": \"CLIENT_SECRET\",\n\t\"grant_type\":\"password\",\n\t\"username\":\"USERNAME\",\n\t\"password\":\"PASSWORD\"\n}"

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n\t\"client_id\": \"CLIENT_ID\",\n\t\"client_secret\": \"CLIENT_SECRET\",\n\t\"grant_type\":\"password\",\n\t\"username\":\"USERNAME\",\n\t\"password\":\"PASSWORD\"\n}");
Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/oauth/token")
  .post(body)
  .addHeader("Content-Type", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request POST \
  --url https://api.reachlocalservices.com/oauth/token \
  --header 'Content-Type: application/json' \
  --data '{
      "client_id": "CLIENT_ID",
      "client_secret": "CLIENT_SECRET",
      "grant_type":"password",
      "username":"USERNAME",
      "password":"PASSWORD"
    }'
```

> The above command returns JSON structured like this:

```json
{
  "access_token": "8821d2a47a88d1cbaced1043aee73ccc4608d7cacb068c0eb09e468e91cdb49b",
  "token_type": "bearer",
  "expires_in": 7200,
  "refresh_token": "5d59deea16599eb316a63989a9974568da4f5570e7ef9969c693f0b1ce1052cb",
  "created_at": 1495549720
}
```

### Request New Access Token

* The Access token should be passed in the authorization header for all API requests. This Access token expires every 2 hours. If the token has expired, all API calls will receive a 401 HTTP status code response.

* You can request a new Access token by using the Refresh token. It is very important that you save the Refresh token for this purpose. If your Refresh token is lost, you would have to authenticate and authorize again [Step 1 and Step 2] to obtain a new Access token and Refresh token.

![Oauth flow](/images/oauth_flow.png)

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/oauth/token")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request.body = "{\n\t\"client_id\": \"CLIENT_ID\",\n\t\"client_secret\": \"CLIENT_SECRET\",\n\t\"grant_type\": \"refresh_token\",\n\t\"refresh_token\": \"REFRESH_TOKEN\"\n}"

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n\t\"client_id\": \"CLIENT_ID\",\n\t\"client_secret\": \"CLIENT_SECRET\",\n\t\"grant_type\": \"refresh_token\",\n\t\"refresh_token\": \"REFRESH_TOKEN\"\n}");
Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/oauth/token")
  .post(body)
  .addHeader("content-type", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request POST \
  --url https://api.reachlocalservices.com/oauth/token \
  --header 'content-type: application/json' \
  --data '{
      "client_id": "CLIENT_ID",
      "client_secret": "CLIENT_SECRET",
      "grant_type": "refresh_token",
      "refresh_token": "REFRESH_TOKEN"
    }'
```
> The above command returns JSON structured like this:

```json
{
    "access_token": "62b28b310f73caa88d6968c380ccb85434f4f6379162e01d1bade4b62a62762c",
    "token_type": "bearer",
    "expires_in": 7200,
    "refresh_token": "f2b8a81ca929a4df4d40fe8bb36a379761f91242ac3b26957e3e0a6696235233",
    "created_at": 1504822139
}

```

### Security Considerations

Refresh tokens are long-lived.

This means when you must store it securely to keep it from being used by potential attacker. For this reason, it is not safe to store them in the browser. If a Refresh token is leaked, it may be used to obtain new Access tokens (and access protected resources) until it is blacklisted.

Access tokens must also be kept secret, but due to its shorter life, security considerations are less critical.

The email address used to obtain the OAuth Access token must be associated with the GMAID of the requested advertiser. If it is not, the API will return an HTTP response with status code 403 and the following body:

`{ "name": "not_authorized", "message": "You are not permitted to perform this action." }`

### API Rate Limits

ReachLocal enforces API rate limits for its REST APIs. Rate limit configuration consists of a per second request limit. Limits are set to 20 requests/second.

If you exceed the rate limit allowance, your request will be rejected. An ```HTTP 429 (Too Many Requests)​``` response will be returned. Clients must back off until the end of the current rate limit window before making any more requests.

Example response body for throttled request:

`{ "message": "Too Many Requests" }`

We reserve the right to alter rate limits and other functionality to prevent abuse, spam, denial-of-service attacks, or other security issues. Where possible, we'll return a descriptive error message, but the nature of this type of rate limiting often prevents us from providing more information.
