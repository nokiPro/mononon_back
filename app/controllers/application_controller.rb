class ApplicationController < ActionController::API
	def index
		render json: {
			test: "hello"
		}
	end
end
