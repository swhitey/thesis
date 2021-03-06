view: game {
  derived_table: {
  sql: SELECT *,
CASE WHEN home_score > away_score THEN home_team WHEN away_score > home_score THEN away_team END as winner
FROM public.game
--WHERE season_year = '2015'
;;
}
  dimension: away_score {
    type: number
    sql: ${TABLE}.away_score ;;
  }

  dimension: away_score_q1 {
    type: number
    sql: ${TABLE}.away_score_q1 ;;
  }

  dimension: away_score_q2 {
    type: number
    sql: ${TABLE}.away_score_q2 ;;
  }

  dimension: winner {
    type: string
    sql: ${TABLE}.winner ;;
  }

  dimension: tier_test {
    type: tier
    tiers: [1,3,7]
    sql: ${away_score_q1} ;;

  }

  dimension: away_score_q3 {
    type: number
    sql: ${TABLE}.away_score_q3 ;;
  }

  dimension: away_score_q4 {
    type: number
    sql: ${TABLE}.away_score_q4 ;;
  }

  dimension: away_score_q5 {
    type: number
    sql: ${TABLE}.away_score_q5 ;;
  }

  dimension: away_team {
    type: string
    sql: ${TABLE}.away_team ;;
  }

  dimension: away_turnovers {
    type: number
    sql: ${TABLE}.away_turnovers ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: finished {
    type: yesno
    sql: ${TABLE}.finished ;;
  }

  dimension: gamekey {
    type: string
    sql: ${TABLE}.gamekey ;;
  }

  dimension: gsis_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.gsis_id ;;
  }

  dimension: home_score {
    type: number
    sql: ${TABLE}.home_score ;;
  }

  dimension: home_score_q1 {
    type: number
    sql: ${TABLE}.home_score_q1 ;;
  }

  dimension: home_score_q2 {
    type: number
    sql: ${TABLE}.home_score_q2 ;;
  }

  dimension: home_score_q3 {
    type: number
    sql: ${TABLE}.home_score_q3 ;;
  }

  dimension: home_score_q4 {
    type: number
    sql: ${TABLE}.home_score_q4 ;;
  }

  dimension: home_score_q5 {
    type: number
    sql: ${TABLE}.home_score_q5 ;;
  }

  dimension: home_team {
    type: string
    sql: ${TABLE}.home_team ;;
  }

  dimension: home_turnovers {
    type: number
    sql: ${TABLE}.home_turnovers ;;
  }

  dimension: season_type {
    type: string
    sql: ${TABLE}.season_type ;;
  }

  dimension: season_year {
    type: number
    sql: ${TABLE}.season_year ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_time ;;
  }

  dimension_group: time_inserted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time_inserted ;;
  }

  dimension_group: time_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time_updated ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
    link: {
      url: "https://localhost:9999/explore2/thesis/game?fields=game.week,game.winner&f[game.time_updated_week]={{value}}&sorts=game.week&limit=500&vis=%7B%7D&filter_config=%7B%22game.time_updated_week%22%3A%5B%7B%22type%22%3A%22past%22%2C%22values%22%3A%5B%7B%22constant%22%3A%224%22%2C%22unit%22%3A%22wk%22%7D%2C%7B%7D%5D%2C%22id%22%3A0%7D%5D%7D&origin=share-expanded"
      label: " linnk"

    }
  }

  measure: count {
    type: count
    drill_fields: []
    filters: {
      field: "finished"
      value: "%"


    }
  }

  measure: wins {
    type: count_distinct
    sql: ${winner};;
  }





}
