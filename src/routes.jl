using Genie.Router
using Genie.Renderer.Html

include("pages/dashboard.jl")


route("/", Dashboard.render)
route("/dashboard", Dashboard.render)
