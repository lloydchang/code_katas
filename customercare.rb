require 'gserver'

class CustomerCare < GServer
  def serve(community)
    community.puts("Hello, I'm listening.")
    loop do
      line = community.readline.chomp
      case line.downcase.gsub(/[^a-z]/, '')
      when "bye", "exit", "goodbye", "quit"
        community.puts("Goodbye.")
        break
      else
        community.puts("Yes. You said, \"#{line}\"")
        community.puts("How might we help? Please continue.")
      end
    end
  end
end

modemployee = CustomerCare.new((1-888-495-9699).abs)
modemployee.audit = true
modemployee.start
modemployee.join
