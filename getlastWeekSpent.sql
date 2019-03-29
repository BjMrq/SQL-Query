SELECT
  *
FROM
  GAInterDecCampaignReport.CAMPAIGN_PERFORMANCE_REPORT
WHERE
  Date >= date(date_add(current_date(),
    if(dayofweek(current_date()) = 1,
        -6,
        -(dayofweek(current_date()) - 2)),
    "DAY"))
AND
  Date < date(date_add(current_date(),
    if(dayofweek(current_date()) = 1,
        -6,
        -(dayofweek(current_date()) -1)),
    "DAY"));
