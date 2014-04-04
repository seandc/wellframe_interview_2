# Care Manager Engagement Task

*Note: You will be making a mockup dashboard to be used by Care Managers. The goal is to make it easy to see what's going on with their patient population, find out who to message, and then have some sort of metrics/scores/stats to help engage the Care Manager (similar to the things we spoke about during our last interview). This task should take no longer than 2-3 hours at the most to complete.*


### Prerequisites

- Please note that this will require some basic [Ruby on Rails](http://rubyonrails.org/) and Front-end knowledge. 

- You will need to have [Ruby on Rails](http://www.rubyonrails.org/) installed to complete this task. 

## Task

- Fork this repository 
- Create a *source* directory.
- In the *source* directory, scaffold a simple Rails 4 web app that models a care manager. One possible JSON data structure below (include your own scores/stats): 

```
  {
    "id": 9923,
    "created": 1389618241,
    "name": Vinnie,
    "email": vinnie@wellfra.me,
    "message_score": 100,
  }
```

- Also scaffold a patient object which has a first and last name, and a couple basic statistics/scores of your choice. 


##### Seed 4 Patients into the system
    Patient 1: 
      First Name: Johny 
      Last Name: Flow

    Patient 2: 
      First Name: Raj
      Last Name: Jamnis

    Patient 3: 
      First Name: Andrew
      Last Name: Chung

    Patient 4: 
      First Name: Mike
      Last Name: Smith

  
##### Create a Visual Representation

*Note: You can create the front-end however you wish, though Twitter Bootstrap may be the quickest (up to you and we have no preference)*

This is the main part of the interview. We want to see how you think through product to make something usable and engaging. Create a main page (meant to be the home page of a Care Manager dashboard), which shows some stats about a care manager and their patients. The idea is to engage the Care Manager (using some of the techniques/stats/scores we spoke about earlier on the phone) and help them engage the patients that need to be engaged the most. 

On the main page that shows all patients, create a table with H1 headers. 

- Patient Table - 
  - Header: Active Patients 
  - Display the patients along with their stats. Rendering this is up to you. 


## Once Complete
1. Commit and Push your code to your new repository
2. Send us a pull request, we will review your code and get back to you






