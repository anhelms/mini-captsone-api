class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception, unless: -> { request.format.json? }
    
    def current_user
        auth_headers = request.header["Authorization"]
        if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
            token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
            begin
                decoded_token = JWT.decode(
                    toekn,
                    Rails.application.credentials.fetch(:secret_key_base),
                    true,
                    { alogorithm: "HS256" }
                )
                USer.find_by(id: decoded_token[0]["user_id"])
            rescue JWT::ExpiredSignature
                nil
            end
        end
    end

    def authenticate_user
        unless current_user
            render json: {}, satus: :unauthorized
        end
    end
end
