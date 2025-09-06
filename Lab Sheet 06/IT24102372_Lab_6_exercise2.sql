create view TheaterCount as
select m.title,m.year,m.DirectorName,count(s.theaterName) as t_count
from Movie m,Show s
where m.title = s.movieTitle
group by m.title,m.year,m.DirectorName;

select * from TheaterCount;

create view TheaterInfo as
select t.theaterName,t.city,count(distinct s.movieTitle) as movie_count
from Theater T,Show S
where t.theaterName = s.theaterName
group by t.theaterName,t.city;

select * from TheaterInfo;

create function No_Movies_Acted (@StarName varchar(50))
returns int
as
begin
	declare @MovieCount int
	select @MovieCount = count(distinct s.movieTitle)
	from StarsIn s
	where s.starname = @StarName

	return @MovieCount
end;

declare @result int
exec @result = No_Movies_Acted 'Tom Holland'
print @result


create function No_Spectator_ (@TheaterName varchar(50))
returns int
as
begin
	declare @Spec_Count int
	select @Spec_Count = sum(s.spectators)
	from Show s
	where s.theaterName = @TheaterName

	return @Spec_Count
end;

declare @results int
exec @results = No_Spectator_ 'Electric'
print @results
