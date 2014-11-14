A2::Application.routes.draw do
	get "home/index" 
	get "home/searching"
	get "home/search"
	get "home/test"
	get "home/boatInfo"
	get "home/newTest"
	get "home/viewBoat" 
	post "home/index"
	post "/home/search"
	post "home/viewBoat"

	get "booking/one"
	get "booking/two"
	get "booking/three"
	get "booking/addMembers"	
	get "booking/confirmationEmail"
	get "booking/finished"
	post "booking/one"
	post "booking/two"
	post "booking/three"
	post "booking/addMembers"
	
	root :to => 'home#index'
end