defmodule Hivemind.PageController do
  use Hivemind.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
