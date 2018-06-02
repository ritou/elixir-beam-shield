defmodule BeamShield.PageController do
  use BeamShield.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
