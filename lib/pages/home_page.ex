defmodule Jbase.HomePage do
  use Jbase.Component

  use Tableau.Page,
    layout: Jbase.RootLayout,
    permalink: "/"

  def template(assigns) do
    temple do
      div do
        h1 do
          "jBase Commands"
        end

        input id: "myInput", type: "text", placeholder: "Search for commands..."

        table id: "jBaseTable" do
          tr do
            th do
              "Command"
            end

            th do
              "Type"
            end

            th do
              "Description"
            end
          end

          for command <- @data["jBaseCommands"] do
            tr id:
                 if(command["Link"],
                   do: "row-#{command["Command"]}",
                   else: "header-#{command["Command"]}"
                 ) do
              if command["Link"] do
                td do
                  a id: command["Command"],
                    href: command["Link"],
                    do: command["Command"]
                end
              else
                th do
                  command["Command"]
                end
              end

              td do
                command["Type"]
              end

              td do
                command["Description"]
              end
            end
          end
        end
      end
    end
  end
end
