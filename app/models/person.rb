class Person
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  # include Mongoid::MultiParameterAttributes
  field :name, type: String
  field :email, type: String
  field :town, type: String
  field :birth_day, type: Date

  has_many :products
  validates_associated :products
  validates :name, presence: true, length: { minimum: 3 }#, message: 'must be abided'
end
