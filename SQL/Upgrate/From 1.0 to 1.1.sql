CREATE TABLE Groups (
    Id     INT          PRIMARY KEY
  , [Name] NVARCHAR(25) NOT NULL
);

CREATE TABLE Students (
    Id         INT           PRIMARY KEY
  , [Name]     NVARCHAR(255) NOT NULL
  , [Id_Group] INT
  , FOREIGN KEY(Id_Group) REFERENCES Groups(Id)
);

-- Для совместимости с SQLite нужно убрать буквы N перед строковыми литералами

INSERT INTO Groups VALUES (1, N'ТУУ-151');

INSERT INTO Students VALUES 
(1, N'Тимофеева Ольга',  1),
(2, N'Козлов Александр', 2),
(3, N'Степанова Юлия',   3);