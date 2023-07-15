require 'graphql'
require 'pry'

class QueryType < GraphQL::Schema::Object
  field :hello, String
  field :name, String

  def hello
    "Hello world!"
  end

  def name
    "Nikhil"
  end
end

class Schema < GraphQL::Schema
  query QueryType
end

binding.pry

puts Schema.execute('{ hello, name }').to_json