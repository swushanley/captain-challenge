jQuery ->
  player_counter = 0
  weapon_counter = 0

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))

    if($(this).html() == 'Add Player')
      player_counter++;

      if(player_counter == 2)
        $(this).remove()

    if($(this).html() == 'Add Weapon')
      weapon_counter++;

      if(weapon_counter == 2)
        $(this).remove()

    event.preventDefault()

