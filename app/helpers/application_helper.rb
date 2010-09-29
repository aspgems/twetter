# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
    def setup(options)
        @title = "Jester - ASPgems / #{options[:title]}" || "Twetter"
        @body_id = options[:body_id] || "body"
        @body_classes = options[:body_classes] || "account"
        @css = options[:css] || []
        @refresh = options[:refresh] || ''
    end
end
