CREATE TRIGGER insert_today_tweet_runtime_trgr
    AFTER INSERT
    ON public.tweets
    FOR EACH ROW
    EXECUTE PROCEDURE public.insert_today_tweet_runtime();
