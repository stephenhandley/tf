# list of tags support
tags = [
  'html', 'head', 'title', 'base', 'link', 'meta', 
  'style', 'script', 'noscript', 'body', 'section', 
  'nav', 'article', 'aside', 'section', 'nav', 'article',
  'aside', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'header',
  'footer', 'address', 'main', 'p', 'hr', 'pre',
  'blockquote', 'ol', 'ul', 'li', 'dl', 'dt', 'dd', 
  'figure', 'figcaption', 'div', 'a', 'em', 'strong', 
  'small', 's', 'cite', 'q', 'dfn', 'abbr', 'data', 
  'time', 'code', 'var', 'samp', 'kbd', 'sub', 'sup',
  'i', 'b', 'u', 'mark', 'ruby', 'rt', 'rp', 'bdi',
  'bdo', 'span', 'br', 'wbr', 'ins', 'del', 'img',
  'iframe', 'embed', 'object', 'param', 'video',
  'audio', 'source', 'track', 'canvas', 'map', 'area',
  'svg', 'math', 'table', 'caption', 'colgroup', 'col',
  'tbody', 'thead', 'tfoot', 'tr', 'td', 'th', 'form',
  'fieldset', 'legend', 'label', 'input', 'button', 
  'select', 'datalist', 'optgroup', 'option', 'textarea',
  'keygen', 'output', 'progress', 'meter', 'details', 
  'summary', 'menuitem', 'menu'
]

module.exports = {}
for tag in tags 
  do (tag)->
    module.exports[tag] = (args)->
      args ?= {}

      # $body arg let's you specify the contents of the tag
      body = '' 
      if ('$body' of args)
        body = args['$body']
        delete args['$body']
    
      attrs = []
      for k,v of args
        attrs.push("#{k}=\"#{v}\"")  
      
      attrs = attrs.join(' ')
      if (attrs.length > 0)
        attrs = " #{attrs}"

      "<#{tag}#{attrs}>#{body}</#{tag}>"

# stylesheet helper 
module.exports.stylesheet = (options)->
  options.rel  = "stylesheet" 
  options.type = "text/css" 
  @link(options)