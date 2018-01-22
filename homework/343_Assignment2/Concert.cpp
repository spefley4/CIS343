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

	bool Concert::operator<(const Concert& other) const;

	// Default constructor setting all variables to NULL.
	Concert() {

		concertName == NULL;
		friends == NULL;
		desire == NULL;
		date == NULL;	

	}

	Concert(std::string concertName, std::vector<std::string> friends, int desire, std::tm date) {

		concertName = concertName;
		friends = friends;
		desire = desire;
		date = date;

	}

	main() {

		Concert("The Band", "Joe, Tim, John, Rob", 7, tm_mon 9 tm_mday 23 tm_year 2017);

	}

};
