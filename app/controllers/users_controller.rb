class UsersController < ApplicationController
  def index
    render json: {
      test: "hello world!"
    }
  end
end
