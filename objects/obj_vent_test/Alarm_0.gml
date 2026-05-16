if new_test_hex_rotation < test_hex_rotation{
	test_hex_rotation -= 3;
	alarm[0] = 1;
}
else{
	
	test_hex_index++;
	alarm[0] = -1;
	test_hex_rotation = new_test_hex_rotation;
	new_test_hex_rotation-=60;
}
