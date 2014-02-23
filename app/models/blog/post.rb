class Blog::Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :content, type: String
  field :content_raw, type: String

  validates :title, presence: true, length: { maximum: 256 }
  validates :content, presence: true

  def parse_content
    self[:content] = ContentParser.new.parse(content_raw)
  end

  def save(*opts)
    parse_content

    super(*opts)
  end

  private
  attr_writer :content
end
