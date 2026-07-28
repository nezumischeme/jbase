defmodule Jbase.PostLayout do
  use Jbase.Component
  use Tableau.Layout, layout: Jbase.RootLayout

  def template(assigns) do
    temple do
      render(@inner_content)
    end
  end
end

