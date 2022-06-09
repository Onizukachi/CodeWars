# You're fed up about changing the version of your software manually. Instead, you will create a little script that will make it for you.

# Exercice
# Create a function nextVersion, that will take a string in parameter, and will return a string containing the next version number.

def nextVersion(version)
  #SHORT_DECISION version.succ or version.next
  version = version.split('.').reverse.map(&:to_i)

  version = version.each_with_index do |x, i|
    if x == 9
      version[i] = 0
    else
      version[i] += 1
      s = version.reverse.map(&:to_s)
      return s.join('.')
    end
  end
  version.join('.').insert(0, '1')
end

p nextVersion("1.2.3") ##, "1.2.4"
p nextVersion("0.9.9") #, "1.0.0"
p nextVersion("1")  #, "2"
p nextVersion("1.2.3.4.5.6.7.8")  #, "1.2.3.4.5.6.7.9"
p nextVersion("9.9")  #, "10.0"




