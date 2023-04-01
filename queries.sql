
-- 1) 5 oldest users of instagram

select * from users
order by created_at asc
limit 5


-- 2) 5 most commonly used hashtags

select tag_id, count(photo_id) as counts from photo_tags
group by tag_id
order by counts desc
limit 5

select * from tags
where tag_id in (the result from abv query)

-- 3) users who never posted a photo

select users.username, count(photos.image_url) as counts from photos
full outer join users
on users.id = photos.user_id
group by users.username
having counts = 0

select * from users
where username in (result of the abv query)

-- 4) photo with most likes and its users details
select photo_id, count(user_id_liked) as counts from likes
group by photo_id
order by counts desc
limit 1

select * from users
where id = (result from abv query)


-- 5) Day of the week on which most users register

select DAYNAME(created_at) ad day_name, count(*) as all from users
group by day_name
order by all desc
limit 1 

-- 6) No. of post made by an avg user

select user_id, count(photo_post_date) as counts from photos
group by user_id

-- From the output it can be said that an average user post around 1 to 4 photos a day

-- 7) No. of users who've liked each and every photo

select user_id, count(photo_id) as counts from likes
group by user_id
having counts = 257  --here 257 is the total no. of photos

select * from users
where id in (results from abv query)



