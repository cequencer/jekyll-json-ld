require "minitest/autorun"
require "jekyll/json/ld"
require "safe_yaml/load"

# An exhaustive test of the json_ld tag
class JSONLDTagTest < Minitest::Test

  def test_yaml_to_json_ld
    source = "{% json_ld recipe %}"
    data = SafeYAML.load_file("./test/fixtures/2015-12-24-Apple-Pie.html")
    @template = Liquid::Template.parse(source, error_mode:  :strict)

    assert_equal(
      '<script type="application/ld+json">{"@context":"http://schema.org/","@type":"Recipe","name":"Grandma\'s Holiday Apple Pie","datePublished":"2015-12-24","description":"Is this a really tasty apple pie or have I fallen victim to some sort of culinary Stockholm Syndrom?","recipeIngredient":["500g brown sugar","200ml Whiskey"]}</script>',
      @template.render(data))
  end

end
