defmodule LedgerWeb.Router do
  use LedgerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", LedgerWeb do
    pipe_through :api

    resources("/users", UserController)
  end
end
