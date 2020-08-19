Program Pzim ;
type cliente =record
		nome,sexo,telefone,cpf:string;     
		codigo:integer;                     
		end;


var
produtos:array[1..10,1..8] of integer;
clientes:array [1..10,1..5] of cliente;
funcionario:array[1..10,1..3]of cliente;
finish:boolean;
op,opcad,oploc,opplataforma,i,j,xlimite,ylimite,codex,codexf,posicaocliente,codigo,posicaofuncionario:integer;
valorcarrinho,quantidaderam:integer;
codplacamae,codprocessador,codram,codplacadevideo,codfonte,codgabinete,codproduto:integer;
resp,respcad,respplacavideo:Char;

procedure menuPrincipal;
begin
	textcolor(white);
	writeln(' _______________________________________');
	writeln('|-------------- BD Shops ---------------|');
	writeln('|----------- Seja Bem Vindo ------------|');
	writeln('|Cadastros --------------------------[1]|');
	writeln('|Locação ----------------------------[2]|');
	writeln('|Montagem do PC ---------------------[3]|');
	writeln('|Relatório de vendas-----------------[4]|');
	writeln('|Sair -------------------------------[5]|');
	writeln('|_______________________________________|');
	writeln();
	writeln('Digite a opção desejada:');
	readln(op);
end;

 procedure menucadastro;
begin          
	writeln(' _______________________________________');          
	writeln('|----------- Menu Cadastros ------------|');
	writeln('|Cliente ----------------------------[1]|');
	writeln('|Funcionário ------------------------[2]|');
	writeln('|Voltar para o menu Principal -------[3]|');
	writeln('|_______________________________________|');
	writeln();
	writeln('Digite a opção desejada:');
	readln(opcad);
	clrscr;
end;
procedure cadastrocliente;
		begin
		 xlimite:=1;
 				for i:= 1 to xlimite do
 			begin
 				   if(clientes[i,1].codigo <> 0)then
 				   begin
 				   	xlimite:= xlimite+1; 					
 				   end
 				   else if	(clientes[i,1].codigo = 0) then
 				   	begin 				
 						writeln('Digite o Código do cliente');
 						readln(clientes[i,1].codigo);
 							while (clientes[i,1].codigo = codex) do
 								begin
 									writeln('Codigo já existente, digite outro codigo');
 									readln(clientes[i,1].codigo);
 							  end;
 								Writeln('Digite o nome do cliente ',clientes[i,1].codigo);
 								readln(clientes[i,2].nome);						
 								writeln('Digite o seu sexo');
 								readln(clientes[i,3].sexo);
 								writeln('Digite o telefone');
 								readln(clientes[i,4].telefone);
 								writeln('Digite o cpf');
 								readln(clientes[i,5].cpf);
 								writeln('Deseja cadastrar mais um cliente [s/n]??');
 								readln(respcad);
 								if	respcad =('s') then
								  begin 
								 	  xlimite:=xlimite+1;
								 	  clrscr;
									end
								else
								begin
									writeln('Pressione enter para voltar ao menu principal');
									readkey;
									writeln('Ok voltando para o menu principal');
									delay(1000);
								 	xlimite:=1;
								 	clrscr;	   
 						    end;
			 //Codex = codigo existente
 			codex:=clientes[i,1].codigo;		
		end;
	end;
end;
	
