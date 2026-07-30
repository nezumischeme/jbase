defmodule Jbase.RootLayout do
  use Jbase.Component
  use Tableau.Layout

  def template(assigns) do
    {:ok, config} = Tableau.Config.get()
    temple do
      "<!DOCTYPE html>"

      html lang: "en" do
        head do
          meta charset: "utf-8"
          meta http_equiv: "X-UA-Compatible", content: "IE=edge"
          meta name: "viewport", content: "width=device-width, initial-scale=1.0"

          title do
            [@page[:title], "jbase"]
            |> Enum.filter(& &1)
            |> Enum.intersperse("|")
            |> Enum.join(" ")
          end

          link rel: "stylesheet", href: "https://cdn.jsdelivr.net/npm/sakura.css/css/sakura.css", type: "text/css"
          script src: config.url <> "/js/site.js"
        end

        body do
          main do
            render @inner_content
          end

          if Mix.env() == :dev do
            c &Tableau.live_reload/1
          end
        end
      end
    end
  end
end
