connection: "nfldb"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: play {

  join: drive {
    type: left_outer
    sql_on: ${play.drive_id} = ${drive.drive_id} ;;
    relationship: many_to_one
  }

  join: game {
    type: left_outer
    sql_on: ${play.gsis_id} = ${game.gsis_id} ;;
    relationship: many_to_one
  }

  join: play_player {
    type: left_outer
    sql_on: ${play.play_id} = ${play_player.play_id};;
    relationship: many_to_many
  }

  join: player {
    type: left_outer
    sql_on: ${play_player.player_id} = ${player.player_id} ;;
    relationship: many_to_many
  }

  join: team {
    type: left_outer
    sql_on: ${play_player.team} = ${team.team_id} ;;
    relationship: many_to_many
  }

  join: agg_play {
    type: left_outer
    sql_on: ${play.play_id} = ${agg_play.play_id} ;;
    relationship: many_to_many
  }


}








#
#
#
# # explore: agg_play {
# #   join: drive {
# #     type: left_outer
# #     sql_on: ${agg_play.drive_id} = ${drive.drive_id} ;;
# #     relationship: many_to_one
# #   }
# #
# #   join: play {
# #     type: left_outer
# #     sql_on: ${agg_play.play_id} = ${play.play_id} ;;
# #     relationship: many_to_one
# #   }
# # }
#
# explore: drive {}
#
# explore: game {}
#
# explore: meta {}
#
# explore: play {
#   join: drive {
#     type: left_outer
#     sql_on: ${play.drive_id} = ${drive.drive_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: play_player {
#   join: player {
#     type: left_outer
#     sql_on: ${play_player.player_id} = ${player.player_id} ;;
#     relationship: many_to_one
#   }
#
#   join: play {
#     type: left_outer
#     sql_on: ${play_player.play_id} = ${play.play_id} ;;
#     relationship: many_to_one
#   }
#
#   join: drive {
#     type: left_outer
#     sql_on: ${play_player.drive_id} = ${drive.drive_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: player {}
#
# explore: team {}
