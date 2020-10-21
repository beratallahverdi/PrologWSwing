
% addDatabase('D:/eur.csv').
% deleteDatabase().
% updateDatabase('D:/eur.csv').

% insertData('D:/eur.csv','2018-12-29',1.1454,126.4,1.9558,'N/A',25.778,7.4673,'N/A',0.90273,321.61,'N/A','N/A','N/A',4.3028,'N/A',4.663,10.2773,'N/A','N/A',1.1227,133.2,9.9738,7.4095,79.5445,'N/A',6.04,1.6215,4.4427,1.5602,7.8778,8.9716,16639.28,4.3128,80.2255,1279.35,22.5554,4.7556,1.706,60.282,1.5642,37.317,16.4506).
% deleteData('D:/eur.csv','2018-12-29').
% updateData('D:/eur.csv','2018-12-29',2,126.4,1.9558,'N/A',25.778,7.4673,'N/A',0.90273,321.61,'N/A','N/A','N/A',4.3028,'N/A',4.663,10.2773,'N/A','N/A',1.1227,133.2,9.9738,7.4095,79.5445,'N/A',6.04,1.6215,4.4427,1.5602,7.8778,8.9716,16639.28,4.3128,80.2255,1279.35,22.5554,4.7556,1.706,60.282,1.5642,37.317,16.4506).

addDatabase(File):-
	csv_read_file(File, Rows, [functor(fact), arity(43)]),
	maplist(assert, Rows),
	write('CSV Veritabanina aktarildi.').

insertData(File,Date,USD,JPY,BGN,CYP,CZK,DKK,EEK,GBP,HUF,LTL,LVL,MTL,PLN,ROL,RON,SEK,SIT,SKK,CHF,ISK,NOK,HRK,RUB,TRL,TRY,AUD,BRL,CAD,CNY,HKD,IDR,ILS,INR,KRW,MXN,MYR,NZD,PHP,SGD,THB,ZAR):- 
	open(File, append, Out),
       	csv_write_stream(Out, [row(Date,USD,JPY,BGN,CYP,CZK,DKK,EEK,GBP,HUF,LTL,LVL,MTL,PLN,ROL,RON,SEK,SIT,SKK,CHF,ISK,NOK,HRK,RUB,TRL,TRY,AUD,BRL,CAD,CNY,HKD,IDR,ILS,INR,KRW,MXN,MYR,NZD,PHP,SGD,THB,ZAR,'')],[]),
       	close(Out),
	assert(fact(Date,USD,JPY,BGN,CYP,CZK,DKK,EEK,GBP,HUF,LTL,LVL,MTL,PLN,ROL,RON,SEK,SIT,SKK,CHF,ISK,NOK,HRK,RUB,TRL,TRY,AUD,BRL,CAD,CNY,HKD,IDR,ILS,INR,KRW,MXN,MYR,NZD,PHP,SGD,THB,ZAR,'')),
	write('Yeni Satir Eklendi').

deleteData(File,Date):-
	retract(fact(Date,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_)),
	open(File, write, Out),
               forall(fact(TDate,TUSD,TJPY,TBGN,TCYP,TCZK,TDKK,TEEK,TGBP,THUF,TLTL,TLVL,TMTL,TPLN,TROL,TRON,TSEK,TSIT,TSKK,TCHF,TISK,TNOK,THRK,TRUB,TTRL,TTRY,TAUD,TBRL,TCAD,TCNY,THKD,TIDR,TILS,TINR,TKRW,TMXN,TMYR,TNZD,TPHP,TSGD,TTHB,TZAR,_),
                     csv_write_stream(Out, [row(TDate,TUSD,TJPY,TBGN,TCYP,TCZK,TDKK,TEEK,TGBP,THUF,TLTL,TLVL,TMTL,TPLN,TROL,TRON,TSEK,TSIT,TSKK,TCHF,TISK,TNOK,THRK,TRUB,TTRL,TTRY,TAUD,TBRL,TCAD,TCNY,THKD,TIDR,TILS,TINR,TKRW,TMXN,TMYR,TNZD,TPHP,TSGD,TTHB,TZAR,'')], [])),
               close(Out),
	write('Satir Silindi').

updateData(File,Date,USD,JPY,BGN,CYP,CZK,DKK,EEK,GBP,HUF,LTL,LVL,MTL,PLN,ROL,RON,SEK,SIT,SKK,CHF,ISK,NOK,HRK,RUB,TRL,TRY,AUD,BRL,CAD,CNY,HKD,IDR,ILS,INR,KRW,MXN,MYR,NZD,PHP,SGD,THB,ZAR):- 
	retract(fact(Date,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_)),
	assert(fact(Date,USD,JPY,BGN,CYP,CZK,DKK,EEK,GBP,HUF,LTL,LVL,MTL,PLN,ROL,RON,SEK,SIT,SKK,CHF,ISK,NOK,HRK,RUB,TRL,TRY,AUD,BRL,CAD,CNY,HKD,IDR,ILS,INR,KRW,MXN,MYR,NZD,PHP,SGD,THB,ZAR,'')),
	open(File, write, Out),
               forall(fact(TDate,TUSD,TJPY,TBGN,TCYP,TCZK,TDKK,TEEK,TGBP,THUF,TLTL,TLVL,TMTL,TPLN,TROL,TRON,TSEK,TSIT,TSKK,TCHF,TISK,TNOK,THRK,TRUB,TTRL,TTRY,TAUD,TBRL,TCAD,TCNY,THKD,TIDR,TILS,TINR,TKRW,TMXN,TMYR,TNZD,TPHP,TSGD,TTHB,TZAR,_),
                     csv_write_stream(Out, [row(TDate,TUSD,TJPY,TBGN,TCYP,TCZK,TDKK,TEEK,TGBP,THUF,TLTL,TLVL,TMTL,TPLN,TROL,TRON,TSEK,TSIT,TSKK,TCHF,TISK,TNOK,THRK,TRUB,TTRL,TTRY,TAUD,TBRL,TCAD,TCNY,THKD,TIDR,TILS,TINR,TKRW,TMXN,TMYR,TNZD,TPHP,TSGD,TTHB,TZAR,'')], [])),
               close(Out),
	write('Satir Guncellendi').

deleteDatabase():-
	retractall(fact(_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_)),
	write('Veritabani Kaldirildi.').

updateDatabase(File):-
	deleteDatabase(),
	addDatabase(File).

getBetweenUSD(B1,B2,S,R):-
	fact(Date,USD,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_),number(USD),USD>B1,USD<B2,S=Date,R=USD.

getBetweenJPY(B1,B2,S,R):-
	fact(Date,_,JPY,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_),number(JPY),JPY>B1,JPY<B2,S=Date,R=JPY.

getBetweenGBP(B1,B2,S,R):-
	fact(Date,_,_,_,_,_,_,_,GBP,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_),number(GBP),GBP>B1,GBP<B2,S=Date,R=GBP.

getBetweenTRY(B1,B2,S,R):-
	fact(Date,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,TRY,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_),number(TRY),TRY>B1,TRY<B2,S=Date,R=TRY.
