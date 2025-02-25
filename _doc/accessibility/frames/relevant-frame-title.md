---
title: Relevant frame title
navigation: frames
nav: menu-criteria
description: accessibility of the iframes
---

<header>
# Relevant frame title
{: .article-header__title}
</header>

**Impact:** Low to high

**Users mainly impacted:** Blind

**RGAA criteria:** [Criterion 2.1](https://www.numerique.gouv.fr/publications/rgaa-accessibilite/methode-rgaa/criteres/#crit-2-1) - [Criterion 2.2](https://www.numerique.gouv.fr/publications/rgaa-accessibilite/methode-rgaa/criteres/#crit-2-2)
{: .criteria }

## Explanation

Users using screen reader, who do not perceive the content of an iframe before browsing it, need short information that presents this content.

When you embed content from other websites via iframes, you must implement a `title` attribute on these frames that identify the content.

You must give them sufficient information so that they know what types of content they will find there.

In the case of technical iframes, which are not visible and are only useful for data management by scripts, a generic title on the "Technical iframe" template is sufficient.
