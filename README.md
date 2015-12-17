# Jekyll-JSON-LD: JSON-LD Liquid Tags in Jekyll

An as-of-now very simple liquid tag that allows you to specify an object in the [Front Matter](http://jekyllrb.com/docs/frontmatter/) YAML and render it into JSON-LD within your output.

## WARNING

This is currently an extremely limited implementation that does little more than convert a YAML object to JSON. Validation, normalization etc. are yet to come.

## Example

The object(s) are specified in the Front Matter of a template, page or post:
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

Place the tag ´{% json_ld receipt %}` within the body of your document to render the following JSON-LD markup:

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
