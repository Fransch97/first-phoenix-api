defmodule XFirstApiWeb.PageController do
  use XFirstApiWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    IO.puts("users route has been called!!!")

    render(conn, :users, layout: false)
  end
end