procedure cadastrofuncionario;
begin
		 xlimite:=1;
 				for i:= 1 to xlimite do
 				begin
 				   if(funcionario[i,1].codigo <> 0)then
 				   begin
 				   	xlimite:= xlimite+1; 					
 				   end
 				   else if	(funcionario[i,1].codigo = 0) then
 				   	begin 				
 						writeln('Digite o Código do funcionario');
 						readln(funcionario[i,1].codigo);
 						
 							while (funcionario[i,1].codigo = codexf) do
 								begin
 									writeln('Codigo já existente, digite outro codigo');
 									readln(funcionario[i,1].codigo);
 							  end;
 						Writeln('Digite o nome do funcionário ',funcionario[i,1].codigo);
 						readln(funcionario[i,2].nome);						
 						writeln('Digite o telefone');
 						readln(funcionario[i,3].telefone);
 						writeln('Deseja cadastrar mais um funcionario [s/n]??');
 						readln(respcad);
 							if	respcad =('s') then
							begin 
								xlimite:=xlimite+1;
								clrscr;
							end
							else
							begin
								writeln('Pressione enter para voltar ao menu principal');
									readkey;
									writeln('Ok voltando para o menu principal');
									delay(1000);								 
								xlimite:=1;
								clrscr;
							end;
							codexf:=funcionario[i,1].codigo;			   
				end;	
		end;
	end;
	
function ValidarCliente (codigo:integer) : boolean;
begin
	for i:=1 to 10 do
	begin
		if (codigo = clientes[i,1].codigo) then
		begin
			ValidarCliente := true;
			
			break;			
		end;
	end;
end;

function ValidarFuncionario (codigo:integer) : boolean;
begin
	for i:=1 to 10 do
	begin
		if (codigo = funcionario[i,1].codigo) then
		begin
			Validarfuncionario := true;
			break;			
		end;
	end;
end;

function ValidarCompra(codigo:integer): boolean;
begin
	for i:= 1 to 10 do
	begin
		if (codigo = produtos[i,1]) then
		begin
			ValidarCompra:=true;
			break;
		end;
	end;
end;

procedure LocacaoCliente;
begin
	writeln('Digite o codigo do Cliente');
	readln(codigo);
	
	if(Validarcliente(codigo)) then
	begin		
		writeln('Cliente encontrado');
		Writeln('Nome:' ,clientes[i,2].nome);
		Writeln('Sexo: ',clientes[i,3].sexo);
		Writeln('Telefone: ',clientes[i,4].telefone);
		Writeln('CPF: ' ,clientes[i,5].cpf);
		readkey;
		clrscr;
	end	
	else
	begin 	
		writeln('Cliente não encontrado');
		readkey;
		clrscr;
	end;	
end;

procedure LocacaoFuncionario;
begin
	writeln('Digite o codigo do Funcionário');
	readln(codigo);
	
	if(Validarfuncionario(codigo)) then
	begin	
		writeln('Funcionário encontrado');
		Writeln('Nome:' ,funcionario[i,2].nome);
		Writeln('Telefone: ',funcionario[i,3].telefone);
		readkey;
		clrscr;
	end	
	else
	begin 	
		writeln('Funcionário não encontrado');
		readkey;
		clrscr;
	end;	
end;

procedure menulocacao;
begin          
 	writeln(' _______________________________________');          
	writeln('|------------ Menu Locação -------------|');
	writeln('|Cliente ----------------------------[1]|');
	writeln('|Funcionário ------------------------[2]|');
	writeln('|Voltar para o menu Principal -------[3]|');
	writeln('|_______________________________________|');
	writeln();
	readln(oploc);
	clrscr;
end;

procedure voltarmenuprincipal;
		begin
					writeln('Pressione enter para voltar ao menu principal');
					readkey;
					writeln('Ok voltando para o menu principal');
					delay(1000);
				 	clrscr;	   
 	  end;
 	  
procedure Codigoproduto;
begin
	writeln('Digite o código do PC a ser montado');
	readln(codproduto);
	writeln('Digite o código do Funcionário: ');
	readln(codigo);
	if (ValidarFuncionario(codigo)) then
	begin
		Writeln('Nome do Funcionário:' ,funcionario[i,2].nome);
	end
	else
	begin
		while (ValidarFuncionario(codigo) = false) do
		begin
			writeln('Funcionário não encontrado, digite um código válido');
			readln(codigo);       
		end;
	end;
	writeln('Digite o codigo do Cliente: ');
	readln(codigo);
	if (ValidarCliente(codigo)) then
	begin
		Writeln('Nome do Cliente: ',clientes[i,2].nome);
	end
	else
	begin
		while (ValidarCliente(codigo) = false) do
		begin
			writeln('Cliente não encontrado, digite um código válido');
			readln(codigo);
		end;
	end;	
