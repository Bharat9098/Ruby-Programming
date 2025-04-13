# Object-Oriented Programming is modeled after real world.
# Here objects need to communicate with one another, and other objects need
# to react when ones object state changes.

class Apple
  attr_accessor :name, :status, :observers

  def initialize name
    @name = name
    @observers = []
  end

  def set_status status
    @status = status
    notify_observer 
  end

  def notify_observer 
    for observer in observers
      observer.notify self
    end
  end

  def notify apple
    puts "#{apple.name}: #{apple.status} notified to : #{@name}"
  end

end

apple = Apple.new "I Phone 13"
apple.observers << Apple.new("bharat")

apple.set_status "Mobile is in stock now"

# ----------------------------------------------------

class Message
  def initialize(observers)
    @observers = observers
  end

  def send(message_type)
    @observers.each do |observer|
      observer.message_sent(message_type)
    end
  end


end

class FreeMessage
  def message_sent(message_type)
    if message_type != "free_message"
      return
    end

    puts "sending free message"
  end
end

class PaidMessage
  def message_sent(message_type)
    if message_type != "paid_message"
      return
    end

    puts "sending paid message"
  end
end

free_message = FreeMessage.new
paid_message = PaidMessage.new
m = Message.new([free_message, paid_message])

m.send("free_message")
