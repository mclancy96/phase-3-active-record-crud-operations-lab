class Movie < ActiveRecord::Base
  def self.create_with_title(title)
    create(title: title)
  end

  def self.first_movie
    Movie.first
  end

  def self.last_movie
    Movie.last
  end

  def self.movie_count
    Movie.count
  end

  def self.find_movie_with_id(id)
    Movie.find(id)
  end

  def self.find_movie_with_attributes(**attrs)
    Movie.find_by(attrs)
  end

  def self.find_movies_after_2002
    Movie.where('release_date > ?', 2002)
  end
end
