view: play_player {
  derived_table: {
    sql: select ROW_NUMBER () OVER (ORDER BY player_id) as pk, * from public.play_player ;;


  }
#   sql_table_name: public.play_player ;;

  dimension: pk {
    primary_key: yes
    sql: ${TABLE}.pk ;;

  }

  dimension: defense_ffum {
    type: number
    sql: ${TABLE}.defense_ffum ;;
  }
  measure: defense_forced_fumbles  {
    type: sum
    sql: ${defense_ffum} ;;

  }
  dimension: defense_ast {
    type: number
    sql: ${TABLE}.defense_ast ;;
  }

  dimension: defense_fgblk {
    type: number
    sql: ${TABLE}.defense_fgblk ;;
  }

  dimension: sfjdksjh {}

  dimension: defense_frec {
    type: number
    sql: ${TABLE}.defense_frec ;;
  }
  measure: defense_fumble_recovery  {
    type: sum
    sql: ${defense_frec} ;;

  }
  dimension: defense_frec_tds {
    type: number
    sql: ${TABLE}.defense_frec_tds ;;
  }
  measure:  defense_fumble_recovery_tds {
    type: sum
    sql: ${defense_frec_tds} ;;

  }
  dimension: defense_frec_yds {
    type: number
    sql: ${TABLE}.defense_frec_yds ;;
  }
  measure:  defense_fumble_recovery_yds {
    type: sum
    sql: ${defense_frec_yds} ;;

  }
  dimension: defense_int {
    type: number
    sql: ${TABLE}.defense_int ;;
  }
  measure:  defense_interceptions {
    type: sum
    sql: ${defense_int} ;;

  }


  dimension: defense_int_tds {
    type: number
    sql: ${TABLE}.defense_int_tds ;;
  }
  measure:  defense_interception_tds {
    type: sum
    sql: ${defense_int_tds} ;;

  }
  dimension: defense_int_yds {
    type: number
    sql: ${TABLE}.defense_int_yds ;;
  }

  measure:  defense_interception_yards {
    type: sum
    sql: ${defense_int_yds} ;;

  }

  dimension: defense_misc_tds {
    type: number
    sql: ${TABLE}.defense_misc_tds ;;
  }

  dimension: defense_misc_yds {
    type: number
    sql: ${TABLE}.defense_misc_yds ;;
  }

  dimension: defense_pass_def {
    type: number
    sql: ${TABLE}.defense_pass_def ;;
  }
  measure:  defense_passes_defended {
    type: sum
    sql: ${defense_pass_def} ;;

  }
  dimension: defense_puntblk {
    type: number
    sql: ${TABLE}.defense_puntblk ;;
  }

  dimension: defense_qbhit {
    type: number
    sql: ${TABLE}.defense_qbhit ;;
  }

  dimension: defense_safe {
    type: number
    sql: ${TABLE}.defense_safe ;;
  }

  measure: defensive_safeties {
    type: sum
    sql: ${TABLE}.defense_safe ;;

  }

  dimension: defense_sk {
    type: number
    sql: ${TABLE}.defense_sk ;;
  }

  measure: defense_sacks {
    type: sum
    sql: ${TABLE}.defense_sk ;;

  }

  dimension: defense_sk_yds {
    type: number
    sql: ${TABLE}.defense_sk_yds ;;
  }

  measure: defense_sack_yards  {
    type: sum
    sql: ${defense_sk_yds} ;;

  }

  dimension: defense_tkl {
    type: number
    sql: ${TABLE}.defense_tkl ;;
  }

  measure: tackles  {
    type: sum
    sql: ${defense_tkl} ;;

  }

  dimension: defense_tkl_loss {
    type: number
    sql: ${TABLE}.defense_tkl_loss ;;
  }

  measure: tackles_for_loss  {
    type: sum
    sql: ${defense_tkl_loss} ;;

  }

  dimension: defense_tkl_loss_yds {
    type: number
    sql: ${TABLE}.defense_tkl_loss_yds ;;
  }

  measure: tackles_for_loss_yards  {
    type: sum
    sql: ${defense_tkl_loss_yds} ;;

  }


  dimension: defense_tkl_primary {
    type: number
    sql: ${TABLE}.defense_tkl_primary ;;
  }

  dimension: defense_xpblk {
    type: number
    sql: ${TABLE}.defense_xpblk ;;
  }

  dimension: drive_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.drive_id ;;
  }

  dimension: fumbles_forced {
    type: number
    sql: ${TABLE}.fumbles_forced ;;
  }

  measure: forced_fumbles  {
    type: sum
    sql: ${fumbles_forced} ;;

  }

  dimension: fum_lost {
    type: number
    sql: ${TABLE}.fumbles_lost ;;
  }

  measure: fumbles_lost {
    type: sum
    sql: ${fum_lost} ;;

  }

  dimension: fumbles_notforced {
    type: number
    sql: ${TABLE}.fumbles_notforced ;;
  }

  dimension: fumbles_oob {
    type: number
    sql: ${TABLE}.fumbles_oob ;;
  }

  dimension: fumbles_rec {
    type: number
    sql: ${TABLE}.fumbles_rec ;;
  }

  measure: fumbles_recovered  {
    type: sum
    sql: ${fumbles_rec} ;;

  }

  dimension: fumbles_rec_tds {
    type: number
    sql: ${TABLE}.fumbles_rec_tds ;;
  }

  measure: fumble_recovery_tds  {
    type: sum
    sql: ${fumbles_rec_tds} ;;

  }

  dimension: fumbles_rec_yds {
    type: number
    sql: ${TABLE}.fumbles_rec_yds ;;
  }

  measure: fumble_recovery_yds  {
    type: sum
    sql: ${fumbles_rec_yds} ;;

  }

  dimension: fumbles_tot {
    type: number
    sql: ${TABLE}.fumbles_tot ;;
  }

  measure: fumbles_total  {
    type: sum
    sql: ${fumbles_tot} ;;

  }

  dimension: gsis_id {
    type: string
    sql: ${TABLE}.gsis_id ;;
  }

  dimension: kicking_all_yds {
    type: number
    sql: ${TABLE}.kicking_all_yds ;;
  }

  dimension: kicking_downed {
    type: number
    sql: ${TABLE}.kicking_downed ;;
  }

  dimension: kicking_fga {
    type: number
    sql: ${TABLE}.kicking_fga ;;
  }

  dimension: kicking_fgb {
    type: number
    sql: ${TABLE}.kicking_fgb ;;
  }

  dimension: kicking_fgm {
    type: number
    sql: ${TABLE}.kicking_fgm ;;
  }

  dimension: kicking_fgm_yds {
    type: number
    sql: ${TABLE}.kicking_fgm_yds ;;
  }

  dimension: kicking_fgmissed {
    type: number
    sql: ${TABLE}.kicking_fgmissed ;;
  }

  dimension: kicking_fgmissed_yds {
    type: number
    sql: ${TABLE}.kicking_fgmissed_yds ;;
  }

  dimension: kicking_i20 {
    type: number
    sql: ${TABLE}.kicking_i20 ;;
  }

  dimension: kicking_rec {
    type: number
    sql: ${TABLE}.kicking_rec ;;
  }

  dimension: kicking_rec_tds {
    type: number
    sql: ${TABLE}.kicking_rec_tds ;;
  }

  dimension: kicking_tot {
    type: number
    sql: ${TABLE}.kicking_tot ;;
  }

  dimension: kicking_touchback {
    type: number
    sql: ${TABLE}.kicking_touchback ;;
  }

  dimension: kicking_xpa {
    type: number
    sql: ${TABLE}.kicking_xpa ;;
  }

  dimension: kicking_xpb {
    type: number
    sql: ${TABLE}.kicking_xpb ;;
  }

  dimension: kicking_xpmade {
    type: number
    sql: ${TABLE}.kicking_xpmade ;;
  }

  dimension: kicking_xpmissed {
    type: number
    sql: ${TABLE}.kicking_xpmissed ;;
  }

  dimension: kicking_yds {
    type: number
    sql: ${TABLE}.kicking_yds ;;
  }

  dimension: kickret_fair {
    type: number
    sql: ${TABLE}.kickret_fair ;;
  }

  dimension: kickret_oob {
    type: number
    sql: ${TABLE}.kickret_oob ;;
  }

  dimension: kickret_ret {
    type: number
    sql: ${TABLE}.kickret_ret ;;
  }

  dimension: kickret_tds {
    type: number
    sql: ${TABLE}.kickret_tds ;;
  }

  dimension: kickret_touchback {
    type: number
    sql: ${TABLE}.kickret_touchback ;;
  }

  dimension: kickret_yds {
    type: number
    sql: ${TABLE}.kickret_yds ;;
  }

  dimension: passing_att {
    type: number
    sql: ${TABLE}.passing_att ;;
  }

  dimension: passing_cmp {
    type: number
    sql: ${TABLE}.passing_cmp ;;
  }

  dimension: passing_cmp_air_yds {
    type: number
    sql: ${TABLE}.passing_cmp_air_yds ;;
  }

  dimension: passing_incmp {
    type: number
    sql: ${TABLE}.passing_incmp ;;
  }

  dimension: passing_incmp_air_yds {
    type: number
    sql: ${TABLE}.passing_incmp_air_yds ;;
  }

  dimension: passing_int {
    type: number
    sql: ${TABLE}.passing_int ;;
  }

  dimension: passing_sk {
    type: number
    sql: ${TABLE}.passing_sk ;;
  }

  measure: sacked {
    type: sum
    sql: ${passing_sk} ;;

  }

  dimension: passing_sk_yds {
    type: number
    sql: ${TABLE}.passing_sk_yds ;;
  }

  measure: sacked_yards {
    type: sum
    sql: ${passing_sk_yds} ;;

  }

  dimension: passing_tds {
    type: number
    sql: ${TABLE}.passing_tds ;;
  }

  dimension: passing_twopta {
    type: number
    sql: ${TABLE}.passing_twopta ;;
  }

  dimension: passing_twoptm {
    type: number
    sql: ${TABLE}.passing_twoptm ;;
  }

  dimension: passing_twoptmissed {
    type: number
    sql: ${TABLE}.passing_twoptmissed ;;
  }

  dimension: passing_yds {
    type: number
    sql: ${TABLE}.passing_yds ;;
  }

  dimension: play_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.play_id ;;
  }

  dimension: player_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.player_id ;;
  }



  dimension: punting_blk {
    type: number
    sql: ${TABLE}.punting_blk ;;
  }

  dimension: punting_i20 {
    type: number
    sql: ${TABLE}.punting_i20 ;;
  }

  dimension: punting_tot {
    type: number
    sql: ${TABLE}.punting_tot ;;
  }

  dimension: punting_touchback {
    type: number
    sql: ${TABLE}.punting_touchback ;;
  }

  dimension: punting_yds {
    type: number
    sql: ${TABLE}.punting_yds ;;
  }

  dimension: puntret_downed {
    type: number
    sql: ${TABLE}.puntret_downed ;;
  }

  dimension: puntret_fair {
    type: number
    sql: ${TABLE}.puntret_fair ;;
  }

  dimension: puntret_oob {
    type: number
    sql: ${TABLE}.puntret_oob ;;
  }

  dimension: puntret_tds {
    type: number
    sql: ${TABLE}.puntret_tds ;;
  }

  dimension: puntret_tot {
    type: number
    sql: ${TABLE}.puntret_tot ;;
  }

  dimension: puntret_touchback {
    type: number
    sql: ${TABLE}.puntret_touchback ;;
  }

  dimension: puntret_yds {
    type: number
    sql: ${TABLE}.puntret_yds ;;
  }

  dimension: receiving_rec {
    type: number
    sql: ${TABLE}.receiving_rec ;;
  }

  measure: receptions {
    type: sum
    sql: ${receiving_rec} ;;
  }

  dimension: receiving_tar {
    type: number
    sql: ${TABLE}.receiving_tar ;;
  }

  measure: targets {
    type: sum
    drill_fields: [wrset*]
    sql: ${receiving_tar} ;;
  }

  dimension: receiving_tds {
    type: number
    sql: ${TABLE}.receiving_tds ;;
  }

  measure: receiving_touchdowns {
    type: sum
    drill_fields: [wrset*]
    sql: ${receiving_tds} ;;
  }

