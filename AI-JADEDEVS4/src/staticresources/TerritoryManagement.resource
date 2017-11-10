/* ----------------------------------- WORKSPACE FUNCTIONS ----------------------------- */
function initWorkspace(){
    $("#territory-table-body").empty();
    $("#search-table-body").empty();
    $("#search-text").val('');
    $("#search-results-message").text('');
    $("#tab-active-link").click();
    $("#territory-select-all").attr('checked', false);
    $("#search-select-all").attr('checked', false);
}

/* ----------------------------------- TERRITORY ASSIGNED FUNCTIONS ----------------------------- */
function renderTerritoryList(territories){
	for(var i=0; i < territories.length; i++){
		var territory = territories[i];
		var item = territory.Name;
		var owner = territory.Territory_Owner__c;
		if(owner == 'User' && territory.User__r){
			owner = territory.User__r.Name;
		}
		$("#territory-list").append( '<li><a href="#" data-id="' + territory.Id +'" class="territory">' + item + ' ' + ' (' + owner + ')</a></li>');
	}
}

function initTabHandler(){
    $( "#tabs a" ).on( "click", function() {
        console.log("tab clicked " + $(this).attr('id') );
        if(APP.ActiveTab == $(this).attr('id')){
            return;
        }
        APP.ActiveTab = $(this).attr('id');
        $("#tab-active").toggleClass("slds-active");
        $("#tab-search").toggleClass("slds-active");
        $("#tab-scoped-active").toggle();
        $("#tab-scoped-search").toggle();
        $("#search-text").focus();
    });
}

function initTerritoryListHandler(){
    $( "#territory-list a" ).on( "click", function() {
        APP.SelectedTerritory = getTerritory( $( this ).data('id') );
        initWorkspace();
        $( "#territory-list a" ).removeClass('selected');
        $( this ).addClass('selected');
        console.log( $( this ).text() );
        $("#territory-name").text( $( this ).text() );
        $("#working").show();
		getTerritoryAreas( $( this ).data('id') );
    });
}

function renderTerritoryAreas(territoryAreas, event) {
    APP.TerritoryAreas = toAreaMap(territoryAreas);
    var ROW_TEMPLATE = '<tr class="slds-hint-parent">' +
        '<td class="slds-cell-shrink" data-label="Select Row" >' +
        '<label class="slds-checkbox">' +
        '<input type="checkbox" class="territory-area-row" name="options" data-id="##ID##" />' +
        '<span class="slds-checkbox--faux"></span>' +
        '<span class="slds-assistive-text">Select Row</span>' +
        '</label>' +
        '</td>' +
        '<th class="slds-truncate" scope="row" data-label="Country">##COUNTRY##</th>' +
        '<th class="slds-truncate" scope="row" data-label="State">##STATE##</th>' +
        '<td class="slds-truncate" data-label="County">##COUNTY##</td>' +
        '<td class="" data-label="Zip">##ZIP##</td>' +
        '<td class="" data-label="AreaCode">##AREACODE##</td>' +
        '</tr>';
    
    $("#territory-table-body").empty();
    for(var i=0; i < territoryAreas.length; i++){
        var tArea = territoryAreas[i];
        var row = ROW_TEMPLATE;
        row = row.replace('##ID##', tArea.Id)
        .replace('##COUNTRY##', (tArea.Country__c ? tArea.Country__c:'' ))
        .replace('##STATE##', (tArea.State__c ? tArea.State__c:'') )
        .replace('##COUNTY##', (tArea.County__c ? tArea.County__c:'') )
        .replace('##ZIP##', (tArea.Zipcode__c ? tArea.Zipcode__c:'') )
        .replace('##AREACODE##', (tArea.Areacode__c ? tArea.Areacode__c:'') );
        $("#territory-table-body").append( row );
    }
    $("#territory-message").text(territoryAreas.length + ' territory areas assigned.');
    $("#working").hide();
    $("#workspace").show();
}

function getTerritory(territoryID){
    for(var i=0; i < APP.Territories.length; i++){
        if(APP.Territories[i].Id == territoryID){
            return APP.Territories[i];
        }
    }
    return null;
}

function onTerritorySelectAll(){
     if ($("#territory-select-all").is(":checked")) {
		$('.territory-area-row').each(function() {
			this.checked = true;               
		});
     } else {
         $('.territory-area-row').each(function() {
			this.checked = false;               
		});
     }
}

function onTerritoryRemoveSelected(){
    var territoryList = [];
    $('.territory-area-row').each(function() {
        if( this.checked == true ){
			var id = $(this).data('id');
            console.log(id);
            territoryList.push(id);
        }
	});
    if(territoryList.length > 0){
    	deleteTerritoryAreas(APP.SelectedTerritory.Id, territoryList);
    }
}

/* ----------------------------------- SEARCH FUNCTIONS ----------------------------- */
function initSearchRadioHandler(){
    APP.SelectedAreaType = 'State__c';
    $( "#territory-search-panel .slds-radio" ).on( "click", function() {
        console.log( 'clicked ' + $( this ).data('field') );
        APP.SelectedAreaType = $( this ).data('field');
    });
}

