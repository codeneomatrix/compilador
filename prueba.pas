program OtroEjemplo; 
	var a, b : integer; 
	procedure Cambio(x,y : integer) 
		var z:integer; 
		begin 
			z:=x; 
			x:=y; 
			y:=z; 
		end; 

	begin 
		writeln('Ingrese dos numeros' ); 
		readln(a,b); 
		Cambiar(a,b); 
		writeln('El primer numero que ingreso fue',a); 
		writeln('El segundo numero fue',b); {numero de vueltas que dara el bucle} 
		(*otro comentario*)
		2+2;   
END. 