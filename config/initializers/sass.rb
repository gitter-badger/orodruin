require 'base64'

module Sass::Script::Functions
  def inline_image(path, mime_type = nil)
    real_path   = sprockets_context.resolve(path.value)
    mime_type ||= compute_mime_type(real_path)

    url = "url('data:#{mime_type};base64,#{data(real_path)}')"

    Sass::Script::String.new(url, :identifier)
  end

  private
  def compute_mime_type(path)
    case path.to_s
    when /\.svg$/i   then 'image/svg+xml'
    when /\.jpe?g$/i then 'image/jpeg'
    when /\.(?<type>[a-z]+)$/
      "image/#{type.downcase}"
    else
      raise "Unknown MIME type for #{path}."
    end
  end

  def data(path)
    Base64.encode64(File.read(path)).gsub("\n", '')
  end
end
