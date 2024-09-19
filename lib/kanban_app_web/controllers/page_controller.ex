defmodule KanbanAppWeb.PageController do
    use KanbanAppWeb, :controller

    def index(conn, _) do
        render(conn, "index.json", users: [%{name: "Hatsor"}, %{name: "Heritier"}])
    end
end