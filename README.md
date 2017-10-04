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

Your changes should now be live on http://reachlocal.github.io/api-docs
