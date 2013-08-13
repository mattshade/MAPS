require ''
raise Exception, 'you must provide a json file' unless ARGV[0]

json = JSON.parse(File.open(ARGV[0]).read)
puts json.first.collect {|k,v| k}.join(',')
puts json.collect {|node| "#{node.collect{|k,v| v}.join(',')}\n"}.join