# Public: Return text parsed using any Lightweight Markup Language. Current
# implementation use Markdown (by Redcarpet gem).
#
# Example:
#
#     parser = ContentParser.new
#
#     parser.parse('Lorem ipsum') #=> '<p>Lorem ipsum</p>'
class ContentParser
  # Parse given text.
  #
  # Returns parsed text.
  def call(text)
    parser.render(text)
  end

  protected

  def renderer
    Redcarpet::Render::HTML.new(no_styles: true,
                                safe_link_only: true,
                                with_toc_data: true)
  end

  def parser
    Redcarpet::Markdown.new(renderer,
                            autolink: true,
                            quote: true)
  end
end
