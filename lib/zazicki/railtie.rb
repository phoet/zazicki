require 'rails/railtie'

ActionDispatch::MiddlewareStack::Middleware.send :prepend, Zazicki::Middleware
