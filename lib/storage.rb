require_relative 'hex'

module Storage

  @saved = {}

  def self.save(url)
    id = Hex.generate_id
    if @saved[id]
      save(url)
    else
      @saved[id] = url      
    end
    id
  end

  def self.get(id)
    @saved[id]
  end

end