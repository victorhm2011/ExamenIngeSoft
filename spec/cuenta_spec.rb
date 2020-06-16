requiere './lib/cuenta.rb'

Rspec.describe "cuenta" do
    it 'crea una cuenta con un monto' do
        @cuenta=cuenta.new(100)
        expect(@cuenta.getMonto()).to eq (100)
    end

    it 'retirar monto' do
        @cuenta=cuenta.new(100)
        @cuenta.retirar(50)
        expect(@cuenta.getMonto()).to eq (50)
    end

    it 'depositar monto' do
        @cuenta=cuenta.new(100)
        @cuenta.depositar(50)
        expect(@cuenta.getMonto()).to eq (150)
    end



end