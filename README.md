# Take a Hike

Take a Hike is a web application that helps you develop your professional network in a meaningful way. If you would like to be a mentor, you can sign up to be one and you will show up on the 'Browse All Mentors' page where potential mentees can then request your mentorship. Once the mentor accepts the request, the mentor and mentee can chat and make plans to meet up in person, schedule a phone call, exchange their email addresses, or make other arrangements they see fit.

## Live Demo
Play around with the [live demo here](https://app-hatch.herokuapp.com/). Go ahead and sign up as a new user. In the Profile page, you have the option to make yourself a mentor so that you will show up on the browse page!

## Installing Locally

1. Follow on the links for both the [frontend](https://github.com/linsuri/hatch-frontend) and [backend](https://github.com/linsuri/hatch-backend).
2. Clone both of them down into separate folders on your computer.
3. In the command line, `cd` into the backend folder and run `bundle install`.
4. Run `rails s` to start your backend server. It should run on `localhost:3000`.
5. Open another tab in your command line, `cd` into the backend folder and run `npm install`.
6. In `src/constants/index.js`, `src/actions/user.js` and `src/actions/browse.js`, change anywhere that says `https://hatch-backend.herokuapp.com/` to `http://localhost:3000/`.
7. In `src/constants/index.js`, change anywhere that says `ws://localhost:3000/cable` to `wss://hatch-backend.herokuapp.com/cable`.
8. Run `npm start` to start your frontend server. If you are prompted to run the server on a different port than your backend, type `y`. Your frontend server should run on `localhost:3001`.

After you run `npm start`, a tab in your browser should open automatically. Go ahead and sign up as a new user. In the Profile page, you have the option to make yourself a mentor so that you will show up on the browse page!

## Features

* A user can sign up/log in.

![sign up](public/hatch-demo-signup.gif)

* A user can go to their 'Profile' page to edit their info or sign up as a mentor (otherwise, the user will only be a mentee by default).

![edit profile](public/hatch-demo-edit-profile.gif)

![be a mentor](public/hatch-demo-be-mentor.gif)

* A user can browse and see the mentors available in their area.

![browse](public/hatch-demo-browse.gif)

* A user can request mentorship from mentors.

![request mentorship](public/hatch-demo-request-mentorship.gif)

* A notification will show up for the mentor who was sent a request immediately. The mentor can then have the option to accept or decline the mentorship. Meanwhile, the 'Request Mentorship' button will be disabled and the mentee won't be able to request mentorship from that mentor again (until the request has been declined).

![notifications](public/hatch-demo-notifications.gif)

* If the mentor accepts the request:
  * A notification will show up for the mentee immediately, notifying them that the mentor has accepted their request.
  * Upon refresh the page, the mentor will show up in the mentee's 'My Mentors' tab in their browser. Same goes for the mentor.

![notifications](public/hatch-demo-notifications.gif)

  * When browse, the mentor will not show up in the 'Browse' section.
  * The mentor and mentee are able to chat.

![chat](public/hatch-demo-chat.gif)


* If the mentor declines the request:
  * When browse, the mentor will show up in the 'Browse' section.
  * The 'Request Mentorship' button for that mentor will once again be enabled.  

## Built With

* [Rails](https://rubyonrails.org/)
* [Action Cable](https://guides.rubyonrails.org/action_cable_overview.html)
* [PostgreSQL](https://www.postgresql.org/)
* [React](https://reactjs.org/)
* [Redux](https://redux.js.org/)
* [Material UI](https://material-ui.com/)