end;

procedure Escolherplataforma;
			Begin
				writeln('[Para iniciar a montagem do seu pc escolha sua plataforma]');
				Writeln('Para -> {AMD} [Digite 1]');
				writeln('Para -> {INTEL} [Digite 2]');
				readln(opplataforma);	 // Operação de escolha de plataforma //  
				
					while (opplataforma > 2) or ( opplataforma < 1) do
						begin
							writeln('Número inválido digite um número válido de plataforma');
							readln(opplataforma);
						end; 
					clrscr;	
			end;
			
procedure Escolherprocessador;
	begin
				writeln();
				if(opplataforma = 1) then
					begin
						Writeln('Digite o código do processador');
						writeln('>>>  AMD Ryzen 3 2200G Cache 6MB 3.5GHz R$741<<<');
						writeln('>>> Código 1 <<<');
						writeln('>>>-----------------------------------------------<<<');	
						writeln('>>> AMD Ryzen 5 3600X Cache 32MB 3.8GHz  R$1499 <<<');
						writeln('>>> Código 2 <<<');
						writeln('>>>-----------------------------------------------<<<');
						writeln('>>> AMD Ryzen 7 3700X 32MB 3.6GHz  $2443 <<<');
						writeln('>>> Código 3 <<<');
						Readln(codprocessador);	
							while (codprocessador > 3) or (codprocessador < 0 ) do
								begin
									writeln('código inválido digite um código válido');
									readln(codprocessador);
								end;																
						writeln(' Processador de código [',codprocessador,']');
			  		Delay(500);
			  		clrscr;
					End
				else if(opplataforma = 2) then
			  	begin

						Writeln('Digite o código do processador');
						writeln('>>> Intel Core i3-9100F Coffee Lake, Cache 6MB, 3.6GHz R$705 <<<');
						writeln('>>> Código 4 <<<');
						writeln('>>>-----------------------------------------------<<<');	
						writeln('>>> Intel Core i5-9400F Coffee Lake, Cache 9MB, 2.9GHz R$1299 <<<');
						writeln('>>> Código 5 <<<');
						writeln('>>>-----------------------------------------------<<<');
						writeln('>>> Intel Core i7-9700 Coffee Lake, Cache 12MB, 3.0GHz R$2815 <<<');
						writeln('>>> Código 6 <<<');
						Readln(codprocessador);
						while (codprocessador > 6) or (codprocessador < 4 ) do
								begin
									writeln('código inválido digite um código válido');
									readln(codprocessador);
								end;
			  		writeln(' Processador de código [',codprocessador,']');
			  		Delay(500);
			  		clrscr;
			  	end;
	end;
