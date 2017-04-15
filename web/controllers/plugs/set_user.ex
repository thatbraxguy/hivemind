defmodule Hivemind.Plugs.SetUser do
  import Plug.Conn

  alias Hivemind.Repo
  alias Hivemind.User
  # alias Disucss.Router.Helpers

  def init(_params) do
    # noop
  end

  # params is output from init
  def call(conn, _params) do
    user_id = get_session(conn, :user_id)

    cond do
      user = user_id && Repo.get(User, user_id) ->
        assign(conn, :user, user)
      true ->
        assign(conn, :user, nil)
    end
  end

end