defmodule DevopsWorkshopWeb.PageController do
  use DevopsWorkshopWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
