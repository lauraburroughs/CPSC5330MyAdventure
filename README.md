<h1>MyAdventure App</h1>

<h2>Overview</h2>
<p>MyAdventure is a simple iOS “choose your own adventure” application built with Swift and UIKit. Users read a short story and make choices that branch the narrative, leading to successful or unsuccessful endings based on their decisions.</p>
<p>This app was built using concepts from Module 5 in CPSC 5330.</p>

<h2>Features</h2>
<ul>
<li>Interactive, branching story structure</li>
<li>Two-choice decision points</li>
<li>Multiple possible endings (success and failure)</li>
<li>Clean separation of Model, View, and Controller (MVC)</li>
<ul>
  <li>Responsive layout that works across:
<li>iPhone and iPad</li>
<li>Portrait and landscape orientations</li>
<li>All size classes</li>
</ul></ul>


<h2>Architecture</h2>
<p>The app follows the MVC (Model–View–Controller) pattern:</p>


<h3>Model</h3>
<ul>
  <li>StoryNode: Represents a point in the story</li>
  <li>Choice: Represents a user decision and its destination node</li>
</ul>
<h3>View</h3>
<ul>
<li>UILabel for story text</li>
<li>UIButtons for user choices</li>
<li>Auto Layout and stack views for responsive design</li>
</ul>
<h3>Controller</h3>
<ul>
  <li>ViewController manages:</li>
<ul>
<li>Current story state</li>
<li>User input via button taps</li>
<li>Navigation between story nodes</li>
<li>UI updates</li>
</ul>
</ul>


<h2>How It Works</h2>
<ol>
<li>The story is represented as an array of StoryNode objects.</li>
<li>Each node contains:
<ul>
<li>Story text</li>
<li>Available choices</li>
<li>Ending status (success or failure)</li>
</ul></li>
<li>When a user taps a button:
<ul>
  <li>The app determines which choice was selected</li>
  <li>Advances to the appropriate next story node</li>
  <li>Updates the UI accordingly</li>
</ul>
</li>
</ol>


<h2>Requirements Met</h2>
<p>This project satisfies all assignment requirements:</p>
<ul>
<li>Uses a class/struct to associate adventure choices</li>
<li>Provides users with multiple choices</li>
<li>Ends the adventure successfully or unsuccessfully</li>
<li>Refactored using MVC pattern</li>
<li>Runs correctly across all size classes, including iPad and landscape</li>
</ul>
