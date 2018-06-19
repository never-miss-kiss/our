$( "document" ).ready( function() {
	var $mainSidebar = $( "#sidebar-main" );

	$mainSidebar.simplerSidebar( {
		attr: "sidebar-main",
		top: 86,
		selectors: {
			trigger: "#sidebar-main-trigger",
			quitter: ".quitter"
		},
		animation: {
			easing: "easeOutQuint"
		}
	} );
} );
