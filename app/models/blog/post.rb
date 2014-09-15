class Blog::Post < ActiveRecord::Base
  belongs_to :author, class_name: 'User'

  before_save :parse_text

  protected

  attr_writer :text

  def parse_text
    parser = MarkupService.new

    self[:text] = parser.call(text_raw)
  end
end
