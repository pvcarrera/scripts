# encoding: UTF-8
#El fichero de entrada tiene una palabra por línea
#Lo convierto a lineas de 6 columas en formato csv
#
lines = File.open(ARGV[0]).readlines
array = []
lines.each do |line|
	array << line.gsub!(/[\n]+/, "")
end
array.each_slice(7) do |five|
	cleanLine = five.to_s.gsub!(/[\[\]]/,"")
        cleanLine = cleanLine.gsub("\",", "\"\t")	
	File.open(ARGV[1], "a"){ |f| f << "#{cleanLine}\n"}
end
