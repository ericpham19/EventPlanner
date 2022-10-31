class User < ApplicationRecord
    has_secure_password

    def index

    end

    def Welcome
        "Hello, #{self.email}!"
    end
end
