import re

from talon import Context, Module, actions, settings

mod = Module()
ctx = Context()
ctx.matches = r"""
mode: user.rust
mode: command
and code.language: rust
"""
ctx.lists["user.code_functions"] = {
    "log": "log",
    "print": "println!",
}

@ctx.action_class("user")
class user_actions:
    def code_insert_function(text: str, selection: str):
        if text == "println!":
            actions.insert('println!("")')
            actions.edit.left()
            actions.edit.left()
        else:
            if selection:
                text = text + "({})".format(selection)
            else:
                text = text + "()"
            actions.insert(text)
            actions.edit.left()

    def code_private_function(text: str):
        """Inserts private function declaration"""
        result = "fn {}() {\n}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_private_function_formatter")
            )
        )

        actions.user.paste(result)
        actions.edit.left()
        actions.edit.left()

    def code_public_function(text: str):
        result = "pub fn {}() {\n}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_public_function_formatter")
            )
        )
        actions.user.paste(result)
        actions.edit.left()
        actions.edit.left()
