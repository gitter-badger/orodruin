class Blog::Comment
  include Mongoid::Document

  field :text, type: String

  validates :user, presence: true
  validates :text, presence: true, length: { minimum: 1 }

  belongs_to :user

  embedded_in :post, class_name: 'Blog::Post'
end
