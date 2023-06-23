defmodule Hangman do
  #The API

  @type state :: :initializing | :won | :lost | :good_guess | :bad_guess | :already_used
  @type game :: any
  @type tally :: %{
    turns_left: integer,
    game_state: state
    letter_in_word: list(String.t),
    used_letters: list(String.t)
  }

  @spec new_game() :: game
  def new_game do
    {:ok, :game}
  end

  @spec make_move(game, String.t) :: {game, tally}
  def make_move(game, guess) do
    # return new game state and a tally
  end

end
