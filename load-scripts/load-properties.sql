INSERT INTO public.properties (key, value) VALUES ('twitter.api.oAuthConsumerKey' ,'MGgECzgt0ya6cOUdyFZW12aHy');
INSERT INTO public.properties (key, value) VALUES ('twitter.api.oAuthConsumerSecret' ,'zdv97q16Ftr6yAEGZZDpyGS9Dmb4I1hXMVUM0J5fa1ud9U5flJ');
INSERT INTO public.properties (key, value) VALUES ('twitter.api.oAuthAccessToken' ,'880501987187601408-4Dug6WDjzOT0FUOqtLOxG64JXzvxLx7');
INSERT INTO public.properties (key, value) VALUES ('twitter.api.oAuthAccessTokenSecret' ,'knqsFH82do67mbvRi65CbfzfOmdq3o7Q9W2NFWq0v8tNt');

INSERT INTO public.properties (key, value) VALUES ('twitter.publishPattern' ,'$DATE: $TEXT');
INSERT INTO public.properties (key, value) VALUES ('twitter.maxLength' ,'280');
INSERT INTO public.properties (key, value) VALUES ('twitter.storedDateFormat' ,'yyyy-MM-dd');
INSERT INTO public.properties (key, value) VALUES ('twitter.publishDateFormat' ,'dd-MM-yyyy');



update public.properties set value='yyyy-MM-dd' WHERE key = 'twitter.storedDateFormat';
update public.properties set value='dd-MM-yyyy' WHERE key = 'twitter.publishDateFormat';
update public.properties set value='$DATE: $TEXT' WHERE key = 'twitter.publishPattern';
