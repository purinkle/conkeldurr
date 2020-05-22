class Post
  include ActiveModel::Model

  attr_accessor :content, :id, :title

  def self.all
    @@all ||= []
  end

  def self.count
    all.count
  end

  def self.create(attrs)
    new(attrs).save
  end

  def self.find(id)
    all.find { |post| "#{post.id}" == id }
  end

  def persisted?
    persisted || super
  end

  def save
    self.id = self.class.count + 1
    self.persisted = true
    self.class.all << self
    self
  end

  def to_param
    "#{id}"
  end

  def update(attrs)
    assign_attributes(attrs)
  end

  private

  attr_accessor :persisted
end
