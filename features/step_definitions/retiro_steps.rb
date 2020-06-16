Given('deberia mostrar la pagina para ingresar el monto') do
    visit '/'
  end
  
  When('ingreso el monto a retirar {string} en el campo {string}') do |campo, valor|
    fill_in(campo, :with => valor)
  end

  When('presiono el boton {string}') do |boton|
    click_button(boton)
  end
  
  Then('Deberia mostrar el mensaje de mi dinero {string}') do |string|
    last_response.body.should=~/#{string}/m
  end