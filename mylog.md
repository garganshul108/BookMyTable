# MYLOG

#### 2019-08-11 17:12:58

Backend and front end is finally to gether

#### 2019-08-08 16:29:31

- Registration form done with everything except Radio buttons

#### 2019-08-07 08:11:20

- ref-registraion
- incomplete code for the inner form

#### 2019-08-07 06:59:55

- ref-registration updated
  - consists of all the new form and form starts to work for simple inputs
  - slots lost in btw but recovered

#### 2019-08-07 00:37:37

merger:

- input-component-test into auto-app's merge-input-cpmponent
- merge input component is the new branch; not deleted; renamed as ref-registration
- input-component-test deleted

- new branch: merge-input-component
  - merge input component (child of app-front)
  - contains the new home page
  - contains the new navigation bar
  - registration form (incomplete form)

#### 2019-08-07 00:08:44

mergers:

- ref-navigation merged to app-front
- ref-navigation deleted
- app-front merged to master

- app-front:
  - contains the new home page
  - contains the new navigation bar

#### 2019-08-06 23:45:31

mergers:

- ref-topbar merged to ref-navigation
- ref-topbar deleted

- ref-navigation:
  - contains the new home page
  - contains the new navigation bar

#### 2019-08-06 23:00:35

- ref-navigation
  - home page design done

#### 2019-08-06 22:12:04

- ref-navigation
  - home page -> designing structure

#### 2019-08-06 19:44:20

- ref-navigation
  - figured out navigation history object
  - figured out how to not have navigation bar on the home page
  - this is made child to app-front (now only)

#### 2019-08-06 16:24:38

- top-bar-refactoring has the new navigation bar design; renamed as ref-topbar
- no js or css yet
- now I am switching to work on registration model

#### 2019-08-06 13:41:05

- Current Branches:

  - input-component-test (child of reg-form) not merged any where
    - made for implenting input as a seprate component
    - designed scroll bar in it
    - refactored the login form, Sign up with new FronInput tag
  - reg-form (child of adj-js)
    - constists of the form skelton for registration with some inputs
    - no FormInput class
    - no scroll bar design
  - adj-js (child of app-front)
    - constists of the form skelton for registration only
    - no FormInput class
    - no scroll bar design
  - top-bar-refactoring (child of app-front)
    - not initiated at time of commit

* app-front : consist of the login sign up vailation form only nothing from mentioned above; no registration form etc

#### 2019-08-05 23:54:28

on branch adjusting-js

- login form validation corrected
- signup form design done
- validation for the signup done
- authServices.js initialized

#### 2019-08-05 20:15:52

- login form validated
- connect to server left

#### 2019-08-05 18:09:52

- Everything mergerd back to app-front
- Filter designing done
- login designing done
- ads added
- TODOS:
  - implement JS functionality to the buttons
  - booking table attribute

#### 2019-08-05 14:45:40

- Target: User and Filter
- Integrate the backend if possible

#### 2019-08-04 00:21:49

- Filter added for design
- Ads added
- JQuery for bootstrap elements added
- userbar added
- login page on hold
- home page design thought
- branches created today:
  - implementing-filter (child to restaurent model; filter designin)
  - restaurant-model (child to bookTable; refactoring the restaurants page)
  - bookTable (child to app-front; created to implement the Book a Table logic on hold)
  - login-form (added login form and sign up form basic design not implented totally)

#### 2019-08-03 18:52:24

- Restaurant as seprate module refactoring complete
- bookTable attribute is underprocess
- Menu / Call functions done
- App's common div refactored:
  - container made component dependent
- User from initiated
- Home page and Navigation Bar refactoring begun (but on hold)

#### 2019-08-02 18:19:49

- Navigation bar refactoring started
- Project On Hold due to:
  - login forms and submit attributes
  - user module
  - restaurant actions implemantation
- TODOS:
  - refactor Home page
  - build user
  - build login
  - restaurant actions
  - **rest from #2019-08-02 01:58:33**

#### 2019-08-02 15:33:08

- Restaurants display refactored
- adjusted all the attributes of the json file into the page

#### 2019-08-02 01:58:33

- Restaurants are being refactored to div from tables
- Not-found page updated with new design and woring links
- Zomato's Restaurant data collected
- css for the various design models added
- TODOS:
  - Restaurant - Single page
  - Booking interface
  - Home / Search
  - Implement Routing for the modules

#### 2019-08-01 23:12:11

- Config file test passed
- Table columns can be configured now independently

#### 2019-08-01 00:31:05

- Modeling Table rows problem
- Modeling branch commited as LOST

#### 2019-07-31 21:46:35

- Navigation bar started to work
- Restaurants list starts to appear as table
- dummy services for data is being used by the Restaurant.jsx
