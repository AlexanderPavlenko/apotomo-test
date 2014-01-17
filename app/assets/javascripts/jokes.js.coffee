#= require joosy/widget

class @JokesWidget extends Joosy.Widget

  @mapElements
    header: 'h1'

  publicMethod: (say) ->
    alert say
