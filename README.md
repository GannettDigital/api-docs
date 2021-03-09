Getting Started
------------------------------

### Set Up

```shell
# either run this to run locally
bundle install
bundle exec middleman server

# OR run this to run with Docker
docker-compose up
```

You can now see the docs at http://localhost:4567.

Now that Slate is all set up on your machine, you'll probably want to learn more about [editing Slate markdown](https://github.com/lord/slate/wiki/Markdown-Syntax), or [how to publish your docs](https://github.com/lord/slate/wiki/Deploying-Slate).

Editing or adding content
------------------------------

The starting point for content can be found at source/index.html.md.  A reference for the Markdown syntax used in Slate can be found at https://github.com/lord/slate/wiki/Markdown-Syntax.

Publishing to GitHub Pages
------------------------------

Run `./deploy.sh`

Your changes should now be live on https://doc.api.localiq.com

Internal Only Documentation
-----------------------------------
To tag parts of the doc as internal-only, tag the element with the \<internal>\</internal> tag.

For example:
```
## <internal>Internal Only Heading</internal>

This is a test example.  <internal>This is internal only.</internal>

Example list:
  - test1
  - test2
  - <internal>test3</internal>

To hide the whole table:

|<internal> Param | Required? | Function </internal>|
|---|---|---|
| global_master_campaign_id[] | Optional | global_master_campaign_id|
| campaign_status[] | Optional | Campaign Status|

To hide one row:

| Param | Required? | Function |
|---|---|---|
| <internal>global_master_campaign_id[] | Optional | global_master_campaign_id</internal>|
| campaign_status[] | Optional | Campaign Status|

To hide codeblock:

json
<internal>
{
    "test": "1"
}
</internal>
```
