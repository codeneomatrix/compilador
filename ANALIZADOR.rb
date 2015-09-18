require "rly"
class CalcLex < Rly::Lex
  ignore " \t\n"

 
#--------------------------------------------
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
  token :DIV, /\/|DIV|div/ do |t|
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
  token :MOD, /mod|MOD/ do |t|
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

#-----------------------------------------------
#------------------PALABRAS RESERVADAS----------
#-----------------------------------------------



  token :WRITELN, /writeln|WRITELN/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :WRITE, /write|WRITE/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :READLN, /readln|READLN/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :READ, /read|READ/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :ELSE, /else|ELSE/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :END, /end.|END.|end|END/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end

  token :ABSOLUTE, /absolute|ABSOLUTE/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :ARRAY, /array|ARRAY/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :BEGIN, /begin|BEGIN/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :CONST, /const |CONST / do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :FOR, /for |FOR / do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :DOWNTO, / downto | DOWNTO / do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :TO, / to | TO / do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :CASE, /case |CASE / do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :IF, /if |IF / do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :IN, / in | IN / do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :LABEL, /label|LABEL/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  #----------conjunciones logicas-------
  token :AND, /and|AND/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :OR, /or|OR/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :NOT, /not|NOT/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :XOR, /xor|XOR/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  #-------------------------------------
  token :PROGRAM, /program|PROGRAM/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :REPEAT, /repeat|REPEAT/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :UNIT, /unit|UNIT/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :USES, /uses|USES/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :WITH, /with|WITH/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :CONSTRUCTOR, /constructor|CONSTRUCTOR/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :EXTERNAL, /external|EXTERNAL/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :DO, / do | DO / do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :FILE, /file|FILE/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :FORWARD, /forward|FORWARD/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :GOTO, /goto|GOTO/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :IMPLEMENTATION, /implementation|IMPLEMENTATION/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :INLINE, /inline|INLINE/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :INTERRUPT, /interrupt|INTERRUPT/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :OF, /of|OF/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :PACKED, /packed|PACKED/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :PROCEDURE, /procedure|PROCEDURE/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :RECORD, /record|RECORD/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :SET, /set|SET/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :SHR, /shr|SHR/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :THEN, /then|THEN/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :TYPE, /type|TYPE/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end  
  token :UNTIL, /until|UNTIL/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end    
  token :VAR, /var|VAR/ do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :WHILE, / while | WHILE / do |t|
  		t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
#-----------------TIPOS------------------------------------
#----------------------------------------------------------
  token :INTEGER, /integer|INTEGER/ do |t|
  		t.type = "INDICADOR DE TIPO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
#-----------------------------------------------------
  token :PUNTOYCOMA, /;/ do |t|
  		t.type = "SIMBOLO TERMINAL"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :DOSPUNTOS, /:/ do |t|
  		t.type = "SIMBOLO TERMINAL"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :COMA, /,/ do |t|
  		t.type = "SIMBOLO TERMINAL"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
#-----------------------------------------------------
   token :COMENTARIOS, /\(\*.+\*\)|\{.+\}/ do |t|
  		t.type = "COMENTARIO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :CADENA, /'.+'/ do |t|
  		t.type = "CADENA DE TEXTO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :IDENTIFICADOR, /\w(\w|_)*|_(\w|_)*/ do |t|
  		t.type = "IDENTIFICADOR"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 

#------------------------------------------------------

  on_error do |t|
    puts "CARACTER ILEGAL #{t.value}"
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



 