#   dimension: receiving_twopta {
#     type: number
#     sql: ${TABLE}.receiving_twopta ;;
#   }
#
#   dimension: receiving_twoptm {
#     type: number
#     sql: ${TABLE}.receiving_twoptm ;;
#   }
#
#   dimension: receiving_twoptmissed {
#     type: number
#     sql: ${TABLE}.receiving_twoptmissed ;;
#   }

  dimension: receiving_yac_yds {
    type: number
    sql: ${TABLE}.receiving_yac_yds ;;
  }

  measure: yards_after_catch {
    type: sum
    drill_fields: [wrset*]
    sql: ${receiving_yac_yds} ;;
  }

  dimension: receiving_yds {
    type: number
    sql: ${TABLE}.receiving_yds ;;
  }

  measure: receiving_yards {
    type: sum
    sql: ${receiving_yds};;
    drill_fields: []
  }

  dimension: rushing_att {
    type: number
    sql: ${TABLE}.rushing_att ;;
  }

  measure: carries {
    type: sum
    drill_fields: [rbset*]
    sql: ${rushing_att} ;;
  }

  dimension: rushing_loss {
    type: number
    sql: ${TABLE}.rushing_loss ;;
  }

  dimension: rushing_loss_yds {
    type: number
    sql: ${TABLE}.rushing_loss_yds ;;
  }

  dimension: rushing_tds {
    type: number
    sql: ${TABLE}.rushing_tds ;;
  }

  measure: rushing_touchdowns {
    type: sum
    drill_fields: [rbset*]
    sql: ${rushing_tds} ;;
  }
