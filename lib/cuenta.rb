class cuenta 
    def initialize(monto = 0)
        @monto=monto
    end

    def depositar(montoADepositar)
        @monto=@monto + montoADepositar
    end

    def retirar(montoARetirar)
        if(montoARetirar>@monto)
            return "La cuenta actual no dispone del monto a retirar, intenta con otro monto menor"
        end
        @monto=@monto-montoARetirar
    end

    def getMonto()
        return @monto
    end
end

