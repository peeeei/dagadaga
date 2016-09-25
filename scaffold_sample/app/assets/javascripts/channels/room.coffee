App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscripti on is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']

    `
    $(function () {
      scroolTop();

      function scroolTop(){
        $('#main').animate(
          {scrollTop:
            $('#main')[0].scrollHeight
          }, 100
        );
        console.log("ぶりぶりぶりぶりぶりぶりぶりぶりぶりぶりぶりぶりぶりぶり");
      }
    });
    `
    return

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.room.speak event.target.value
    event.target.value = ''
    event.preventDefault()
