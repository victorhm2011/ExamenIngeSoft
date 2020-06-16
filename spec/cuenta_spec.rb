requiere './lib/cuenta.rb'

Rspec.describe "cuenta" do
    it 'crea una cuenta con un monto'
    @cuenta=cuenta.new(100)
    expect(@cuenta.getMonto()).to eq (100)
end