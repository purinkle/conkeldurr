class Post
  include ActiveModel::Model

  attr_accessor :content, :title

  def self.all
    @@all ||= []
  end

  def self.create(attrs)
    new(attrs).save
  end

  def to_param
    "1"
  end

  def save
    self.tap do |post|
      self.class.all << post
    end
  end
end
