class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user

    case @user.role
    when User::ROLE_ADMIN
      admin_abilities
    else
      user_abilities
    end
  end

  #############################################

  private

  #############################################

  def admin_abilities
    can :access, :rails_admin
    can :dashboard, :all
    can [:manage], Recipe
    can [:manage], Ingredient
    can [:manage], RecipeIngredient
    can [:manage], User
  end

  def user_abilities
    can [:read], Recipe
    can [:read], Ingredient
    can [:read], RecipeIngredient
  end
end