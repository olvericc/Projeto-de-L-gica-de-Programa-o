Program PROJETO_LP;

//Eric Lopes Oliveira 

//-------------------------------------------------PARA REGISTRAR OS DADOS---------------------------------------------------------------------

type dados = record 
	codigo: integer; 
  nome, telefone, cpf, sexo, quantidade, preco, descricao: string; 
end;

//--------------------------------------------------------VARI�VEIS----------------------------------------------------------------------------

var 	
		operacao, operacao_cadastro, operacao_localizacao, i,j, limite: integer;
		resposta_cadastro, resposta_milkshake: string;
		matriz_c: array [1..10,1..5] of dados;						     									//Para cadastrar cliente.		
		matriz_f: array [1..10,1..5] of dados;		              								//Para cadastrar funcionario.			                                    
		matriz_p: array [1..10,1..5] of dados;                  								//Para cadastrar produto.
		validar_c, validar_f, validar_p: boolean;																//Para validar cliente, funcion�rio e produto.
		codigo_milkshake, quantidade: integer;                  								//Para venda de milkshake.
		total: real;                                            								//Para calcular o total do pedido.											
		finalizar: boolean;                                                     //Para finalizar o programa.
		codigo: integer;                                     							

//-----------------------------------------------------MENU PRINCIPAL--------------------------------------------------------------------------

