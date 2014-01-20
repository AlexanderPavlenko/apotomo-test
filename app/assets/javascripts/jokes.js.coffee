#= require hamlcoffee
#= require joosy/templaters/jst
#= require joosy/widget

Joosy.templater(new Joosy.Templaters.JST)

class @JokesWidget extends Joosy.Widget

  @mapElements
    header: 'h1'
    renderClientSideBtn: '.client_side_render'
    renderServerSideBtn: '.server_side_render'

  @mapEvents
    'click $renderClientSideBtn': -> @renderClientSide()
    'click $renderServerSideBtn': -> @renderServerSide()

  constructor: (@endpoint) ->

  publicMethod: (say) ->
    alert say

  renderClientSide: ->
    @$container.append @render('client_side_template', answer: 42)

  renderServerSide: ->
    @handleEvent 'pure_intention', (data) =>
      @$container.append data

  handleEvent: (type, callback) ->
    $.post @endpoint, type: type, callback, 'html'
