$('#datepicker').datepicker({
    format : 'yyyy-mm-dd',
    weekStart: 1,
    startDate: '2013-01-01',
    endDate: '2015-12-31',
    daysOfWeekDisabled: [2,3]
});

$('#datepickerMonFri').datepicker({
    format : 'yyyy-mm-dd',
    weekStart: 1,
    startDate: '2013-01-01',
    endDate: '2015-12-31',
    daysOfWeekDisabled: [0,2,3,4,6]
});

$('#datepickerThurSun').datepicker({
    format : 'yyyy-mm-dd',
    weekStart: 1,
    startDate: '2013-01-01',
    endDate: '2015-12-31',
    daysOfWeekDisabled: [1,2,3,5,6]
});

$('#datepickerSat').datepicker({
    format : 'yyyy-mm-dd',
    weekStart: 1,
    startDate: '2013-01-01',
    endDate: '2015-12-31',
    daysOfWeekDisabled: [0,1,2,3,4,5]
});