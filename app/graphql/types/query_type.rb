module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"

    # field :all_links, [Types::LinkType], null: false
    field :all_links, resolver: Resolvers::LinksSearch

    def all_links
      Link.all
    end

    def test_field
      "Hello World!"
    end
  end
end
