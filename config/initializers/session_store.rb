if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: 'fosterconnect-api.herokuapp.com'
else
    Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end

# require 'rack/utils'
# module Rack
#   module Utils
#     def self.set_cookie_header!(header, key, value)
#       case value
#       when Hash
#         domain  = "; domain="  + value[:domain] if value[:domain]
#         path    = "; path="    + value[:path]   if value[:path]
#         max_age = "; max-age=" + value[:max_age] if value[:max_age]
#         expires = "; expires=" +
#             rfc2822(value[:expires].clone.gmtime) if value[:expires]

#         # Make it always secure, even in HTTP
#         secure = "; secure"  if value[:secure]
#         secure = "; secure"

#         httponly = "; HttpOnly" if value[:httponly]
#         same_site =
#             case value[:same_site]
#             when false, nil
#               nil
#             when :none, 'None', :None
#               '; SameSite=None'
#             when :lax, 'Lax', :Lax
#               '; SameSite=Lax'
#             when true, :strict, 'Strict', :Strict
#               '; SameSite=Strict'
#             else
#               raise ArgumentError, "Invalid SameSite value: #{value[:same_site].inspect}"
#             end
#         value = value[:value]
#       end
#       value = [value] unless Array === value
#       cookie = escape(key) + "=" +
#           value.map { |v| escape v }.join("&") +
#           "#{domain}#{path}#{max_age}#{expires}#{secure}#{httponly}#{same_site}"

#       case header["Set-Cookie"]
#       when nil, ''
#         header["Set-Cookie"] = cookie
#       when String
#         header["Set-Cookie"] = [header["Set-Cookie"], cookie].join("\n")
#       when Array
#         header["Set-Cookie"] = (header["Set-Cookie"] + [cookie]).join("\n")
#       end

#       nil
#     end
#   end
# end
