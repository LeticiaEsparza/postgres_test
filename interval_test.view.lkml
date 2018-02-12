view: interval_test {
  derived_table: {
    sql:
        SELECT 10::interval as interval UNION ALL
        SELECT 11::interval as interval UNION ALL
        SELECT 12::interval as interval UNION ALL
        SELECT 13::intercal as interval UNION ALL
        SELECT 14::interval as interva
    ;;

  }

  dimension: interval {
    type: number
    sql:  ${TABLE}.interval;;
  }

  dimension: interval_in_seconds {
    type: number
    sql: EXTRACT(EPOCH FROM ${TABLE}.interval) ;;

}


}
# view: int_format {
#   derived_table: {
#     sql:
#     select 123456::int as int,  1236::smallint as tinyint union all
#     select 1234567::int as int,  1234::smallint as tinyint
#      ;;}
#   dimension: int {
#     type: number
#   }
#   dimension: tinyint {
#     type: number
#   }
