# Jekyll-JSON-LD: JSON-LD Liquid Tags in Jekyll

An as-of-now very simple liquid filter that allows you to specify an object in the [Front Matter](http://jekyllrb.com/docs/frontmatter/) YAML and render it into JSON-LD within your output.

## WARNING

This is currently an extremely limited implementation that does little more than convert a YAML object to JSON. Validation, normalization etc. are yet to come.

## Example

The object(s) can, for example, be specified in the Front Matter of a template, page or post:
```
---
layout: default
recipe:
  "@context": http://schema.org/
  "@type": Recipe
  name: "Grandma's Holiday Apple Pie"
  datePublished: 2015-12-24
  description: Is this a really tasty apple pie or have I fallen victim to some sort of culinary Stockholm Syndrom?
  recipeIngredient:
    - 500g brown sugar
    - 200ml Whiskey
---
```
...and so on. For references regarding defined schemes see [https://developers.google.com/structured-data/](https://developers.google.com/structured-data/) or [Schema.org](http://schema.org/docs/schemas.html)-

To run the YAML through the filter place (for this example) ´{{ page.recipe | json_ld_filter %}}` within the body of your document. This renders the following JSON-LD markup:

```
<script type="application/ld+json">
{
  "@context":"http://schema.org/",
  "@type":"Recipe",
  "name":"Grandma's Holiday Apple Pie",
  "datePublished":"2015-12-24",
  "description":"Is this a really tasty apple pie or have I fallen victim to some sort of culinary Stockholm Syndrom?",
  "recipeIngredient":
    ["500g brown sugar","200ml Whiskey"]
}
</script>
```