procedure Escolherplacamae;
begin
		if (opplataforma = 1 ) then //Placas mãe que recebem AMD//
		begin
			textcolor(white);
		 	Writeln('Digite o código da placa mãe');
      writeln('>>> Placa mãe GIGABYTE B450M // Valor $705 <<<');
      writeln('>>> 2 Entradas Memória RAM <<<');
      writeln('>>> Código 1 <<<');
      writeln('>>>-----------------------------------------------<<<');
      writeln('>>> Placa mãe ASRock x570 Phantom Gaming // Valor $1720 <<<');
      writeln('>>> 4 Entradas Memória RAM <<<');
      writeln('>>> Código 2 <<<');
      writeln('>>>-----------------------------------------------<<<');
      writeln('>>> Placa mãe ASRock x570 Phantom Gaming Plus // Valor $2617 <<<');
      writeln('>>> 4 entradas Memória Ram <<<');
		  writeln('>>> Código 3 <<<');
		  readln(codplacamae);
		  	while (codplacamae > 3) or (codplacamae< 1 ) do
								begin
									writeln('código inválido digite um código válido');
									readln(codplacamae);
								end;
			writeln(' Placa mãe de código [',codplacamae,']');
			 	Delay(500);
			 	clrscr;
		
		end
		else 
			begin
				Writeln('Digite o código da placa mãe');
				textcolor(lightblue);
     		writeln('>>> Placa-Mãe Gigabyte H310  // Valor $700 <<<');
      	writeln('>>> 2 Entradas Memória RAM <<<');
      	writeln('>>> Código 4 <<<');
      	writeln('>>>-----------------------------------------------<<<');
      	writeln('>>> Placa-Mãe Asus Prime Z490M-Plus // Valor $1728 <<<');
      	writeln('>>> 4 Entradas Memória RAM <<<');
      	writeln('>>> Código 5 <<<');
      	writeln('>>>-----------------------------------------------<<<');
      	writeln('>>> Placa-Mãe Gigabyte Aorus Z490  // Valor $2990 <<<');
      	writeln('>>> 4 entradas Memória Ram <<<');
		  	writeln('>>> Código 6 <<<');
		  	textcolor(lightblue);
		  	 readln(codplacamae);
		  		while (codplacamae > 6) or (codplacamae < 4 ) do
								begin
									writeln('código inválido digite um código válido');
									readln(codplacamae);
								end;
			writeln(' Processador de código [',codplacamae,']');
			 	Delay(500);
			 	clrscr;
				
			end;						
end;

procedure Escolherram;
Begin
	   textcolor(Red);
			Writeln('Digite o código da memória RAM');
      writeln('>>> Memória Adata XPG Spectrix D41 TUF RGB 8GB  R$ 305 <<<');
      writeln('>>> 3000 Mhz<<<');
      writeln('>>> Código 1 <<<');
      writeln('>>>-----------------------------------------------<<<');
      writeln('>>>  Memória HyperX Fury 8GB R$328 <<<');
      writeln('>>> 2666 Mhz <<<');
      writeln('>>> Código 2 <<<');
      writeln('>>>-----------------------------------------------<<<');
      textcolor(red);
      writeln('>>> Memória HyperX Fury RGB 16GB R$759 <<<');
      writeln('>>> 2666 Mhz <<<');
		  writeln('>>> Código 3 <<<');
		  writeln('>>>-----------------------------------------------<<<');
		  writeln('>>> Memória Geil Evo Potenza 16GB  R$599 <<<');
      writeln('>>> 3000 Mhz <<<');
		  writeln('>>> Código 4 <<<');
		  writeln('>>>-----------------------------------------------<<<');
		  textcolor(white);
		  readln(codram);
		  	while (codram > 4) or (codram <= 0) do
		  					begin
		  						writeln('Código inválido digite um código válido');
		  						writeln('Digite um código válido');
		  						readln(codram);
		  					end;
		  writeln('Memória escolhida código [',codram,']');
		  	
		  writeln('Digite a quantidade de memória que deseja adicionar');
		  	if (codplacamae = 1) or  (codplacamae = 4) then
		  		begin
		  			readln(quantidaderam);
		  				while (quantidaderam > 2) or (quantidaderam <= 0) do
		  					begin
		  						writeln('Quantidade inválida digite uma quantidade entre 1 e 2');
		  						writeln('Digite a quantidade de memória que deseja adicionar');
		  						readln(quantidaderam);
		  					end;
								delay(1000);
								clrscr;	
		  		end
		  		
		  		else
		  			begin
		  				readln(quantidaderam);
		  					while  (quantidaderam > 4) or (quantidaderam <= 0) do
		  					begin
		  						writeln('Quantidade inválida digite uma quantidade entre 1 e 4');
		  						writeln('Digite a quantidade de memória que deseja adicionar');
		  						readln(quantidaderam);
		  					end;
		  			end;
end;

