defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _params) do
    render(conn, "index.html")
  end

  @spec show(Plug.Conn.t(), any) :: Plug.Conn.t()
  def show(conn, %{"messenger" => messenger} = _params) do
    render(conn, "show.html", %{messenger: messenger})
  end
end
