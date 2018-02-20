view: interval_test {
  derived_table: {
    sql:
        SELECT '3 hours 20 minutes'::interval as interval UNION ALL
        SELECT '2 hours 20 minutes'::interval as interval UNION ALL
        SELECT '1 hours 20 minutes'::interval as interval UNION ALL
        SELECT '20 minutes'::interval as interval UNION ALL
        SELECT '10 minutes'::interval as interval
    ;;

  }

#   dimension: interval {
#     type: number
#     sql:  ${TABLE}.interval;;
#   }

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
