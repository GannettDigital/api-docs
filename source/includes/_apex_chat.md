## Apex Chat

This endpoint on the Capture External Event API is a public ReachLocal interface specifically for Apex Chat events. It will replace the current API used by Apex to send Lead events to our system and will accept the same post body parameters.

This endpoint does not currently validate the post body parameters. Instead, it forwards the payload along to our legacy internal Events API for validation and processing. We expect this to be changed in the near future.

### Create Apex Chat Event

This endpoint is used to create a chat event.

### HTTP Request

Method | URI Format
------ | ----------
POST   | https://api.reachlocalservices.com/capture_events/apex_chats

### HTTP Response Codes

Status Code | Description
----------- | -----------
200         | Successful

### Post Body Parameters

Parameter | Required | Datatype | Nullable | Description
--------- | -------- | -------- | -------- | -----------
eventType | yes      | string   | no       | e.g. "Chat"
subType   | yes      | string   | no       | e.g. "Lead"
scope     | yes      | string   | no       | e.g. "CHAT"
scopeId   | yes      | string   | no       |
country   | yes      | string   | no       | e.g. "USA"
eventTime | yes      | string   | no       | The date/time in UTC that the chat started.
data      | yes      | object   | no       | A JSON hash representing the attributes for the chat.

This section defines the data parameter JSON hash.

Data Field                 | Required | Datatype | Nullable | Description
-------------------------- | -------- | -------- | -------- | -----------
chatId                     | yes      | string   | no       |
chatAccountId              | yes      | string   | no       |
leadType                   | yes      | string   | no       |
chatVisitorName            | yes      | string   | no       |
chatVisitorEmail           | yes      | string   | no       |
chatVisitorPhone           | yes      | string   | no       |
chatVisitorAddress1        | yes      | string   | no       |
chatVisitorAddress2        | yes      | string   | no       |
chatVisitorCity            | yes      | string   | no       |
chatVisitorState           | yes      | string   | no       |
chatVisitorZip             | yes      | string   | no       |
chatDuration               | yes      | string   | no       |
chatSummary                | yes      | string   | no       |
chatTextFull               | yes      | string   | no       |
notificationRecipientEmail | yes      | string   | no       |
provider                   | yes      | string   | no       |
hippaLoginUrl              | yes      | string   | no       |
hippaProtected             | yes      | string   | no       |
businessName               | yes      | string   | no       |
visitorId                  | yes      | string   | no       |

### Examples:



``` shell
# Sample cURL for the Create Apex Chat POST request:

curl -X POST \
  https://api.reachlocalservices.com/capture_events/apex_chats \
  -H 'Content-Type: application/json' \
  -H 'accept: application/json' \
  -H 'authorization: Bearer OAUTH_ACCESS_TOKEN' \
  -d '{
  "eventType":"Chat",
  "subType":"Lead",
  "scope":"CHAT",
  "scopeId":"172716",
  "country":"USA",
  "eventTime":"2019-03-08 18:29:09",
  "data": {
    "chatId":"3078079",
    "chatAccountId":"3269891",
    "leadType":"Other",
    "chatVisitorName":"eztest",
    "chatVisitorEmail":"eztest@test.com",
    "chatVisitorPhone":"555-455-5555",
    "chatVisitorAddress1":"123 Elm St.",
    "chatVisitorAddress2":"N/A",
    "chatVisitorCity":"Somewhere",
    "chatVisitorState":"CA",
    "chatVisitorZip":"12345",
    "chatDuration":"300.0",
    "chatSummary":"Razi Abbasi\n555-555-5555\nbruce.wayne@batman.com\nWayne Manor, Gotham City.\nBye",
    "chatTextFull":"Dan: Hello, thanks for contacting Orange Paper. My name is Dan, may I have your first and last name if you do not mind?\nVisitor: Razi Abbasi\nDan: Can I have an email address or phone number?\n\nVisitor: 555-555-5555\nVisitor: bruce.wayne@batman.com\nDan: Thank you for the information\n\nDan: where are you located?\n\nVisitor: Wayne Manor, Gotham City.\nDan: Thank you\n\nDan: Bye\n\nVisitor: Bye\nSystem: The chat session has ended.\n",
    "notificationRecipientEmail":"razi.abbasi@apexchat.com, ahejazi@apexchat.com",
    "provider":"Apex",
    "hippaLoginUrl":"https://reachlocallivechat.com/Pages/Portal.aspx?leadId=1503483",
    "hippaProtected":"false",
    "businessName":"Orange Paper",
    "visitorId":"baca09be-79d7-46c2-81d3-0e12732f0244"
  }
}'
# HTTP Response Status: 200
```

