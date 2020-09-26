# MixerAPI / Streamline API Development

MixerAPI streamlines development of RESTful APIs for your CakePHP project. The goal of MixerAPI is to add API specific functionality to your project and then get out of the way. It's non-opinionated and doesn't expect a developer to conform to a style of development. MixerAPIs component based architecture allows you to pick and choose the functionality you need.

## Features

- MixerAPI scaffolds your API in seconds with a custom Bake template 
- Automatically generates OpenAPI into Swagger or Redoc from your existing code
- Handles exception rendering in XML or JSON for CRUD operations
- Formats responses in JSON, XML, HAL+JSON, or JSON-LD

## Demo

Checkout the live demo or browse the demo source code.

## Quick Start 

Get started in seconds using composer or docker.

### Docker

@todo

### Composer

```console
composer require mixerapi/mixerapi
```

To load all MixerApi plugins run `bin/cake plugin load MixerApi`. Alternatively, you can modify your Applications 
bootstrap method yourself:

```php
# src/Application.php
public function bootstrap(): void
{
    // other logic...
    $this->addPlugin('MixerApi');
}
```