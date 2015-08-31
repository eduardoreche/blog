class Comment
  include Mongoid::Document
  field :name
  field :text

  embedded_in :post, inverse_of: :comments

  validates :name, :text, presence: true
end