``` ruby
# Sample Ruby for the Create Chat POST request:

require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/capture_events/apex_chats")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'
request["Content-Type"] = 'application/json'
request.body = "{\"eventType\":\"Chat\",\"subType\":\"Lead\",\"scope\":\"CHAT\",\"scopeId\":\"172716\",\"country\":\"USA\",\"eventTime\":\"2019-03-08 18:29:09\",\"data\":{\"chatId\":\"3078079\",\"chatAccountId\":\"3269891\",\"leadType\":\"Other\",\"chatVisitorName\":\"eztest\",\"chatVisitorEmail\":\"eztest@test.com\",\"chatVisitorPhone\":\"555-455-5555\",\"chatVisitorAddress1\":\"123 Elm St.\",\"chatVisitorAddress2\":\"N/A\",\"chatVisitorCity\":\"Somewhere\",\"chatVisitorState\":\"CA\",\"chatVisitorZip\":\"12345\",\"chatDuration\":\"300.0\",\"chatSummary\":\"Razi Abbasi\\n555-555-5555\\nbruce.wayne@batman.com\\nWayne Manor, Gotham City.\\nBye\",\"chatTextFull\":\"Dan: Hello, thanks for contacting Orange Paper. My name is Dan, may I have your first and last name if you do not mind?\\nVisitor: Razi Abbasi\\nDan: Can I have an email address or phone number?\\n\\nVisitor: 555-555-5555\\nVisitor: bruce.wayne@batman.com\\nDan: Thank you for the information\\n\\nDan: where are you located?\\n\\nVisitor: Wayne Manor, Gotham City.\\nDan: Thank you\\n\\nDan: Bye\\n\\nVisitor: Bye\\nSystem: The chat session has ended.\\n\",\"notificationRecipientEmail\":\"razi.abbasi@apexchat.com, ahejazi@apexchat.com\",\"provider\":\"Apex\",\"hippaLoginUrl\":\"https://reachlocallivechat.com/Pages/Portal.aspx?leadId=1503483\",\"hippaProtected\":\"false\",\"businessName\":\"Orange Paper\",\"visitorId\":\"baca09be-79d7-46c2-81d3-0e12732f0244\"}}"

response = http.request(request)
puts response.read_body

# HTTP Response Status: 200
```

``` java
/* Sample Java for the Create Chat POST request: */

OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\"eventType\":\"Chat\",\"subType\":\"Lead\",\"scope\":\"CHAT\",\"scopeId\":\"172716\",\"country\":\"USA\",\"eventTime\":\"2019-03-08 18:29:09\",\"data\":{\"chatId\":\"3078079\",\"chatAccountId\":\"3269891\",\"leadType\":\"Other\",\"chatVisitorName\":\"eztest\",\"chatVisitorEmail\":\"eztest@test.com\",\"chatVisitorPhone\":\"555-455-5555\",\"chatVisitorAddress1\":\"123 Elm St.\",\"chatVisitorAddress2\":\"N/A\",\"chatVisitorCity\":\"Somewhere\",\"chatVisitorState\":\"CA\",\"chatVisitorZip\":\"12345\",\"chatDuration\":\"300.0\",\"chatSummary\":\"Razi Abbasi\\n555-555-5555\\nbruce.wayne@batman.com\\nWayne Manor, Gotham City.\\nBye\",\"chatTextFull\":\"Dan: Hello, thanks for contacting Orange Paper. My name is Dan, may I have your first and last name if you do not mind?\\nVisitor: Razi Abbasi\\nDan: Can I have an email address or phone number?\\n\\nVisitor: 555-555-5555\\nVisitor: bruce.wayne@batman.com\\nDan: Thank you for the information\\n\\nDan: where are you located?\\n\\nVisitor: Wayne Manor, Gotham City.\\nDan: Thank you\\n\\nDan: Bye\\n\\nVisitor: Bye\\nSystem: The chat session has ended.\\n\",\"notificationRecipientEmail\":\"razi.abbasi@apexchat.com, ahejazi@apexchat.com\",\"provider\":\"Apex\",\"hippaLoginUrl\":\"https://reachlocallivechat.com/Pages/Portal.aspx?leadId=1503483\",\"hippaProtected\":\"false\",\"businessName\":\"Orange Paper\",\"visitorId\":\"baca09be-79d7-46c2-81d3-0e12732f0244\"}}");
Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/capture_events/apex_chats")
  .post(body)
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Content-Type", "application/json")
  .build();

Response response = client.newCall(request).execute();

/* HTTP Response Status: 200 */
```
