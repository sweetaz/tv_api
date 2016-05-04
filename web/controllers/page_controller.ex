defmodule TvApi.PageController do
  use TvApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
