
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
player_score = 0;
blue = 1;
red = 2;
yellow = 3;
green = 0;
rect_one_x = 188;
rect_one_y = 250;
rect_width = 70;
rect_height_unit = 50;
rect_margins = 50;


question_zero_x = 30;
question_zero_y = 385;
question_x_margin = 400;
question_y_margin = 90;
question_width = 600;
question_line_sep = 40;
time_to_answer = 15;
countdown = time_to_answer;
results = false;
results_countdown = 3.5;

selection = 0;
questions_displayed = [0,0,0,0];
answer = 0;

alarm[0] = room_speed;

display_player_score_string = "";
default_pixel_font = font_add("joystix monospace.otf", 35, false, false, 32, 128);
question_pixel_font = font_add("joystix monospace.otf", 25, false, false, 32, 128);
question_list = [
{
    question_text : "Your parents are proud of you.",
    question_answer : false
},
{
    question_text : "Life is meaningless suffering.",
    question_answer : true
},
{
    question_text : "Alimony is legal theft.",
    question_answer : true
},
{
    question_text : "The world runs on money.",
    question_answer : true
},
{
    question_text : "Holocaust",
    question_answer : false
},
{
    question_text : "Tiananmen Square massacre.",
    question_answer : false
},
{
    question_text : "There are no real elections",
    question_answer : true
},
{
    question_text : "Mr. Chen deserves a raise",
    question_answer : true
},

]
function displayResults(){
	results = true;
	alarm[1] = results_countdown * room_speed;
	alarm[0] = -1;
}

function newDisplayQuestions(){
	for(var i = 0; i<array_length(questions_displayed); i++){
		questions_displayed[i] = irandom(array_length(question_list));
	}
}
newDisplayQuestions();