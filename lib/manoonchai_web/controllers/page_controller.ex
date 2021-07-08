defmodule ManoonchaiWeb.PageController do
  use ManoonchaiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
