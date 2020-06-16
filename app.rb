require 'sinatra'
requiere './lib/cuenta.rb'
@@cuenta=cuenta.new(100)

get '/' do
    @monto=@@cuenta.getMonto()
    erb:home_view
end

post '/retirarCuenta' do
    @@cuenta.retirar(params[:monto])
    @monto=@@cuenta.getMonto()
    erb:home_view
end
