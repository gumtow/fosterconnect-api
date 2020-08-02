Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins "http://localhost:3000", "https://fosterconnect-client.herokuapp.com", "https://fosterconnect-api.herokuapp.com/"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end

    # allow do
    #     origins "https://fosterconnect-client.herokuapp.com"
    #     resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    # end
end