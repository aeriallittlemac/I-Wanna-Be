event_inherited();

if global.day == 4 && global.storylines.Main_Classroom.Day_Four.talked_to.brooklyn{
obj_scribble.textbox_unnamed(@"What a massive pile of books
[/page]Wait, is there something under...
[/page]....vents?
");
}
else{
obj_scribble.textbox_unnamed(@"What a massive pile of books
[/page]This feels like it could be important later.
");

}