class RidePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(user: user) # display all ride where user == user
    end
  end
  def create?
    true
  end
  def show?
    true
  end

  def search?
    true
  end
  
  def index?
    true
  end
end
