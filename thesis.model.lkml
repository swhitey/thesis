connection: "nfldb"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: agg_play {
  join: drive {
    type: left_outer
    sql_on: ${agg_play.drive_id} = ${drive.drive_id} ;;
    relationship: many_to_one
  }

  join: play {
    type: left_outer
    sql_on: ${agg_play.play_id} = ${play.play_id} ;;
    relationship: many_to_one
  }
}

# explore: drive {}
#
# explore: game {}
#
# explore: meta {}

# explore: play {
#   join: drive {
#     type: left_outer
#     sql_on: ${play.drive_id} = ${drive.drive_id} ;;
#     relationship: many_to_one
#   }
# }

explore: play_player {
  persist_for: "24 hours"
  join: player {
    type: left_outer
    sql_on: ${play_player.player_id} = ${player.player_id} ;;
    relationship: one_to_many
  }

  join: play {
    type: left_outer
    sql_on: ${play_player.play_id} = ${play.play_id} ;;
    relationship: many_to_one
  }

  join: drive {
    type: left_outer
    sql_on: ${play_player.drive_id} = ${drive.drive_id} ;;
    relationship: many_to_one
  }

  join: home_team {
    from: team
    type: inner
    sql_on: ${game.home_team} = ${home_team.team_id};;
    relationship: many_to_one
  }

  join: away_team {
    from:  team
    type: inner
    sql_on: ${game.away_team} = ${away_team.team_id} ;;
    relationship: many_to_one
  }

  join: player_team {
    from: team
    type: left_outer
    sql_on: ${play_player.team} = ${player_team.team_id} ;;
    relationship: many_to_one
  }

  join: game {
    type: left_outer
    sql_on: ${game.gsis_id} = ${play_player.gsis_id};;
    relationship: many_to_one
  }

}





explore: team {
#   hidden: yes
  join: player {
    type: inner
    sql_on: ${team.team_id} = ${player.team};;
    relationship: many_to_many
  }

  join: home_game {
    from:  game
    type: inner
    sql_on: ${home_game.home_team} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: away_game {
    from:  game
    type: inner
    sql_on: ${home_game.away_team} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: play_player {
    sql_on: ${play_player.team} = ${team.team_id} ;;
    type:  inner
    relationship: many_to_one
  }

}
