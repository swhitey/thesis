view: player {
  sql_table_name: public.player ;;

  dimension: player_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.player_id ;;
  }

  dimension: birthdate {
    type: string
    sql: ${TABLE}.birthdate ;;
  }

  dimension: college {
    type: string
    sql: ${TABLE}.college ;;
  }

  # measure: contains {
  #   type: yesno

  #   filters: {
  #     field: college
  #     value: "%alabama%"
  #   }
  #   filters: {
  #     field: college
  #     value: "%Alabama%"
  #   }

  # }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
#
  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }

  dimension: gsis_name {
    type: string
    sql: ${TABLE}.gsis_name ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

#   dimension: full_name_link{
#     type: string
#     sql:  CASE WHEN ${position} = 'QB' THEN ${qb_drill}
#            WHEN ${position} = 'WR' THEN ${wr_drill}
#            WHEN ${position} = 'RB' THEN ${rb_drill}
#            WHEN ${position} in ('OLB','ILB','MLB','SS','SAF','CB','DB','FS','LB') THEN ${d_drill}
#           else ${full_name}
#           END
#           ;;
#
#
#   }

  dimension: qb_drill {
    type: string
    sql: ${TABLE}.full_name ;;
    link: {
      label: "QB Dashboard"
      url: "https://localhost:9999/dashboards/4?Name={{ filterable_value }}&Season_Type={{ _filters['game.season_type'] | url_encode }}&Year={{ _filters['game.season_year']}}"
    }

  }

  dimension: wr_drill {
    type: string
    sql: ${TABLE}.full_name ;;
    link: {
      label: "WR Dashboard"
      url: "https://localhost:9999/dashboards/8?Name={{ filterable_value }}&Season_Type={{ _filters['game.season_type'] | url_encode }}&Year={{ _filters['game.season_year']}}"
    }

  }

  dimension: rb_drill {
    type: string
    sql: ${TABLE}.full_name ;;
    link: {
      label: "RB Dashboard"
      url: "https://localhost:9999/dashboards/7?Name={{ filterable_value }}&Season_Type={{ _filters['game.season_type'] | url_encode }}&Year={{ _filters['game.season_year']}}"
    }

  }

  dimension: d_drill {
    type: string
    sql: ${TABLE}.full_name ;;
    link: {
      label: "Defense Dashboard"
      url: "https://localhost:9999/dashboards/10?Name={{ filterable_value }}&Season_Type={{ _filters['game.season_type'] | url_encode }}&Year={{ _filters['game.season_year']}}"
    }
  }

  dimension: profile_id {
    type: number
    sql: ${TABLE}.profile_id ;;
  }

  dimension: profile_url {
    type: string
    sql: ${TABLE}.profile_url ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.team ;;
  }

  dimension: uniform_number {
    type: number
    sql: ${TABLE}.uniform_number ;;
  }

  dimension: weight {
    type: string
    sql: concat(${TABLE}.weight, 'lbs' );;
  }

  dimension: years_pro {
    type: number
    sql: ${TABLE}.years_pro ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      player_id,
      last_name,
      first_name,
      full_name,
      gsis_name,
      play_player.count
    ]
  }
}
