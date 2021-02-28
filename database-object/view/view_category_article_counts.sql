CREATE VIEW view_category_article_counts(
    id
  , name
  , counts
) AS
SELECT
    c1.id
  , c1.name
  , COUNT(*) AS counts
FROM category c1
LEFT JOIN category c2
  ON c2.parentId = c1.id
LEFT JOIN article_category ac
  ON (ac.categoryId = c1.id OR ac.categoryId = c2.id)
GROUP BY
    c1.id
  , c1.name
;