procedure Escolherplacadevideo;
begin
	textcolor(lightblue);
	writeln('*>>>Deseja adicionar placa de video ao seu PC<<<* ?');
	writeln('               *>>>[s/n]<<<             ');
	readln(respplacavideo);
		if respplacavideo <>('n') then
			begin	
				textcolor(white);
				Writeln('Digite o código da Placa de Vídeo');
      	writeln('>>> Asus Rog Strix NVIDIA GeForce RTX 2080 8GB <<<');
      	writeln('>>> R$ 6.734 <<<');
      	writeln('>>> Código 1 <<<');
      	writeln('>>>-----------------------------------------------<<<');
     	  writeln('>>>  VGA NVIDIA ASUS GeForce GTX 1050TI 4GB <<<');
      	writeln('>>> R$ 950 <<<');
      	writeln('>>> Código 2 <<<');
     	  writeln('>>>-----------------------------------------------<<<');
      	textcolor(white);
     	  writeln('>>> VGA Gigabyte AMD Radeon RX 570 4GB <<<');
     	  writeln('>>> R$ 766 <<<');
		 	  writeln('>>> Código 3 <<<');
		 	  writeln('>>>-----------------------------------------------<<<');
		 	  writeln('>>> POWERCOLOR RADEON VII 16GB R$ <<<');
      	writeln('>>> R$ 4.703  <<<');
		  	writeln('>>> Código 4 <<<');
		  	writeln('>>>-----------------------------------------------<<<');
		 		Readln(codplacadevideo);
		  		while (codplacadevideo > 4) or (codplacadevideo <= 0) do
		  					begin
		  						writeln('Código inválido digite um código válido');
		  						writeln('Digite um código válido');
		  						readln(codplacadevideo);
		  					end;
		  		delay(1000);
		  		clrscr;			
			end;
			
end;
Procedure Escolherfonte;
begin
			textcolor(white);
			Writeln('Digite o código da Fonte');
      writeln('>>> Fonte EVGA 500W 80 Plus White R$ 350 <<<');
      writeln('>>> R$: 350 <<<');
      writeln('>>> Código 1 <<<');
      writeln('>>>-----------------------------------------------<<<');
      writeln('>>>  Fonte Corsair 750W 80 Plus Bronze CX <<<');
      writeln('>>> R$: 799 <<<');
      writeln('>>> Código 2 <<<');
      writeln('>>>-----------------------------------------------<<<');
      textcolor(white);
      writeln('>>> Fonte Pixxo 1000W 80 Plus Silver  <<<');
      writeln('>>> R$: 859  <<<');
		  writeln('>>> Código 3 <<<');
		  writeln('>>>-----------------------------------------------<<<');
		  textcolor(lightblue);
		  readln(codfonte);
		  	while (codfonte > 3) or (codfonte <= 0) do
		  					begin
		  						writeln('Código inválido digite um código válido');
		  						writeln('Digite um código válido');
		  						readln(codfonte);
		  					end;
		  				delay(1000);
		  				clrscr;
end;

procedure Escolhergabinete;
Begin
			textcolor(white);
			Writeln('Digite o código do Gabinete');
      writeln('>>> Gamer T-Dagger Vayne, Mid Tower Lateral em Vidro  <<<');
      writeln('>>> R$: 330 <<<');
      writeln('>>> Código 1 <<<');
      writeln('>>>-----------------------------------------------<<<');
      writeln('>>> Aerocool Gamer Mid Tower V3X Window Preto   <<<');
      writeln('>>> R$: 305 <<<');
      writeln('>>> Código 2 <<<');
      writeln('>>>-----------------------------------------------<<<');
      writeln('>>> Corsair Carbide Series SPEC-04 Mid Tower Preto e Vermelho  <<<');
      writeln('>>> R$: 470 <<<');
		  writeln('>>> Código 3 <<<');
		  writeln('>>>-----------------------------------------------<<<');
      writeln('>>> Sharkoon V1000 Micro-ATX com Janela Lateral em Acrílico <<<');
      writeln('>>> R$: 399 <<<');
      writeln('>>> Código 4 <<<');
      writeln('>>>-----------------------------------------------<<<');
      writeln('>>>  Corsair iCUE 465X, Mid Tower, RGB, com FAN, Lateral e Frontal em Vidro <<<');
      writeln('>>> R$: 1.222 <<<');
      writeln('>>> Código 5 <<<');
      writeln('>>>-----------------------------------------------<<<');
      writeln('>>> Lian Li Lancool II, Mid Tower, com FAN, Laterais em Vidro, Branco  <<<');
      writeln('>>> R$: 999 <<<');
		  writeln('>>> Código 6 <<<');
		  writeln('>>>-----------------------------------------------<<<');
		  textcolor(lightblue);
		  readln(codgabinete);
		  	while (codgabinete > 6) or (codgabinete <= 0) do
		  					begin
		  						writeln('Código inválido digite um código válido');
		  						writeln('Digite um código válido');
		  						readln(codgabinete);
		  					end;
		  				delay(1000);
		  				clrscr;
