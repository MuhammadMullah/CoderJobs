defmodule CoderjobsWeb.Auth.ResetController do
  use CoderjobsWeb, :controller

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, _params) do
    render conn, "about.html"
  end
end
