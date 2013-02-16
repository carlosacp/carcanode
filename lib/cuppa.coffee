require('zappajs') ->

  @use 'partials'
  @enable 'default layout'
  @include 'index'
  # Server-side

  @get '/': ->
    @render 'index',
      title: 'Zappa!'
      scripts: ['/zappa/Zappa.js', '/index.js', '/client.js']
      stylesheet: '/index.css'

  @get '/:name/data.json': ->
    record =
      id: 123
      name: @params.name
      email: "#{@params.name}@example.com"
    @send record

  @on 'ready': ->
    console.log "Client #{@id} is ready and says #{@data}."

  # Client-side

  @coffee '/index.js': ->
    alert 'hi'

  @client '/client.js': ->
    @connect()

    $ =>
      @emit 'ready', 'hello'

    @get '#/': ->
      @app.swap 'Ready to roll!'

