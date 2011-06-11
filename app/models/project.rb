class Project
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String
  field :location, :type => String
  field :reference, :type => User
  embeds_many :project_types 
  embeds_many :project_statuses
  embeds_many :tags 
  embeds_many :links
  has_many :project_fundings
  has_many :stakeholders
  has_many :prints
  has_many :documents
  belongs_to :user


  validates :title, :description, :location, :presence => true
  validates_associated :user
end
