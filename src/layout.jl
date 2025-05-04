module Layout
function render(title::String, content::String; alert::String="")

    if alert != ""
        alert_banner = """
        <div class="alert-banner">$alert</div>
        """
    else
        alert_banner = alert
    end

    """
    <!DOCTYPE html>
    <html>
    <head> 
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>$title</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="/css/app.css">
    </head>
    $alert_banner
    <body>
        $content
    </body>
    </html>
    """
end

end