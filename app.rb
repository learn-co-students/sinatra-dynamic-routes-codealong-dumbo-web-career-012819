require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
      @a_name = params[:name]
      "Goodbye, #{@a_name}."
  end

  get "/multiply/:num1/:num2" do
      @numba1 = params[:num1].to_i
      @numba2 = params[:num2].to_i
      @multiplication = @numba1 * @numba2
      "#{@multiplication}"
  end

end
