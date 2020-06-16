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

    it 'retirar monto mayor al de la cuenta' do
        @cuenta=cuenta.new(100)
        @retiro=@cuenta.retirar(150)
        expect(retiro).to eq ("La cuenta actual no dispone del monto a retirar, intenta con otro monto menor")
    end



end