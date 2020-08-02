Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins "http://localhost:3000", "https://relaxed-easley-c9a18d.netlify.app/"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end

    # allow do
    #     origin "http://localhost:3000"
    #     resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    # end
end