defmodule Shop.Router do
  use Shop.Web, :router

  forward "/graphql", Absinthe.Plug,
    schema: Shop.Schema
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
  get "/graphiql", Absinthe.Plug.GraphiQL, schema: Shop.Schema
  scope "/", Shop do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index

    resources "/shops", ShopController
    resources "/products", ProductController
  end



  # Other scopes may use custom stacks.
  # scope "/api", Shop do
  #   pipe_through :api
  # end
end
