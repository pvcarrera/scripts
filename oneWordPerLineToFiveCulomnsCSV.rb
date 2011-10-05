# encoding: UTF-8
#El fichero de entrada tiene una palabra por línea
#Lo convierto a lineas de 5 columas en formato csv
#
lines = File.open(ARGV[0]).readlines
array = []
lines.each do |line|
	array << line.gsub!(/[\n]+/, "")
end
array.each_slice(6) do |five|
	File.open(ARGV[1], "a"){ |f| f << "#{five.to_s.gsub!(/[\[\]]/,"")}\n" }
end
