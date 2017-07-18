defmodule ChatbotElixir.PageController do
  use ChatbotElixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
