---
title: A valid source code
navigation: mandatory-elements
nav: menu-criteria
description: Validity of the source code of the page
---

<header>
# A valid source code
{: .article-header__title}
</header>

**Impact:** Low to moderate

**Users mainly impacted:** Blind, visually impaired, motor impaired.

**RGAA criteria:** [Criterion 8.1](https://www.numerique.gouv.fr/publications/rgaa-accessibilite/methode-rgaa/criteres/#crit-8-1) - [Criterion 8.2](https://www.numerique.gouv.fr/publications/rgaa-accessibilite/methode-rgaa/criteres/#crit-8-2)
{: .criteria }

## Explanation

Assistive technologies are based on page code (DOM) for rendering and interaction with the user.
If the HTML code contains code errors, this may render some systems inoperative.

### Declare the DTD correctly

It is important to define a Doctype declaration. This makes sure the document will be parsed the same way by different browsers.

#### Doctype HTML5

```html
<!DOCTYPE html>
```

[Other doctype declarations](https://www.w3.org/QA/2002/04/valid-dtd-list.html)

### A valid source code

To validate your source code, always use the generated source code (with JavaScript) with [the W3C online validation tool](https://validator.w3.org/).

The online tool outputs two types of results: warnings and errors. Only errors are to be taken into account. Moreover, the source code does not necessarily have to be 100% valid for accessibility, only the points impacting accessibility must be corrected.
For example, errors relating to the writing of URLs are not considered accessibility errors.

A source code is valid when:
* tags respect the writing rules (tags are in accordance with the type of document declared);
* the nesting of the tags is compliant (for example, no link nested in another link);
* the opening and closing of the tags are in conformity
* the attributes respect the writing rules (for example, no obsolete elements are present);
* the attribute values respect the writing rules (for example, duplicate ID values are not compliant).

### Tools

* [HTML Validator (bookmarklet)](https://dequeuniversity.com/validator)
* [Serialized DOM checker (bookmarklet)](https://gist.github.com/stevefaulkner/c7087f72af0517dd60ffbd65acb850f8)

*[DOM]: Document Object Model
*[DTD]: Document Type Definition
