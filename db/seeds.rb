puts "Start Seeding Heroes here ..."
Hero.create!(
  [
    {
      name: "James Maina",
      super_name: "Lion-Man",
    },

    {
      name: "Kennedy Armstrong",
      super_name: "Tiger Woods",
    },

    {
      name: "Lewis Hammer",
      super_name: "Hulk",
    },

    {
      name: "Antony Taylor",
      super_name: "Golden Antelope",
    },
  ]
)

Power.create!(
  [
    {
      name: "strength: ",
      description: "gives the superman extra strength",
    },

    {
      name: "fight : ",
      description: "gives the wielder the ability to fight massive people",
    },
    {
      name: "flexibility: ",
      description: "can stretch the human body to extreme lengths",
    },
  ]
)

Hero.all.each do |hero|
  rand(1..3).times do
    # get a random power
    power = Power.find(Power.pluck(:id).sample)

    HeroPower.create!(hero_id: hero.id, power_id: power.id, strength: [:Strong, :Weak, :Average].sample)
  end
end

puts "End of Seeding...."
