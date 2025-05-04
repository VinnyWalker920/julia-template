module Dashboard

using Genie.Renderer.Html
include("../components/ui.jl")
include("../layout.jl")

function render()
    content = """
    $(UI.header_top("Dashboard", "Select Project"))
    
    <div class="dashboard">
        $(UI.launch_button("Console", "/run"))
        $(UI.launch_button("Console", "/run"))
        $(UI.launch_button("Console", "/run"))
        $(UI.launch_button("Console", "/run"))
        $(UI.launch_button("Console", "/run"))
        $(UI.launch_button("Console", "/run"))
        $(UI.launch_button("Console", "/run"))
        $(UI.launch_button("Console", "/run"))
    </div>
    """
    
    html(Layout.render("Dashboard", content, alert="WARNING: This is VERY unsafe DO NOT USE IN PRODUCTION!"))
end

end