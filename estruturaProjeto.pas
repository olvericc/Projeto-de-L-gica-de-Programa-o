Program Pzim ;

type rg_cliente = record
			codigo : integer;
			nome : string;
			idade : integer;
			telefone : string;
		end;

var
	op, opCad, i, codigo : integer;
	resp, respCad : string;
	mt_cliente : array[1..10, 1..4] of rg_cliente;
	vl_cliente : boolean;         
	
procedure MenuPrincipal;
begin
	clrscr;
	writeln('Seja Bem vindo');
	writeln('1 - Cadstros');
	writeln('2 - Locação');
	writeln('3 - Relatorios');
	writeln('4 - Sair');
end;
procedure MenuCadastro;
begin
 	clrscr;
	writeln('Menu Cadastros');
	writeln('1 - Cliente');
	writeln('2 - Funcionario');
	writeln('3 - Veiculo');
	writeln('4 - Voltar para o menu Principal');
end;

procedure CadastrarCliente;
begin
	for i:=1 to 10 do
	begin
		if (mt_cliente[i,1].codigo = 0) then
		begin
			writeln('Informe o codigo do cliente');
			readln(mt_cliente[i,1].codigo);
			writeln('Informe o nome do cliente');
			readln(mt_cliente[i,2].nome);
			writeln('Informe a idade do cliente');
			readln(mt_cliente[i,3].idade);
			writeln('Informe o telefone do cliente');
			readln(mt_cliente[i,4].telefone);
			break;
		end;
	end;
end;
procedure ListarCliente;
begin
	for i:=1 to 10 do
	begin
		if (mt_cliente[i,1].codigo > 0) then
		begin
			writeln('Codigo: ',mt_cliente[i,1].codigo
			,' Nome: ',mt_cliente[i,2].nome,' Idade: ',mt_cliente[i,3].idade);
		end;
	end;
end;

function ValidarCliente(codigo : integer) : boolean;
begin
	for i:=1 to 10 do
	begin
		if(codigo = mt_cliente[i,1].codigo)then
		begin
			ValidarCliente := true;
			break;
		end;
	end;	
end;

Begin
	repeat
		MenuPrincipal;
		writeln('Informe a opção desejada');
		readln(op);		
		case op of
			1:
			begin
				//cadastros
				repeat
					MenuCadastro;
					writeln('Informe a opção desejada');
					readln(opCad);
					if opCad = 1 then
					begin
						//cadastro do cliente
						clrscr;
						CadastrarCliente;
						ListarCliente;
						
					end
					else if opCad = 2 then
					begin
						//cadastro do funcionario
					end
					else if opCad = 3 then
					begin
						//cadastro do veiculo
					end
					else
					begin
						clrscr;												
						//MenuPrincipal;
						//break;						
					end;
					writeln('Deseja realizar outro cadastro [S / N]');					
					readln(respCad);
				until respCad = 'N';
			end;
		 	2:
		 	begin
		 		//locacao
		 		writeln('Informe o codigo do cliente');
		 		readln(codigo);
		 		
				if(ValidarCliente(codigo))then
		 		begin
		 			writeln('Cliente encontrado');
		 		end
		 		else 
		 		begin
		 			writeln('Cliente não encontrado');
		 		end;
		 		
		 	end;
		 	3:
		 	begin
		 		//relatorios
		 	end;
		end;
	writeln('Deseja realizar outra operação [S / N]');					
	readln(resp);
	until resp = 'N';
End.