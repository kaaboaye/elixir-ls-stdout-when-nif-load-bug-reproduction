defmodule Plskillme do
  @moduledoc """
  Documentation for `Plskillme`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Plskillme.hello()
      :world

  """
  def hello do
    :world
  end
end

defmodule Demo do
  use Rustler, otp_app: :plskillme, crate: :demo

  def add(_lhs, _rhs), do: :erlang.nif_error(:nif_not_loaded)
end
