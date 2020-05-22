class Post
  include ActiveModel::Model

  attr_accessor :content, :title

  def self.all
    [
      new(
        title: "My awesome post",
        content: "tl; dr"
      )
    ]
  end

  def self.create(attrs)
  end

  def to_param
    "1"
  end

  def save
  end
end
