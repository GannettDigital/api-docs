# README - Data Connect API Documentation

Public facing documentation for the DataConnect APIs

## Ownership

- *Team Multi-User Chat:* https://usatnetwork-product.slack.com/messages/client-center
- *Confluence:* https://confluence.gannett.com/display/LIQAP/DataConnect
- *Jira:* https://jira.gannett.com/browse/EDGE

### Set Up
Run locally
```shell
bundle install
bundle exec middleman server
```

Run locally using Docker

```shell
docker-compose up --build
```

and access your site at http://localhost:4567 until you stop the running container process.

Now that Slate is all set up on your machine, you'll probably want to learn more about [editing Slate markdown](https://github.com/slatedocs/slate/wiki/Markdown-Syntax), or [how to publish your docs](https://github.com/slatedocs/slate/wiki/Deploying-Slate).

Editing or adding content
------------------------------

The starting point for content can be found at source/index.html.md.  A reference for the Markdown syntax used in Slate can be found at https://github.com/slatedocs/slate/wiki/Markdown-Syntax.

Publishing to GitHub Pages
------------------------------

Run `./deploy.sh`

Your changes should now be live on https://doc.api.localiq.com

Internal Only Documentation
-----------------------------------
[ERB templates are supported](https://github.com/slatedocs/slate/wiki/Embedding-Ruby-in-Markdown), use them to hide internal only documentation:

For example:
```
<% if false %>
|markup_type| Only supported value is 'percentage'|%>
|markup_value|"cost" fields (spend & budget) will be marked up by this pecentage|
<% end %>
```
