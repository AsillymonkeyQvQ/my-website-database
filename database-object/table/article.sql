CREATE TABLE article (
    id                  INT                 NOT NULL
  , authorId            INT                 NOT NULL
  , parentId            INT                 NOT NULL
  , title               VARCHAR(75)         NOT NULL
  , summary             TINYTEXT            NOT NULL
  , banner              CHAR(20)            NOT NULL
  , published           CHAR(1)             NOT NULL
  , createdAt           DATETIME            NOT NULL
  , updatedAt           DATETIME            NULL
  , PRIMARY KEY (id)
);
