---
title: Use HTML tags for their proper meaning
navigation: mandatory-elements
nav: menu-criteria
description: Use HTML tags for their proper meaning
---

<header>
# Use HTML tags for their proper meaning
{: .article-header__title}
</header>

**Impact:** Low to major

**Users mainly impacted:** Blind, severely visually impaired.

**RGAA criteria:** [Criterion 8.9](hhttps://www.numerique.gouv.fr/publications/rgaa-accessibilite/methode-rgaa/criteres/#crit-8-9)
{: .criteria }

## Explanation

People who are blind or visually impaired use screen readers that rely on the semantics of tags, as provided by the browser, to render content and provide navigation features in the content.

If the use of tags is misused, the rendering may become incomprehensible and the navigation features in the content inoperative or give particularly unexpected results.

For example:
* Using a `h4` tag in place of a `p` tag because the style is bigger.
* Using a `blockquote` tag for the only purpose of indenting a paragraph.

<div class="important">
<svg role="img" aria-label="Important" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="40" height="36"><title>Important</title><path d="M569.517 440.013C587.975 472.007 564.806 512 527.94 512H48.054c-36.937 0-59.999-40.055-41.577-71.987L246.423 23.985c18.467-32.009 64.72-31.951 83.154 0l239.94 416.028zM288 354c-25.405 0-46 20.595-46 46s20.595 46 46 46 46-20.595 46-46-20.595-46-46-46zm-43.673-165.346l7.418 136c.347 6.364 5.609 11.346 11.982 11.346h48.546c6.373 0 11.635-4.982 11.982-11.346l7.418-136c.375-6.874-5.098-12.654-11.982-12.654h-63.383c-6.884 0-12.356 5.78-11.981 12.654z"/></svg>
The use of `div` or `span` elements to create paragraphs, and double `br` to simulate margins, are considered non-compliant.
</div>
