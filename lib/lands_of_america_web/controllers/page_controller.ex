defmodule LandsOfAmericaWeb.PageController do
  use LandsOfAmericaWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
