-- Truy vấn chính để lấy kết quả, sau đó sử dụng SLEEP()
SELECT 
    u.first_name, 
    u.last_name,
    u.status,
    u.comments,
    (SELECT COUNT(*) 
     FROM user u2 
     WHERE u2.status = 'active' 
       AND u2.last_name LIKE '%a%' 
       AND LENGTH(u2.comments) > 50
       AND u2.comments LIKE '%on%') AS active_count,  
    (SELECT COUNT(*) 
     FROM user u2 
     WHERE u2.status = 'disable' 
       AND u2.last_name LIKE '%a%' 
       AND LENGTH(u2.comments) > 50
       AND u2.comments LIKE '%on%') AS disable_count, 
    (SELECT COUNT(*) 
     FROM user u2 
     WHERE u2.last_name LIKE '%a%' 
       AND LENGTH(u2.comments) > 50
       AND u2.comments LIKE '%on%') AS total_filtered_user_count  
FROM 
    user u
WHERE 
    u.last_name LIKE '%a%' 
    AND LENGTH(u.comments) > 50 
    AND u.comments LIKE '%on%'
ORDER BY 
    u.first_name ASC;

SELECT SLEEP(3); 
