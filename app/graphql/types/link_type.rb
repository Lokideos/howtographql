module Types
  class LinkType < Types::BaseObject
    field :id, ID, null: false
    field :url, String, null: false
    field :description, String, null: false
    field :posted_by, Types::UserType, null: true, method: :user
    field :votes, [Types::VoteType], null: false
  end
end
