# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery(document).ready ($) ->
  $timeline_block = $('.cd-timeline-block')
  #hide timeline blocks which are outside the viewport
  $timeline_block.each ->
    if $(this).offset().top > $(window).scrollTop() + $(window).height() * 0.75
      $(this).find('.cd-timeline-img, .cd-timeline-content').addClass 'is-hidden'
    return
  #on scolling, show/animate timeline blocks when enter the viewport
  $(window).on 'scroll', ->
    $timeline_block.each ->
      if $(this).offset().top <= $(window).scrollTop() + $(window).height() * 0.75 and $(this).find('.cd-timeline-img').hasClass('is-hidden')
        $(this).find('.cd-timeline-img, .cd-timeline-content').removeClass('is-hidden').addClass 'bounce-in'
      return
    return
  return
