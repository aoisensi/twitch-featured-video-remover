remover = ->
  video = document.querySelector '.featured-broadcasters video'
  if video == null
    return
  video.volume = 0
  element = document.querySelector '.featured-broadcasters'
  do element.parentElement.remove

setInterval remover, 1000