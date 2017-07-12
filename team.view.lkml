view: team {
  sql_table_name: public.team ;;

  dimension: team_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.team_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [team_id, name]
  }

  dimension: full_team {
    type: string
    sql:concat(${city},' ',${name}) ;;



  }

  dimension: full_team_color {

    type: string
    sql: ${full_team} ;;
    html: {% if team_id._value == 'ARI' %}
      <p style="color: white; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'ATL' %}
      <p style="color: red; background-color: black; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'BAL' %}
      <p style="color: purple; background-color: black; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'BUF' %}
      <p style="color: red; background-color: blue; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'CAR' %}
      <p style="color: black; background-color: teal; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'CHI' %}
      <p style="color: orange; background-color: navy; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'CIN' %}
      <p style="color: black; background-color: darkorange; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'CLE' %}
      <p style="color: sienna; background-color: darkorange; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'DAL' %}
      <p style="color: silver; background-color: darkblue; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'DEN' %}
      <p style="color: orange; background-color: navy; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'DET' %}
      <p style="color: silver; background-color: royalblue; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'GB' %}
      <p style="color: yellow; background-color: darkgreen; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'HOU' %}
      <p style="color: red; background-color: navy; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'IND' %}
      <p style="color: white; background-color: royalblue; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'JAC' %}
      <p style="color: silver; background-color: teal; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'KC' %}
      <p style="color: gold; background-color: Red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'LA' %}
      <p style="color: goldenrod; background-color: darkblue; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'MIA' %}
      <p style="color: orange; background-color: MediumAquaMarine ; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'MIN' %}
      <p style="color: gold; background-color: purple; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'NE' %}
      <p style="color: silver; background-color: navy; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'NO' %}
      <p style="color: goldenrod; background-color: black; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'NYG' %}
      <p style="color: red; background-color: royalblue; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'NYJ' %}
      <p style="color: white; background-color: green; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'OAK' %}
      <p style="color: silver; background-color: black; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'PHI' %}
      <p style="color: silver; background-color: darkseagreen; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'PIT' %}
      <p style="color: yellow; background-color: black; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'SD' %}
      <p style="color: yellow; background-color: navy; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'SEA' %}
      <p style="color: Chartreuse ; background-color: royalblue; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'SF' %}
      <p style="color: goldenrod; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'STL' %}
      <p style="color: goldenrod; background-color: darkblue; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'TB' %}
      <p style="color: grey; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'TEN' %}
      <p style="color: darkblue; background-color: lightcyan; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'WAS' %}
      <p style="color: yellow; background-color: darkred; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif team_id._value == 'UNK' %}
      <p style="color: black; background-color: white; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% else %}
      <p style="color: black; background-color: white; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %}
    ;;



  }


}
