# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#email').focus()

  $('form.invitation_request').submit (e)->
    e.preventDefault()
    $.post('/invitation_requests', { 'invitation_request[email]': $('#email').val() }).success ->
      $('#email').val("")
      $('#email, button.submit').prop('disabled', true)
      alert("Your request sent, thank you for your interest!")
