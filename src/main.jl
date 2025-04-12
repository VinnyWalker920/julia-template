using Genie

route("/") do
  "Hello! This is my tiny Genie website."
end

Genie.Configuration.config!(server_host = "0.0.0.0", server_port = 8000)
up(8000, async = false)