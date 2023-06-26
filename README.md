<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://secure-crag-03925.herokuapp.com/">
  <img src=app/assets/images/wandertrust_logo.png>
  </a>

  <!-- [Visit Wandertrust](https://secure-crag-03925.herokuapp.com/) -->

  <h3 align="center">🏔️ Wandertrust - Wander free, wander safe 🏔️</h3>

  <p align="center">
    Wandertrust provides a place for outdoor adventurers to plan, organize, and share their trips. Here at Wandertrust we know how important every detail is in keeping you safe in the places you wander. Our platform boasts map sharing, detail planning, weather information, and even live tracking for all your adventures. We are here to help you spend less time bouncing between planning apps, and more time bouncing between peaks, rivers, valleys, and anywhere else you may wander.
    <br />
  </p>
</div>




<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



## About The Project

<div align="center">
  
 </div>


Wandertrust is a web application developed to solve the logistical problem that many outdoor athletes, recreationalists, and explorers face when planning their trips. Instead of having to bounce between multiple apps to check the weather at your location, communicate details like start and anticipated end times, share maps, and share your location with loved ones at home... Wandertrust provides a place for it all. 

Features include:

* Trip logistical tracking fields (i.e. start time, anticipated end time, etc.)
* Map upload/download features with integrations to Strava
* Resources for local SAR teams and local authorities
* Weather Forecast for the route location
* Ability to share/collaborate on your trip with other users and non-users

As adventurers ourselves, Wandertrust was built with an understanding of the challenges outdoor recreationalists face in managing their safety and keeping their loved ones and fellow recreators informed. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ### PsyDiary Schema

![Screen Shot 2023-04-20 at 1 27 01 PM](https://user-images.githubusercontent.com/116821829/233442603-3074699a-736c-4971-b77d-60e6b42501c6.png)


### PsyDiary Design

For our service architecture we decided to split our front end from our backend. The diagram below shows the way in which our services interact. For the backend repo, click the link below.

[Backend Repo](https://github.com/Psydiary/psydiary_back_end)

![Screen Shot 2023-04-20 at 1 24 27 PM](https://user-images.githubusercontent.com/116821829/233442087-cea5421d-4098-4452-a937-d62d04d5fdcf.png) -->

### Built With

Wandertrust is built using;

* Ruby 3.1.1
* Rails 7.0.5
* PostgreSQL
* Bootstrap

To Come...
* Docker
* AWS
* Google OAuth
* Strava API
* Redis
* GitHub Actions (CI)
* New Relic

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## Getting Started
<!-- can change this later or add more detail -->

<!-- ### Prerequisites

* Ruby
  ```sh
  Ruby 3.1.1
  ```

* Rails
  ```sh
  Rails 7.0.4.3
  ```

### Installation

_Follow the steps below to install and set up this app._

1. Sign up for an [API Key](https://platform.openai.com/account/api-keys) through OpenAI

2. Sign up for a [Google developer account](https://console.cloud.google.com/apis).
  * make sure to use the callback URL: https://secure-crag-03925.herokuapp.com/auth/google_oauth2/callback

3. Clone this Repository
   ```
    git clone https://github.com/Psydiary/psydiary_front_end
    git clone https://github.com/Psydiary/psydiary_back_end
   ```
4. In your terminal, run the following commands;
    ```sh
    bundle install
    bundle exec figaro install
    rails db:{drop,create,migrate,seed}
    ```
5. Enter your API Keys in `application.yml`
   
   ```
    openai_key: 'your key here'
    GOOGLE_CLIENT_ID: 'your id here'
    GOOGLE_CLIENT_SECRET: 'your secret here'
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p> -->

<!-- ROADMAP -->
<!-- ## Roadmap
To keep track of our progress while creating Psydiary, bugs that popped up, potential refactor ideas, and more... we utilized a [Notion Project Management Board](https://alluring-phlox-b74.notion.site/72a9807f1fec4b40a63d0fc8908cb7e8?v=aec33fee246f41b5bf8e7ae6ea7f9796) from Day 1.

We also used tools like Miro to diagram our database and service structure and Figma to create our wireframes.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
<!-- ## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p> --> 

<!-- ## Acknowledgments -->

### Wandertrust Contributors

<table>
  <tr>
    <td><img src="https://avatars.githubusercontent.com/torienyart"></td>
  </tr>
  <tr>
    <td>Tori Enyart</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/torienyart">GitHub</a><br>
      <a href="https://www.linkedin.com/in/victoria-enyart-595052155/">LinkedIn</a>
    </td>
  </tr>
</table>

<p align="right">(<a href="#readme-top">back to top</a>)</p>
