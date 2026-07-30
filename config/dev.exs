import Config

config :tableau, :config, url: "http://localhost:4999/", base_path: "/"
config :tableau, Tableau.PageExtension, dir: ["_pages", "_wip"]
config :tableau, Tableau.PostExtension, future: true, dir: ["_posts", "_drafts"]
