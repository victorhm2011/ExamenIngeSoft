class cuenta 
    def initialize(monto = 0)
        @monto=monto
    end

    def depositar(montoADepositar)
        @monto=@monto + montoADepositar
    end

    def retirar(montoARetirar)
        @monto=@monto-montoARetirar
    end

    def getMonto()
        return @monto
    end
end

