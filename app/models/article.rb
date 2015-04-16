# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :text
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

class Article < ActiveRecord::Base

  searchable do
    text :text
    text :title  
  end
end
