defmodule MimirWeb.PageController do
  use MimirWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
