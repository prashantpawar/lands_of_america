defmodule LandsOfAmericaWeb.UserController do
  use LandsOfAmericaWeb, :controller

  def index(conn, _params) do
    users = [
      %{name: "Prashant",
        age: 10,
        hometown: "Nainital"},

      %{name: "Jackson",
        age: 45,
        hometown: "Mississippi"},

      %{name: "Susto",
        age: 34,
        hometown: "Havana"}
    ]

    json conn, users
  end
end
