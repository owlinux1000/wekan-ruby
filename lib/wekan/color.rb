module Kernel
  
  def info(s)
    puts "[ \e[32mINFO\e[0m ] #{s}"
  end

  def error(s)
    puts "[ \e[31mERROR\e[0m ] #{s}"
  end
  
end

