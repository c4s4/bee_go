require 'bee_task_package'

module Bee
  
  module Task
  
    # Package for Go tasks.
    class Go < Package
    
      # Sample hello task that prints greeting message on console.
      # 
      # - who: who to greet.
      # 
      # Example
      # 
      #  - go.hello: "World"
      def hello(who)
        puts "Hello #{who}!"
      end

    end

  end

end
