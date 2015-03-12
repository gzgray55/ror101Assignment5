User.create! email: "gordon@example.com", password: "iamtesting", password_confirmation: "iamtesting"

Question.create!(text: "China's air pollution:").tap do |q|
  correct = q.choices.build text: "You can see it from space."
  q.choices.build text: "Is starting to reach New Dehli"
  q.choices.build text: "Has improved by 5%"

  q.correct_choices.build choice: correct

  q.save
end

Question.create!(text: "What shape is the world:").tap do |q|
  correct = q.choices.build text: "eliptical"
  q.choices.build text: "perfectly round"
  q.choices.build text: "square"

  q.correct_choices.build choice: correct

  q.save
end

Question.create!(text: "Why did chicken cross the road:").tap do |q|
  correct = q.choices.build text: "To get to the other side."
  q.choices.build text: "To start a band"

  q.correct_choices.build choice: correct

  q.save
end

u = User.first
u.question_assignments.build question: Question.first
u.question_assignments.build question: Question.last
u.save
