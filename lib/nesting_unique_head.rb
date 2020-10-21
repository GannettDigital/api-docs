# Nested unique header generation
require 'middleman-core/renderers/redcarpet'

class NestingUniqueHeadCounter < Middleman::Renderers::MiddlemanRedcarpetHTML
  def initialize
    super
    @@headers_history = {} if !defined?(@@headers_history)
  end

  def header(text, header_level)
    friendly_text = text.gsub(/<[^>]*>/,"").parameterize
    @@headers_history[header_level] = text.parameterize

    if header_level > 1
      for i in (header_level - 1).downto(1)
        friendly_text.prepend("#{@@headers_history[i]}-") if @@headers_history.key?(i)
      end
    end

    header = if header_level == 3 && text =~ /<strong>/
      header = "<h#{header_level} id='#{friendly_text}' class='api_header' style='padding-top: 0.5em;padding-bottom: 0.5em;'>#{remove_string(text)}</h#{header_level}>"
    else
      header = "<h#{header_level} id='#{friendly_text}'>#{remove_string(text)}</h#{header_level}>"
    end

    return header
  end

  def paragraph(text)
    text = remove_string(text)

    if text.blank?
      return
    else
      return "<p>#{text}</p>"
    end
  end

  def table(header, body)
    return if header =~ /<internal>/mi

    body_elements = remove_blank_tr(remove_blank_td(remove_string(body)).split("\n").join("|")).split("|").join("\n")

    return "<table><thead>#{header}</thead><tbody>#{body_elements}</tbody></table>"
  end

  def list(text, flags)
    tag = flags == :unordered ? "ul" : "ol"

    text = remove_blank_li(remove_string(text))

    if text.blank?
      return
    else
      return "<#{tag}>#{text}</#{tag}>"
    end
  end

  def remove_string(str)
    pattern = /<internal(?:\s*>|\s+(?:(?:[^=\s]*?(?:=(?:(?:"[^"]*?")|(?:'[^']*?')))?)\s*)*>).*?<\/\s*internal>/mi

    str.gsub(pattern, '')
  end

  def remove_blank_tr(str)
    pattern = /<tr>(\s*)\|(\|*)(\s*)<\/tr>/mi

    str.gsub(pattern, '')
  end

  def remove_blank_td(str)
    pattern = /<td>(\s*)<\/td>/mi

    str.gsub(pattern, '')
  end

  def remove_blank_li(str)
    pattern = /<li>(\s*)<\/li>/mi

    str.gsub(pattern, '')
  end

  def block_code(text, lang)
    return if text =~ /<internal>/
    super
  end
end
