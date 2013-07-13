FactoryGirl.define do 
	factory :user do
		name					"Test User"
		email					"Test@example.com"
		password				"TestPass"
		password_confirmation 	"TestPass" 
	end
end
