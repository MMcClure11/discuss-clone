defmodule DiscussCloneWeb.PageController do
  use DiscussCloneWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
