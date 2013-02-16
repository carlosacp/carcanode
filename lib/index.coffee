@include = ->

  @view index: ->
    h1 'Welcome to Zappa!'
    div id:'content'

  @css '/index.css':
    body:
      font: '12px Helvetica'
    h1:
      color: 'pink'

