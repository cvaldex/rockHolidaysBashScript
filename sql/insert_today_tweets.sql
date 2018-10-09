INSERT INTO public.today_tweets (tweet, eventdate, author, image1, image2, image3, image4, id)
(
	SELECT tweet, eventdate, author, image1, image2, image3, image4, id FROM public.tweets
	WHERE  Extract(month from eventdate) = Extract(month from to_date(:a_date, 'YYYY-MM-DD'))
	AND    Extract(day from eventdate) = Extract(day from to_date(:a_date, 'YYYY-MM-DD'))
	AND id NOT IN (SELECT DISTINCT id FROM public.today_tweets)
)
