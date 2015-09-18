require "rly"
class CalcLex < Rly::Lex
  ignore " \t\n"

  token :MAS, /\+/ do |t|
  		t.type = "SIGNO"
    	t.value = t.value
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :MENOS, /-/ do |t|
  		t.type = "SIGNO"
    	t.value = t.value
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :TIMES, /\*/ do |t|
  		t.type = "SIGNO"
    	t.value = t.value
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :DIV, /\// do |t|
  		t.type = "SIGNO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  
  token :ASIGNACION, /:=/ do |t|
  		t.type = "ASIGNACION"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end

  

  
  token :NUMBER, /\d+/ do |t|
  	#puts("NUMERO #{t.value}")
  	t.type = "NUMERO"
    t.value = t.value.to_i
    t
  end


  token :WRITELN, /writeln/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :ELSE, /else/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :END, /end/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end

  on_error do |t|
    puts "Illegal character #{t.value}"
    t.lexer.pos += 1
    nil
  end
end



def analizador(cadena)
lex = CalcLex.new(cadena)

while true
	tok = lex.next
	if tok != nil 
		puts("#{tok.type} #{tok.value}")
		#puts(tok.type 
		#puts(tok.value)
	end
	if not tok
		break
	end
end

end




puts "Url del archivo .pas:"  
STDOUT.flush  
url = gets.chomp  

#url = C:\Users\Neomatrix\Desktop\pascalero.pas


# Abre y lee un fichero
# Se usa un bloque: el fichero se cierra
# automáticamente al acabar el bloque.
File.open(url, 'r') do |f1|
  while linea = f1.gets
    puts linea
    analizador(linea)
  end
end



 