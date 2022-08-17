Task 3:
 Table - Tree (Parent)
    - id: (PK)
    - label: string
    * has_many :children

 Table - Tree (Child)
    - id: (PK)
    - label: string
    - parent_id: int (FK)
    * has_many :children
    * belongs_to :parent



Task 4:
<!-- GET all records -->
    SELECT
        *
    FROM
        trees
    WHERE
        parent_id IS NULL
    ORDER BY
        id


<!-- POST a record with a parent -->
    INSERT INTO
        trees(id, label, parent_id)
    VALUES
        ("<id>", "<label>","<parent_id>")


<!-- POST a record -->
INSERT INTO
        trees(id, label)
    VALUES
        ("<id>", "<label>")