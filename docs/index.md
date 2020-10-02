# MixerAPI / Streamline API Development

MixerAPI streamlines development of RESTful APIs for your CakePHP project. The goal of MixerAPI is to augment your 
development experience, not change it. It's non-opinionated and doesn't expect a developer to conform to a style of 
development. MixerAPI is light on configurations and its component based architecture allows you to pick and choose the 
functionality you need for developing modern REST/HATEOAS APIs.

!!! note ""
    Check out the live demo and browse the demo source code for examples.

[Live Demo](https://demo.mixerapi.com){: .md-button .md-button--primary }
[Source code](https://github.com/mixerapi/demo){: .md-button }

## Features

- MixerAPI scaffolds your API in seconds with a custom Bake template geared towards REST.
- Automatically generates [OpenAPI](https://www.openapis.org/) from your existing code and renders as 
[Swagger](https://swagger.io/) or [Redoc](https://redoc.ly/).
- Handles exception rendering in XML or JSON for CRUD operations.
- Formats responses in JSON, XML, HAL+JSON, or JSON-LD.

## Install

<!-- MixerAPI can be setup using an app skeleton that contains a docker-compose setup. -->
You can also install via composer into your existing (or new) project. Read the installation guide to get started and 
getting started page afterwards.

!!! note ""
<!--
    Skip the guide and get started with the application skeleton 
    ```console 
    composer create-project -s dev --prefer-dist mixerapi/app 
    ```
    or composer 
-->
    ```console
    composer require mixerapi/mixerapi
    ```

[Install Guide](/install){: .md-button .md-button--primary }
[Getting Started](/getting-started){: .md-button }