procedure MENU_PRINCIPAL;  
begin
  clrscr;
  	writeln('/-------------------------------Seja Bem-Vindo!-------------------------------\');
  	writeln('/                                                                             \');
  	writeln('/Cadastro....................................................................1\');
  	writeln('/Localiza��o.................................................................2\');
 	 	writeln('/Venda.......................................................................3\');
  	writeln('/Relat�rios..................................................................4\');
		writeln('/Sair........................................................................5\');  
  	writeln('/                                                                             \');
  	writeln('/____________________________Obrigado pela Aten��o!___________________________\');
  
  	writeln();
  
  writeln('Informe o tipo de opera��o que deseja realizar');
  readln(operacao);
end;

//--------------------------------------------------MENU PARA CADASTROS------------------------------------------------------------------------

procedure MENU_CADASTRO;  
begin
  clrscr;
  	writeln('/--------------------------------Menu Cadastro--------------------------------\');
  	writeln('/                                                                             \');
  	writeln('/Clientes....................................................................1\');
  	writeln('/Funcion�rios................................................................2\');
  	writeln('/Produtos....................................................................3\');
  	writeln('/Voltar para Menu Pincipal...................................................4\');
  	writeln('/                                                                             \');
  	writeln('/__________________________Obrigado pela Prefer�ncia!_________________________\');
	
		writeln();
	
	writeln('Informe o tipo de opera��o que deseja realizar');
	readln(operacao_cadastro);  
end;

//-------------------------------------------------------CADASTRAR CLIENTE---------------------------------------------------------------------

procedure CADASTRAR_CLIENTE;
begin                                            
	limite:=1;
		for i:= 1 to limite do
		
			begin
				if (matriz_c[i,1].codigo <> 0) then
				
				begin
					limite:=limite + 1;
				end
								
				  else if (matriz_c[i,1].codigo=0) then					
					begin
						writeln('Informe o c�digo do cliente.');
							readln(matriz_c[i,1].codigo); 
						writeln('Informe o nome do cliente.');
							readln(matriz_c[i,2].nome);
						writeln('Informe o n�mero de Telefone do cliente.');
							readln(matriz_c[i,3].telefone);						
						writeln('Informe o sexo do cliente');
							readln(matriz_c[i,4].sexo);	
						writeln('Informe o cpf do cliente.');
							readln(matriz_c[i,5].cpf);			
						writeln('Deseja cadastrar mais algum cliente? [s/n]');
							readln(resposta_cadastro);
							
						if (resposta_cadastro) = 's' then							
							begin
              	limite:=limite+1;
              	clrscr;
							end
						else
							begin
								readkey;
								limite:=1;
								clrscr;
							end;
				  end;
		end;
end;

//------------------------------------------------------VALIDAR CLIENTE-----------------------------------------------------------------------
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				
function VALIDAR_CLIENTE (codigo:integer): boolean;                                        
begin
	for i:= 1 to 10 do
		begin
			if(codigo=matriz_c[i,1].codigo) then
			begin
				VALIDAR_CLIENTE:= true;
				break;
			end;			
		end;
end;
		
//-------------------------------------------------------LISTAR E LOCALIZAR CLIENTE------------------------------------------------------------

 procedure LISTAR_LOCALIZACAO_CLIENTE;
begin
	writeln('Informe o c�digo do cliente desejado');
	readln(codigo);
		if (VALIDAR_CLIENTE(codigo)) then
		begin                               
			writeln(' C�digo: ',matriz_c[i,1].codigo);
			writeln(' Nome: ',matriz_c[i,2].nome);
			writeln(' Telefone: ',matriz_c[i,3].telefone);
			writeln(' Sexo: ',matriz_c[i,4].sexo);
			writeln(' CPF: ',matriz_c[i,5].cpf);  
		  readkey;
		end;
end;
		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              		
//-----------------------------------------------------CADASTRAR FUNCION�RIO------------------------------------------------------------------

procedure CADASTRAR_FUNCIONARIO;
begin
	limite:=1;
	for i:= 1 to limite do
		begin
			if (matriz_f[i,1].codigo <> 0) then
				begin
					limite:=limite + 1;
				end
				
				else if (matriz_f[i,1].codigo=0) then
					begin
						writeln('Informe o c�digo do funcion�rio');
							readln(matriz_f[i,1].codigo);
						writeln('Informe o nome do funcion�rio');
							readln(matriz_f[i,2].nome);
						writeln('Informe o telefone do funcion�rio');
							readln(matriz_f[i,3].telefone);
						writeln('Informe o sexo do funcion�rio');
							readln(matriz_f[i,4].sexo);
						writeln('Deseja cadastrar mais algum funcion�rio? [s/n]');
							readln(resposta_cadastro);
							
						if (resposta_cadastro) = 's' then
							begin
								limite:=limite+1;
								clrscr;
					    end
					  else
					  	begin
					  		readkey;
					  		limite:=1;
					  		clrscr;
					  	end;
				end;
		end;					
end;	

//--------------------------------------------------VALIDAR FUNCION�RIO----------------------------------------------------------------------

function VALIDAR_FUNCIONARIO (codigo:integer) :boolean;
begin 
		for i:= 1 to 10 do
		begin
			if(codigo=matriz_f[i,1].codigo) then
			begin
				VALIDAR_FUNCIONARIO:= true;
				break;
			end;			
	 end;
end;		

//--------------------------------------------------LISTAR E LOZALIZAR FUNCION�RIO------------------------------------------------------------

procedure LISTAR_LOCALIZACAO_FUNCIONARIO;
begin
	writeln('Informe o c�digo do funcion�rio desejado');
	readln(codigo);
		if (matriz_f[i,1].codigo > 0) then
		begin
			writeln(' C�digo: ',matriz_f[i,1].codigo);
			writeln(' Nome: ',matriz_f[i,2].nome);
			writeln(' Telefone: ',matriz_f[i,3].telefone);
			writeln(' Sexo: ',matriz_f[i,4].sexo);
			writeln(' CPF: ',matriz_f[i,5].cpf);  
			readkey;
		end;	
end;

//-----------------------------------------------------CADASTRAR PRODUTO----------------------------------------------------------------------

procedure CADASTRAR_PRODUTO;
begin
  begin
	limite:=1;
	for i:= 1 to limite do
		begin
			if (matriz_p[i,1].codigo <> 0) then
				begin
					limite:=limite + 1;
				end
				
				else if (matriz_p[i,1].codigo=0) then
					begin
						writeln('Informe o c�digo do produto');
							readln(matriz_p[i,1].codigo);
						writeln('Informe a descri��o do produto');
							readln(matriz_p[i,2].descricao);
						writeln('Informe o quantidade do produto');
							readln(matriz_p[i,3].quantidade);
						writeln('Informe o pre�o do produto');
							readln(matriz_p[i,4].preco);
						writeln('Informe a data de compra');
							readln(matriz_p[i,5].data);
						writeln('Deseja cadastrar mais algum produto? [s/n]');
							readln(resposta_cadastro);
							
						if (resposta_cadastro) = 's' then
							begin
								limite:=limite+1;
								clrscr;
					    end
					  else
					  	begin
					  		readkey;
					  		limite:=1;
					  		clrscr;
					  	end;
		      end;
		end;					
	end;			
end;


//------------------------------------------------------VALIDAR PRODUTO-----------------------------------------------------------------------

function VALIDAR_PRODUTO(codigo:integer):boolean;
begin 
		for i:= 1 to 10 do
		begin
			if(codigo=matriz_p[i,1].codigo) then
			begin
				VALIDAR_PRODUTO:=true;
				break;
			end;			
	end;
end;

//------------------------------------------------LISTAR E LOCALIZAR PRODUTO------------------------------------------------------------------

procedure LISTAR_LOCALIZACAO_PRODUTO;
begin
	writeln('Informe o c�digo do produto desejado');
	readln(codigo);
		if (matriz_f[i,1].codigo > 0) then
		begin
			writeln(' C�digo: ',matriz_f[i,1].codigo);
			writeln(' Descri��o: ',matriz_p[i,2].descricao);
			writeln(' Quantidade: ',matriz_p[i,3].quantidade);
			writeln(' Pre�o: ',matriz_p[i,4].preco);
			writeln(' Data da Compra: ',matriz_p[i,5].data);  
			readkey;
		end;
end;

//----------------------------------------------------MENU DE LOCALIZA��O---------------------------------------------------------------------


procedure MENU_DE_LOCALIZACAO;                                                       
begin
	writeln('/--------------------------------LOCALIZA��O----------------------------------\');
	writeln('/                                                                             \');
	writeln('/Clientes....................................................................1\');
  writeln('/Funcion�rios................................................................2\');
  writeln('/Produtos....................................................................3\');
  writeln('/Voltar para Menu Pincipal...................................................4\');
  writeln('/                                                                             \');
  writeln('/__________________________Obrigado pela Prefer�ncia!_________________________\');
  
  	writeln();
  	writeln('Informe o tipo de opera��o que deseja realizar');
  		readln(operacao_localizacao);    		 	     		   
end;

//-----------------------------------------------------MENU DE COMPRAS------------------------------------------------------------------------


procedure MENU_DE_COMPRAS;
begin
		repeat
			
			 writeln();
						
	writeln('/---------------------------------CARD�PIO---------------------------------\');
	writeln('/                                                                          \');
	writeln('/ C�DIGO                   SABOR                   QUANTIDADE      PRE�O   \');
	writeln('/                                                                          \');
	writeln('/ (1)....................OVOMALTINE..................500 ml.......R$ 13,00 \');
	writeln('/ (2)................MORANGO E CHOCOLATE.............500 ml.......R$ 12,00 \');
	writeln('/ (3).....................NUTELLA....................500 ml.......R$ 15,00 \');
	writeln('/ (4)....................BLUEBERRY...................500 ml.......R$ 10,00 \');
	writeln('/ (5)......................OREO......................500 ml.......R$ 14,00 \');
	writeln('/                                                                          \');
	writeln('/_____________________________MUITO OBRIGADO_______________________________\');
	
	writeln();
	writeln('Informe o codigo do Milkshake que deseja comprar.');
		readln(codigo_milkshake);
	writeln('Por favor, digite a quantidade');
		readln(quantidade);
					
			if (codigo_milkshake=1) then		//OVOMALTINE 500 ml 13 REAIS
			begin
	    	total:=quantidade*13
	    end

			else if (codigo_milkshake=2) then		//MORANGO COM CHOCOLATE 500 ml 12 REAIS
			begin
				total:=quantidade*12
			end
			
			else if (codigo_milkshake=3) then		//NUTELLA 500 ml 15 REAIS
			begin
				total:=quantidade*15
			end
			
			else if (codigo_milkshake=4) then		//BLUEBERRY 500 ml 10 REAIS
			begin
				total:=quantidade*10
			end
			
			else if (codigo_milkshake=5) then		//OREO 500 ml 14 REAIS
			begin
				total:=quantidade*14
			end;
						
				writeln('O total foi: ',total:2:2);
				writeln();
							
				writeln('Deseja realizar outro pedido? [s/n]');
					readln(resposta_milkshake);									
		until (resposta_milkshake) = 'n'
									
end;

//--------------------------------------------------------RELAT�RIO--------------------------------------------------------------------------		

procedure RELATORIO;
begin

	 for i:=1 to 10 do
	 	
	 	if (matriz_p[i,1].codigo > 0) then
	 
	 writeln('Descri��o do Produto: ',matriz_p[i,1].descricao);
	 writeln('Nome do Cliente: ',matriz_c[i,2].nome);
	 writeln('Nome do Funcion�rio: ',matriz_f[i,3].nome);
	 writeln('Quantidade do Produto: ',matriz_p[i,4].quantidade);
	 writeln('Pre�o do Produto: ',matriz_p[i,5].preco);
	 readkey;
end;

//----------------------------------------------------IN�CIO DO PROGRAMA--------------------------------------------------------------------

Begin

	repeat
	
		MENU_PRINCIPAL;
	  //__Menu Cadastro__
		if operacao=1 then		 
	      	begin
	     			clrscr;
						MENU_CADASTRO;		
	
	  	 if operacao_cadastro=1 then		//>>CLIENTES<<
	  	     		begin
							 	clrscr;                     
								CADASTRAR_CLIENTE;
												            	//Cadastro de clientes
							end;			
			 if operacao_cadastro=2 then		//>>FUNCION�RIOS<<
							begin
								clrscr;
								CADASTRAR_FUNCIONARIO;
								                				//Cadastro de funcion�rios			
							end;			
			 if operacao_cadastro=3 then   //>>PRODUTOS<<       
							begin                                      
								clrscr;	
								CADASTRAR_PRODUTO;
								                       //Cadastro de produtos                    
							end;	
	                                                      
			 if operacao_cadastro=4 then		//>>VOLTAR PARA MENU PRINCIPAL<<
						begin
							clrscr;	
							end;
				end
		//__Menu de Localiza��o__	
		else if operacao=2 then			
				begin
						clrscr;
						MENU_DE_LOCALIZACAO;
		    end;
		
		    if operacao_localizacao=1 then		//>>CLIENTES<<
							begin
								clrscr;                             
								LISTAR_LOCALIZACAO_CLIENTE;     //Localiza��o de Clientes				
							end;
		
				if operacao_localizacao=2 then		//>>FUNCION�RIOS<<
							begin
								clrscr;
								LISTAR_LOCALIZACAO_FUNCIONARIO;  //Localiza��o de Funcion�rios
							end;
		
				if operacao_localizacao=3 then		//>>PRODUTOS<<
						begin
							clrscr;
							LISTAR_LOCALIZACAO_PRODUTO;
				end
		//__Menu de Compras__			
		else if operacao=3 then	
				begin
						clrscr;
						MENU_DE_COMPRAS;
				end
		
		//__Relat�rio__	
		else if operacao=4 then  
				begin
						clrscr;
			  		RELATORIO;
				end
		//__Finalizar programa__
		else if operacao=5 then		
				begin
						finalizar:=true;
				end;
		
		begin
				while (operacao>5) or (operacao<=0) do			
			begin
				writeln('Opera��o Inv�lida!');
				writeln('Digite uma opera��o v�lida');
				readln(operacao);
	    end;
	  end;
	  
	until (finalizar)
	
End.