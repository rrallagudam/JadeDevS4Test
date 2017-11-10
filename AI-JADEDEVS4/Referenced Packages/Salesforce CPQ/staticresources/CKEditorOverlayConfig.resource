FCKConfig.ToolbarSets['SalesforceBasic'] = [
    ['Undo','Redo'],['Bold','Italic','Underline','StrikeThrough'],['-','Link','Image'],['-','JustifyLeft','JustifyCenter','JustifyRight'],
    ['-','UnorderedList','OrderedList'],['Indent','Outdent']
];
FCKConfig.ToolbarSets['SalesforceLight'] = [
    ['Bold','Italic'],['-','Link'],['-','JustifyLeft','JustifyCenter','JustifyRight'],
    ['-','UnorderedList'], ['-','FontSize']
];
FCKConfig.ToolbarSets['Knowledge'] = [
   ['Undo','Redo'],['Bold','Italic','Underline','StrikeThrough'],['-','Link','Image'],['-','JustifyLeft','JustifyCenter','JustifyRight'],
   ['-','UnorderedList','OrderedList'],['Indent','Outdent'],['-','FontFormat','FontName','FontSize'],['-','TextColor','BGColor']
];
FCKConfig.ToolbarSets['QuoteQuicklyOverlay'] = [
        ['Undo', 'Redo'],
        ['Bold', 'Italic', 'Underline', 'Strike'],
        ['-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight'],
        ['-', 'BulletedList', 'NumberedList'],
        ['Indent', 'Outdent']
    ];

FCKConfig.ToolbarCanCollapse = false;

FCKConfig.ImageDlgHideLink = true;
FCKConfig.ImageDlgHideAdvanced = true;
FCKConfig.ImageBrowser = false;
FCKConfig.ImageUpload = false;

FCKConfig.LinkDlgHideAdvanced = true;
FCKConfig.LinkBrowser = false;
FCKConfig.LinkUpload = false;

FCKConfig.BrowserContextMenu = true;
FCKConfig.AutoDetectLanguage = false;
FCKConfig.EnterMode = 'br' ;         // p | div | br
FCKConfig.ShiftEnterMode = 'p' ;   // p | div | br
FCKConfig.ForcePasteAsPlainText = false ;
FCKConfig.AutoDetectPasteFromWord = false ;  // IE only.
FCKConfig.ShowDropDialog = false ;
FCKConfig.ForceSimpleAmpersand  = true ;
FCKConfig.ImageUploadAllowedExtensions  = ".(jpg|gif|jpeg|png|bmp|jfif|jpe|pjpeg)$" ;       // empty for all
FCKConfig.ImageUploadDeniedExtensions   = "" ;                          // empty for no one

FCKConfig.SkinPath = FCKConfig.BasePath + 'skins/sfdc';
FCKConfig.SitesPath = "";

FCKCommands.RegisterCommand("Link", new FCKDialogCommand( 'Link'        , 'Insert Link'     , '/apexpages/fckeditor/editor/vf/dialog/fck_link.html'        , 475, 140 ));
FCKCommands.RegisterCommand("Image", new FCKDialogCommand( 'Image'        , 'Insert Image'     , '/apexpages/fckeditor/editor/vf/dialog/fck_image.html'        , 500, 240 ));