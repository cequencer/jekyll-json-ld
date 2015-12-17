require "json"
require "liquid"

module Jekyll
  module JSON
    module LD
      # Provides the tag json_ld that renders
      #  the object specified in the Front Matter
      #  YAML to JSON-LD
      class JSONLDTag < Liquid::Tag

        # @param root_key [string] name of the root
        #  key containing the object in the Front Matter
        def initialize(tag_name, root_key, tokens)
          super
          @root_key = root_key.strip
          @tokens = tokens
        end

        # Render is called by liquid
        # @return [string] JSON-LD string enclosed
        #  in the appropriate script tag
        def render(context)
          "<script type=\"application/ld+json\">%s</script>" % context.environments[0][@root_key].to_json
        end

      end
    end
  end
end

Liquid::Template.register_tag(
  "json_ld",
  Jekyll::JSON::LD::JSONLDTag)
