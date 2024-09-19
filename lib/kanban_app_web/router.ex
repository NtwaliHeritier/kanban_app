defmodule KanbanAppWeb.Router do
  use KanbanAppWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", KanbanAppWeb do
    pipe_through :api

    get "/", PageController, :index
  end

  # Enable Swoosh mailbox preview in development
  if Application.compile_env(:kanban_app, :dev_routes) do
    scope "/dev" do
      pipe_through [:fetch_session, :protect_from_forgery]

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
