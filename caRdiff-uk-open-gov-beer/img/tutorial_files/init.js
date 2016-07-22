jQuery(function($) {
	var full = $("<div class='chapters'><div class='chapterHeader'>Table of contents</div></div>");
	var counter = 0;
	$(".entry-content h5").each(function() {
		var content = $(this).html();
		var id = $(this).attr("id","chapterTOC" + counter);
		full.append("<a class='chapterItem' href='#chapterTOC" + counter + "'>" + content + "</a>")
		counter++;
	});

	$(".chapterScript").after(full);

});