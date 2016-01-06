require "json"
require "liquid"

module Jekyll
  module JSON
    module LD
      # Provides the filter json_ld that renders
      #  a provided YAML to JSON-LD
      # @param yaml [String] object to render
      # @return [String] object in json-ld wrapped in the script tag of type "application/ld+json"
      module JSONLDFilter
        def json_ld_filter(yaml)
          "<script type=\"application/ld+json\">%s</script>" % yaml.to_json
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::JSON::LD::JSONLDFilter)
