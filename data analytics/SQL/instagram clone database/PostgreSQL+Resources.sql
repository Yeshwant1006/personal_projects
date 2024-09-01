select * from users
select * from photos
select * from photo_tags
select * from tags
select * from comments
select * from follows
select * from likes




insert into users(username, created_at) values('stylish_yeshwant','2017-06-10 14:22:56')
insert into users(username, created_at) values('____.abhhiiii.____','2020-05-31 15:40:38')
insert into users(username, created_at) values('m.a.n.o.j29','2015-10-31 10:30:21')










insert into photos(image_url, user_id, created_date) values('https://www.instagram.com/p/C3xsAULP01a1Q7aT5WTrjnVEzL-V0ib7mXEWZY0/?igsh=MTR2MnV0am1oM2RuaA==','1','2024-02-25 19:30:01');
insert into photos(image_url, user_id, created_date) values('https://www.instagram.com/p/C30AmiwPGxtWmoIVDOmj9Po5ZJzeevVOn2Jna80/?igsh=MXU4bGJtMHA1M2U4cg==','2','2024-02-26 22:15:10');
insert into photos(image_url, user_id, created_date) values('https://www.instagram.com/p/Coec-XUp-xFBj8GlMjCN070rmNz2QoRnnAnaqM0/','3','2023-02-10 17:15:12');










insert into photo_tags(photo_id, tag_id) values('1','1');
insert into photo_tags(photo_id, tag_id) values('2','1');
insert into photo_tags(photo_id, tag_id) values('3','2');











insert into tags(tag_name, created_at) values('light','2024-02-25 19:30:25');
insert into tags(tag_name, created_at) values('nature','2023-05-15 16:40:35');






insert into comments(comment_text, user_id, photo_id, created_at) values('rising from the depths, embracing the dawn 🤟','1','1','2024-02-25 19:30:58');
insert into comments(comment_text, user_id, photo_id, created_at) values('No ReCreaTions OnLy ReStarts 🥰','2','2','2024-02-26 22:17:58');
insert into comments(comment_text, user_id, photo_id, created_at) values('no comment','3','3','2023-02-10 9:30:58');













insert into follows(follower_id, followee_id, created_at) values('2','1','2021-02-25 20:30:05');
insert into follows(follower_id, followee_id, created_at) values('1','2','2021-02-25 21:30:05');
insert into follows(follower_id, followee_id, created_at) values('3','1','2021-02-25 20:30:05');





















insert into likes(user_id, photo_id, created_at) values('2','1','2024-02-25 21:02:56');
insert into likes(user_id, photo_id, created_at) values('1','2','2024-02-26 21:22:56');
insert into likes(user_id, photo_id, created_at) values('2','3','2024-02-25 21:02:56');