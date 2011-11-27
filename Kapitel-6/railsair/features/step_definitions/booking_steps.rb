# encoding: utf-8

Gegebensei /^ein Flug "([^"]*)"$/ do |flight_nr|
  Flight.create(nr: flight_nr)
end

Wenn /^ich den Flug "([^"]*)" auswähle$/ do |flight_nr|
  visit flights_path
  click_link flight_nr
  page.should have_content("Booking of RA-448")
end

Wenn /^ich meine Personalien eingebe$/ do
  fill_in "Name", with: "Luke Skywalker"
  fill_in "Email", with: "luke@lucasarts.com"
end

Wenn /^ich bezahle$/ do
  click_button "pay"
end

Dann /^soll ich eine Buchungsbestätigung für den Flug "([^"]*)" erhalten$/ do |nr|
  page.should have_content("Your booking confirmation")
  flight = Flight.find_by_nr(nr)
  flight.should have(1).bookings
  booking = flight.bookings.first
  booking.name.should == "Luke Skywalker"
  booking.email.should == "luke@lucasarts.com"
end

Wenn /^ich meine Personalien nicht eingebe$/ do
end

Dann /^soll mir eine Fehlermeldung angezeigt werden$/ do
  page.should_not have_content("Your booking confirmation")
  page.should have_content("Booking of RA-448")
  page.should have_content("Name can't be blank")
  page.should have_content("Email can't be blank")
end
