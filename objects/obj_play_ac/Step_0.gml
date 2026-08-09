for (var i = 0; i < animation_count; ++i) {
	var anim = animations[i];
	if (anim.progress >= anim.duration) {
		array_delete(animations, i, 1);
		--i;
		--animation_count;
		continue;
	}
	anim.progress = clamp(anim.progress + delta_time, 0, anim.duration);
	var values = {};
	for (var j = 0; j < anim.channel_count; ++j) {
		var channel = anim.anim_curve.channels[j];
		values[$channel.name] = animcurve_channel_evaluate(channel, anim.progress / anim.duration);
	}
	anim.cb(values);
}
