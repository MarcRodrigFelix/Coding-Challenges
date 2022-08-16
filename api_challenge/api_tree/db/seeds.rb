# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


# Tree.delete_all

bear = Tree.create({ label: "Bear"})

fox = bear.children.build(label: "Fox")
pig = bear.children.build(label: "Pig")
bear.save

ant = pig.children.build(label: "Ant")
dog = pig.children.build(label: "Dog")
pig.save