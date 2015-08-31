class Author
  include Mongoid::Document
  field :name
  field :email

  has_many :posts	

  validates :name, presence: true
  validates :email, presence: true

end
