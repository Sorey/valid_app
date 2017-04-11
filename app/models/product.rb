class Product
  include Mongoid::Document
  field :name, type: String
  field :price, type: Float
  field :description, type: String
  field :publish_on, type: Boolean

  validates :name, presence: true
end
