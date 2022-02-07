defmodule TrolleWeb.PageController do
  use TrolleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
