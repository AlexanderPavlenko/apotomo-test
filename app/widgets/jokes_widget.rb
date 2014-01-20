class JokesWidget < Apotomo::Widget
  responds_to_event :joke
  responds_to_event :pure_intention, with: :predict_result

  def display
    @endpoint = apotomo_event_path address_for_event('').tap{|o| o.delete :type }
    render
  end

  def joke
    render text: 'window.jokesWidget.publicMethod("Yeah!")'
  end

  def predict_result
    render
  end

end
