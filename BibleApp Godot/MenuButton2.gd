extends MenuButton

var popup

func _ready():
    popup = get_popup()
    popup.add_item("Matthew.txt")
    popup.add_item("Mark.txt")
    popup.add_item("Luke.txt")
    popup.add_item("John.txt")
    popup.add_item("Acts.txt")
    popup.add_item("Romans.txt")
    popup.add_item("1 Corinthians.txt")
    popup.add_item("2 Corinthians.txt")
    popup.add_item("Galatians.txt")
    popup.add_item("Ephesians.txt")
    popup.add_item("Philippians.txt")
    popup.add_item("Colossians.txt")
    popup.add_item("1 Thessalonians.txt")
    popup.add_item("2 Thessalonians.txt")
    popup.add_item("1 Timothy.txt")
    popup.add_item("2 Timothy.txt")
    popup.add_item("Titus.txt")
    popup.add_item("Philemon.txt")
    popup.add_item("Hebrews.txt")
    popup.add_item("James.txt")
    popup.add_item("1 Peter.txt")
    popup.add_item("2 Peter.txt")
    popup.add_item("1 John.txt")
    popup.add_item("2 John.txt")
    popup.add_item("3 John.txt")
    popup.add_item("Jude.txt")
    popup.add_item("Revelation.txt")
    popup.connect("id_pressed", self, "_on_item_pressed")


func _on_item_pressed(ID):
    print(popup.get_item_text(ID), " pressed")
    var edit = get_node("/root/Node2D/TextEdit")
    var file = File.new()
    file.open("res://" +popup.get_item_text(ID), File.READ)
    var result = {}
    var f = File.new()
    f.open("res://" +popup.get_item_text(ID), File.READ)
    var index = 1
    edit.set_text(f.get_as_text())  
  #  edit.set_wrap(true)
    f.close()    
