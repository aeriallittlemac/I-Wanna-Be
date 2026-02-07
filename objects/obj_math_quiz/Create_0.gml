instance_create_depth(270, 60, OBJ_MAX_DEPTH, obj_statement);
player_score = 0;
display_player_score_string = "";
default_pixel_font = font_add("joystix monospace.otf", 28, false, false, 32, 128);
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
    question_text : "Tiananmen Square.",
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
question_maximum_y = 140;
question_minimum_y = 20;
qtext_sep = 2;
qtest_width = 50;

function spawn_question(){
	var mq = instance_create_depth(270, irandom_range(question_minimum_y, question_maximum_y), OBJ_MAX_DEPTH, obj_math_question);
	if irandom(1){
		var question_number = irandom(array_length(question_list)-1);
		mq.qtext = question_list[question_number].question_text;
		mq.qanswer = question_list[question_number].question_answer;
	}
	else{
		var a = irandom(9);
		var b = irandom(9);
		if b>a{
			var temp = a;
			a = b;
			b = temp;
		}
		var c = choose(a+b, irandom(9));
		var msign = choose("+", "-");
		mq.qtext = string(a)+msign+string(b)+" = "+string(a+b);
		if msign == "+"{
			mq.qanswer = string(a+b == c);
		}
		else{
			mq.qanswer = string(a-b == c);
		}
		
	}
	mq.collision_length = string_width_ext(mq.qtext, qtext_sep, qtest_width)
	mq.collision_height = string_height_ext(mq.qtext, qtext_sep, qtest_width)

}
minimum_time = 2;
maximum_time = 3;
alarm[0] = random_range(minimum_time, maximum_time)*room_speed;
alarm[1] = 180*room_speed;

