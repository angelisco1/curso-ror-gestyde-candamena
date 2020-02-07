module RecetasHelper
  def emoji_puntuacion puntuacion
    puntuacion < 0 ? '🤢' : '😋'
  end
end
