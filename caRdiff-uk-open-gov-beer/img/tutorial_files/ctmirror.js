/*
 * Swap the image and title in footer recent story widgets
 */
function swap_footer_recent_story() {
	jQuery('#site-footer .largo-recent-posts .post-lead').each(function( index ) {
		var $children = jQuery(this).children();
		jQuery(this).append($children.get().reverse());
	});
}

/*
 * jQuery ready event handler
 */
jQuery(document).ready(function() {
  swap_footer_recent_story();
});
