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
 