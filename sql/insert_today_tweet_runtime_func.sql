CREATE FUNCTION public.insert_today_tweet_runtime()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$

    DECLARE
        today_day INTEGER;
        today_month INTEGER;

    BEGIN
        today_day = Extract(day from now());
        IF today_day = Extract(day from NEW.eventdate) THEN
            today_month = Extract(month from now());

            IF today_month = Extract(month from NEW.eventdate)  THEN 
                INSERT INTO public.today_tweets (tweet, eventdate, author, image1, image2, image3, image4, id, row_status)
                values (NEW.tweet, NEW.eventdate, NEW.author, NEW.image1, NEW.image2, NEW.image3, NEW.image4, NEW.id, 1);
            END IF;
        END IF;

        RETURN NEW;

    END;

$BODY$;

ALTER FUNCTION public.insert_today_tweet_runtime()
    OWNER TO rockholidays;
