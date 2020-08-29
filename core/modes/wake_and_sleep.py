from talon import actions, app

# The user must say "talon wake" before talon will do anything after starting up

def disable_speech():
    actions.speech.disable()

app.register('launch', disable_speech)
