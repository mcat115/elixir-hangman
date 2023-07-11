defmodule Hangman_game.Impl.Game do

  # It is conventional for a module that defines a structure to export a type named t describing that struct
  # This means that code using the module can reference the values being passed to and from the module as ModuleName.t
  @type t :: %Hangman_game.Impl.Game{
    turns_left: integer,
    game_state: Hangman.state,
    letters_in_word: list(String.t),
    used_letters: MapSet.t(String.t)
  }

  # the name of the struct is the same as the module
  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters_in_word: [],
    used_letters: MapSet.new()
  )

  def new_game do
    # __MODULE__ always acts as the name of the module, ie Hangman_game.Impl.Game
    # Therefore it could also be used on line 5 above
    %__MODULE__{
      letters_in_word: Dictionary.get_random_word() |> String.codepoints()
    }
  end
end