end;

Procedure calculovenda;
begin
	writeln('Work here');
		valorcarrinho:=0;
		begin //Calculando o valor do processador//
			if ( codprocessador =  1) then
					valorcarrinho:= 741
				else if ( codprocessador =  2) then
					valorcarrinho:= 1499
				else if ( codprocessador =  3) then
					valorcarrinho:= 2443
				else if ( codprocessador =  4) then
					valorcarrinho:= 705
				else if ( codprocessador =  5) then
					valorcarrinho:= 1299
				else if (codprocessador = 6)then 
				valorcarrinho:=2815;
		end;
		//Calculo placa mae//
		begin
			if (codplacamae = 1) then
			valorcarrinho:=valorcarrinho+705
			else if (codplacamae = 2) then
			valorcarrinho:=valorcarrinho+1720
	   else if (codplacamae = 3) then
			valorcarrinho:=valorcarrinho+2617
			else if (codplacamae = 4) then
				valorcarrinho:=valorcarrinho+700
			else if (codplacamae = 5) then
				valorcarrinho:=valorcarrinho+1728
			else if (codplacamae = 6) then
				valorcarrinho:=valorcarrinho+2990;
				
		end;
		//Cálculo memória RAM//
		begin
			if (codram = 1) then
			 valorcarrinho:=valorcarrinho+(305 * quantidaderam)
			else if (codram = 2) then
				valorcarrinho:=valorcarrinho+(328 * quantidaderam)
			else if (codram = 3) then
				valorcarrinho:=valorcarrinho+(759 * quantidaderam)
			else 
				valorcarrinho:=valorcarrinho+(599 * quantidaderam);
		end;
		//Cálculo placa de vídeo//
		begin
			if (codplacadevideo = 1) then
				valorcarrinho:=valorcarrinho+6734
			else if (codplacadevideo = 2) then
				valorcarrinho:=valorcarrinho+950
			else if (codplacadevideo = 3) then
				valorcarrinho:=valorcarrinho + 766
			else if (codplacadevideo = 4) then
				valorcarrinho:=valorcarrinho+ 4703
			else 
				valorcarrinho:=valorcarrinho;
		end;
		//Cálculo Fonte//
		Begin
			if (codfonte = 1)then
				valorcarrinho:=valorcarrinho + 350
			else if (codfonte = 2)then
				valorcarrinho:=valorcarrinho + 750
				else if (codfonte = 3)then
				valorcarrinho:=valorcarrinho + 859
		end;
		//Cálculo Gabinete//
		Begin
			if (codgabinete = 1) then
			 	valorcarrinho:=valorcarrinho + 330
			else if (codgabinete = 2) then
			 	valorcarrinho:=valorcarrinho + 305
			else if (codgabinete = 3) then
			 	valorcarrinho:=valorcarrinho + 470
			else if (codgabinete = 4) then
			 	valorcarrinho:=valorcarrinho +399
		 	else if (codgabinete = 5) then
			 	valorcarrinho:=valorcarrinho + 1222
			else if (codgabinete = 6) then
			 	valorcarrinho:=valorcarrinho +  999;
		end;		
