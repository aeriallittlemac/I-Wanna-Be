
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
player_score = 0;
blue = 0;
red = 0;
yellow = 0;
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
time_to_answer = 6;
countdown = time_to_answer;
results = false;
results_countdown = 1.5;

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
    question_text : "7+9 = 21",
    question_answer : true
},
{
    question_text : "4*6 = 24",
    question_answer : true
},
{
    question_text : "9*9 = 79",
    question_answer : false
},
{
    question_text : "2*7 = 16",
    question_answer : false
},
{
    question_text : "1/0 = 0",
    question_answer : false
},
{
    question_text : "8*5 = 30",
    question_answer : false
},
{
    question_text : "7*9 = 63",
    question_answer : true
},
{
    question_text : "11 is a prime number",
    question_answer : true
},
{
    question_text : "51 is a prime number",
    question_answer : false
},
{
    question_text : "91 is a prime number",
    question_answer : false
},
{
    question_text : "Mr. Chen deserves a raise",
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
	randomise();
	var question_indexes = array_create(array_length(question_list), [0]);
	for(var i = 0; i<array_length(questions_displayed); i++){
		var index =  irandom(array_length(question_list)-1);
		while(question_indexes[index]==0){
			index =  irandom(array_length(question_list)-1);
		}
		questions_displayed[i] =index;
		array_set(question_indexes, index, 0);
	}
	blue = irandom(2) + 1;
	red = irandom(2) + 1;
	yellow = irandom(2) + 1;
	green = max(7 - blue - red - yellow, 0);
}
newDisplayQuestions();