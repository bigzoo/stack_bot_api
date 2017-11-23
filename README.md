## Usage Instructions
Api is publicly availble at https://staackle.herokuapp.com/api/v1.
Only post requests are handled by the api and only what is requested is passed, as is the Graphql architecture by Facebook.
Currently it can accept only one parameter which is a query string by the name "query" and with the next one you will be able to specify to only results from a spefic Stack Exchange.

# Fields that you can request.
```
  field :id, types.ID
  field :title, types.String
  field :tags, types.String
  field :link, types.String
  field :answer_count, types.Int
  field :last_activity_date, types.Int
  field :creation_date, types.Int
  field :score, types.Int
  field :owner_id, types.Int
  field :view_count, types.Int

```
Sample curl query
```
curl -X POST \
  https://staackle.herokuapp.com/api/v1 \
  -H 'cache-control: no-cache' \
  -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW' \
  -F 'query={
  search(query: "rails token mismatch") {
    title,link,tags
  }
}
'
```
  
  For more information on how to use GrapgQl, please visit 
  http://graphql.org/learn/
Introduction to GraphQL | GraphQL

  
Please open an issue if you face any trouble with it and don't hesitate to contribute too.


## Inspiration
No one enjoys the long hours and wasted time before you find the right spray to your bug.

## What it does
Leverages the wealth of stack sites and their api's to get you the best and most relevant answers so you no longer need to google your bugs.

## How I built it
Consumed api's provided by the Stack sites so that all searched are done against realtime data. Provided the core functionality in a graphql based Api so that anyone can intergrate it into anything they want, from text editors, ide's mobile apps, bots, etc.

## Challenges I ran into
Material on the Api's.
New to React (mainly a front-end dev).
My team went silent on me.

## Accomplishments that I'm proud of
The backend api.
Making graphql work.


## What I learned

## What's next for Stack Search
Hopefully a messenger bot to start with and then atom and code integration to start with.
