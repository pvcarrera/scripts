# encoding: UTF-8
#Reemplaza todas las tildes de un fichero dado y escribir el resultado en otro
map = {'á' => '&aacute;','é' => '&eacute;','í' =>'&iacute;' ,'ó' => '&oacute;','ú' => '&uacute;','Á' => '&Aacute;','É' => '&Eacute;','Í' => '&Iacute;','Ó' => '&Oacute;','Ú' => '&Uacute;', 'ñ' => '&ntilde;', 'Ñ' => '&Ntilde;'}

lines = File.open(ARGV[0]).readlines
  lines.each do |line|
    cleanLine = line 
    map.each do |k,v| 
      cleanLine = cleanLine.gsub(k,v);
    end
    File.open(ARGV[1], "a") {|f| f << cleanLine.to_s}
  end
