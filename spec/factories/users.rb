FactoryBot.define do
  factory :user do
    name {"John"}
    password { "123456" }
    address { "Spandau, berlin, germany" }
    email {"john@gmail.com"}
  end
end
