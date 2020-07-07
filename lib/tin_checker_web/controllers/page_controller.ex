defmodule TinCheckerWeb.PageController do
  use TinCheckerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
