# Bootstrap Carousel

A Bootstrap carousel component for Magnolia

## Features

A Magnolia component that renders a Bootstrap (<http://getbootstrap.com>) carousel.

![Demo page with component](_dev/README-bootstrap-carousel.png)

Carousel slides can be added by the author and contain an image. Optionally, a caption and description can be added to each of the slides.

![Component Dialog](_dev/README-bootstrap-carousel-dialog.png)

The configuration dialog provides four fields for each slide:
* Image (required)
* Image alt text (optional)
* Title (optional)
* Description (optional)

## Usage

Make the component available to authors, and include the files in `webresources` on your pages using standard magnolia techniques.

(To make this component available on the mtk basic page, you could use the decoration included in <https://github.com/tricode/bootstrap-carousel-magnolia>`/_dev/decorations`.)

This component makes use of the Bootstrap library (<http://getbootstrap.com>), both CSS and JS. This Bootstrap component uses jQuery, so don't forget to add that as a dependency too.

## Demo

To see a page demonstrating this component, open the Pages app in Magnolia AdminCentral and import the file in <https://github.com/tricode/bootstrap-carousel-magnolia>`/_dev/demos`. (Import it directly at the root of the tree to see an example of the included css styling.)

## Information on Magnolia CMS
This directory is a Magnolia 'light module'.

https://docs.magnolia-cms.com

Search the docs for `sharing light modules` for details on how to share and use light modules on npm and github.


## Contribute to the Magnolia component ecosystem

It's easy to create components for Magnolia and share them on github and npm. I invite you to do so and join the community. Let's stop wasting time by developing the same thing again and again, rather let's help each other out by sharing our work and create a rich library of components.

Just add `magnolia-light-module` as a keyword to npm's package.json to make them easy to find and use on npm.

## License

MIT

## Author

Tricode, http://www.tricode.nl

Martijn Kooijman
