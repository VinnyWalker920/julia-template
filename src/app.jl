using Genie
using Genie.Router
using Genie.Renderer.Html

include("routes.jl")

Genie.config.run_as_server = true
Genie.config.server_host = "0.0.0.0"
Genie.config.server_port = 8000

Genie.up(8000, "0.0.0.0", async = false)