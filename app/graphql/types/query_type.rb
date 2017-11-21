Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.
  # A query type for searches
  field :search, types[ItemType] do
    argument :query , !types.String
    resolve -> (obj, args, ctx) {
      StackExchange.search(args[:query])
    }
  end

end
