module Jekyll
  module CustomEmoji
    def emoji(input)
      base_url = "/assets/img/emojis"  # adjust this path
      filename = "#{input}.jpg"
      "<img class='emoji' title=':#{input}:' alt=':#{input}:' src='#{base_url}/#{filename}' height='20' width='20' />"
    end
  end
end

Liquid::Template.register_filter(Jekyll::CustomEmoji)
