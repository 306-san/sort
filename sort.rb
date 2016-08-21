# auther:306-san

all_file = ARGV[0]
revert_file = ARGV[1]
a_file = File.open(all_file)
flag = true
a_file.each_line do |line|
  r_file = File.open(revert_file)
  r_file.each_line do |liner|
    if line.to_s == liner.to_s
      flag = false
    end
  end
  if flag == true
    print line
  else
    flag = true
  end
  r_file.close
end
a_file.close
