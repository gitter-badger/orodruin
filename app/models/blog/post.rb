class Blog::Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :title, type: String
  field :content, type: String
  field :content_raw, type: String

  validates :title, presence: true, length: { maximum: 256 }
  validates :content, presence: true
  validates :content_raw, presence: true

  belongs_to :user

  embeds_many :comments, class_name: 'Blog::Comment'

  slug :title

  def parse_content
    self[:content] = ContentParser.new.parse(content_raw)
  end

  def save(*opts)
    parse_content

    super
  end

  private
  attr_writer :content
end
