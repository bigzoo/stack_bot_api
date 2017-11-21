class Item
  attr_accessor :tags, :owner_id, :link, :title, :id, :view_count, :answer_count, :score, :last_activity_date, :creation_date

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
