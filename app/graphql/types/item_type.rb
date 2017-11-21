ItemType = GraphQL::ObjectType.define do
 name "Search"
  description "A search for anything."
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
end
