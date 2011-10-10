# encoding: UTF-8

lines = File.open(ARGV[0]).readlines
  lines.each do |line|
    cleanLine = line 
    s = "\n";
    cleanLine = cleanLine.gsub(';',s);
    File.open(ARGV[1], "a") {|f| f << cleanLine.to_s}
  end
