---
title: Unordered, ordered and definition lists
navigation: information-structure
nav: menu-criteria
description: Accessibility of unordered, ordered and definition lists
---

<header>
# Unordered, ordered and definition lists
{: .article-header__title}
</header>

**Impact:** Moderate to high

**Users mainly impacted:** Blind, severely visually impaired, motor impaired, cognitive impaired.

**RGAA criteria:** [Criterion 9.3](https://www.numerique.gouv.fr/publications/rgaa-accessibilite/methode-rgaa/criteres/#crit-9-3)
{: .criteria }

## Explanation

Structuring content with the right elements provides an enhanced navigation experience for screen reader users.

A user who is blind, visually or reading impaired, and uses a screen reader, will use keyboard shortcuts to browse the content of a page. So, he will be able to reach or skip the previous/next header, link, form, field, list, iframe...

In the case of a list, the number of items in the list is announced, as well as the level of the item in the list. Thus, if the user finds the list too long, he/she can simply skip it rather than go through it in its entirety, or go to the beginning of the list, or to the end directly.

### Three types of lists are identified

* unordered lists
    * The lists use the `ul` and `li` tags
    * The lists use the ARIA roles `list` and `listitem`.
* ordered lists
    * The lists use the `ol` and `li` tags
    * The lists use the ARIA roles `list` and `listitem`.
* definition lists
    * The lists use the `dl` and `dt` / `dd` tags

<div class="important">
<svg role="img" aria-label="Important" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="40" height="36"><title>Important</title><path d="M569.517 440.013C587.975 472.007 564.806 512 527.94 512H48.054c-36.937 0-59.999-40.055-41.577-71.987L246.423 23.985c18.467-32.009 64.72-31.951 83.154 0l239.94 416.028zM288 354c-25.405 0-46 20.595-46 46s20.595 46 46 46 46-20.595 46-46-20.595-46-46-46zm-43.673-165.346l7.418 136c.347 6.364 5.609 11.346 11.982 11.346h48.546c6.373 0 11.635-4.982 11.982-11.346l7.418-136c.375-6.874-5.098-12.654-11.982-12.654h-63.383c-6.884 0-12.356 5.78-11.981 12.654z"/></svg>
A menu with a large tree structure should use the nested lists to better prioritize the elements by levels and allow the user to navigate more easily.
</div>

<div class="tip">
<svg role="img" aria-label="Tip" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512" width="28" height="40"><title>Tip</title><path d="M96.06 454.35c.01 6.29 1.87 12.45 5.36 17.69l17.09 25.69a31.99 31.99 0 0 0 26.64 14.28h61.71a31.99 31.99 0 0 0 26.64-14.28l17.09-25.69a31.989 31.989 0 0 0 5.36-17.69l.04-38.35H96.01l.05 38.35zM0 176c0 44.37 16.45 84.85 43.56 115.78 16.52 18.85 42.36 58.23 52.21 91.45.04.26.07.52.11.78h160.24c.04-.26.07-.51.11-.78 9.85-33.22 35.69-72.6 52.21-91.45C335.55 260.85 352 220.37 352 176 352 78.61 272.91-.3 175.45 0 73.44.31 0 82.97 0 176zm176-80c-44.11 0-80 35.89-80 80 0 8.84-7.16 16-16 16s-16-7.16-16-16c0-61.76 50.24-112 112-112 8.84 0 16 7.16 16 16s-7.16 16-16 16z"/></svg>
It is not always necessary to list a succession of elements, reading a list in a technical assistance can be very verbose. For example, with a breadcrumb trail, this sequence of pages does not necessarily have to be listed.
<br>*See the breadcrumb of this page*.
</div>
