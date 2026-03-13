instance_create_depth(270, 10, OBJ_MAX_DEPTH, obj_statement);
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
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
question_maximum_y = 140;
question_minimum_y = 20;

function spawn_question(){
	if !time_over{
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
			
			var msign = choose("+", "-");
			var c = choose(a+b, irandom(9));
			
			if msign == "+"{
				c = choose(a+b, irandom(9));
				mq.qanswer = string(a+b == c);
			}
			else{
				c = choose(a-b, irandom(9));
				mq.qanswer = string(a-b == c);
			}
			mq.qtext = string(a)+msign+string(b)+" = "+string(c);
		
		}
		mq.qspeed = min(6-(alarm[1]/576), 4);
	}
}
time_over = false;
cycles = 30;
minimum_time = 1.5;
maximum_time = 3;
alarm[0] = random_range(minimum_time, maximum_time)*room_speed;
alarm[1] = 96*cycles;
alarm[2] = 96; 
player_y_offset = 16;
player_height = 40;

