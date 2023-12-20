/* //Home work
// Input 
//Start Date: 14-12-2023
//End Date : 25-04-2024

//Output
14-12-2023 // 1+4 = 5, 14+5 = 19
19-12-2023 // 1+9 = 10, 19+10 = 29
29-12-2023 // 2+9=11, 29+11 = 40, 40-31= 9
09-01-2024 //
.............
25-04-2024 */

//Inputs
Date startDate  = Date.newInstance(2023, 12, 14);
Date endDate    = date.newInstance(2024, 4, 25);

System.debug('Start Date: ' + startDate);
System.debug('End Date: ' + endDate);
System.debug(startDate < endDate);
System.debug('========================');

//Date nextDate = Date.newInstance(startDate.year(), startDate.month(), nextDay);
while(startDate < endDate) {
    Integer startDay = startDate.day();//14/10= 1, 14%10 = 4
    Integer q = startDay/10;
    Integer r = Math.mod(startDay, 10); //startDay%10;
    //Integer s = q + r;
    //Integer nextDay = startDay + s; //19// 25+7 = 32

    Date nextDate = startDate.addDays((q + r));
    Date mondayDate = UserInfo.getLocale() == 'en_GB'? nextDate.toStartOfWeek() : nextDate.toStartOfWeek().addDays(1);
    // Date mondayDate =  nextDate.toStartOfWeek().addDays(1);
    System.debug('generated Date: ' + nextDate);
    if( mondayDate == nextDate)
        System.debug('Monday Date: ' + mondayDate);
    startDate = nextDate;
}

System.debug('========================');
System.debug(startDate < endDate);

System.debug(Date.today().toStartOfWeek());

//Monday Date: 2024-02-05 00:00:00
//Monday Date: 2024-04-08 00:00:00

/* 09:57:58.66 (67333204)|USER_DEBUG|[4]|DEBUG|Start Date: 2023-12-14 00:00:00
09:57:58.66 (67372844)|USER_DEBUG|[5]|DEBUG|End Date: 2024-04-25 00:00:00
09:57:58.66 (67406646)|USER_DEBUG|[6]|DEBUG|true
09:57:58.66 (67443042)|USER_DEBUG|[7]|DEBUG|========================
09:57:58.66 (69060952)|USER_DEBUG|[18]|DEBUG|generated Date: 2023-12-19 00:00:00
09:57:58.66 (69176980)|USER_DEBUG|[18]|DEBUG|generated Date: 2023-12-29 00:00:00
09:57:58.66 (69242634)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-01-09 00:00:00
09:57:58.66 (69302097)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-01-18 00:00:00
09:57:58.66 (69358816)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-01-27 00:00:00
09:57:58.66 (69418653)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-02-05 00:00:00
09:57:58.66 (69473517)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-02-10 00:00:00
09:57:58.66 (69528593)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-02-11 00:00:00
09:57:58.66 (69583749)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-02-13 00:00:00
09:57:58.66 (69649096)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-02-17 00:00:00
09:57:58.66 (69704978)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-02-25 00:00:00
09:57:58.66 (69759652)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-03-03 00:00:00
09:57:58.66 (69814543)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-03-06 00:00:00
09:57:58.66 (69870075)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-03-12 00:00:00
09:57:58.66 (69924583)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-03-15 00:00:00
09:57:58.66 (69978403)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-03-21 00:00:00
09:57:58.66 (70057288)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-03-24 00:00:00
09:57:58.66 (70115910)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-03-30 00:00:00
09:57:58.66 (70170274)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-04-02 00:00:00
09:57:58.66 (70225045)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-04-04 00:00:00
09:57:58.66 (70279436)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-04-08 00:00:00
09:57:58.66 (70334828)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-04-16 00:00:00
09:57:58.66 (70397368)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-04-23 00:00:00
09:57:58.66 (70444026)|USER_DEBUG|[18]|DEBUG|generated Date: 2024-04-28 00:00:00
09:57:58.66 (70477702)|USER_DEBUG|[22]|DEBUG|========================
09:57:58.66 (70505895)|USER_DEBUG|[23]|DEBUG|false */