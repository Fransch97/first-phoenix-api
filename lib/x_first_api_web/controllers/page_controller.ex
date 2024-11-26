defmodule XFirstApiWeb.PageController do
  use XFirstApiWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "marco", email: "marco.polo@polo.xi"},
      %{id: 2, name: "franco", email: "franco.polo@polo.xi"},
    ]

    json(conn, users)
  end
end
