remover = ->
  element = document.querySelector '.front-page-carousel'
  if element != null
    video = document.querySelector '.player-video video'
    video.volume = 0
    do element.remove

setInterval remover, 1000
