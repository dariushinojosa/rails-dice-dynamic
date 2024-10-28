class DiceController < ApplicationController

  def home_action
    render({ :template => "dice_templates/home"})
  end

  def dice_action
    
    @num_dice = params.fetch("number_of_dice").to_i

    @num_sides = params.fetch("how_many_sides").to_i
  
    @rolls = []

    @num_dice.times do
      die = rand(1..@num_sides)
      @rolls.push(die)
    end

    render({ :template => "dice_templates/flexible"})

  end
  
end