#   dimension: rushing_twopta {
#     type: number
#     sql: ${TABLE}.rushing_twopta ;;
#   }
#
#   dimension: rushing_twoptm {
#     type: number
#     sql: ${TABLE}.rushing_twoptm ;;
#   }
#
#   dimension: rushing_twoptmissed {
#     type: number
#     sql: ${TABLE}.rushing_twoptmissed ;;
#   }

  dimension: rushing_yds {
    type: number
    sql: ${TABLE}.rushing_yds ;;
  }


  measure: total_rushing_yards{
    type: sum
    drill_fields: [rbset*]
    sql: ${rushing_yds} ;;
  }

  measure: yards_per_carry {
    type: number
    value_format_name: decimal_1
    sql: ${total_rushing_yards}/nullif(${carries},0)  ;;

  }

  dimension: team {
    type: string
    sql: ${TABLE}.team ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }



  measure: all_purpose_yards {
    type: sum
    sql: ${passing_yds}+${rushing_yds}+${kickret_yds} ;;
    drill_fields: []
  }

  measure: passing_yards {
    type: sum
    sql: ${passing_yds} ;;
    drill_fields: [qbset*]
  }


  measure: total_rushing_tds {
    type: sum
    sql: ${rushing_tds};;
    drill_fields: [rbset*]
  }

  measure: passing_touchdowns {
    type: sum
    sql: ${passing_tds};;
    drill_fields: [qbset*]
  }

  measure: passing_attempts {
    type: sum
    sql: ${passing_att};;
    drill_fields: [qbset*]
  }

  measure: completed_passes{
    type: sum
    sql: ${passing_cmp};;
    drill_fields: [qbset*]
  }

  measure: incomplete_passes{
    type: sum
    sql: ${passing_incmp};;
    drill_fields: [qbset*]
  }

  measure: completion_percentage {
    type: number
    value_format_name: percent_2
    sql: ${completed_passes}/nullif(${passing_attempts},0);;
    drill_fields: [qbset*]
  }


  measure: turnovers {
    type: number
    sql: ${fumbles_lost} ;;
  }

  measure: interceptions_thrown {
    type: sum
    sql: ${passing_int};;
    drill_fields: [qbset*]
  }

  measure: fumbles {
    type: sum
    sql: ${fumbles_tot};;
    drill_fields: []
  }

  measure: yards_per_catch{
    type: number
    value_format_name: decimal_1
    sql: ${receiving_yards}/nullif(${receptions},0) ;;


  }

  measure: yards_per_attempt_ugly {
    type: number
    hidden: yes
    sql: ${passing_yards}/nullif(${passing_attempts},0) ;;
    drill_fields: [qbset*]
  }

  measure: yards_per_attempt {
    type: number
    value_format_name: decimal_1
    sql: ${passing_yards}/nullif(${passing_attempts},0) ;;
    drill_fields: [qbset*]
  }

  measure: tds_per_attempt {
    type: number
    value_format_name: decimal_1
    sql: ${passing_touchdowns}/nullif(${passing_attempts},0) ;;
    drill_fields: [qbset*]
  }

  measure: ints_per_attempt {
    type: number
    value_format_name: decimal_1
    sql: ${interceptions_thrown}/nullif(${passing_attempts},0) ;;
    drill_fields: [qbset*]
  }

  measure: passer_rating {
    type: number
    value_format_name: decimal_1
    sql: (((((${completion_percentage}-.3) * 5) + ((${yards_per_attempt_ugly}-.3) * .25) + (${tds_per_attempt}*20) + 2.375-(${ints_per_attempt}*25))/6)*100);;
  }



  # ----- Sets of fields for drilling ------
  set: qbset {
    fields: [
      player.full_name,
      player.position,
      play_player.completed_passes,
      play_player.passing_attempts,
      play_player.completion_percentage,
      play_player.passing_touchdowns,
      play_player.interceptions,
      play_player.fumbles
    ]
  }
  set: rbset {
  fields: [
    player.full_name,
    player.position
  ]
  }
  set: wrset {
  fields: [
    player.full_name,
    player.position
  ]

  }








}
