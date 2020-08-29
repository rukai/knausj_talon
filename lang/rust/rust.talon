mode: user.rust
mode: command
and code.language: rust
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic
settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"
action(user.code_operator_indirection): ""
action(user.code_operator_address_of): ""
action(user.code_operator_structure_dereference): ""
action(user.code_operator_lambda): ""
action(user.code_operator_subscript):
    insert("[]")
    key(left)
action(user.code_operator_assignment): " = "
action(user.code_operator_subtraction): " - "
action(user.code_operator_subtraction_assignment): " -= "
action(user.code_operator_addition): " + "
action(user.code_operator_addition_assignment): " += "
action(user.code_operator_multiplication): " * "
action(user.code_operator_multiplication_assignment): " *= "
action(user.code_operator_exponent): " ** "
action(user.code_operator_division): " / "
action(user.code_operator_division_assignment): " /= "
action(user.code_operator_modulo): " % "
action(user.code_operator_modulo_assignment): " %= "
action(user.code_operator_equal): " == "
action(user.code_operator_not_equal): " != "
action(user.code_operator_greater_than): " > "
action(user.code_operator_greater_than_or_equal_to): " >= "
action(user.code_operator_less_than): " < "
action(user.code_operator_less_than_or_equal_to): " <= "
action(user.code_operator_and): " && "
action(user.code_operator_or): " || "
action(user.code_operator_bitwise_and): " & "
action(user.code_operator_bitwise_and_assignment): " &= "
action(user.code_operator_bitwise_or): " | "
action(user.code_operator_bitwise_or_assignment): " |= "
action(user.code_operator_bitwise_exclusive_or): " ^ "
action(user.code_operator_bitwise_exclusive_or_assignment): " ^= "
action(user.code_operator_bitwise_left_shift): " << "
action(user.code_operator_bitwise_left_shift_assignment): " <<= "
action(user.code_operator_bitwise_right_shift): " >> "
action(user.code_operator_bitwise_right_shift_assignment): " >>= "
action(user.code_self): "self"
action(user.code_null): "None"
action(user.code_is_null): "is_none()"
action(user.code_is_not_null): ".is_some()"
action(user.code_state_if):
    insert("if  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
action(user.code_state_else_if):
    insert("else if  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
action(user.code_state_else):
    insert("else {\n}")
    edit.up()
    key(end)
    insert("\n")
action(user.code_state_switch):
    insert("match  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
action(user.code_state_case): ""
action(user.code_state_for):
    insert("for  in  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
action(user.code_state_for_each):
    insert("for  in  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
action(user.code_state_while):
    insert("while  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
action(user.code_type_class):
    insert("struct  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
action(user.code_import): "import "
action(user.code_from_import):
    insert("from import ")
    key(left)
    edit.word_left()
    key(space)
    edit.left()
action(user.code_comment): "// "
action(user.code_state_return):
	insert("return ")
action(user.code_true): "true"
action(user.code_false): "false"
action(user.code_document_string): "///"

#rust-specific grammars
struct pub: "pub "
struct function: "fn "
struct pub function: "pub fn "
struct struct:
    insert("struct  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
struct enum:
    insert("enum  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
struct match:
    insert("match  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
struct implement:
    insert("impl  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
state if let:
    insert("if let  =  {\n}")
    edit.up()
    key(end)
    edit.left()
    edit.left()
struct slice:
    insert("&[]")
    edit.left()
struct vec:
    insert("vec!()")
    edit.left()
struct let:
    insert("let ")
struct let (moot | mut):
    insert("let mut ")
