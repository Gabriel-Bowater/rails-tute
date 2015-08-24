class Inquiry
  include Mongoid::Document
  # attr_accessor :name, :email, :subject, :message
  validates :email, presence: true, format: /\A.+@.+\z/
  validates :subject, presence: true, length: { in: 4..32}
  validates :message, presence: true, length: { minimum: 12}
  field :name, type: String
  field :email, type: String
  field :subject, type: String
  field :message, type: String
end
