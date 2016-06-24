#encoding: utf-8

Feature: Functionality developed for knowledge tests

Scenario: Form Fill with random data
    Given access the url "http://sevenqa.com/pt/index.php"
    And click on "contato"
	And fill name and e-mail
	And write a message
	When click on button "Enviar Mensagem"
	Then I hope to get the message "Obrigado!! Seu e-mail foi enviado com Sucesso!"


Scenario: Insert a product in the cart initially searching at google site
	Given access the url "http://www.netshoes.com.br"
	And search the sku "mochila adidas"
	When click on product"Mochila Adidas Tiro"
	And click "comprar"
	Then the chosen product will be inserted into the cart

