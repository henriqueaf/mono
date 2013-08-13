jQuery ->
  $("a[rel=popover]").popover({
  	placement: 'top',
  	trigger: 'hover'
  }).click( (e) =>
  	e.preventDefault()
  )

  $(".tooltip").tooltip()
  
  $("a[rel=tooltip]").tooltip()
  
  $('.carousel').carousel({ 
  	interval: 5000, 
  	pause: 'hover'
  })

  $('#submit').click( (e) =>
    e.button('loading')
  )

  #setTimeout(( => $('.alert').fadeOut('slow') ), 3000)
  $('#flash').fadeOut(8000)
  
	$('.focus').focus()