function initSearchHandler(){
    $("#search-button").click( doSearch );
    
    $('#search-text').on("keypress", function (e) {
        if (e.keyCode == 13) {
            e.preventDefault(); 
            doSearch();
        }
    });
    $("#search-select-all").click( onSearchSelectAll );
}

function onSearchSelectAll(){
     if ($("#search-select-all").is(":checked")) {
		$('.area-row').each(function() {
			this.checked = true;               
		});
     } else {
         $('.area-row').each(function() {
			this.checked = false;               
		});
     }
}
    
function doSearch(){
    console.log('Search clicked');
    var searchTerm = $("#search-text").val();
    if( !searchTerm || searchTerm == ''){
        showAlert('Missing search term');
        return;
    }
    $("#working-search").show();
    searchAreas(APP.SelectedTerritory.Id, APP.SelectedAreaType, searchTerm );
}

function renderSearchResults(searchResults, event){
    $("#working-search").hide();
    var ROW_TEMPLATE = '<tr class="slds-hint-parent">' +
        '<td class="slds-cell-shrink" data-label="Select Row">' +
        '<label class="slds-checkbox">' +
        '<input type="checkbox" class="area-row" name="options" data-id="##ID##" data-assignid="##AID##" />' +
        '<span class="slds-checkbox--faux"></span>' +
        '<span class="slds-assistive-text">Select Row</span>' +
        '</label>' +
        '</td>' +
        '<th class="slds-truncate" scope="row" data-label="Country">##COUNTRY##</th>' +
        '<th class="slds-truncate" data-label="State">##STATE##</th>' +
        '<td class="slds-truncate" data-label="County">##COUNTY##</td>' +
        '<td class="slds-truncate" data-label="City">##CITY##</td>' +
        '<td class="" data-label="Zip">##ZIP##</td>' +
        '<td class="" data-label="AreaCode">##AREACODE##</td>' +
        '<td class="" data-label="Status">##STATUS##</td>' +
        '</tr>';
    
    $("#search-table-body").empty();
    for(var i=0; i < searchResults.length; i++){
        var area = searchResults[i];
        var row = ROW_TEMPLATE;
        var badge = '<span class="slds-badge slds-theme--shade">Unassigned</span>';
        var assignedArea = getAssignedArea(area);
        var assignedID='na';
        if( assignedArea ){
            assignedID = assignedArea.Id;
            badge = '<span class="slds-badge slds-theme--inverse" title="' + assignedArea.TerritoryName__c + '">Assigned</span>';
        }
        row = row.replace('##ID##', area.Id)
        	.replace('##AID##', assignedID)
        	.replace('##COUNTRY##', (area.Country__c ? area.Country__c:'' ))
        	.replace('##STATE##', (area.State__c ? area.State__c:'' ) )
        	.replace('##COUNTY##', (area.County__c ? area.County__c:'') )
        	.replace('##CITY##', (area.City__c ? area.City__c:'') )
        	.replace('##ZIP##', (area.ZipCode__c ? area.ZipCode__c:'') )
        	.replace('##AREACODE##', (area.AreaCode__c ? area.AreaCode__c:''))
            .replace('##STATUS##', badge );
        
        $("#search-table-body").append( row );
    }
    
    var msg = searchResults.length + ' results where ' + APP.SelectedAreaType + ' like "' + $("#search-text").val() + '"';
    $("#search-results-message").text( msg );
}

function getAssignedArea(area){
    if(!APP.TerritoryAreas || APP.TerritoryAreas.length == 0){
        return null;
    }
    return APP.TerritoryAreas[area.Id];
}

function onAssignSearchResults(){
    var areaList = [];
    $('.area-row').each(function() {
        if( this.checked == true ){
			var id = $(this).data('id');
            areaList.push(id);
        }
	});
    if(areaList.length > 0){
    	assignAreas(APP.SelectedTerritory.Id, areaList);
    }
}

function onUnAssignSearchResults(){
    var areaList = [];
    $('.area-row').each(function() {
        if( this.checked == true ){
			var id = $(this).data('assignid');
            areaList.push(id);
        }
	});
    if(areaList.length > 0){
    	deleteTerritoryAreas(APP.SelectedTerritory.Id, areaList);
    }
}

/* ----------------------------------- ALERT FUNCTIONS ----------------------------- */
function initAlerts(){
    $("#alert").hide();
}

function showAlert(message){
    $("#alert-message").text(message);
    $("#alert").show();
}

function hideAlert(){
    $("#alert").hide();
}

/* ----------------------------------- UTIL FUNCTIONS ----------------------------- */
function toAreaMap(sObjectCollection){
	var map = {};
	for(var i=0; i < sObjectCollection.length; i++ ){
		var sObject = sObjectCollection[i];
		map[sObject.Area__c] = sObject;
	}
	return map;
}

