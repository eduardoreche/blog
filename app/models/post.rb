class Post
  include Mongoid::Document
  field :title
  field :body

  belongs_to :author
  embeds_many :comments

  validates :title, presence: true
end
