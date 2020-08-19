Program Pzim ;
type cliente =record
		nome,sexo,telefone,cpf:string;
		codigo:integer;
		end;


var
clientes:array [1..10,1..5] of cliente;
funcionario:array[1..5,1..3]of cliente;
finish:boolean;
op,oploc,opcad,i,j,xlimite,codex,posicaocliente,codigo,posicaofuncionario:integer;
resp,respcad:Char;

procedure menuPrincipal;
begin
	writeln('--- BD Shops ---');
	writeln('--- Seja Bem vindo ---');
	writeln('--- 1 - Cadastros ---');
	writeln('--- 2 - Locação ---');
	writeln('--- 3 - Montagem do PC ---');
	writeln('--- 4 - Sair ---');
	writeln();
	writeln('Digite a opção desejada');
		readln(op);
end;

 procedure menucadastro;
begin          
	writeln('Menu Cadastros');
	writeln('1 - Cliente');
	writeln('2 - Funcionário');
	writeln('3 - Voltar para o menu Principal');
	writeln();
	writeln('Digite a opção desejada');
	readln(opcad);
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
 							while (funcionario[i,1].codigo = codex) do
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
			posicaocliente:= i;
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

function ValidarFuncionario (codigo:integer) : boolean;
begin
	for i:=1 to 10 do
	begin
		if (codigo = funcionario[i,1].codigo) then
		begin
			Validarfuncionario := true;
			posicaofuncionario:= i;
			break;			
		end;
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
	writeln('Menu Locação');
	writeln('1 - Cliente');
	writeln('2 - Funcionário');
	writeln('3 - Voltar para o menu Principal');
	writeln();
	writeln('Digite a opção desejada');
	readln(oploc);
end;

			 //Espaço para procedures//
			 
Begin
	repeat
		menuprincipal;
			if op = 1 then
				begin
					clrscr;
					menucadastro;
					if opcad = 1 then
						begin
						  clrscr;
							cadastrocliente;
						end;
					if opcad = 2 then
						begin
						  clrscr;
							cadastrofuncionario;
						end;
					if opcad = 3 then
						begin
							clrscr;
						end;	
					
				end
			else	if op = 2 then
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
				begin
				end
	    else if op = 4 then
				begin
				 finish:=true;
				end
				//Validação de operação//
				else 
					begin
						while (op>4) or (op<=0)	do
							begin
				 				writeln('Opção inválida');
				 				writeln('Digite uma opção válida');
				    		readln(op);
				    	end;
					end;
			
	until (finish)


end.