class ContentParser
  def parse(text)
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
