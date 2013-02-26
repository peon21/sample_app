#crea un nuevo usuario para hacer las pruebas

FactoryGirl.define do
  factory :user do |user|
     user.name		     "Gustavo Pfeifer"
     user.email		     "gustavo@example.com"
     user.password		     "foobar"
     user.password_confirmation "foobar"
  end
end
