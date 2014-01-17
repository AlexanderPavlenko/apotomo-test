class JokesWidget < Apotomo::Widget
  responds_to_event :joke

  def display
    render
  end

  def joke
    render text: 'window.jokesWidget.publicMethod("Yeah!")'
  end

end
