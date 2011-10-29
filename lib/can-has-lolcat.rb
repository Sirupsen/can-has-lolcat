require 'open-uri'

module Lolcat
  PROTOCOL = "http://"
  RANDOM   = "icanhascheezburger.com/?random"

  class << self
    def can_has(format=:url, animal=:cat)

      lol = Lolcat.random_from_internetz(animal)

      case format
      when :html
        "<img src='#{lol}' alt='' />"
      when :bbcode
        "[img]#{lol}[/img]"
      else
        lol
      end
    end

    alias_method :can_haz, :can_has

    def random_html(animal)
      # do they want a kitteh or a puppeh?
      if animal == :dog
        domain = "dogs."
      else
        domain = ""
      end

      open(PROTOCOL + domain + RANDOM).read
    end

    def extract_image_url(animal, html)
      # is this a kitteh or a puppeh?
      if animal == :dog
        domain = "ihasahotdog"
      else
        domain = "icanhascheezburger"
      end

      regex = /"http:\/\/#{domain}\.files\.wordpress\.com\/[^"]+/
      html.match(regex)[0][1..-1]
    end

    def random_from_internetz(animal)
      extract_image_url(animal, random_html(animal))
    end
  end
end
