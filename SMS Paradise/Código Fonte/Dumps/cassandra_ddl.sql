

create table newbuy (
	cellphone		text,
	clientname		text,
	sms_text		text,
	orderid			text,
	products		list<text>,
	allowedbyuser	int,
	answered		int,
	primary key (cellphone, orderid)
);


create table chatbotsession (
	cellphone		text,
	clientname		text,
	sessionid		text,
	answers			list<text>,
	payloads		list<text>,
	products		list<text>,
	wasselled		int,
	issessionended	int,
	inclusion		timestamp,
	primary key (cellphone, inclusion, sessionid)
) WITH CLUSTERING ORDER BY (inclusion DESC, sessionid ASC);


select * from newbuy;
select * from chatbotsession;

