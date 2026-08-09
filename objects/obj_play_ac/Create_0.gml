animations = [];
animation_count = 0;

function start(anim_curve, duration, cb) {
	++animation_count;
	var anim = {
		anim_curve: animcurve_get(anim_curve),
		duration: duration * 1000000,
		cb: cb,
		progress: 0
	};
	anim.channel_count = array_length(anim.anim_curve.channels);
	array_push(animations, anim);
}
