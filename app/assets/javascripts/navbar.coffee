# HAMBURGLERv2
ready = ->
  togglescroll = ->
    $('body').on 'touchstart', (e) ->
      if $('body').hasClass('noscroll')
        e.preventDefault()
      return
    return


  togglescroll()
  $('.icon').click ->
    $('.mobilenav').fadeToggle 500
    $('.top-menu').toggleClass 'top-animate'
    $('body').toggleClass 'noscroll'
    $('.mid-menu').toggleClass 'mid-animate'
    $('.bottom-menu').toggleClass 'bottom-animate'
    return
  # PUSH ESC KEY TO EXIT
  $(document).keydown (e) ->
    if e.keyCode == 27
      $('.mobilenav').fadeOut 500
      $('.top-menu').removeClass 'top-animate'
      $('body').removeClass 'noscroll'
      $('.mid-menu').removeClass 'mid-animate'
      $('.bottom-menu').removeClass 'bottom-animate'
    return
$(document).ready ready
$(document).on 'page:load', ready