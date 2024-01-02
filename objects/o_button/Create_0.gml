og_text = "ERRORRRRRRRRRRRRRRRRRRR\nUNO\nDOS\nTRES";
text = og_text;
id_ = 0;

texts = string_split(text,"\n")

length = 0;
texts_amount = array_length(texts)

for (var i = 0; i < texts_amount; i++) {
	if (length < string_length(texts[i])) {
		length = string_length(texts[i]);
	}
}

image_xscale = length/4;
image_yscale = texts_amount/3;

cost = 0;
level = 0;

countdown = 60;
countdown_do = false;

lock = -1;
unlock = false;