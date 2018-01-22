#include <stdio.h>

Class Conert {
	
	// Who will be performing?
	std::string concertName;

	// A list of the people you want
	// to take with you. May be empty
	// or arbitrarily full.
	std::vector<std::string> friends;

	//A value from 1-10 concering how
	//badly you want to see this show.
	int desire;

	// The date of the show
	// See http://en.cppreference.com/w/cpp/chrono/c/tm
	std::tm date;

	Concert() {

		concertName = NULL;
		desire = NULL;
		date = NULL;	

	}

	Concert(std::string concertName, std::vector<std::string> friends, int desire, std::tm date) {

		concertName = concertName;
		friends = friends;
		desire = desire;
		date = date;

	}

}
