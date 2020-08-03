if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "fosterconnect-api.herokuapp.com", same_site: :lax
else
    Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end
