SELECT 
    DISTINCT(author_id) id
FROM Views
WHERE author_id = viewer_id
ORDER BY 1 ASC;