tag
===========

# Description

Simple functions for creating html tags

# Latest Version

1.0.0

# Installation
```
npm install tag --save
```

or in package.json

```json
{
  ...
  "dependencies": {
    "tag": "~1.0.0"
  }
}
```

# Usage

```coffeescript
T = require('tag')

T.div(
  class : 'barf'
  $body : T.h1(
    class : 'wow'
    $body : "BORF"
  )
)
```

results in 

```html
<div class="barf"><h1 class="wow">BORF</h1></div>
```