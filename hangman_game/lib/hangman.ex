defmodule Hangman do
  #The API

  alias Hangman_game.Impl.Game
  # automatically aliases to last name in the chain, aka "Game"
  @type state :: :initializing | :won | :lost | :good_guess | :bad_guess | :already_used
  @opaque game :: Game.t
  @type tally :: %{
    turns_left: integer,
    game_state: state,
    letters_in_word: list(String.t),
    used_letters: list(String.t)
  }

  @spec new_game() :: game
  defdelegate new_game, to: Game

  @spec make_move(game, String.t) :: {game, tally}
  def make_move(game, guess) do
    # return new game state and a tally
  end

end
