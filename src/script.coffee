interval = 0
remover = ->
  elements = document.getElementsByClassName 'featured-broadcasters'
  for element in elements
    do element.remove
    clearInterval interval

interval = setInterval remover, 200