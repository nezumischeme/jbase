import Config

config :tableau, :config, url: "https://nezumischeme.github.io/jbase/", base_path: "/jbase"
config :tableau, Tableau.PostExtension, future: false, dir: ["_posts"]
config :tableau, Tableau.PageExtension, dir: ["_pages"]
