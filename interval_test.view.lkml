view: interval_test {
  derived_table: {
    sql:
        SELECT 00:10:00::interval as interval UNION ALL
        SELECT 00:11:00::interval as interval UNION ALL
        SELECT 00:12:00::interval as interval UNION ALL
        SELECT 00:13:00::interval as interval UNION ALL
        SELECT 00:14:00::interval as interval
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
