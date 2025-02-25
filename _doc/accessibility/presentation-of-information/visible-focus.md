---
title: Visible focus
navigation: presentation-of-information
nav: menu-criteria
---

<header>
# Visible focus
{: .article-header__title}
</header>

**Impact:** Strong to major

**Users mainly impacted:** Motor disabilities.

**RGAA criteria:** [Criterion 10.7](https://www.numerique.gouv.fr/publications/rgaa-accessibilite/methode-rgaa/criteres/#crit-10-7)
{: .criteria }

## Explanation

People with motor disabilities who navigate on the keyboard can encounter considerable difficulties in using the content if they are not able to locate where the visual indication of focus and its movements lie.

It is necessary that the `outline` property be retained. In style sheets, it is forbidden to find properties to remove this outline at focus (`:focus`), such as :

* `outline: 0`
* `outline: none`
* `outline: transparent`

Similarly, the following properties must not be degraded, i.e. the defined values must not lead to a loss of visibility:

* `outline-color`: for example `outline-color: transparent` is considered as non-compliant;
* `outline-width`: `outline-width: 0` is considered non-compliant;
* `outline-style`: `outline-style: hidden` is considered non-compliant.

Even if you use a `border` to indicate focus taking, this alternative is not considered relevant.

Indeed, `outline` is a property managed by the browser. Some browsers offer mechanisms to increase the visibility of this outline. Thus, if you specify `outline: 0` in your style sheets, the browser settings to increase the outline will be invisible.

<div class="tip">
<svg role="img" aria-label="Note" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512" width="28" height="40"><title>Note</title><path d="M96.06 454.35c.01 6.29 1.87 12.45 5.36 17.69l17.09 25.69a31.99 31.99 0 0 0 26.64 14.28h61.71a31.99 31.99 0 0 0 26.64-14.28l17.09-25.69a31.989 31.989 0 0 0 5.36-17.69l.04-38.35H96.01l.05 38.35zM0 176c0 44.37 16.45 84.85 43.56 115.78 16.52 18.85 42.36 58.23 52.21 91.45.04.26.07.52.11.78h160.24c.04-.26.07-.51.11-.78 9.85-33.22 35.69-72.6 52.21-91.45C335.55 260.85 352 220.37 352 176 352 78.61 272.91-.3 175.45 0 73.44.31 0 82.97 0 176zm176-80c-44.11 0-80 35.89-80 80 0 8.84-7.16 16-16 16s-16-7.16-16-16c0-61.76 50.24-112 112-112 8.84 0 16 7.16 16 16s-7.16 16-16 16z"/></svg>
Disabling the outline property for :hover and :active states is not considered non-conforming. Only the properties attached to the :focus state of an element are taken into account here.
</div>

## Focus contrast

The contrast of this outline must be at least 3:1 with the interactive element and the background.

## Browsers' default outline

Here is the default outline to be defined on project where outline is hidden or not visible enough.

```css
*:focus {
    outline: 2px auto Highlight; /* for all browsers */
    outline: auto 2px -webkit-focus-ring-color; /* for webkit-based browsers */
    outline-offset: 1px; /* to be adapted according to the element visibility */
}
```

The property `Highlight` can be replaced by `currentColor` (like in the Starter) if the contrast is sufficient.

## Focus never hidden

Floating element (fixed main menu, cookie banner...) must not hide the focus, in any resolution or zoom percentage.
To prevent it, use the `scroll-padding` property on `body` and `html` tags.

```css
html,body {
    scroll-padding: 33% 0px;
}
```

In the previous example, the scroolbar will automatically move if the focus is at least at 33% from the top and the bottom of the page.
