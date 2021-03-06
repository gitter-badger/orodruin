# Public: Return text parsed using any Lightweight Markup Language. Current
# implementation use Markdown (by Redcarpet gem).
#
# Parser flags enabled:
#
#   - `autolink`
#   - `quote`
#
# Renderer flags enabled:
#
#   - `no_styles`
#   - `safe_link_only`
#   - `with_toc_data`
#
# Example:
#
#     parser = MarkupService.new
#
#     parser.call('Lorem ipsum') #=> '<p>Lorem ipsum</p>'
class MarkupService
  # Parse given text.
  #
  # Returns parsed text.
  def call(text)
    parser.render(text.to_s)
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
