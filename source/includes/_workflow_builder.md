## Workflow builder


Page| URL
---|---
Github repository | [workflow_builder](https://github.com/GannettDigital/national_reporting/tree/release/apps/workflow_builder) 
Confluence page | [confluence](https://confluence.gannett.com/display/ClientCenter/Technical+-+Workflow+Builder) 



**Summary:** The purpose of the project is to create a robust and decentralized system of modules that has the capability to automate and schedule any task we may have. The main goal would be to replace Zappier or IFTT

### Architecture

The project leverages the following libraries, in order to automate the process of executing custom modules (programs):

- [Broadway](https://github.com/dashbitco/broadway) - used to retrieve events from Google Pub/Sub and apply back pressure (eg. we only want to process 10 pub/sub events at a time).
- [Oban](https://github.com/sorentwo/oban) - allows us to have a job queue with a persistence layer

### Anatomy of a program

Each workflow has the following properties:

- **GMAID** - the global master advertiser ID, for which the program will be executed
- **User Email** - the user email, for which the program will be executed
- **Event** - the event that will trigger the program
- **Data** - additional data, required by the program (eg. product code)

### Managing programs

For more information on how to perform CRUD operations over the programs, you can check the [API Docs](./API.md)

### Manually triggering a workflow

Besides by publishing a message to Pub/Sub and then waiting for the message to be processed, workflows can be triggered manually instead. To accomplish that, we have implemented a fake Broadway producer: `WorkflowBuilder.Pipeline.PubSub`

In order to push a message to it, you can execute the following command in IEx:

    WorkflowBuilder.Pipeline.PubSub.add("{\"lead_type\": \"ChatEvent\", \"gmaid\": \"USA_22\", \"contact_interaction_id\": 5685849}")

The above example mimics a chat lead Pub/Sub message for GMAID USA_22 and contact interaction 5685849.

### Processing Pub/Sub messages

The message processing logic works as follows

- Pub/Sub messages are picked up by the `WorkflowBuilder.Pipeline.Worker` module.
  It acts as a Broadway consumer.
- The messages are JSON-encoded strings. The `Worker` module parses them and passes down the parsed objects to the `WorkflowBuilder.Pipeline.EventProcessor` module.
- The `EventProcessor.process_event` function uses patterm matching to determine which event module to invoke

### Running the project

To start your Phoenix server:

  * **Important**! Before starting your project make sure you have postgres server installed.
  * Windows users before starting your project you need to import the environment variables form `env.prod` with this command `export $(cat ../../.env.prod | xargs)`.
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`(for powershell users `iex.bat -S mix phx.server`)

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

### Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix