class Product
  include Mongoid::Document
  field :name, type: String
  field :price, type: Float
  field :description, type: String
  field :publish_on, type: Boolean

  belongs_to :person
  # validates :person, presence: true
  validates :name, presence: true#, message: 'must be abided'
  validates :publish_on, acceptance: { message: 'must be abided' }
end
