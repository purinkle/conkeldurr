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

  def to_param
    "#{id}"
  end

  def save
    self.id = self.class.count + 1
    self.class.all << self
    self
  end
end
