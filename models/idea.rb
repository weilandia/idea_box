class Idea
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String
  field :quality, type: String, default: "swill"
end
