defmodule TvApi.Router do
  use TvApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TvApi do
    pipe_through :api
    resources "/channels", ChannelController, except: [:new, :edit]
  end

  # Other scopes may use custom stacks.
  # scope "/api", TvApi do
  #   pipe_through :api
  # end
end
