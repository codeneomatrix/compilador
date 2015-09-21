program infoProfesores;
	type
		cadena := string [30];
		curso := record
		titulo:= string[30];
		horaI, horaF:= real;
		end;
	trescursos := array[1..3] of curso;
	profesor := record
		nombre:= cadena;
		cursos:= trescursos;
			end;
	archiProfes := file of profesor;
	listaProfes := nodoProfe;
	nodoProfe := record
		dato:= profesor;
		psig:= listaProfes;
		end;
	var
		lista: listaProfes;
	procedure CargarInfo ( VAR lista: listaProfes)
		var
			profe: profesor;
			archi: archiProfes;
		begin
			Assign(archi,'profes.dat');
			Reset(archi); 
			{Sintaxis y Semantica del Lenguaje }
			lista := nil;
			while not eof(archi)
			do begin
			read(archi, profe)
			InsertarOrdenado(lista, profe) {el que ya hicieron}
		end;
		Close( archi);
	end;
	procedure ActualizarInfo ( lista: listaProfes)
		var
			profe: Cadena;
			nro: integer;
			cur: curso;
		begin
			writeln('Ingrese el nombre del profesor a modificar (ZZ para finalizar)');
			read(profe);
			while profe <> 'ZZ'
				do begin
					writeln('Ingrese el nro del curso, titulo, hora inicial y hora final');
					read ( nro, cur.titulo, cur.horaI, cur.horaF);
					AnalizarCambio(lista, profe, nro, cur);
					writeln('Ingrese el nombre del profesor a modificar (ZZ para finalizar)');
					read(profe)
				end;
		end;

	procedure AnalizarCambio ( lista: listaProfes; profe: Cadena; n:integer; nuevoCurso:curso)
	var
		regProfe: profesor
	begin
		if Buscar(lista, profe) { busca por el nombre}
		then begin
			regProfe := Recuperar(lista, profe); { recupera por el nombre}
		if not SuperposicionHoraria (nuevoCurso, regProfe.cursos, n)
			then begin
			regProfe.cursos[n] := nuevoCurso
			InsertarOrdenado(lista, regProfe)
			end;
		else writeln('No se puede hacer el cambio por superposicion horaria');
		end
		else writeln('El profesor no esta registrado');
	end;

	function SuperposicionHoraria (nuevo: curso, cursos : trescursos; n: integer): boolean 
		{Sintaxis y Semantica del Lenguaje }
		begin { del programa ppal }
			CargarInfo(lista);
			ActualizarInfo(lista);
			GrabarInfo(lista);
	end;

p^:= 7
new(p);
ptr:=^integer;

var
	p,q:ptr;

with a1 do
begin
nombre := 'Carlos Fernandez';
legajo := 12345;
prom := 4.50;
end.