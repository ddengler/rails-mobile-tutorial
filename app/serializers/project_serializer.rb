class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :status

  has_many :todos
  def status
    'user'
  end
end
