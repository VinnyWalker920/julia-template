module UI

export header_top, banner_alert, launch_button

function header_top(title::String, subtitle::String)    
    """
    <header>
        <h1>$title</h1>
        <p>$subtitle</p>
    </header>
    """
end

function banner_alert(message::String)
    """
    <div class="alert-banner">$message</div>
    """
end


function launch_button(label::String, href::String)
    """
    <a href=$href class="card"><span>$label</span></a>
    """
end

end