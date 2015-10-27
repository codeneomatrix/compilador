program34 OtroEjemplo ; 
	var a , b : integer ;
	(*Probando Cambios*)
	procedure Cambio ( x , y : integer ) 
		var z : integer ; 
		var x : real ; 
		begin 
			z : = x ; 
			x : = y ; 
			y : = z ; 
	end ; 
		(*Probando otros
		 Cambios*)
	// comentario de una linea
	begin 
		writeln ( 'Ingrese dos numeros' ) ; 
		readln ( a , b ) ; 
		Cambio ( a , b ) ; 
		writeln ( 'El primer numero que ingreso fue' , a ) ; 
		writeln ( 'El segundo numero fue' , b ) ; {numero de vueltas que dara el bucle} 
		(*otro comentario*)
		//2+2;   
END . 