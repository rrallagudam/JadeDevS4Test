/* Tablet styles */
@media only screen and (min-device-width : 768px) and (max-device-width : 1024px) {
	.searchPanel td {
		padding-left: 5px;
		padding-right: 5px;
		vertical-align: top;
	}
}

/* Phone styles */
@media only screen and (min-device-width : 320px) and (max-device-width : 640px) {
	.searchPanel td {
		padding: 0px;
	}
	
	.searchPanel label {
		margin: 0px;
		padding: 0px;
		padding-bottom: 2px;
	}
	
	.searchPanel div.searchField {
		margin-bottom: 5px;
	}
}


/* Desktop styles */
@media only screen and (min-width : 1024px) {
	.searchPanel {
		margin-top: 50px;
	}
	
	.searchPanel td {
		vertical-align: top;
	}
}
