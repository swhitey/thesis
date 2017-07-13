
# NFL Data - 2009-2015
<body><br>
<p> Welcome to my thesis project!</p><br>
<p>This dataset is collected from NFL Gamecenter JSON Data using an API called nfldb (<a href="https://github.com/BurntSushi/nflgame">here</a>). It contains play-by-play data for the seasons 2009-2015 and could be updated with the nfldb module. The most important table is play-player. This is a denormalized event style table that contains rows for every player invloved in every play. One play will have multiple rows in play player if more than one player recorded a statistic on the play. This table and Explore is where the majority of player statistics are modeled.

<br><p>A good starting place is the <a href="https://localhost:9999/dashboards/3">Leaderboard Dash</a> This has has the top ten players in each positional grouping sorted by a metric I've deemed most relevent.

<p>There are also player lookup dashboards for positional groups.</p>
<a href="https://localhost:9999/dashboards/4">QB Dashboard</p><br>
<a href="https://localhost:9999/dashboards/7">RB Dashboard</p><br>
<a href="https://localhost:9999/dashboards/8">WR Dashboard</p><br>
<a href="https://localhost:9999/dashboards/9">Defensive Dashboard</p>



<br><br> <a href="http://burntsushi.net/stuff/nfldb/nfldb-condensed.pdf">ER Diagram</a>
<br>
<a href="https://github.com/BurntSushi/nfldb/wiki/Statistical-categories">Description of Fields</a>
</body>
</html>
