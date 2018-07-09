view: sql_runner_query {
  derived_table: {
    sql: SELECT * FROM public.game LIMIT 10
      ;;
      sql_trigger_value: select trunc('minute',current_timestamp) ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: gsis_id {
    type: string
    sql: ${TABLE}.gsis_id ;;
  }

  dimension: gamekey {
    type: string
    sql: ${TABLE}.gamekey ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}.start_time ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: season_year {
    type: number
    sql: ${TABLE}.season_year ;;
  }

  dimension: season_type {
    type: string
    sql: ${TABLE}.season_type ;;
  }

  dimension: finished {
    type: string
    sql: ${TABLE}.finished ;;
  }

  dimension: home_team {
    type: string
    sql: ${TABLE}.home_team ;;
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

  dimension: home_turnovers {
    type: number
    sql: ${TABLE}.home_turnovers ;;
  }

  dimension: away_team {
    type: string
    sql: ${TABLE}.away_team ;;
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

  dimension: away_turnovers {
    type: number
    sql: ${TABLE}.away_turnovers ;;
  }

  dimension: time_inserted {
    type: string
    sql: ${TABLE}.time_inserted ;;
  }

  dimension: time_updated {
    type: string
    sql: ${TABLE}.time_updated ;;
  }

  set: detail {
    fields: [
      gsis_id,
      gamekey,
      start_time,
      week,
      day_of_week,
      season_year,
      season_type,
      finished,
      home_team,
      home_score,
      home_score_q1,
      home_score_q2,
      home_score_q3,
      home_score_q4,
      home_score_q5,
      home_turnovers,
      away_team,
      away_score,
      away_score_q1,
      away_score_q2,
      away_score_q3,
      away_score_q4,
      away_score_q5,
      away_turnovers,
      time_inserted,
      time_updated
    ]
  }
}
