-- List all shows and genres linked to show from 'hbtn_0d_tvshows'
-- If show doesn't have a genre, display NULL in genre column
-- Each record should display tv_shows.title, tv_genres.name
-- Results must be sorted in ascending order by show title
-- You can only use one SELECT statement

SELECT a.title, c.name
FROM tv_shows AS a
LEFT JOIN tv_show_genres AS b
ON a.id = b.show_id
LEFT JOIN tv_genres AS c
ON b.genre_id = c.id
ORDER BY a.title ASC, c.name ASC;
