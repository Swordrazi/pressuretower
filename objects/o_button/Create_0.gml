text = " ";
id_ = 0;

texts = string_split(text,"\n")texts = string_split(text,"\n")

length = 0;
texts_amount = array_length(texts)

for (var i = 0; i < texts_amount; i++) {
	if (length < string_width(texts[i])) {
		length = string_width(texts[i]);
	}
}

image_xscale = length*2/(font_get_size(font1)*font_get_size(font1));
image_yscale = texts_amount*4/font_get_size(font1);

cost = 0;
level = 0;

countdown = 60;
countdown_do = false;

lock = -1;
unlock = false;

on = false;

prestige = true;