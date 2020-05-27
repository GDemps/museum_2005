class Museum

  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended_exhibits = []
    patron.interests.each do |interest|
      @exhibits.each do |exhibit|
        if exhibit.name == interest
          recommended_exhibits << exhibit
        end
      end
    end
    recommended_exhibits
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    collection = {}
    @exhibits.each do |exhibit|
      @patrons.each do |patron|
        patron.interests.each do |interest|
          if interest == exhibit.name && collection[exhibit].nil?
            collection[exhibit] = [patron]
          elsif interest == exhibit.name && collection[exhibit] != nil
            collection[exhibit] << patron
          elsif
            collection[exhibit].nil? && interest != exhibit.name
            collection[exhibit] = []
          end
        end
      end
    end
    collection
  end

  def ticket_lottery_contestants(exhibit)
    lottery_contestants = []
      @patrons.each do |patron|
        if patron.spending_money < exhibit.cost
          lottery_contestants << patron
        end
      end
      lottery_contestants
  end


end
