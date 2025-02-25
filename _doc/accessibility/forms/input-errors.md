---
title: Input errors
navigation: forms
nav: menu-criteria
description: Accessibility of wrong fields
---

<header>
# Input errors
{: .article-header__title}
</header>

**Impact:** Strong to major

**Users mainly impacted:** Blind, severely visually impaired, visually impaired, mentally impaired.

**RGAA criteria:** [Criterion 11.10](https://www.numerique.gouv.fr/publications/rgaa-accessibilite/methode-rgaa/criteres/#crit-11-10) - [Criterion 11.11](https://www.numerique.gouv.fr/publications/rgaa-accessibilite/methode-rgaa/criteres/#crit-11-11)
{: .criteria }

## Explanation

When the form returns errors, the error must be mentioned either:

* in the field label (`<label>`, `title`, `aria-label`, `aria-labelledby`) ;
* in a text passage before the form, which contains a list of all the incorrect fields;
* in a text passage linked to the input field with the attribute `aria-describedby`.

You can also indicate these errors with the `aria-label` property and the `aria-invalid` property. In these cases, you must always provide a visible alternative for all other users.

### Input error in the label and input help after the field
```html
<label for="birthday">Birthday <em aria-hidden="true">(required)</em> Error, Please fill in this required field, example 1996/02/16</label>
<input type="text" name="birthday" id="birthday" required aria-invalid="true" aria-describedby="format-date">
<p id="format-date">yyyy/mm/dd</p>
```

* Required information in the `<label>` is not rendered in the technical assistance (`aria-hidden`) in order to avoid duplication of information because the `required` attribute already exists on the `<input>`. This information is therefore purely visual.
* The user is informed of the error on the field thanks to `aria-invalid`.
* An input help is indicated below the field and related by the `aria-describedby` attribute and the associated `id`.

### Input error located at the top of the form
```html
<form action="#">
    <div class="alert" role="alert">
        <ul>
            <li id="name-required">This field is required</li>
        </ul>
    </div>
    <label for="name">Name <em aria-hidden="true">(required)</em></label>
    <input type="text" name="name" id="name" required aria-invalid="true" aria-describedby="name-required">
    <button type="submit">Contact us</button>
</form>
```

* The content added in javascript in the alert element is rendered (See [Status messages](../scripts/status-messages.html)).
* Required information in the `<label>` is not rendered in the technical assistance (`aria-hidden`) in order to avoid duplication of information because the `required` attribute already exists on the `<input>`. This information is therefore purely visual.
* The user is informed of the error on the field thanks to `aria-invalid`.
* Error information is rendered using the `aria-describedby` attribute and the associated `id`.

<div class="important">
<svg role="img" aria-label="Important" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="40" height="36"><title>Important</title><path d="M569.517 440.013C587.975 472.007 564.806 512 527.94 512H48.054c-36.937 0-59.999-40.055-41.577-71.987L246.423 23.985c18.467-32.009 64.72-31.951 83.154 0l239.94 416.028zM288 354c-25.405 0-46 20.595-46 46s20.595 46 46 46 46-20.595 46-46-20.595-46-46-46zm-43.673-165.346l7.418 136c.347 6.364 5.609 11.346 11.982 11.346h48.546c6.373 0 11.635-4.982 11.982-11.346l7.418-136c.375-6.874-5.098-12.654-11.982-12.654h-63.383c-6.884 0-12.356 5.78-11.981 12.654z"/></svg>
Input error messages relating to the use of the wrong data format must include an example of actual input.
</div>

<div class="tip">
<svg role="img" aria-label="Tip" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512" width="28" height="40"><title>Tip</title><path d="M96.06 454.35c.01 6.29 1.87 12.45 5.36 17.69l17.09 25.69a31.99 31.99 0 0 0 26.64 14.28h61.71a31.99 31.99 0 0 0 26.64-14.28l17.09-25.69a31.989 31.989 0 0 0 5.36-17.69l.04-38.35H96.01l.05 38.35zM0 176c0 44.37 16.45 84.85 43.56 115.78 16.52 18.85 42.36 58.23 52.21 91.45.04.26.07.52.11.78h160.24c.04-.26.07-.51.11-.78 9.85-33.22 35.69-72.6 52.21-91.45C335.55 260.85 352 220.37 352 176 352 78.61 272.91-.3 175.45 0 73.44.31 0 82.97 0 176zm176-80c-44.11 0-80 35.89-80 80 0 8.84-7.16 16-16 16s-16-7.16-16-16c0-61.76 50.24-112 112-112 8.84 0 16 7.16 16 16s-7.16 16-16 16z"/></svg>
More information about [`aria-label`, `aria-labelledby` and `aria-describedby`](../../techniques/aria-label-labelledby-describedby.html)
</div>

### Input error after the field
```html
<label for="birthday">Birthday dd/mm/yyyy <em aria-hidden="true">(required)</em></label>
<input type="text" name="birthday" id="birthday" required aria-invalid="true" aria-describedby="date-error">
<p id="date-error">Incorrect value, example 02/06/1996</p>
```

### Error message related to several fields
```html
<div>
    <label for="email">Email name@domain.com <em aria-hidden="true">(required)</em></label>
    <input type="text" name="email" id="email" required aria-describedby="email-error" value="jo@mail.net">
</div>
<div>
    <label for="email-conformation">Email name@domain.com <em aria-hidden="true">(required)</em></label>
    <input type="text" name="email-conformation" id="email-conformation" required aria-describedby="email-error" value="jo@mail.not">
</div>
<p id="email-error">The fields are not identical, example john.doe@net.com</p>
```