end;

procedure Cadastroproduto;
begin
	ylimite:=1;
	for i:=1 to ylimite	do
		begin
			if(produtos[i,1] <> 0)then
 				   begin
 				   	ylimite:= ylimite + 1;
 				   end
 			else
 				begin
					produtos[i,1]:=codproduto;
					produtos[i,2]:=opplataforma;
					produtos[i,3]:=codprocessador;
					produtos[i,4]:=codplacamae;
					produtos[i,5]:=codram;
					produtos[i,6]:=codplacadevideo;
					produtos[i,7]:=codgabinete;
					produtos[i,8]:=valorcarrinho;
				end;
		end;
	ylimite:= ylimite + 1;	
end;	
			 	
Procedure CarrinhoPc;
begin
	writeln('PC montado ! ! !');
	writeln('R$ : ',valorcarrinho);
end;

Procedure Relatoriovenda;
begin
	Writeln('Digite o Codigo da compra: ');
	readln(codigo);
	
	while (ValidarCompra(codigo) = false) do  
		begin
			writeln('Código de compra não encontrado, digite outro código:');
			readln(codigo);
		end;	
	
 				  
	if (ValidarCompra(codigo)) then
		
	  
			begin
	
				Writeln('Nome do cliente: ', clientes[i,2].nome);
				writeln('Nome do Funcionário: ', funcionario[i,2].nome);
				Writeln('Valor pago: R$ ',produtos[i,8]);
				readkey;
			end;
	
	
	voltarmenuprincipal;
end;				
			 //Espaço para procedures//

			 
Begin
	repeat
		menuprincipal;
			begin
						while (op>5) or (op<=0)	do
							begin
				 				writeln('Opção inválida');
				 				writeln('Digite uma opção válida');
				    		readln(op);
				    	end;
					end;
			if op = 1 then
				begin
					clrscr;
					menucadastro;
					begin
						while (opcad>3) or (opcad<=0)	do
							begin
				 				writeln('Opção inválida');
				 				writeln('Digite uma opção válida');
				    		readln(opcad);
				    	end;
					end;
					if opcad = 1 then
						begin
						 cadastrocliente;
						end
					else if opcad = 2 then
						begin
						cadastrofuncionario;
						end
					else if opcad = 3 then
						begin
						    voltarmenuprincipal;
						end					
				end
			else	if op = 2 then
//------------------------LOCAÇÃO-----------------------//
				begin
					clrscr;
					menulocacao;
					if oploc = 1 then
					begin
						clrscr;
						LocacaoCliente;
					end;
					if oploc = 2 then
					begin
						clrscr;
						locacaofuncionario;
					end;	
				end		
		  else 	if op = 3 then
//----------------------------MONTAGEM DO PC------------------------------//
				begin
				
					if	(codex = 0) then
					 	begin
					 		writeln('Antes de realizar a compra cadastre o cliente e funcionário');
							voltarmenuprincipal;
							clrscr;
						end
					else if (codex <> 0) and (codexf <>0) then
						begin
							Codigoproduto;
							Escolherplataforma;             					
							Escolherprocessador;
							Escolherplacamae;
							Escolherram;
							Escolherplacadevideo;
							Escolherfonte;
							Escolhergabinete;
							calculovenda;
							CarrinhoPc;
							Cadastroproduto;
							readkey;
							clrscr;	
						end;		
				end
			else if op = 4 then
			begin
				if	(codex <> 0) and (codexf <> 0) then
					begin
						Relatoriovenda;
					end	
				else
					begin					  
					 		writeln(' É necessário um cliente e um funcionário para relatório ');
							voltarmenuprincipal;

					end;	
			end
	    else if op = 5 then
				begin
				 finish:=true;
				end;
			
					
			
	until (finish)


end.