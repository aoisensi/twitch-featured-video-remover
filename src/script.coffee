remover = ->
  elements = document.getElementsByClassName 'featured-broadcasters'
  for element in elements
    do element.remove

setInterval remover, 1000