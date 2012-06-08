jQuery ->
  $('#news_blocks').sortable(
    axis: 'y'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
  )
