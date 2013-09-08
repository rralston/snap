$ ->
  $('#email').focus()

  $('form.invitation_request').submit (e)->
    e.preventDefault()
    return unless $('#email').val()
    $.post('/invitation_requests', { 'invitation_request[email]': $('#email').val() }).success ->
      $('#email, button.submit').prop('disabled', true)
      alert("Your request sent, thank you for your interest!")
