@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Light.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Light.woff") format("woff");
  font-style: normal;
  font-weight: 300;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Regular.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Regular.woff") format("woff");
  font-style: normal;
  font-weight: 400;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Italic.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Italic.woff") format("woff");
  font-style: italic;
  font-weight: 400;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Bold.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Bold.woff") format("woff");
  font-style: normal;
  font-weight: 700;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-BoldItalic.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-BoldItalic.woff") format("woff");
  font-style: italic;
  font-weight: 700;
}
/*
Rotates an element

$r - the rotate function paramter, e.g. 90deg
 */
.sb h1,
.sb h2,
.sb h3,
.sb h4,
.sb h5,
.sb h6 {
  color: #16325c;
  font-weight: 300;
  font-family: inherit;
  display: inline-block;
  margin: 0;
  padding: 0;
}
.sb h1 {
  font-size: 24px;
}
.sb h2 {
  font-size: 18px;
}
.sb h3 {
  font-size: 16px;
}
.sb h4 {
  font-size: 12px;
}
.sb h5 {
  font-size: 10px;
}
.sb h6 {
  font-size: 9px;
}
.sb a,
.sb a:visited,
.sb a:hover,
.sb a:active {
  text-decoration: none;
  color: #0070d2;
  cursor: pointer;
}
.sb a:hover {
  color: #16325c;
}
/*
Button

A standard, standalone button

*/
.sbBtn,
.btn.sbBtn {
  padding: 8px 12px;
  background: #ffffff;
  color: #0070d2;
  cursor: pointer;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  font-weight: 400;
  font-size: 14px;
  margin: 0;
  vertical-align: middle;
  text-align: center;
  height: 36px;
}
.sbBtn:focus {
  outline-offset: -2px;
  outline-width: 2px;
}
.sbBtn:hover {
  background: #f4f6f9;
}
.sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  border: 1px solid #0070d2;
  color: #ffffff;
}
.sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
.sbBtn.sbEnabled {
  background-color: #0070d2;
  border-color: #0070d2;
  color: #ffffff;
}
.sbBtn.sbEnabled:hover {
  background-color: #005fb2;
}
.sbButtons,
.sbPageButtons {
  text-align: center;
  background: #f4f6f9;
  padding: 7px 0 7px;
  display: inline-block;
}
.sbButtons > .sbBtn,
.sbButtons > div > .sbBtn,
.sbPageButtons > .sbBtn,
.sbPageButtons > div > .sbBtn {
  border-top: 1px solid #d8dde6;
  border-bottom: 1px solid #d8dde6;
  border-right: 1px solid #d8dde6;
  border-left: 0;
  border-radius: 0;
  float: left;
}
.sbButtons > .sbBtn.sbPrimaryAction,
.sbButtons > div > .sbBtn.sbPrimaryAction,
.sbPageButtons > .sbBtn.sbPrimaryAction,
.sbPageButtons > div > .sbBtn.sbPrimaryAction {
  border: 1px solid #0070d2;
}
.sbButtons > .sbBtn:first-of-type,
.sbButtons > div > .sbBtn:first-of-type,
.sbPageButtons > .sbBtn:first-of-type,
.sbPageButtons > div > .sbBtn:first-of-type {
  border-left: 1px solid #d8dde6;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.sbButtons > .sbBtn:first-of-type.sbPrimaryAction,
.sbButtons > div > .sbBtn:first-of-type.sbPrimaryAction,
.sbPageButtons > .sbBtn:first-of-type.sbPrimaryAction,
.sbPageButtons > div > .sbBtn:first-of-type.sbPrimaryAction {
  border-left: #0070d2;
}
.sbButtons > .sbBtn:last-of-type,
.sbButtons > div > .sbBtn:last-of-type,
.sbPageButtons > .sbBtn:last-of-type,
.sbPageButtons > div > .sbBtn:last-of-type {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.sbButtons > .center,
.sbPageButtons > .center {
  display: inline-block;
}
.sbPageButtons {
  width: 100%;
  border-top: 1px solid #d0d0d0;
}
.sbPageButtons.bottom {
  width: auto;
  position: fixed;
  bottom: 0px;
  left: 10px;
  right: 10px;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
  display: none;
}
.sbPageButtons.inline {
  background: #f4f6f9;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
  margin-top: 80px;
}
.sbPageTitle > .sbPageButtons {
  border: 0;
  display: inline-block;
  width: auto;
  float: right;
}
.sbTools {
  display: inline-block;
}
.sbTools > .sbTool {
  border-left: 0;
  border-radius: 0;
  float: left;
}
.sbTools > .sbTool > .sb-icon-triangle-down {
  margin-left: -5px;
}
.sbTools > .sbTool:not(.ng-hide):not(.sbBtnClear):first-of-type {
  border-left: 1px solid #d8dde6;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.sbTools > .sbTool:not(.ng-hide):last-of-type {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.sbTool {
  display: inline-block;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  padding: 5px 7px;
  color: #0070d2;
  position: relative;
  cursor: pointer;
  /* the down triangle in a tool */
}
.sbTool > .sb-icon-down-dir {
  position: relative;
}
.sbTool.active {
  background: #0070d2;
  color: #ffffff;
}
.sbTool:hover {
  background: #f4f6f9;
  color: #0070d2;
}
.sbTool:focus {
  outline-offset: -2px;
  outline-width: 2px;
}
.sbTool > menu {
  position: absolute;
  right: -1px;
  top: 16px;
  font-weight: normal;
  background-color: #ffffff;
  padding: 8px 14px;
  white-space: nowrap;
  border-radius: 4px;
  border-top-right-radius: 0;
  border: 1px solid #d8dde6;
  display: none;
  z-index: 4;
  text-align: left;
}
.sbTool > menu.dt {
  top: 20px;
  max-height: 300px;
  overflow: auto;
}
.sbTool > menu > header {
  text-transform: uppercase;
  color: #777;
  margin-bottom: 4px;
}
.sbTool > menu *[class^=sb-icon] {
  margin-right: 6px;
  vertical-align: middle;
  color: #777;
}
.sbTool.open > menu {
  display: block;
}
.sbTool > menu ul {
  list-style: none;
  padding: 0;
  margin: 0;
}
.sbTool > menu ul > li {
  padding: 3px 3px 3px 0px;
}
.sbTool > menu ul > li > a {
  display: block;
}
.sbTool > menu ul > li .sb-icon-ok {
  display: none;
}
.sbTool > menu ul > li.selected .sb-icon-ok {
  display: inline-block;
  float: right;
  margin-right: 0;
}
.sbTool > menu.multi > header:last-of-type {
  margin-top: 16px;
}
.sbTool > menu.multi > ul:last-of-type li {
  min-width: 130px;
}
.sb menu a {
  color: #0070d2;
}
.sb menu a:hover {
  color: #0070d2;
}
/*
Modal dialog mask

The layer behind the dialog that masks the entire page.
*/
.sbModalMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
/*
Modal Dialog

A dialog with modality that takes up the entire page.
 */
.sbModalDialog {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
}
.sbModalDialog > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
.sbModalDialog > header > i {
  color: #16325c;
  font-size: 20px;
}
.sbModalDialog > header > * {
  vertical-align: middle;
}
.sbModalDialog > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
.sbModalDialog > header > h3 {
  color: #16325c;
}
.sbModalDialog > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
.sbModalDialog > header > .sf-icon-close:hover {
  cursor: pointer;
}
.sbModalDialog > header > .sf-icon-close:before {
  color: #fff;
}
.sbModalDialog .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
.sbModalDialog .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
.sbModalDialog .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
.sbModalDialog .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
.sbModalDialog .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
.sbModalDialog .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
.sbModalDialog .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
.sbModalDialog .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#DescriptionEditorDialog {
  min-height: 429px;
}
.ui-tooltip {
  padding: 8px;
  position: absolute;
  z-index: 9999;
  max-width: 300px;
  background: #ffffff;
  border: 1px solid #d0d0d0;
  box-shadow: 0 0 2px #D8DDE6;
}
.ui-tooltip > .ui-tooltip-content {
  font-size: 14px;
}
.ui-tooltip > .arrow {
  width: 70px;
  height: 16px;
  overflow: hidden;
  position: absolute;
  left: 50%;
  margin-left: -35px;
  bottom: -16px;
}
.ui-tooltip > .arrow.top {
  top: -16px;
  bottom: auto;
}
.ui-tooltip > .arrow.top:after {
  bottom: -20px;
  top: auto;
}
.ui-tooltip > .arrow.left {
  left: 28%;
}
.ui-tooltip > .arrow:after {
  background: #ffffff;
  border: #d0d0d0;
  content: "";
  position: absolute;
  left: 20px;
  top: -20px;
  width: 25px;
  height: 25px;
  box-shadow: 6px 5px 9px -9px black;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
.ui-helper-hidden-accessible {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;
}
#sbCustomActionContainer {
  margin: 18px;
  top: 0px;
  height: 95%;
}
#sbCustomActionContainer > .sf-icon-cancel-circled {
  font-size: 35px;
  position: absolute;
  top: -9px;
  right: -4px;
  width: 20px;
  height: 20px;
  background-color: #A8B7C7;
}
#sbCustomActionContainer > .sf-icon-cancel-circled:hover {
  cursor: pointer;
}
#sbCustomActionContainer > .sf-icon-cancel-circled:before {
  color: #fff;
  position: relative;
  right: 15px;
  top: -10px;
}
#easyXDM_SBQQ_provider {
  width: 100%;
  height: 100%;
}
#sbPricebookModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 640px;
}
#sbPricebookModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbPricebookModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbPricebookModal > header > * {
  vertical-align: middle;
}
#sbPricebookModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbPricebookModal > header > h3 {
  color: #16325c;
}
#sbPricebookModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbPricebookModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbPricebookModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbPricebookModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbPricebookModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbPricebookModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbPricebookModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbPricebookModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbPricebookModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbPricebookModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbPricebookModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbPricebookModal > .sbModalContentContainer {
  padding: 20px;
  text-align: center;
}
#sbPricebookModal > .sbModalContentContainer > select {
  height: 34px;
  font-size: 16px;
  width: 100%;
  margin: 14px 0;
}
.sbPageTitle {
  padding: 24px 24px 16px;
  color: #54698d;
  background: #f4f6f9;
  border-bottom: 1px solid #d0d0d0;
  font-size: 10px;
  transition: padding 0.25s ease-in;
}
.sbPageTitle h1,
.sbPageTitle h2 {
  white-space: nowrap;
  transition: all 0.25s ease-in;
}
.sbPageTitle h2 {
  font-size: 14px;
  color: #54698d;
  display: block;
  font-weight: 400;
  padding-bottom: 4px;
}
.sbPageTitle > .sbPageTitleTable {
  display: table;
  width: 100%;
  -webkit-transition-delay: 0s, 0s, 0s;
  -webkit-transition-duration: 0.25s, 0.25s, 0.25s;
  -webkit-transition-property: -webkit-transform, opacity, left;
  -webkit-transition-timing-function: ease-in, ease-in, ease;
  -webkit-user-drag: none;
}
.sbPageTitle > .sbPageTitleTable.sbResultsSection > .sbPageTitleLeft {
  width: 100%;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft,
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight {
  display: table-cell;
  vertical-align: top;
  transition: all 0.25s ease-in;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft {
  display: inline-flex;
  width: 30%;
  vertical-align: top;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft .sbTitles {
  vertical-align: top;
  display: inline-block;
  transition: all 0.25s ease-in;
  -webkit-transition-delay: 0s, 0s, 0s;
  -webkit-transition-duration: 0.25s, 0.25s, 0.25s;
  -webkit-transition-property: -webkit-transform, opacity, left;
  -webkit-transition-timing-function: ease-in, ease-in, ease;
  -webkit-user-drag: none;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon] {
  font-size: 50px;
  height: 50px;
  width: 50px;
  border-radius: 4px;
  margin-right: 12px;
  text-align: center;
  display: inline-block;
  transition: all 0.25s ease-in;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon].resize {
  font-size: 30px;
  padding: 13px 10px 0 10px;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon]:before {
  color: #fff;
  margin: 0;
  position: relative;
  top: -7px;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft .resetHeight[class^=sf-icon]:before {
  top: 0px;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft > span {
  width: 200px;
}
@media screen and (-ms-high-contrast: none), (-ms-high-contrast: active) {
  .sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft > span {
    width: auto;
  }
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight {
  width: 100%;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight > .sbTools,
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight > .sbButtons {
  float: right;
}
.sbPageTitle .sbResults {
  margin: 7px 0 0 62px;
  font-size: 14px;
  transition: all 0.25s ease-in;
}
.sbPageTitle .sbResults.sbWarning {
  margin-top: 2px;
  color: #cc7824;
}
.sbPageTitle .sbResults.sbWarning [class=sf-icon-warning] {
  font-size: 16px;
  width: 13px;
  height: 20px;
}
.sbPageTitle .sbResults.sbWarning [class=sf-icon-warning]:before {
  color: #cc7824;
  margin: 0 6px 0 0;
  position: relative;
  top: 2px;
}
.sbPageTitle.squeezed {
  padding: 20px 15px 7px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon] {
  font-size: 36px;
  height: 36px;
  width: 36px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon].resize {
  font-size: 23px;
  padding-top: 8px;
  padding-left: 7px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon]:before {
  top: -5px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft .sbTitles {
  transform: translate3d(0px, -12px, 0px);
  -webkit-transform: matrix(1, 0, 0, 1, 0, -8);
}
.sbPageTitle.squeezed > .sbPageTitleTable .sbButtons {
  padding: 0;
}
.sbPageTitle.squeezed > .sbPageTitleTable.sbResultsSection {
  opacity: 0;
  display: none;
  transform: translate3d(0px, -17px, 0px);
  -webkit-transform: matrix(1, 0, 0, 1, 0, -17);
}
.sbHeaderFixed .sbPageTitle {
  position: fixed;
  top: 114px;
  left: 10px;
  right: 10px;
  z-index: 5;
  visibility: hidden;
}
#sidebarCell:not(.sidebarCollapsed) + #bodyCell .sbHeaderFixed .sbPageTitle {
  left: 230px;
}
#mainContent {
  margin-left: 1px;
}
.sbPageBlock {
  font-size: 10px;
}
.sbPageBlockSection {
  margin: 15px;
  background: #f4f6f9;
  border: 1px solid #d0d0d0;
  border-radius: 4px;
  padding: 14px;
  font-size: 10px;
}
.sbPageBlockSection > header {
  margin-bottom: 10px;
}
.sbLoadingMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 10001;
}
.sbLoading {
  position: fixed;
  top: 37%;
  left: 50%;
  margin-left: -74px;
}
.sbSearchResults .sbTable {
  font-size: 10px;
}
.sbSearchResults .sbTable > thead > tr > th:first-of-type,
.sbSearchResults .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
.sbSearchResults .sbTable > tbody > tr > td {
  vertical-align: middle;
}
.sbSearchResults .sbTools {
  float: right;
}
.sb input[type=text],
.sb input:not([type]) {
  height: 25px;
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  font-size: 14px;
}
.sb input[type=text].hasDatepicker,
.sb input:not([type]).hasDatepicker {
  min-width: 95px;
  width: 85%;
}
.sb input[type=text].hasDatepicker.invalidDate,
.sb input:not([type]).hasDatepicker.invalidDate {
  border-color: #c00;
}
.sb select:not([multiple]) {
  font-size: 14px;
  -webkit-appearance: none;
  -moz-appearance: none;
  min-width: 100px;
  padding: 0 14px;
  margin: 0;
  height: 25px;
  background-image: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDI3LjYgMjEiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDI3LjYgMjEiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KICA8Zz4NCiAgICA8ZGVmcz4NCiAgICAgIDxwYXRoIGlkPSJTVkdJRF8xXyIgZD0iTTUuNiA1aDE2LjRjMC40IDAgMC44IDAuNiAwLjQgMWwtOCA5LjhjLTAuMyAwLjMtMC45IDAuMy0xLjIgMGwtOC05LjhDNC44IDUuNiA1LjEgNSA1LjYgNXoiLz4NCiAgICA8L2RlZnM+DQogICAgPGNsaXBQYXRoIGlkPSJTVkdJRF8yXyI+DQogICAgICA8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8xXyIgb3ZlcmZsb3c9InZpc2libGUiLz4NCiAgICA8L2NsaXBQYXRoPg0KICAgIDxyZWN0IHg9IjAiIHk9IjAiIGNsaXAtcGF0aD0idXJsKCNTVkdJRF8yXykiIGZpbGw9IiM1NTY5OEQiIHdpZHRoPSIyNy42IiBoZWlnaHQ9IjIxIi8+DQogIDwvZz4NCjwvc3ZnPg0K');
  background-color: #ffffff;
  background-position: 95% 50%;
  background-repeat: no-repeat;
  background-size: 14px 14px;
  border: 1px solid #D8DDE6;
  border-radius: 3px;
}
.sb select:not([multiple])::-ms-expand {
  display: none;
}
.sb input[type=checkbox] {
  width: 22px;
  height: 22px;
  margin: 0;
  border: 0;
}
.sb input,
.sb button,
.sb select,
.sb textarea {
  font-family: inherit;
}
/*
Dualing List box

A control with two list boxes and arrows to move items left/right and up/down between those two.
 */
.sbDualListBox {
  font-size: 14px;
  color: inherit;
  border-collapse: collapse;
  border-spacing: 0;
}
.sbDualListBox > thead > tr > th {
  font-weight: normal;
  text-align: center;
}
.sbDualListBox > thead > tr > th > [class^=sb-icon] {
  font-size: 14px;
  color: #888;
}
.sbDualListBox > tbody > tr > td:nth-child(2),
.sbDualListBox > tbody > tr > td:nth-child(4) {
  text-align: center;
  vertical-align: middle;
}
.sbDualListBox a {
  color: inherit;
  padding: 2px;
  margin: 0 8px;
  border: 1px solid #d8dde6;
  border-bottom: 0;
  display: block;
}
.sbDualListBox a:hover {
  background: #0069d9;
  color: #fff;
  border-color: #0069d9;
}
.sbDualListBox a .sf-icon-right,
.sbDualListBox a .sf-icon-left {
  padding: 2px;
}
.sbDualListBox a [class^=sb-icon] {
  font-size: 15px;
}
.sbDualListBox a [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(-90deg);
  -moz-transform: rotate(-90deg);
  -ms-transform: rotate(-90deg);
  transform: rotate(-90deg);
  font-size: 8.5px;
}
.sbDualListBox a:nth-child(4) [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
  font-size: 8.5px;
}
.sbDualListBox a:first-of-type {
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}
.sbDualListBox a:last-of-type {
  border-bottom: 1px solid #d8dde6;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.sbDualListBox select {
  font-size: inherit;
  height: 350px;
  width: 180px;
  padding: 8px;
}
.sbDualListBox select > option {
  padding: 4px;
}
.sbDualListBox select > option.required {
  color: #af2626;
  font-weight: bold;
  -webkit-font-smoothing: subpixel-antialiased;
}
#ui-datepicker-div {
  display: none;
}
.ui-datepicker {
  background-color: #F4F6F9;
  border-left: 1px solid #d0d0d0;
  border-right: 1px solid #d0d0d0;
  border-radius: 3px;
  box-shadow: 0 2px 6px #aaa;
  padding: 7px 5px 6px;
  overflow: hidden;
  text-align: center;
  white-space: nowrap;
  width: auto;
  z-index: 4;
}
.ui-datepicker .ui-datepicker-header {
  padding: 0 0 3px;
}
.ui-datepicker .ui-datepicker-title {
  display: inline-block;
}
.ui-datepicker .ui-datepicker-month {
  float: left;
}
.ui-datepicker .ui-datepicker-year {
  float: right;
}
.ui-datepicker .ui-datepicker-prev,
.ui-datepicker .ui-datepicker-next {
  margin-top: 4px;
  display: inline-block;
  width: 19px;
  height: 16px;
  margin: 2px 4px 0 0;
  background-repeat: no-repeat;
  line-height: 400%;
  float: left;
}
.ui-datepicker .ui-datepicker-prev {
  background-image: url('/img/func_icons/cal/leftArrow.gif');
}
.ui-datepicker .ui-datepicker-next {
  background-image: url('/img/func_icons/cal/rightArrow.gif');
}
.ui-datepicker .ui-datepicker-calendar {
  padding: 0 5px;
  margin-left: auto;
  margin-right: auto;
}
.ui-datepicker .ui-datepicker-calendar > thead > tr > th {
  text-align: center;
  font-weight: normal;
  font-size: .9em;
  width: 14%;
}
.ui-datepicker .ui-datepicker-calendar td {
  padding: 2px;
}
.ui-datepicker .ui-datepicker-calendar a {
  width: auto;
  border-bottom: none;
  text-decoration: none;
  font-size: .95em;
}
.ui-datepicker .ui-datepicker-calendar > tbody > tr > td:hover {
  background-color: #e0f0fb;
  font-weight: bold;
}
.ui-datepicker .ui-datepicker-other-month a {
  color: #999;
}
.ui-datepicker .ui-datepicker-today {
  background-color: #1797c0;
  color: #fff;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker .ui-datepicker-today:hover {
  background-color: #e0f0fb;
  color: #333;
}
.ui-datepicker .ui-datepicker-current-day {
  background-color: #c6e1ff;
  border: 1px solid #9cf;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker .ui-datepicker-current-day > a {
  color: #333;
}
.ui-datepicker .ui-datepicker-buttonpane {
  padding: 1px;
  clear: both;
}
.ui-datepicker .ui-datepicker-buttonpane > button {
  background: transparent;
  border: none !important;
  color: #015ba7;
  cursor: pointer;
  font-weight: normal;
  padding: 0;
  margin: 0;
}
.ui-datepicker .ui-datepicker-buttonpane > button:hover {
  text-decoration: underline;
}
.ui-datepicker .ui-datepicker-close {
  display: none;
}
table > tbody > tr > td {
  color: #16325C;
}
.sbTable {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  background-color: #ffffff;
}
.sbTable td {
  height: 49px;
}
.sbTable > tbody > tr > td.center,
.sbTable > tbody > tr > td.sbActions,
.sbTable > thead > tr > th.sbActions,
.sbTable > thead > tr > th.center,
.sbTable > tfoot > tr > td.center {
  text-align: center;
}
.sbTable > thead > tr > th.right,
.sbTable > tbody > tr > td.right,
.sbTable > tfoot > tr > td.right {
  text-align: right;
}
.sbTable a {
  color: inherit;
}
.sbTable tbody .sbActions i {
  color: #0070d2;
}
.sbTable tbody .sbActions i:hover {
  color: #16325c;
  cursor: pointer;
}
.sbTable tbody .sbMaster i {
  font-size: 200%;
  color: #ffffff;
  background-color: #CFD7E6;
  border-radius: .18rem;
  text-align: center;
}
.sbTable tbody .sbMaster i.selectedMaster {
  background: #7F8DE1;
}
.sbTable tbody .sbMaster i.selectedMaster:hover {
  cursor: pointer;
}
.sbTable tbody .sbMaster i.notSelectedMaster {
  background: #CFD7E6;
}
.sbTable tbody .sbMaster i.notSelectedMaster:hover {
  cursor: pointer;
}
.sbTable input,
.sbTable select {
  font-size: inherit;
}
.sbTable > thead > tr > th {
  border-bottom: 1px solid #D8DDE6;
  padding: 8px 6px 6px;
  font-size: 12px;
  font-weight: normal;
  text-transform: uppercase;
  color: #16325C;
  text-align: left;
  white-space: nowrap;
}
.sbTable > thead > tr > th > *[class^="sb-icon"] {
  margin-left: 4px;
  font-size: 12px;
}
.sbTable > tbody > tr > td {
  border-bottom: 1px solid #D8DDE6;
  padding: 8px 6px 6px;
  color: #16325C;
  font-size: 14px;
}
.sbTable > tbody > tr > td i {
  color: #888;
}
.sbTable > tbody > tr:hover {
  background: #F4F6F9;
}
.sbTable > tfoot > tr > td {
  padding: 8px 6px 6px;
  color: #16325C;
  font-size: 14px;
}
/*
Side Panels 

Panel that slides out from the right side of the screen
*/
.sbPanel {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbPanel.open {
  right: 0px;
  display: block;
}
.sbPanel > a {
  text-align: right;
  font-size: 14px;
}
.sbPanel > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbPanel > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbPanel fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbPanel fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbPanel fieldset input,
.sbPanel fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbPanel .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbPanel .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
@font-face {
  font-family: 'sf-icons';
  src: url('../font/sf-icons.eot?13067676');
  src: url('../font/sf-icons.eot?13067676#iefix') format('embedded-opentype'), url('../font/sf-icons.svg?13067676#sf-icons') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'sf-icons';
  src: url('data:application/octet-stream;base64,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') format('woff'), url('data:application/octet-stream;base64,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AEAAAOhAAADoQAAAAEEAAOhBAADoQQAAAEIAAOhCAADoQgAAAEMAAOhDAADoQwAAAEQAAOhEAADoRAAAAEUAAOhFAADoRQAAAEYAAOhGAADoRgAAAEcAAOhHAADoRwAAAEgAAOhIAADoSAAAAEkAAOhJAADoSQAAAEoAAOhKAADoSgAAAEsAAOhLAADoSwAAAEwAAOhMAADoTAAAAE0AAOhNAADoTQAAAE4AAOhOAADoTgAAAE8AAOhPAADoTwAAAFAAAOhQAADoUAAAAFEAAOhRAADoUQAAAFIAAOhSAADoUgAAAFMAAOhTAADoUwAAAFQAAOhUAADoVAAAAFUAAOhVAADoVQAAAFYAAOhWAADoVgAAAFcAAOhXAADoVwAAAFgAAOhYAADoWAAAAFkAAOhZAADoWQAAAFoAAOhaAADoWgAAAFsAAOhbAADoWwAAAFwAAOhcAADoXAAAAF0AAOhdAADoXQAAAF4AAOheAADoXgAAAF8AAOhfAADoXwAAAGAAAOhgAADoYAAAAGEAAOhhAADoYQAAAGIAAOhiAADoYgAAAGMAAOhjAADoYwAAAGQAAOhkAADoZAAAAGUAAOhlAADoZQAAAGYAAOhmAADoZgAAAGcAAOhnAADoZwAAAGgAAOhoAADoaAAAAGkAAOhpAADoaQAAAGoAAOhqAADoagAAAGsAAOhrAADoawAAAGwAAOhsAADobAAAAG0AAOhtAADobQAAAG4AAOhuAADobgAAAG8AAOhvAADobwAAAHAAAOhwAADocAAAAHEAAOhxAADocQAAAHIAAOhyAADocgAAAHMAAOhzAADocwAAAHQAAOh0AADodAAAAHUAAOh1AADodQAAAHYAAOh2AADodgAAAHcAAOh3AADodwAAAHgAAOh4AADoeAAAAHkAAOh5AADoeQAAAHoAAOh6AADoegAAAHsAAOh7AADoewAAAHwAAOh8AADofAAAAH0AAOh9AADofQAAAH4AAOh+AADofgAAAH8AAOh/AADofwAAAIAAAOiAAADogAAAAIEAAOiBAADogQAAAIIAAOiCAADoggAAAIMAAOiDAADogwAAAIQAAOiEAADohAAAAIUAAOiFAADohQAAAIYAAOiGAADohgAAAIcAAOiHAADohwAAAIgAAAADAAAAAAPCAdIADAAZACYAOkA3CAQHAgYFAAEBAFQI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cHJvamVjdC5odHRwOi8vZm9udGVsbG8uY29tAEMAbwBwAHkAcgBpAGcAaAB0ACAAKABDACkAIAAyADAAMQA2ACAAYgB5ACAAbwByAGkAZwBpAG4AYQBsACAAYQB1AHQAaABvAHIAcwAgAEAAIABmAG8AbgB0AGUAbABsAG8ALgBjAG8AbQBzAGYALQBpAGMAbwBuAHMAUgBlAGcAdQBsAGEAcgBzAGYALQBpAGMAbwBuAHMAcwBmAC0AaQBjAG8AbgBzAFYAZQByAHMAaQBvAG4AIAAxAC4AMABzAGYALQBpAGMAbwBuAHMARwBlAG4AZQByAGEAdABlAGQAIABiAHkAIABzAHYAZwAyAHQAdABmACAAZgByAG8AbQAgAEYAbwBuAHQAZQBsAGwAbwAgAHAAcgBvAGoAZQBjAHQALgBoAHQAdABwADoALwAvAGYAbwBuAHQAZQBsAGwAbwAuAGMAbwBtAAAAAAIAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiQECAQMBBAEFAQYBBwEIAQkBCgELAQwBDQEOAQ8BEAERARIBEwEUARUBFgEXARgBGQEaARsBHAEdAR4BHwEgASEBIgEjASQBJQEmAScBKAEpASoBKwEsAS0BLgEvATABMQEyATMBNAE1ATYBNwE4ATkBOgE7ATwBPQE+AT8BQAFBAUIBQwFEAUUBRgFHAUgBSQFKAUsBTAFNAU4BTwFQAVEBUgFTAVQBVQFWAVcBWAFZAVoBWwFcAV0BXgFfAWABYQFiAWMBZAFlAWYBZwFoAWkBagFrAWwBbQFuAW8BcAFxAXIBcwF0AXUBdgF3AXgBeQF6AXsBfAF9AX4BfwGAAYEBggGDAYQBhQGGAYcBiAGJAYoABTNkb3RzA2FkZAVjbG9zZQlwcmljZWJvb2sEaGVscAhub3RlYm9vawRyb3dzBnVwbG9hZAVjbG9jawZncm91cHMLb3Blbl9mb2xkZXIQcmlnaHRfYWxpZ25fdGV4dAdwcm9kdWN0DXF1ZXN0aW9uX2ZlZWQHd2FybmluZwR1c2VyBXJpZ2h0DG5vdGlmaWNhdGlvbgRob21lCGNvbnRyYWN0B2FkZHVzZXIEYXBwcwRjb3B5BWltYWdlBG9wZW4Ic2V0dGluZ3MGem9vbWluBnJlY29yZAlhcnJvd2Rvd24DY3V0D2luc2VydF90ZW1wbGF0ZQ1vcGVuZWRfZm9sZGVyCXNpZGVfbGlzdAd6b29tb3V0BnF1b3RlcwxyZWxhdGVkX2xpc3QEZ2RvYwdzbmlwcGV0BHBhZ2ULY3VzdG9tX2FwcHMHYXJyb3d1cAZhdHRhY2gHZGF5dmlldwRpbmZvEGluc2VydF90YWdfZmllbGQFcGFzdGUEc29ydANwZGYGcmVwb3J0BHRhc2sIYXBwcm92YWwLc29jaWFsc2hhcmUGcGVvcGxlBml0YWxpYwZkZWxldGUEYmFjawNiYW4FZW1haWwEYm9sZAdwcmV2aWV3BXNoYXJlCWRhc2hib2FyZAZ0aGFua3MFdG9kYXkKY29udHJhY3QtMQdzcGlubmVyBXBob3RvBWV2ZW50B2J1aWxkZXIManVzdGlmeV90ZXh0EWNlbnRlcl9hbGlnbl90ZXh0BGVkaXQGbGF5b3V0CHByaW9yaXR5EHN0YW5kYXJkX29iamVjdHMHY29udGFjdAhjdXN0b205MwdlbWFpbC0xB3N1Y2Nlc3MHcmVmcmVzaA9sZWZ0X2FsaWduX3RleHQEZG93bgVjaGFydARjaGF0BWVycm9yBGxlZnQLcmVtb3ZlX2xpbmsHc3VtbWFyeQhkb2N1bWVudAZkcmFmdHMNc3VtbWFyeWRldGFpbAdyZXBsYWNlBGxpa2UIZG93bmxvYWQFY2hlY2sLY2hldnJvbmxlZnQGZXhwYW5kBGxpbmsFcmVwbHkFdGFibGUEZmVlZAdldmVudC0xDnRpbGVfY2FyZF9saXN0FHJpY2h0ZXh0YnVsbGV0ZWRsaXN0BGxpc3QIZmF2b3JpdGUMY2hldnJvbnJpZ2h0C2NoZXZyb25kb3duBmZpbHRlcgRtb3ZlDnJpY2h0ZXh0aW5kZW50CXVuZGVybGluZQhmZWVkYmFjawRmaWxlBHVuZG8UcmljaHRleHRudW1iZXJlZGxpc3QEbG9jawpmaWx0ZXJsaXN0CWNoZXZyb251cAVjbGVhcgdmb3J3YXJkCm5ld193aW5kb3cPcmljaHRleHRvdXRkZW50BnVubG9jawtvcHBvcnR1bml0eQRwb3N0AnVwBnNlYXJjaANuZXcGZnJvemVuCGNvbW1lbnRzBnJlY2VudAltYWdpY3dhbmQYZGlzY291bnRzY2hlZHVsZWljb25zLTAy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') format('truetype');
}
/* Chrome hack: SVG is rendered more smooth in Windozze. 100% magic, uncomment if you need it. */
/* Note, that will break hinting! In other OS-es font will be not as sharp as it could be */
/*
@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: 'sf-icons';
    src: url('../font/sf-icons.svg?13067676#sf-icons') format('svg');
  }
}
*/
[class^="sf-icon-"]:before,
[class*=" sf-icon-"]:before {
  font-family: "sf-icons";
  font-style: normal;
  font-weight: normal;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-right: .2em;
  text-align: center;
  /* opacity: .8; */
  /* For safety - reset parent styles, that can break glyph codes*/
  font-variant: normal;
  text-transform: none;
  /* fix buttons height, for twitter bootstrap */
  line-height: 1em;
  /* Animation center compensation - margins should be symmetric */
  /* remove if not needed */
  margin-left: .2em;
  /* you can be more comfortable with increased icons size */
  /* font-size: 120%; */
  /* Uncomment for 3D effect */
  /* text-shadow: 1px 1px 1px rgba(127, 127, 127, 0.3); */
}
.sf-icon-3dots:before {
  content: '\e800';
}
/* '' */
.sf-icon-add:before {
  content: '\e801';
}
/* '' */
.sf-icon-close:before {
  content: '\e802';
}
/* '' */
.sf-icon-pricebook:before {
  content: '\e803';
}
/* '' */
.sf-icon-help:before {
  content: '\e804';
}
/* '' */
.sf-icon-notebook:before {
  content: '\e805';
}
/* '' */
.sf-icon-rows:before {
  content: '\e806';
}
/* '' */
.sf-icon-upload:before {
  content: '\e807';
}
/* '' */
.sf-icon-clock:before {
  content: '\e808';
}
/* '' */
.sf-icon-groups:before {
  content: '\e809';
}
/* '' */
.sf-icon-open_folder:before {
  content: '\e80a';
}
/* '' */
.sf-icon-right_align_text:before {
  content: '\e80b';
}
/* '' */
.sf-icon-product:before {
  content: '\e80c';
}
/* '' */
.sf-icon-question_feed:before {
  content: '\e80d';
}
/* '' */
.sf-icon-warning:before {
  content: '\e80e';
}
/* '' */
.sf-icon-user:before {
  content: '\e80f';
}
/* '' */
.sf-icon-right:before {
  content: '\e810';
}
/* '' */
.sf-icon-notification:before {
  content: '\e811';
}
/* '' */
.sf-icon-home:before {
  content: '\e812';
}
/* '' */
.sf-icon-contract:before {
  content: '\e813';
}
/* '' */
.sf-icon-adduser:before {
  content: '\e814';
}
/* '' */
.sf-icon-apps:before {
  content: '\e815';
}
/* '' */
.sf-icon-copy:before {
  content: '\e816';
}
/* '' */
.sf-icon-image:before {
  content: '\e817';
}
/* '' */
.sf-icon-open:before {
  content: '\e818';
}
/* '' */
.sf-icon-settings:before {
  content: '\e819';
}
/* '' */
.sf-icon-zoomin:before {
  content: '\e81a';
}
/* '' */
.sf-icon-record:before {
  content: '\e81b';
}
/* '' */
.sf-icon-arrowdown:before {
  content: '\e81c';
}
/* '' */
.sf-icon-cut:before {
  content: '\e81d';
}
/* '' */
.sf-icon-insert_template:before {
  content: '\e81e';
}
/* '' */
.sf-icon-opened_folder:before {
  content: '\e81f';
}
/* '' */
.sf-icon-side_list:before {
  content: '\e820';
}
/* '' */
.sf-icon-zoomout:before {
  content: '\e821';
}
/* '' */
.sf-icon-quotes:before {
  content: '\e822';
}
/* '' */
.sf-icon-related_list:before {
  content: '\e823';
}
/* '' */
.sf-icon-gdoc:before {
  content: '\e824';
}
/* '' */
.sf-icon-snippet:before {
  content: '\e825';
}
/* '' */
.sf-icon-page:before {
  content: '\e826';
}
/* '' */
.sf-icon-custom_apps:before {
  content: '\e827';
}
/* '' */
.sf-icon-arrowup:before {
  content: '\e828';
}
/* '' */
.sf-icon-attach:before {
  content: '\e829';
}
/* '' */
.sf-icon-dayview:before {
  content: '\e82a';
}
/* '' */
.sf-icon-info:before {
  content: '\e82b';
}
/* '' */
.sf-icon-insert_tag_field:before {
  content: '\e82c';
}
/* '' */
.sf-icon-paste:before {
  content: '\e82d';
}
/* '' */
.sf-icon-sort:before {
  content: '\e82e';
}
/* '' */
.sf-icon-pdf:before {
  content: '\e82f';
}
/* '' */
.sf-icon-report:before {
  content: '\e830';
}
/* '' */
.sf-icon-task:before {
  content: '\e831';
}
/* '' */
.sf-icon-approval:before {
  content: '\e832';
}
/* '' */
.sf-icon-socialshare:before {
  content: '\e833';
}
/* '' */
.sf-icon-people:before {
  content: '\e834';
}
/* '' */
.sf-icon-italic:before {
  content: '\e835';
}
/* '' */
.sf-icon-delete:before {
  content: '\e836';
}
/* '' */
.sf-icon-back:before {
  content: '\e837';
}
/* '' */
.sf-icon-ban:before {
  content: '\e838';
}
/* '' */
.sf-icon-email:before {
  content: '\e839';
}
/* '' */
.sf-icon-bold:before {
  content: '\e83a';
}
/* '' */
.sf-icon-preview:before {
  content: '\e83b';
}
/* '' */
.sf-icon-share:before {
  content: '\e83c';
}
/* '' */
.sf-icon-dashboard:before {
  content: '\e83d';
}
/* '' */
.sf-icon-thanks:before {
  content: '\e83e';
}
/* '' */
.sf-icon-today:before {
  content: '\e83f';
}
/* '' */
.sf-icon-contract-1:before {
  content: '\e840';
}
/* '' */
.sf-icon-spinner:before {
  content: '\e841';
}
/* '' */
.sf-icon-photo:before {
  content: '\e842';
}
/* '' */
.sf-icon-event:before {
  content: '\e843';
}
/* '' */
.sf-icon-builder:before {
  content: '\e844';
}
/* '' */
.sf-icon-justify_text:before {
  content: '\e845';
}
/* '' */
.sf-icon-center_align_text:before {
  content: '\e846';
}
/* '' */
.sf-icon-edit:before {
  content: '\e847';
}
/* '' */
.sf-icon-layout:before {
  content: '\e848';
}
/* '' */
.sf-icon-priority:before {
  content: '\e849';
}
/* '' */
.sf-icon-standard_objects:before {
  content: '\e84a';
}
/* '' */
.sf-icon-contact:before {
  content: '\e84b';
}
/* '' */
.sf-icon-custom93:before {
  content: '\e84c';
}
/* '' */
.sf-icon-email-1:before {
  content: '\e84d';
}
/* '' */
.sf-icon-success:before {
  content: '\e84e';
}
/* '' */
.sf-icon-refresh:before {
  content: '\e84f';
}
/* '' */
.sf-icon-left_align_text:before {
  content: '\e850';
}
/* '' */
.sf-icon-down:before {
  content: '\e851';
}
/* '' */
.sf-icon-chart:before {
  content: '\e852';
}
/* '' */
.sf-icon-chat:before {
  content: '\e853';
}
/* '' */
.sf-icon-error:before {
  content: '\e854';
}
/* '' */
.sf-icon-left:before {
  content: '\e855';
}
/* '' */
.sf-icon-remove_link:before {
  content: '\e856';
}
/* '' */
.sf-icon-summary:before {
  content: '\e857';
}
/* '' */
.sf-icon-document:before {
  content: '\e858';
}
/* '' */
.sf-icon-drafts:before {
  content: '\e859';
}
/* '' */
.sf-icon-summarydetail:before {
  content: '\e85a';
}
/* '' */
.sf-icon-replace:before {
  content: '\e85b';
}
/* '' */
.sf-icon-like:before {
  content: '\e85c';
}
/* '' */
.sf-icon-download:before {
  content: '\e85d';
}
/* '' */
.sf-icon-check:before {
  content: '\e85e';
}
/* '' */
.sf-icon-chevronleft:before {
  content: '\e85f';
}
/* '' */
.sf-icon-expand:before {
  content: '\e860';
}
/* '' */
.sf-icon-link:before {
  content: '\e861';
}
/* '' */
.sf-icon-reply:before {
  content: '\e862';
}
/* '' */
.sf-icon-table:before {
  content: '\e863';
}
/* '' */
.sf-icon-feed:before {
  content: '\e864';
}
/* '' */
.sf-icon-event-1:before {
  content: '\e865';
}
/* '' */
.sf-icon-tile_card_list:before {
  content: '\e866';
}
/* '' */
.sf-icon-richtextbulletedlist:before {
  content: '\e867';
}
/* '' */
.sf-icon-list:before {
  content: '\e868';
}
/* '' */
.sf-icon-favorite:before {
  content: '\e869';
}
/* '' */
.sf-icon-chevronright:before {
  content: '\e86a';
}
/* '' */
.sf-icon-chevrondown:before {
  content: '\e86b';
}
/* '' */
.sf-icon-filter:before {
  content: '\e86c';
}
/* '' */
.sf-icon-move:before {
  content: '\e86d';
}
/* '' */
.sf-icon-richtextindent:before {
  content: '\e86e';
}
/* '' */
.sf-icon-underline:before {
  content: '\e86f';
}
/* '' */
.sf-icon-feedback:before {
  content: '\e870';
}
/* '' */
.sf-icon-file:before {
  content: '\e871';
}
/* '' */
.sf-icon-undo:before {
  content: '\e872';
}
/* '' */
.sf-icon-richtextnumberedlist:before {
  content: '\e873';
}
/* '' */
.sf-icon-lock:before {
  content: '\e874';
}
/* '' */
.sf-icon-filterlist:before {
  content: '\e875';
}
/* '' */
.sf-icon-chevronup:before {
  content: '\e876';
}
/* '' */
.sf-icon-clear:before {
  content: '\e877';
}
/* '' */
.sf-icon-forward:before {
  content: '\e878';
}
/* '' */
.sf-icon-new_window:before {
  content: '\e879';
}
/* '' */
.sf-icon-richtextoutdent:before {
  content: '\e87a';
}
/* '' */
.sf-icon-unlock:before {
  content: '\e87b';
}
/* '' */
.sf-icon-opportunity:before {
  content: '\e87c';
}
/* '' */
.sf-icon-post:before {
  content: '\e87d';
}
/* '' */
.sf-icon-up:before {
  content: '\e87e';
}
/* '' */
.sf-icon-search:before {
  content: '\e87f';
}
/* '' */
.sf-icon-new:before {
  content: '\e880';
}
/* '' */
.sf-icon-frozen:before {
  content: '\e881';
}
/* '' */
.sf-icon-comments:before {
  content: '\e882';
}
/* '' */
.sf-icon-recent:before {
  content: '\e883';
}
/* '' */
.sf-icon-magicwand:before {
  content: '\e884';
}
/* '' */
.sf-icon-discountscheduleicons-02:before {
  content: '\e885';
}
/* '' */
.sf-icon-cancel-circled:before {
  content: '\e886';
}
/* '' */
.sf-icon-custom26:before {
  content: '\e887';
}
/* '' */
/* The following is copied from icons/css/sb-embedded.css as less-plugin-clean-css could handle a @import */
@font-face {
  font-family: 'sb';
  src: url('../font/sb.eot?49340248');
  src: url('../font/sb.eot?49340248#iefix') format('embedded-opentype'), url('../font/sb.svg?49340248#sb') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'sb';
  src: url('data:application/octet-stream;base64,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') format('woff'), url('data:application/octet-stream;base64,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') format('truetype');
}
/* Chrome hack: SVG is rendered more smooth in Windozze. 100% magic, uncomment if you need it. */
/* Note, that will break hinting! In other OS-es font will be not as sharp as it could be */
/*
@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: 'sb';
    src: url('../font/sb.svg?49340248#sb') format('svg');
  }
}
*/
[class^="sb-icon-"]:before,
[class*=" sb-icon-"]:before {
  font-family: "sb";
  font-style: normal;
  font-weight: normal;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-right: .2em;
  text-align: center;
  /* opacity: .8; */
  /* For safety - reset parent styles, that can break glyph codes*/
  font-variant: normal;
  text-transform: none;
  /* fix buttons height, for twitter bootstrap */
  line-height: 1em;
  /* Animation center compensation - margins should be symmetric */
  /* remove if not needed */
  margin-left: .2em;
  /* you can be more comfortable with increased icons size */
  /* font-size: 120%; */
  /* Uncomment for 3D effect */
  /* text-shadow: 1px 1px 1px rgba(127, 127, 127, 0.3); */
}
.sb-icon-filter:before {
  content: '\e800';
}
/* '' */
.sb-icon-th-large:before {
  content: '\e801';
}
/* '' */
.sb-icon-th:before {
  content: '\e802';
}
/* '' */
.sb-icon-th-list:before {
  content: '\e803';
}
/* '' */
.sb-icon-pencil:before {
  content: '\e804';
}
/* '' */
.sb-icon-cancel:before {
  content: '\e805';
}
/* '' */
.sb-icon-plus:before {
  content: '\e806';
}
/* '' */
.sb-icon-cog:before {
  content: '\e807';
}
/* '' */
.sb-icon-align-justify:before {
  content: '\e808';
}
/* '' */
.sb-icon-ok:before {
  content: '\e809';
}
/* '' */
.sb-icon-lock:before {
  content: '\e80a';
}
/* '' */
.sb-icon-exchange:before {
  content: '\e80b';
}
/* '' */
.sb-icon-down:before {
  content: '\e80c';
}
/* '' */
.sb-icon-up:before {
  content: '\e80d';
}
/* '' */
.sb-icon-help-circled:before {
  content: '\e80e';
}
/* '' */
.sb-icon-info-circled:before {
  content: '\e80f';
}
/* '' */
.sb-icon-sort-name-up:before {
  content: '\e810';
}
/* '' */
.sb-icon-sort-name-down:before {
  content: '\e811';
}
/* '' */
.sb-icon-down-dir:before {
  content: '\e812';
}
/* '' */
.sb-icon-up-dir:before {
  content: '\e813';
}
/* '' */
.sb-icon-compass:before {
  content: '\e814';
}
/* '' */
.sb-icon-right-dir:before {
  content: '\e815';
}
/* '' */
.sb-icon-left-dir:before {
  content: '\e816';
}
/* '' */
.sb-icon-docs:before {
  content: '\e817';
}
/* '' */
.sb-icon-circle-empty:before {
  content: '\e818';
}
/* '' */
.sb-icon-dot-circled:before {
  content: '\e819';
}
/* '' */
.sb-icon-to-end:before {
  content: '\e81a';
}
/* '' */
.sb-icon-to-start:before {
  content: '\e81b';
}
/* '' */
.sb-icon-fast-forward:before {
  content: '\e81c';
}
/* '' */
.sb-icon-fast-backward:before {
  content: '\e81d';
}
/* '' */
.sb-icon-cw:before {
  content: '\e81e';
}
/* '' */
.sb-icon-level-down:before {
  content: '\e81f';
}
/* '' */
.sb-icon-attention:before {
  content: '\e820';
}
/* '' */
.sb-icon-attention-circled:before {
  content: '\e821';
}
/* '' */
.sb-icon-search:before {
  content: '\e822';
}
/* '' */
.sb-icon-ccw:before {
  content: '\e823';
}
/* '' */
.sb-icon-star:before {
  content: '\e824';
}
/* '' */
.sb-icon-star-empty:before {
  content: '\e825';
}
/* '' */
/* end of import from sb-embedded.css */
.sb *[class^="sb-icon-"]:before,
.sb *[class*=" sb-icon-"]:before {
  font-family: 'sb';
  color: inherit;
  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.sb-icon-exchange:before {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
.sb-icon-loading {
  width: 148px;
  text-align: center;
}
.sb-icon-loading > div {
  width: 36px;
  height: 18px;
  margin: 2px;
  background-color: #0070d2;
  border-radius: 10%;
  display: inline-block;
  -webkit-animation: bouncedelay 1.4s infinite ease-in-out;
  animation: bouncedelay 1.4s infinite ease-in-out;
  /* Prevent first frame from flickering when animation starts */
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}
.sb-icon-loading .sb-icon-bounce1 {
  -webkit-animation-delay: -0.32s;
  animation-delay: -0.32s;
}
.sb-icon-loading .sb-icon-bounce2 {
  -webkit-animation-delay: -0.16s;
  animation-delay: -0.16s;
}
.sbPageTitle .sf-icon-custom93 {
  background-color: #904D4C;
}
.sbPageTitle .sf-icon-product {
  background-color: #B781D3;
}
.sbPageTitle .sf-icon-settings {
  background-color: #EDB566;
}
.sbPageTitle .sf-icon-download {
  background-color: #54698D;
}
.sbPageTitle .sf-icon-contract-1 {
  background-color: #6EC06E;
}
.sbPageTitle .sf-icon-approval {
  background-color: #00C6B7;
}
.sbPageTitle .sf-icon-post {
  background-color: #65CAE4;
}
.sbPageTitle .sf-icon-gdoc {
  background-color: #54698D;
}
.sbPageTitle .sf-icon-recent {
  background-color: #6CA1E9;
}
.sbPageTitle .sf-icon-copy {
  background-color: #6CA0E9;
}
.sbPageTitle .sf-icon-favorite {
  background-color: #FF7B84;
}
.sbPageTitle .sf-icon-refresh.resize {
  background-color: #6CA0E9;
}
.sbPageTitle .sf-icon-replace {
  background-color: #54698D;
}
@-webkit-keyframes bouncedelay {
  0%,
  80%,
  100% {
    -webkit-transform: scale(0);
  }
  40% {
    -webkit-transform: scale(1);
  }
}
@keyframes bouncedelay {
  0%,
  80%,
  100% {
    transform: scale(0);
    -webkit-transform: scale(0);
  }
  40% {
    transform: scale(1);
    -webkit-transform: scale(1);
  }
}
#bodyCell {
  position: relative;
  overflow: hidden;
  padding: 0px;
  display: inline-block;
  width: 100%;
  min-height: 500px;
}
#bodyDiv_setup > .outer {
  background-color: #ffffff !important;
}
#bodyDiv_setup > .outer .oLeft {
  background-color: #f4f6f9 !important;
}
#sidebarCell.sidebarCollapsed {
  padding-left: 0;
}
#sidebarCell.sidebarCollapsed + #bodyCell {
  margin-left: -1px;
}
#MoreTabs_Tab > #MoreTabs_List {
  z-index: 10;
}
table td {
  font-family: inherit;
}
.sb ul li,
.sb ol li {
  margin: 0;
  padding: 0;
}
.sb .message {
  border-radius: 3px;
  margin: 15px 15px 0 24px;
  padding: 12px;
  font-size: 14px;
  color: #16325C;
  display: inline-block;
  background: none;
}
.sb .message .msgIcon {
  background: none;
  width: 0;
  height: 0;
}
.sb .message .messageText {
  margin: 0 0 0 30px;
}
.sb .message .messageText > span,
.sb .message .messageText h4,
.sb .message .messageText > div {
  display: inline-block;
  vertical-align: top;
  line-height: 20px;
}
.sb .message .messageText h4 {
  margin-left: 10px;
  margin-right: 6px;
}
.sb .message .messageText > div:not(:first-of-type) {
  display: block;
}
.sb .message .messageText:before {
  font-family: "sb";
  font-style: normal;
  font-weight: normal;
  font-size: 20px;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-left: -30px;
  text-align: center;
  font-variant: normal;
  text-transform: none;
  line-height: 1em;
}
.sb .message.errorM2 .messageText,
.sb .message.errorM3 .messageText,
.sb .message.errorM4 .messageText,
.sb .message.errorM5 .messageText,
.sb .message.errorM6 .messageText {
  color: #cc0000;
}
.sb .message.errorM2 .messageText:before,
.sb .message.errorM3 .messageText:before,
.sb .message.errorM4 .messageText:before,
.sb .message.errorM5 .messageText:before,
.sb .message.errorM6 .messageText:before {
  content: '\e821';
}
.sb .message.warningM2 .messageText,
.sb .message.warningM3 .messageText,
.sb .message.warningM4 .messageText,
.sb .message.warningM5 .messageText,
.sb .message.warningM6 .messageText {
  color: #d98633;
}
.sb .message.warningM2 .messageText:before,
.sb .message.warningM3 .messageText:before,
.sb .message.warningM4 .messageText:before,
.sb .message.warningM5 .messageText:before,
.sb .message.warningM6 .messageText:before {
  content: '\e820';
}
.sb .message.infoM2 .messageText,
.sb .message.infoM3 .messageText,
.sb .message.infoM4 .messageText,
.sb .message.infoM5 .messageText,
.sb .message.infoM6 .messageText {
  color: #0000cc;
}
.sb .message.infoM2 .messageText:before,
.sb .message.infoM3 .messageText:before,
.sb .message.infoM4 .messageText:before,
.sb .message.infoM5 .messageText:before,
.sb .message.infoM6 .messageText:before {
  content: '\e80f';
}
.sb,
.ui-tooltip {
  font-size: 10px;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif !important;
}
.sb * {
  box-sizing: border-box;
}
.sb *.hidden {
  display: none;
}
.sbClear,
.sbPageBlockSection:after {
  content: "";
  display: table;
  clear: both;
}
.sbLink {
  color: #0070D2;
}
#sbCpqSettings {
  padding: 15px;
}
#sbCpqSettings .bPageBlock {
  border: 0 !important;
  background: none !important;
}
#sbCpqSettings .sbTabs {
  font-family: inherit;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line {
  border-bottom: 1px solid #d0d0d0;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-cell-active {
  border-bottom: 4px solid #166bbf;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-side-border {
  display: none;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-side-cell {
  border: 0;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tab-active,
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tab-inactive {
  background: none !important;
  font-size: 14px !important;
  padding: 0 16px 6px 16px;
}
#sbCpqSettings .sbTabs .rich-tab-header,
#sbCpqSettings .sbTabs .rich-tabpanel-content {
  font-family: inherit !important;
  font-size: inherit !important;
}
#sbCpqSettings .sbTabs .rich-tabpanel-content {
  background: none !important;
  border: 0 !important;
}
#sbCpqSettings .sbTabs .labelCol,
#sbCpqSettings .sbTabs .dataCol {
  padding-top: 8px;
  padding-bottom: 8px;
  vertical-align: middle;
}
#sbCpqSettings .sbTabs .labelCol,
#sbCpqSettings .sbTabs .data2Col {
  font-size: 14px;
  font-weight: normal;
}
#sbCpqSettings .sbTabs input:not([type=submit]):not([type=checkbox]),
#sbCpqSettings .sbTabs select {
  font-size: 14px;
  width: 220px !important;
}
#sbCpqSettings .sbTabs .sbBtn {
  font-size: inherit;
}
.themePage .sbHeaderBgColor {
  color: #f4f6f9;
}
.themePage .sbHeaderSecondaryBgColor {
  color: #f4f6f9;
}
.themePage .sbHeaderBorderColor {
  color: #d0d0d0;
}
.themePage .sbHeaderFontColor {
  color: #16325c;
}
.themePage .sbHeaderSupportFontColor {
  color: #54698d;
}
.themePage .sbBgColor {
  color: #ffffff;
}
.themePage .sbDetailBgColor {
  color: #f4f6f9;
}
.themePage .sbFontColor {
  color: #16325C;
}
.themePage .sbSecondaryFontColor {
  color: #696969;
}
.themePage .sbBorderColor {
  color: #D8DDE6;
}
.themePage .sbTableHeaderFontColor {
  color: #54698d;
}
.themePage .sbTableRowHoverColor {
  color: #F4F6F9;
}
.themePage .sbGroupBtnBgColor {
  color: #ffffff;
}
.themePage .sbGroupBtnBorderColor {
  color: #d8dde6;
}
.themePage .sbGroupBtnFontColor {
  color: #0070d2;
}
.themePage .sbGroupBtnHoverBgColor {
  color: #f4f6f9;
}
.themePage .sbGroupBtnHoverFontColor {
  color: #0070d2;
}
.themePage .sbGroupBtnDisabledFontColor {
  color: #bebebe;
}
.themePage .sbPrimaryBtnBgColor {
  color: #0070d2;
}
.themePage .sbPrimaryBtnFontColor {
  color: #ffffff;
}
.themePage .sbPrimaryBtnHoverBgColor {
  color: #005fb2;
}
.themePage .sbAccentIconColor {
  color: #0070d2;
}
.themePage .sbAccentIconHoverColor {
  color: #16325c;
}
.themePage .sbAccentIconDisabledColor {
  color: #888888;
}
.themePage .sbIconColor {
  color: #888;
}
.themePage .sbTabSelectedColor {
  color: #166bbf;
}
.themePage {
  color: #16325C;
  background-color: #ffffff;
}
.themePage .sbTitles h2 {
  color: #54698d;
}
.themePage .sbBtn {
  background: #ffffff;
  color: #0070d2;
  border-color: #d8dde6;
}
.themePage .sbBtn:hover {
  background: #f4f6f9;
  color: #0070d2;
}
.themePage .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  border-color: #0070d2;
  color: #ffffff;
}
.themePage .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
.themePage .normal.sf-icon-copy:before {
  color: #888;
}
.themePage .accent.sf-icon-copy:before {
  color: #0070d2;
}
.themePage .accent.sf-icon-copy:hover::before {
  color: #16325c;
}
.themePage .disabled.sf-icon-copy:before {
  color: #888888;
}
.themePage .sf-icon-copy {
  font-size: 24px;
  padding-right: 40px;
}
.themePage .sbTable > tbody > tr > td {
  font-size: 10px;
}
.themePage .demoItems {
  border: 1px solid #000000;
  padding: 0px;
  margin-left: 60px;
  margin-right: 60px;
  padding-top: 20px;
  padding-bottom: 20px;
  padding-left: 20px;
  padding-right: 20px;
  margin-top: 40px;
  border-color: #D8DDE6 !important;
}
.themePage .bottomPadding {
  padding-bottom: 40px;
}
.themePage .themeHeader {
  padding-top: 40px;
  padding-left: 60px;
  padding-bottom: 10px;
  border-bottom-style: solid !important;
  border-bottom-width: 1px !important;
  border-bottom-color: #D8DDE6 !important;
}
.themePage .themeHeader h3 {
  color: #16325C !important;
}
.themePage .colorPickWrapper {
  width: 300px;
  display: inline-block;
  margin-left: 55px;
  margin-right: 55px;
  margin-top: 40px;
}
.themePage .colorPickWrapper span {
  position: relative;
  top: 11px;
}
.themePage .backgroundHide {
  display: none;
}
.themePage .sp-replacer.sp-light.full-spectrum {
  float: right;
  margin-right: 10px;
}
.themePage .content {
  font-size: 14px;
}
.themePage .sbButtons {
  margin-left: 10px;
}
.themePage .sp-replacer {
  border-color: #d8dde6 !important;
  padding: 0 !important;
  background-color: inherit !important;
  border-radius: 5px;
}
.themePage .sp-dd {
  line-height: 40px !important;
  height: 40px!important;
}
.themePage .sp-preview {
  margin-right: 0px !important;
  width: 40px !important;
  height: 40px !important;
  border-width: 0px !important;
}
.themePage .sp-container {
  background-color: #ffffff !important;
  border: 1px solid #d8dde6 !important;
  border-radius: 5px!important;
}
#sbTranslate .sbDescription {
  width: 90%;
}
#sbTranslate .sbLongTextArea {
  width: 90%;
  border: 1px solid #D8DDE6;
}
#sbTranslate .sbPageBlockSection {
  background: none;
  border: none;
}
#sbTranslate .sbPageBlockSection select {
  min-width: 200px;
  font-size: 14px;
}
#sbTranslate .sbPageBlockSection > span {
  font-size: 14px;
  padding: 0 20px 0 40px;
}
#sbTranslate .sbFieldsTable {
  margin-top: 0;
  padding-top: 0;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td {
  height: 49px;
  vertical-align: middle;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(1),
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(2) {
  width: 20%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(3) {
  width: 60%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td > input,
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td textarea {
  width: 100%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td > textarea {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 35px;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(1) {
  width: 15%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(2) {
  width: 30%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(3) {
  width: 55%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td > input,
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td textarea {
  width: 100%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td > textarea {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 35px;
}
#sbTranslate .sbTable .sbButtons {
  background: none;
}
#sbTranslate .sbTable .sbButtons .sbBtn {
  width: 35px;
  height: 40px;
}
#sbTranslate .cke_textarea_inline {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 70px;
}
#sbAssetSearch .sbTable {
  font-size: 10px;
}
#sbAssetSearch .sbTable > thead > tr > th:first-of-type,
#sbAssetSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbAssetSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbAssetSearch .sbTools {
  float: right;
}
#sbAssetSearch .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbAssetSearch .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
}
#sbAssetSearch .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
#sbAssetSearch .sbPageBlockSection {
  background: none;
  border: none;
}
#sbAssetSearch .sbPageBlockSection header {
  margin-bottom: 10px;
}
#sbAssetSearch table.sbTable {
  margin-bottom: 50px;
}
#sbAssetSearch .paginationControlsWrapper {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  pointer-events: none;
}
#sbAssetSearch .paginationControls {
  padding: 4px;
  text-align: center;
  vertical-align: middle;
  margin-left: auto;
  margin-right: auto;
  width: 250px;
  pointer-events: auto;
  background-color: #ffffff;
  -webkit-border-top-left-radius: 4px;
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topleft: 4px;
  -moz-border-radius-topright: 4px;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  -webkit-box-shadow: 3px 0px 5px 0px #aaaaaa;
  -moz-box-shadow: 3px 0px 5px 0px #aaaaaa;
  box-shadow: 3px 0px 5px 0px #aaaaaa;
}
#sbAssetSearch .paginationControls span {
  vertical-align: middle;
}
#sbAssetSearch .paginationControls input {
  height: auto;
  width: 30px;
  margin: 0 5px;
  font-size: 10px;
  padding: 2px;
  text-align: center;
}
#sbAssetSearch .paginationControls [class^=sb-icon] {
  font-size: 20px;
  margin-right: -5px;
  vertical-align: middle;
}
#sbAssetSearch .paginationControls [class^=sb-icon].disabled {
  color: #888888;
}
#sbAssetSearch .paginationControls [class^=sb-icon]:not(.disabled) {
  cursor: pointer;
}
#sbAssetSearch .paginationControls .sb-icon-left-dir,
#sbAssetSearch .paginationControls .sb-icon-right-dir {
  font-size: 20px;
}
.sbAssetFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 113px;
}
.sbAssetFilter.open {
  right: 0px;
  display: block;
}
.sbAssetFilter > a {
  text-align: right;
  font-size: 14px;
}
.sbAssetFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbAssetFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbAssetFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbAssetFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbAssetFilter fieldset input,
.sbAssetFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbAssetFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbAssetFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbAssetFilter input {
  display: inline;
}
.sbAssetFilter div > a {
  text-align: right;
  display: flex;
  font-size: 14px;
}
#sbSelectContract .sbTable {
  font-size: 10px;
}
#sbSelectContract .sbTable > thead > tr > th:first-of-type,
#sbSelectContract .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbSelectContract .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbSelectContract .sbTools {
  float: right;
}
#sbSelectContract .sbPageBlockSection {
  background: #ffffff;
  border: none;
}
#sbAmendContract .sbTable {
  font-size: 10px;
}
#sbAmendContract .sbTable > thead > tr > th:first-of-type,
#sbAmendContract .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbAmendContract .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbAmendContract .sbTools {
  float: right;
}
#sbAmendContract .sbPageBlockSection {
  background: #ffffff;
  border: none;
}
#sbAmendContract .sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon]:before {
  top: 0px;
}
#sbAmendContract .sbLoadingMask {
  visibility: hidden;
}
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbAmendContract .sbPageTitleRight {
    display: block;
    text-align: center;
  }
  #sbAmendContract .sbPageTitleRight .sbButtons {
    float: none;
  }
}
/*
Document Generation Preview page

Previews a document in the browser with chosen template, additional docs, etc.
*/
#sbDocGenPreview .sbPageBlockSection {
  display: inline-block;
  padding: 0;
  background: none;
  border: none;
  margin-right: 44px;
}
#sbDocGenPreview .sbPageBlockSection:last-of-type {
  margin-right: inherit;
}
#sbDocGenPreview .sbDualListBox select {
  width: 320px;
}
/*
Document Generation options

Choices for document generation such as template, output format, etc.
*/
#sbDocGenOptions {
  margin: 0 0 0 40px;
}
#sbDocGenOptions label {
  font-size: 14px;
}
#sbDocGenOptions > tbody > tr > td {
  vertical-align: middle;
  padding-bottom: 8px;
}
#sbDocGenOptions > tbody > tr > td:first-of-type {
  text-align: right;
}
#sbDocGenOptions > tbody > tr > td:first-of-type > [class^=sb-icon] {
  font-size: 15px;
  color: #888;
}
#sbDocGenOptions input,
#sbDocGenOptions select {
  width: 220px;
}
#sbDocGenOptions .sbDualListBox select {
  width: 320px;
}
#sbImportLines #sbImportOptions {
  margin: 0 0 0 40px;
}
#sbImportLines #sbImportOptions fieldset {
  border: 0;
  padding: 5px;
}
#sbImportLines #sbImportOptions fieldset > label {
  margin-right: 10px;
  font-size: 14px;
  display: inline-block;
  width: 175px;
  text-align: right;
}
#sbImportLines #sbImportOptions fieldset > input,
#sbImportLines #sbImportOptions fieldset select {
  width: 200px;
}
#sbImportLines .sbPageBlockSection {
  background: none;
  border: none;
}
#sbImportLines .sbPageBlockSection header {
  margin-bottom: 10px;
}
#sbLineEditor .sbPageTitle .sbPageTitleRight {
  text-align: right;
}
#sbLineEditor .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbLineEditor .sbPageTitle .sbTools {
  margin-left: 16px;
  padding: 7px 0;
  transition: all 0.25s ease-in;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool {
  padding: 8px 12px;
  font-size: 14px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool.icon {
  padding: 8px 7px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool.sf-icon-down {
  padding-top: 8px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool .sf-icon-refresh:before {
  font-size: 1.1em;
  margin-top: 0.3em;
  margin-bottom: 0.3em;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool > menu .separator {
  border-bottom: 1px solid #D8DDE6;
  margin-bottom: 6px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool > [class^=sb-icon] {
  font-size: 14px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbToolSeparator {
  display: inline-block;
  height: 1px;
  width: 10px;
  float: left;
}
#sbLineEditor .sbQuoteActions .renewSubscriptionsBtn,
#sbLineEditor .sbGroupActions .renewSubscriptionsBtn,
#sbLineEditor .sbQuoteActions .upgradeAssetsBtn,
#sbLineEditor .sbGroupActions .upgradeAssetsBtn,
#sbLineEditor .sbQuoteActions .resetDiscBtn,
#sbLineEditor .sbGroupActions .resetDiscBtn,
#sbLineEditor .sbQuoteActions .optionalAllBtn,
#sbLineEditor .sbGroupActions .optionalAllBtn,
#sbLineEditor .sbQuoteActions .optionalNoneBtn,
#sbLineEditor .sbGroupActions .optionalNoneBtn,
#sbLineEditor .sbQuoteActions .deleteLinesBtn,
#sbLineEditor .sbGroupActions .deleteLinesBtn,
#sbLineEditor .sbQuoteActions .addGroupBtn,
#sbLineEditor .sbGroupActions .addGroupBtn,
#sbLineEditor .sbQuoteActions .ungroupBtn,
#sbLineEditor .sbGroupActions .ungroupBtn {
  display: none;
}
#sbLineEditor .sbQuoteActions .sbTool.first,
#sbLineEditor .sbGroupActions .sbTool.first {
  border: 1px solid #d8dde6;
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
#sbLineEditor .sbQuoteActions .sbTool.end,
#sbLineEditor .sbGroupActions .sbTool.end,
#sbLineEditor .sbQuoteActions .sbTool.last,
#sbLineEditor .sbGroupActions .sbTool.last {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 3px;
}
#sbLineEditor .sbQuoteActions .sbTool.sbToolSeparator,
#sbLineEditor .sbGroupActions .sbTool.sbToolSeparator {
  padding: 0;
  border: none;
  background-color: inherit;
}
#sbLineEditor .sbQuoteActions .sbTool.sbToolSeparator + .sbTool,
#sbLineEditor .sbGroupActions .sbTool.sbToolSeparator + .sbTool {
  border-left: 1px solid #d8dde6;
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool {
  padding: 0;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:hover {
  background-color: #fff;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool > span,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool > span,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool i,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool i {
  display: inline-block;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool > span:hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool > span:hover,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool i:hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool i:hover {
  background-color: #F4F6F9;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool > span.label,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool > span.label,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool > i,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool > i {
  padding: 8px 12px;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool > span.sf-icon-down,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool > span.sf-icon-down {
  padding: 8px 4px;
  border-left: 1px solid #d8dde6;
}
#sbLineEditor.upgradable li.upgradeAssetsBtn {
  display: block;
}
#sbLineEditor.renewable li.renewSubscriptionsBtn {
  display: block;
}
#sbLineEditor.discountable li.resetDiscBtn {
  display: block;
}
#sbLineEditor.optional:not(.allSelected) .sbQuoteActions li.optionalAllBtn,
#sbLineEditor.optional.allSelected .sbQuoteActions li.optionalNoneBtn {
  display: block;
}
#sbLineEditor.optional .sbGroupActions li.optionalAllBtn,
#sbLineEditor.optional .sbGroupActions li.optionalNoneBtn {
  display: block;
}
#sbLineEditor.multiDelete .sbQuoteActions .deleteLinesBtn {
  display: block;
}
#sbLineEditor.groupable li.addGroupBtn {
  display: block;
}
#sbLineEditor.ungroupable li.addGroupBtn {
  display: none;
}
#sbLineEditor.ungroupable li.addGroupBtn,
#sbLineEditor.ungroupable li.ungroupBtn {
  display: block;
}
#sbLineEditor .sbQuoteActions ul,
#sbLineEditor .sbGroupActions ul {
  list-style-type: none;
}
#sbLineEditor .sbQuoteActions ul.sbTools,
#sbLineEditor .sbGroupActions ul.sbTools {
  padding: 0;
  margin: 0;
}
#sbLineEditor .sbQuoteActions ul li,
#sbLineEditor .sbGroupActions ul li {
  display: block;
  position: relative;
  color: #0070D2;
  font-size: 14px;
}
#sbLineEditor .sbQuoteActions ul li.action > .label:hover,
#sbLineEditor .sbGroupActions ul li.action > .label:hover {
  cursor: pointer;
  color: #16325C;
}
#sbLineEditor .sbQuoteActions ul li span.sf-icon-right,
#sbLineEditor .sbGroupActions ul li span.sf-icon-right,
#sbLineEditor .sbQuoteActions ul li span.sf-icon-down,
#sbLineEditor .sbGroupActions ul li span.sf-icon-down {
  cursor: pointer;
}
#sbLineEditor .sbQuoteActions ul li span.sf-icon-right.open + ul,
#sbLineEditor .sbGroupActions ul li span.sf-icon-right.open + ul,
#sbLineEditor .sbQuoteActions ul li span.sf-icon-down.open + ul,
#sbLineEditor .sbGroupActions ul li span.sf-icon-down.open + ul {
  display: block;
}
#sbLineEditor .sbQuoteActions ul ul,
#sbLineEditor .sbGroupActions ul ul {
  display: none;
  position: absolute;
  top: 100%;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
  z-index: 4;
  text-align: left;
}
#sbLineEditor .sbQuoteActions ul ul li,
#sbLineEditor .sbGroupActions ul ul li {
  padding: 5px 10px;
}
#sbLineEditor .sbQuoteActions ul ul ul,
#sbLineEditor .sbGroupActions ul ul ul {
  top: -1px;
}
#sbLineEditor .sbQuoteActions > ul,
#sbLineEditor .sbGroupActions > ul {
  display: inline-block;
  cursor: auto;
}
#sbLineEditor .sbQuoteActions > ul > li > ul,
#sbLineEditor .sbGroupActions > ul > li > ul {
  right: -1px;
}
#sbLineEditor .sbQuoteActions > ul > li.action > .label:hover,
#sbLineEditor .sbGroupActions > ul > li.action > .label:hover {
  color: #0070d2;
}
#sbLineEditor .sbQuoteActions ul li {
  font-size: 14px;
}
#sbLineEditor .sbQuoteActions > ul > li {
  margin-bottom: 10px;
}
#sbLineEditor .sbQuoteActions > ul > li.last ul ul {
  right: 100%;
}
#sbLineEditor .sbQuoteActions > ul > li:not(.last) ul ul {
  left: 100%;
}
#sbLineEditor .sbQuoteFields {
  margin: 15px 15px;
}
#sbLineEditor .sbQuoteFields header {
  margin-bottom: 10px;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td {
  padding: 5px 0;
  vertical-align: middle;
  font-size: 14px;
  white-space: nowrap;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td input,
#sbLineEditor .sbQuoteFields table > tbody > tr > td select {
  font-size: inherit;
  width: 140px;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class^=sb-icon] {
  font-size: 12px;
  color: #888;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class=sb-icon-search] {
  color: #0070d2;
  margin-left: 3px;
  vertical-align: middle;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class=sb-icon-search]:hover {
  color: #16325c;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td.sbLabel {
  text-align: right;
  vertical-align: middle;
  padding-right: 12px;
  width: 15%;
}
#sbLineEditor .sbTable input,
#sbLineEditor .sbTable select {
  font-size: inherit;
}
#sbLineEditor .sbTable input.sbSmall,
#sbLineEditor .sbTable select.sbSmall {
  max-width: 80px;
}
#sbLineEditor .sbTable input:disabled,
#sbLineEditor .sbTable select:disabled {
  background-color: #f4f6f9;
}
#sbLineEditor .sbTable input.hasDatepicker,
#sbLineEditor .sbTable select.hasDatepicker {
  min-width: 95px;
  width: 85%;
}
#sbLineEditor .sbTable > thead > tr > th:first-of-type,
#sbLineEditor .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbLineEditor .sbTable > thead > tr > th:last-of-type,
#sbLineEditor .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbTable select {
  min-width: 20px;
  margin-left: 4px;
}
#sbLineEditor .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbLineEditor .sbTable > tbody > tr > td.right input {
  text-align: right;
}
#sbLineEditor .sbTable > tbody > tr > td a > span[class^=sb-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor .sbTable > tbody > tr > td a > span[class^=sb-icon]:hover {
  color: #16325c;
}
#sbLineEditor .sbTable > tbody > tr > td .sf-icon-edit {
  visibility: hidden;
}
#sbLineEditor .sbTable > tbody > tr > td .sf-icon-edit.sbMDQicon {
  margin-right: -11em;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions {
  text-align: left;
  white-space: nowrap;
  width: 1%;
  padding-left: 15px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions .action:hover,
#sbLineEditor .sbTable > tbody > tr > td.sbActions .url:hover {
  cursor: pointer;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions > ul {
  display: inline-block;
  cursor: auto;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions > ul > li.menu {
  padding: 5px;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul {
  padding: 0;
  margin: 0;
  list-style-type: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li {
  display: inline-block;
  position: relative;
  color: #0070D2;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li.action > .label:hover {
  cursor: pointer;
  color: #16325C;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li span.sf-icon-right {
  cursor: pointer;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li span.sf-icon-right.open + ul {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li ul li {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul ul {
  display: none;
  position: absolute;
  top: -1px;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
  z-index: 4;
  text-align: left;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul ul li {
  padding: 5px 10px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions .sbAction {
  padding: 2px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions .sbAction.action {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.removable) .sb-icon-info-circled {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.removable) .sb-icon-info-circled:hover {
  cursor: auto;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .removeFromFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .deleteBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .removeFromFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .deleteBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable.favorite .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable:not(.favorite) .removeFromFavBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable.favorite ul ul .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable:not(.favorite) ul ul .removeFromFavBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.component) .cloneBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.component) ul ul .cloneBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.configurable .reconfigureBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.configurable ul ul .reconfigureBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable .desegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable .resegmentBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable ul ul .desegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable ul ul .resegmentBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable.segmented .resegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable:not(.segmented) .desegmentBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.dsEditable .viewDSBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.dsEditable ul ul .viewDSBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbDeleteCheckbox {
  width: 1%;
}
#sbLineEditor .sbTable tbody > tr > td:first-of-type.sbActions ul ul {
  left: 100%;
}
#sbLineEditor .sbTable tbody > tr > td:last-of-type.sbActions ul ul {
  right: 100%;
}
#sbLineEditor .sbTable > tbody > tr > td:hover .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbTable > tfoot > tr.sbTotalRow td {
  vertical-align: middle;
  white-space: nowrap;
  font-size: 14px;
}
#sbLineEditor .sbTable > tfoot > tr.sbTotalRow td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbTable .sbBundleOption {
  color: #696969;
}
#sbLineEditor .sbTable .sbIndent2 {
  padding-left: 25px;
}
#sbLineEditor .sbTable .sbIndent3 {
  padding-left: 50px;
}
#sbLineEditor .sbTable .sbIndent4 {
  padding-left: 75px;
}
#sbLineEditor .sbTable .sbIndent5 {
  padding-left: 100px;
}
#sbLineEditor .sbTable .sbIndent6 {
  padding-left: 125px;
}
#sbLineEditor .sbTable .sbIndent7 {
  padding-left: 150px;
}
#sbLineEditor .sbTable .sbIndent8 {
  padding-left: 175px;
}
#sbLineEditor .sbTable .sbIndent9 {
  padding-left: 200px;
}
#sbLineEditor .sbTable .sbIndent10 {
  padding-left: 225px;
}
#sbLineEditor .sbTable .sbDescriptionField span {
  vertical-align: middle;
}
#sbLineEditor .sbTable .sbDescriptionField .sb-icon-pencil {
  visibility: hidden;
}
#sbLineEditor .sbTable .sbDescriptionField:hover .sb-icon-pencil {
  visibility: visible;
}
#sbLineEditor .sbQuoteTotal {
  display: block;
  float: right;
  margin: 12px 22px 26px 0;
}
#sbLineEditor .sbQuoteTotal > span {
  margin-left: 10px;
}
#sbLineEditor .sbGroups,
#sbLineEditor .sbDimensionTabs {
  font-size: 14px;
  margin: 18px 15px;
  text-transform: uppercase;
  border-bottom: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroups > a,
#sbLineEditor .sbDimensionTabs > a {
  cursor: move;
  color: inherit;
  padding: 6px 16px 6px;
  display: inline-block;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit {
  color: #0070d2;
  visibility: hidden;
  cursor: pointer;
  position: absolute;
  right: -6px;
  top: 6px;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit:hover,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit:hover {
  color: #16325c;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit.visible,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit.visible {
  visibility: visible;
}
#sbLineEditor .sbGroups > a.selected,
#sbLineEditor .sbDimensionTabs > a.selected {
  border-bottom: 2px solid #166bbf;
}
#sbLineEditor .sbGroups > a:hover,
#sbLineEditor .sbDimensionTabs > a:hover {
  border-bottom: 2px solid #166bbf;
}
#sbLineEditor .sbGroups > a:hover > .sf-icon-edit,
#sbLineEditor .sbDimensionTabs > a:hover > .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbGroup > header {
  display: none;
}
#sbLineEditor .sbGroup.sbGrouped {
  background: #ffffff;
  margin: 15px 15px;
  border: 1px solid #d0d0d0;
  border-radius: 4px;
}
#sbLineEditor .sbGroup.sbGrouped > header {
  background-color: #f4f6f9;
  display: block;
  margin: 0;
  border: 0;
  padding: 10px 15px 5px;
  border-bottom: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroup.sbGrouped > header.sbHiddenHeader {
  display: none;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td {
  width: 50%;
  margin: 10px;
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type {
  border-right: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type > table > tbody > tr > td {
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type > table > tbody > tr:first-of-type > td:last-of-type {
  text-align: right;
  padding-right: 10px;
  min-width: 205px;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite {
  width: 5%;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite > i {
  font-size: 2em;
  display: inline-block;
  vertical-align: super;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite > i:hover {
  cursor: pointer;
}
#sbLineEditor .sbGroup.sbGrouped > header .sf-icon-edit {
  visibility: hidden;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader {
  display: inline-block;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader > input {
  font-size: 14px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader:hover .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbGroup.sbGrouped > header h2 {
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header h2:not(.sbGroupDragHandle) {
  cursor: pointer;
}
#sbLineEditor .sbGroup.sbGrouped > header h2 > [class=sb-icon-pencil] {
  visibility: hidden;
}
#sbLineEditor .sbGroup.sbGrouped > header h2:hover > [class=sb-icon-pencil] {
  visibility: visible;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupName {
  display: none;
  margin-right: 15px;
  height: 25px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions {
  display: inline-block;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions menu {
  max-height: 125px;
  overflow-y: auto;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions ul ul ul {
  left: 100%;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool {
  margin-bottom: 5px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool > span,
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool > i {
  padding: 6px 8px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool {
  height: 29px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription {
  margin-top: 10px;
  font-size: 14px;
  color: #888;
  cursor: pointer;
  display: table;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription > div,
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription > div > p {
  display: inline;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription:hover {
  color: inherit;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription:hover [class=sf-icon-edit] {
  visibility: visible;
  padding-left: 5px;
}
#sbLineEditor .sbGroup.sbGrouped .sbTable {
  margin-top: 10px;
}
#sbLineEditor .sbGroup .sbGroupFields {
  padding: 0 10px;
  font-size: 14px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr .sbLabel {
  text-align: right;
  padding-right: 5px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td {
  padding-bottom: 10px;
  vertical-align: middle;
  color: #16325C;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td .sbFieldRow {
  padding-bottom: 10px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td label {
  margin-right: 4px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td input:not([type=checkbox]) {
  height: 2em;
  width: 100px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td input[type=checkbox] {
  vertical-align: middle;
}
#sbLineEditor .sbGroup .sbGroupTotal {
  text-align: right;
  margin: 15px 22px 20px 0;
}
#sbLineEditor .sbEmptyGroupMsg,
#sbLineEditor .sbEmptyQuoteMsg,
#sbLineEditor .emptyMSTableMessage,
#sbLineEditor .emptyStandardTableMessage {
  font-size: 14px;
  padding: 15px;
}
#sbLineEditor .emptyMSTableMessage {
  clear: both;
}
#sbLineEditor .emptyMSTableMessage,
#sbLineEditor .emptyStandardTableMessage {
  padding: 15px 0 0 30px;
}
#sbLineEditor #sbPricebookMask,
#sbLineEditor #sbSegmentsMask,
#sbLineEditor #sbFavoritesMask,
#sbLineEditor #sbAlertMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbLineEditor #sbPricebookMask.close,
#sbLineEditor #sbSegmentsMask.close,
#sbLineEditor #sbFavoritesMask.close,
#sbLineEditor #sbAlertMask.close {
  display: none;
}
#sbLineEditor #sbSegmentsModal,
#sbLineEditor #sbProductRuleAlert {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 600px;
}
#sbLineEditor #sbSegmentsModal > header,
#sbLineEditor #sbProductRuleAlert > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > i,
#sbLineEditor #sbProductRuleAlert > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbSegmentsModal > header > *,
#sbLineEditor #sbProductRuleAlert > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbSegmentsModal > header > h2,
#sbLineEditor #sbProductRuleAlert > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > h3,
#sbLineEditor #sbProductRuleAlert > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close:hover,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close:before,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer i[class^=sf-icon],
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer i[class^=sf-icon]:hover,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer .sbTable,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer .sbTable td,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer ul,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter,
#sbLineEditor #sbProductRuleAlert .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbSegmentsModal.amendment,
#sbLineEditor #sbProductRuleAlert.amendment {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer i[class^=sf-icon],
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer i[class^=sf-icon]:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer i[class^=sf-icon]:hover {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment #sbCustomSegments > tbody > tr:first-of-type > td,
#sbLineEditor #sbProductRuleAlert.amendment #sbCustomSegments > tbody > tr:first-of-type > td {
  padding-top: 14px;
}
#sbLineEditor #sbSegmentsModal.amendment #sbCustomSegments > tbody > tr > td,
#sbLineEditor #sbProductRuleAlert.amendment #sbCustomSegments > tbody > tr > td {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn {
  background-color: #ffffff;
  color: #0070d2;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn:hover {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn:focus,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn:focus {
  outline: none;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  cursor: pointer;
  background-color: #005fb2;
}
#sbLineEditor #sbSegmentsModal.close,
#sbLineEditor #sbProductRuleAlert.close {
  display: none;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors {
  text-align: left;
  padding: 5px 15px 0;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div {
  font-size: 14px;
  color: #c00;
  padding-bottom: 5px;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > span,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > span,
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > div,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > div {
  display: inline;
  vertical-align: middle;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > [class^=sb-icon],
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > [class^=sb-icon] {
  color: #c00;
  font-size: 20px;
  padding: 0 10px 0 0;
}
#sbLineEditor #sbSegmentsModal .message,
#sbLineEditor #sbProductRuleAlert .message {
  display: block;
  text-align: left;
  border: none;
  margin: 0 0 0 7px;
}
#sbLineEditor #sbSegmentsModal .sbCustomSegmentsContainer,
#sbLineEditor #sbProductRuleAlert .sbCustomSegmentsContainer {
  height: 441px;
  overflow: auto;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments {
  margin-top: 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > thead > tr > th,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > thead > tr > th {
  padding-bottom: 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td {
  text-align: initial;
  height: 30px;
  cursor: move;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td > [class^=sb-icon],
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td > [class^=sb-icon] {
  color: #0070d2;
  cursor: pointer;
  padding: 0 5px 0 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td .sf-icon-close,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td .sf-icon-close {
  color: #4d4d4d;
}
#sbLineEditor #sbFavoritesModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 600px;
}
#sbLineEditor #sbFavoritesModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbFavoritesModal > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbFavoritesModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbFavoritesModal.amendment {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer i[class^=sf-icon]:hover {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment #sbCustomSegments > tbody > tr:first-of-type > td {
  padding-top: 14px;
}
#sbLineEditor #sbFavoritesModal.amendment #sbCustomSegments > tbody > tr > td {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn {
  background-color: #ffffff;
  color: #0070d2;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn:hover {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn:focus {
  outline: none;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  cursor: pointer;
  background-color: #005fb2;
}
#sbLineEditor #sbFavoritesModal.close {
  display: none;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors {
  text-align: left;
  padding: 5px 15px 0;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div {
  font-size: 14px;
  color: #c00;
  padding-bottom: 5px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > span,
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > div {
  display: inline;
  vertical-align: middle;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > [class^=sb-icon] {
  color: #c00;
  font-size: 20px;
  padding: 0 10px 0 0;
}
#sbLineEditor #sbFavoritesModal .message {
  display: block;
  text-align: left;
  border: none;
  margin: 0 0 0 7px;
}
#sbLineEditor #sbFavoritesModal .sbCustomSegmentsContainer {
  height: 441px;
  overflow: auto;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments {
  margin-top: 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > thead > tr > th {
  padding-bottom: 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td {
  text-align: initial;
  height: 30px;
  cursor: move;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td > [class^=sb-icon] {
  color: #0070d2;
  cursor: pointer;
  padding: 0 5px 0 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td .sf-icon-close {
  color: #4d4d4d;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr:hover {
  background: #ffffff;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr > td {
  padding-top: 20px;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr > td #sbFavoriteName {
  width: 300px;
}
#sbLineEditor #sbProductRuleAlert {
  min-height: auto;
}
#sbLineEditor #sbProductRuleAlert li {
  font-size: 14px;
}
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > thead > tr > th:first-of-type,
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > thead > tr > th:last-of-type,
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbMultiSegment .sbTable {
  margin-top: 10px;
}
#sbLineEditor .sbMultiSegment .sbTable .sbLineNumber > span {
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpandCollapse > [class^="sb-icon-"] {
  font-size: 1.5em;
  color: #0070d2;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpandCollapse > :nth-of-type(2) {
  font-size: 1.3em;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpand {
  white-space: nowrap;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpand i {
  cursor: pointer;
  font-size: 14px;
  color: #0070d2;
  position: relative;
  top: 2px;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > tr.expanded > td {
  border-bottom: 0;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail > td {
  height: 30px;
  background-color: #f4f6f9;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail:not(.lastDetailRow) > td {
  border-bottom: 0;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail > td:nth-child(2) {
  text-align: right;
  padding-right: 40px;
}
#sbLineEditor .sbMultiSegment .sbTable > tfoot > tr > td:first-of-type {
  text-align: right;
}
#sbLineEditor .sbMultiSegment .sbTable > tfoot > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbStandard {
  padding-top: 40px;
}
#sbLineEditor .sbStandard.sbEmptyTable {
  padding-top: 0;
}
#sbLineEditor .sbStandard > h2 {
  padding-left: 15px;
}
#sbLineEditor .sbMultiSegment {
  padding-top: 15px;
}
#sbLineEditor .sbMultiSegment.sbEmptyTable {
  padding-top: 0;
}
#sbLineEditor .sbMultiSegment .sbSegmentedTableHeader {
  overflow: auto;
}
#sbLineEditor .sbMultiSegment .sbSegmentedTableHeader > h2 {
  padding-left: 15px;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader {
  margin: 0 15px;
  clear: both;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader > h2,
#sbLineEditor .sbMultiSegment .sbDimensionHeader i {
  float: left;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader i {
  font-size: 12px;
  color: #0070d2;
  padding: 5px 0 0 5px;
  cursor: pointer;
}
#sbLineEditor .sbTooltip > .sbTooltipContent {
  display: none;
}
#sbLineEditor .sbMDQRight {
  float: right;
}
#sbLineEditor .sbMDQRight > .sbTooltip {
  width: 1%;
}
#sbLineEditor .sbGroupDragHandle {
  cursor: move;
}
#sbLineEditor .sbDraggedLine,
#sbLineEditor .sbDraggedDimension,
#sbLineEditor .sbDraggedSegment,
#sbLineEditor .sbDraggedGroup {
  color: #0070D2;
  font-size: 14px;
}
#sbLineEditor .sbDropRowHover {
  background: #F4F6F9;
}
#sbLineEditor .sbEmptyTableHover {
  padding-bottom: 22px;
}
#sbLineEditor .sbEmptyTableHover,
#sbLineEditor .sbEmptyGroupHover {
  border: 2px solid #0070d2;
  border-radius: 4px;
}
#sbLineEditor .sbGroup.sbGrouped.sbDropGroupHover {
  border: 3px solid #0070d2;
  border-radius: 4px;
}
#sbLineEditor a.sbDropDimensionHover {
  color: #fff;
  cursor: move;
  border-radius: 4px;
  background-color: #ffffff;
}
#sbLineEditor .sbPages {
  text-align: center;
  padding: 0;
  background: #fff;
}
#sbLineEditor .sbPages .sbBtn {
  float: none;
  display: inline-block;
}
#sbLineEditor .sbPages .sbDisplayedPage {
  color: #0070D2;
}
#sbLineEditor .sbDropPageHover {
  color: #fff;
  background-color: #0070d2;
}
#sbLineEditor th > .multiSegmentArrow {
  font-size: 1.2em !important;
}
#sbLineEditor th > .multiSegmentArrow:hover {
  cursor: pointer;
}
#sbLineEditor #sbTiersModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 80%;
}
#sbLineEditor #sbTiersModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbTiersModal > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbTiersModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbTiersModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer {
  padding: 15px;
  text-align: center;
  min-height: 100px;
  max-height: 400px;
  overflow: auto;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer input {
  text-align: left;
}
#sbLineEditor #sbTiersModal .dataCell {
  text-align: left;
}
#sbLineEditor #sbTiersModal #revertTierIcon {
  font-size: 14px;
}
#sbLineEditor #sbTiersModal #revertIconContainer {
  padding: 8px;
  margin-left: 16px;
  background-color: #fff;
}
#sbLineEditor #sbTiersModal #discountUnitSelect {
  margin-left: 10px;
  padding-left: 15px;
}
#sbLineEditor #sbTiersModal #discountScheduleName {
  padding-left: 30px;
}
#sbLineEditor #sbTiersModal #discountScheduleName input {
  min-width: 300px;
  margin-left: 10px;
  text-align: left;
  padding-left: 10px;
}
#sbLineEditor #sbTiersModal .sf-icon-error {
  color: #c00 !important;
}
#sbLineEditor #sbTiersModal #deleteAllCheckbox {
  text-align: center;
}
#sbLineEditor #sbTiersModal #discountUnitSelect {
  padding-right: 20px;
}
#sbLineEditor #sbTiersModal #errorMessage {
  text-align: left;
}
#sbLineEditor #sbTiersModal .hideInputBorders input {
  border: none;
  background: #fff;
}
#sbLineEditor #sbTiersModal .discountScheduleRow {
  text-align: left;
}
#sbLineEditor #sbTiersModal .revertButton {
  display: inline-block;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  color: #0070d2;
  position: relative;
  cursor: pointer;
}
#sbLineEditor #sbTiersModal .discountScheduleHeader {
  text-align: left;
}
#sbLineEditor #sbTiersModal .addBottomBorder {
  border-bottom: 1px solid #d8dde6;
  text-align: center;
}
#sbLineEditor #sbTiersModal .discountScheduleLoader {
  margin-left: auto;
  margin-right: auto;
  margin-top: 20px;
}
.removeBoxShadow {
  box-shadow: none;
}
.addBoxShadow {
  box-shadow: 0 0 0 15px #D1D4D8;
}
.sbLineEditorTooltip {
  padding: 12px;
}
.sbLineEditorTooltip table td {
  padding: 3px 2px;
}
.sbLineEditorTooltip table td:nth-child(2) {
  text-align: right;
}
.sbBtnTooltip {
  padding: 3px;
  background-color: #ffffff;
  color: #16325C;
  -webkit-box-shadow: 1px 1px 11px #D1D4D8;
  -moz-box-shadow: 1px 1px 11px #D1D4D8;
  box-shadow: 1px 1px 11px #D1D4D8;
}
#sbNewRelatedContent #sbNewRelatedContentOptions {
  margin: 0;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset {
  border: 0;
  padding: 5px;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset > label {
  margin-right: 10px;
  font-size: 14px;
  display: inline-block;
  width: 175px;
  text-align: right;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset > input,
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset select {
  width: 200px;
}
#sbNewRelatedContent .sbPageBlockSection {
  background: none;
  border: none;
}
#sbProductConfigurator .sbConfigProductName {
  margin: 15px 0 0 15px;
  display: block;
}
#sbProductConfigurator .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbProductConfigurator .sbPageTitle .sbPageTitleLeft .sf-icon-custom_apps {
  background-color: #8199af;
}
#sbProductConfigurator .sbPageTitle .sbButtons {
  float: right;
}
#sbProductConfigurator .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
  font-size: 10px;
  float: right;
  transition: all 0.25s ease-in;
}
#sbProductConfigurator .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
#sbProductConfigurator .sbPageTitle .sbToolSeparator {
  border-right: #d0d0d0;
  display: inline-block;
  height: 1px;
  width: 10px;
  float: left;
}
#sbProductConfigurator .sbPageTitle .sbBtn:disabled {
  color: #888888;
  cursor: default;
}
#sbProductConfigurator .sbPageTitle .sbBtn.sbAddOption {
  margin: 16px;
}
#sbProductConfigurator .sbAddOptionContainer .sbAddOption {
  border: 0;
  margin: 4px 0 4px 0;
}
#sbProductConfigurator .sbAddOptionContainer .sbAddOption:hover {
  background: none;
  color: #16325c;
  cursor: pointer;
}
#sbProductConfigurator header {
  padding: 15px 15px;
}
#sbProductConfigurator header.sbSection {
  border-bottom: 1px solid #d0d0d0;
  background: #f4f6f9;
}
#sbProductConfigurator header.sbFooter {
  margin: 0;
  border-top: #d0d0d0;
  background: #f4f6f9;
}
#sbProductConfigurator header.optionLookupMode {
  border: none;
  background: none;
}
#sbProductConfigurator header .sbTitleContainer {
  display: inline-block;
  padding-right: 50px;
  vertical-align: top;
}
#sbProductConfigurator header .sbTitleContainer > .sbFeatureInstructions {
  padding: 10px 0 0 0;
  font-size: 14px;
}
#sbProductConfigurator header .sbFeatureAdditionalInstructions {
  display: inline;
  float: right;
  font-size: 14px;
  padding-top: 3px;
}
#sbProductConfigurator .featureContent {
  font-size: 10px;
}
#sbProductConfigurator .sbTopConfigurationAttributes,
#sbProductConfigurator .sbBottomConfigurationAttributes {
  font-size: 14px;
  padding-top: 10px;
}
#sbProductConfigurator .sbTopConfigurationAttributes.sbPageBlockSection,
#sbProductConfigurator .sbBottomConfigurationAttributes.sbPageBlockSection {
  border: 0 ;
}
#sbProductConfigurator .sbTopConfigurationAttributes.sbPageBlockSection.sbBottom,
#sbProductConfigurator .sbBottomConfigurationAttributes.sbPageBlockSection.sbBottom {
  border-top: 1px solid #d0d0d0;
  padding-top: 30px;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbConfigAttributeColumn,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbConfigAttributeColumn {
  vertical-align: top;
}
#sbProductConfigurator .sbTopConfigurationAttributes label,
#sbProductConfigurator .sbBottomConfigurationAttributes label {
  padding: 5px;
}
#sbProductConfigurator .sbTopConfigurationAttributes td,
#sbProductConfigurator .sbBottomConfigurationAttributes td {
  vertical-align: middle;
}
#sbProductConfigurator .sbTopConfigurationAttributes input,
#sbProductConfigurator .sbBottomConfigurationAttributes input {
  margin-right: 30px;
}
#sbProductConfigurator .sbTopConfigurationAttributes input.hasDatepicker,
#sbProductConfigurator .sbBottomConfigurationAttributes input.hasDatepicker {
  width: 45%;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbLabelCol,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbLabelCol {
  padding-right: 10px;
  text-align: right;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol {
  padding: 6px 0;
  text-align: left;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol > div > div,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol > div > div {
  padding-left: 5px;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol > div > .requiredConfigurationAttribute,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol > div > .requiredConfigurationAttribute {
  border-left: #c00 solid;
  padding-left: 2px;
}
#sbProductConfigurator .requiresConfiguration {
  border-left: #c00 solid;
}
#sbProductConfigurator .center {
  width: 100%;
  text-align: center;
  display: inline-block;
}
#sbProductConfigurator .sbSelectionColumn {
  width: 1%;
  cursor: pointer;
  white-space: nowrap;
  text-align: left;
}
#sbProductConfigurator .sbOptionsFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 91px;
}
#sbProductConfigurator .sbOptionsFilter.open {
  right: 0px;
  display: block;
}
#sbProductConfigurator .sbOptionsFilter > a {
  text-align: right;
  font-size: 14px;
}
#sbProductConfigurator .sbOptionsFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
#sbProductConfigurator .sbOptionsFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
#sbProductConfigurator .sbOptionsFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
#sbProductConfigurator .sbOptionsFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
#sbProductConfigurator .sbOptionsFilter fieldset input,
#sbProductConfigurator .sbOptionsFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
#sbProductConfigurator .sbOptionsFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
#sbProductConfigurator .sbOptionsFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
#sbProductConfigurator .sbOptionsFilter input {
  display: inline;
}
#sbProductConfigurator .sbOptionsFilter div > a {
  font-size: 14px;
}
#sbProductConfigurator .sbAddOptionsFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 91px;
}
#sbProductConfigurator .sbAddOptionsFilter.open {
  right: 0px;
  display: block;
}
#sbProductConfigurator .sbAddOptionsFilter > a {
  text-align: right;
  font-size: 14px;
}
#sbProductConfigurator .sbAddOptionsFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
#sbProductConfigurator .sbAddOptionsFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset input,
#sbProductConfigurator .sbAddOptionsFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
#sbProductConfigurator .sbAddOptionsFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
#sbProductConfigurator .sbAddOptionsFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
#sbProductConfigurator .sbAddOptionsFilter input {
  display: inline;
}
#sbProductConfigurator .sbAddOptionsFilter div > a {
  font-size: 14px;
}
#sbProductConfigurator .sbResults {
  margin: 14px 0 -8px 0;
  font-size: 14px;
}
#sbProductConfigurator .sbPageBlockSection {
  background: #ffffff;
  padding: 0;
}
#sbProductConfigurator .sbGroups {
  font-size: 14px;
  text-align: center;
  margin: 18px 15px;
  text-transform: uppercase;
  border-bottom: 1px solid #d0d0d0;
}
#sbProductConfigurator .sbGroups > a,
#sbProductConfigurator .sbGroups span {
  color: inherit;
  padding: 6px 16px;
  display: inline-block;
}
#sbProductConfigurator .sbGroups > a.selected,
#sbProductConfigurator .sbGroups span.selected {
  border-bottom: 2px solid #166bbf;
}
#sbProductConfigurator .sbGroups > a:hover,
#sbProductConfigurator .sbGroups span:hover {
  border-bottom: 2px solid #166bbf;
}
#sbProductConfigurator .sbTable {
  margin-top: 5px;
}
#sbProductConfigurator .sbTable > thead > tr > th:nth-child(2),
#sbProductConfigurator .sbTable > tbody > tr > td:nth-child(2) {
  width: 60px;
}
#sbProductConfigurator .sbTable > thead > tr > th {
  padding-right: 12px;
  padding-left: 12px;
}
#sbProductConfigurator .sbTable > tbody > tr > td {
  height: 49px;
  vertical-align: middle;
  padding: 0 12px;
}
#sbProductConfigurator .sbTable > tbody > tr > td [class^=sb-icon] {
  font-size: 12px;
  color: #888;
}
#sbProductConfigurator .sbTable > tbody > tr > td.right {
  text-align: right;
}
#sbProductConfigurator .sbTable > tbody > tr > td.sbQuantityCell {
  width: 75px;
  text-align: center;
}
#sbProductConfigurator .sbTable > tbody > tr > td.sbQuantityCell input {
  width: 100px;
  text-align: center;
  font-size: 14px;
}
#sbProductConfigurator .sbTable .sbCurrencyCell {
  text-align: right;
}
#sbProductConfigurator .sbTable .sbCurrencyCell input {
  text-align: right;
}
#sbProductConfigurator .sbTable > tbody tr:last-child > td {
  border-bottom: none;
}
#sbProductConfigurator .wizardConfigurator > table > tbody > tr:hover {
  background: #fff;
}
#sbProductConfigurator .sbLoadMore {
  position: absolute;
  height: 65px;
  top: 94%;
  width: 100%;
  text-align: center;
  font-size: 15px;
  padding-top: 15px;
  background: #ffffff;
  display: none;
}
#sbProductConfigurator .sbLoadMore.sbShowLoading {
  display: inline-block;
}
#sbProductConfigurator .sf-icon-warning {
  color: #5876a3;
  font-size: 20px;
}
#sbProductSearch .sbTable {
  font-size: 10px;
}
#sbProductSearch .sbTable > thead > tr > th:first-of-type,
#sbProductSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbProductSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbProductSearch .sbTools {
  float: right;
}
#sbProductSearch .sbPageBlockSection {
  background: none;
  margin: 0;
  padding: 0;
}
#sbProductSearch .sbPageTitle .sbTools {
  margin-right: 10px;
}
#sbProductSearch .sbPageTitle .sbTools > .sbTool {
  background: #ffffff;
  padding: 7px;
}
#sbProductSearch .sbTable > thead > tr > th:first-of-type,
#sbProductSearch .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
  text-align: left;
}
#sbProductSearch .sbTable .sbSelectionHeader {
  width: 1%;
}
#sbProductSearch .sbTable tbody.close > .sbGroupRow {
  display: none;
}
#sbProductSearch .sbTable tbody .sbGroupName {
  text-align: left;
  font-size: 14px;
  font-weight: bold;
}
#sbProductSearch .sbTable tbody .sbGroupNameRow {
  background-color: #f4f6f9;
  cursor: pointer;
}
#sbProductSearch .sbTable tbody .sbGroupNameRow i {
  font-size: 17.5px;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td {
  border-bottom: none;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages {
  font-size: 0.9em;
  margin-top: 10px;
  text-align: center;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons {
  vertical-align: middle;
  background-color: #ffffff;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn {
  padding-top: 6px;
  color: #0070d2;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.sb-icon-left-dir,
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.sb-icon-right-dir {
  font-size: 1.7em;
  padding-top: 3px;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.disabled {
  background-color: #ffffff;
  color: #bebebe;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages .sbPageSelector {
  padding: 0 10px;
  display: inline-block;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages .sbPageSelector > input {
  width: 45px;
  text-align: center;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages:hover {
  background-color: #F4F6F9;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages:hover > td .sbPages > .sbButtons {
  background-color: #F4F6F9;
}
.sbProductFilter,
#sbGuidedModal.sbGuided {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbProductFilter.open,
#sbGuidedModal.sbGuided.open {
  right: 0px;
  display: block;
}
.sbProductFilter > a,
#sbGuidedModal.sbGuided > a {
  text-align: right;
  font-size: 14px;
}
.sbProductFilter > header,
#sbGuidedModal.sbGuided > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbProductFilter > header > .sf-icon-close,
#sbGuidedModal.sbGuided > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbProductFilter fieldset,
#sbGuidedModal.sbGuided fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbProductFilter fieldset > label,
#sbGuidedModal.sbGuided fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbProductFilter fieldset input,
#sbGuidedModal.sbGuided fieldset input,
.sbProductFilter fieldset select,
#sbGuidedModal.sbGuided fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbProductFilter .sbButtons,
#sbGuidedModal.sbGuided .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbProductFilter .sbButtons .clearFieldsLink,
#sbGuidedModal.sbGuided .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbProductFilter div > a,
#sbGuidedModal.sbGuided div > a {
  text-align: right;
  display: flex;
  font-size: 14px;
}
.sbProductFilter fieldset > span > input[type=checkbox],
#sbGuidedModal.sbGuided fieldset > span > input[type=checkbox] {
  display: none;
}
.sbProductFilter label > span > input[type=checkbox],
#sbGuidedModal.sbGuided label > span > input[type=checkbox] {
  vertical-align: middle;
}
.sbProducts {
  transition: .02s;
}
#sbGuidedMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbGuidedMask.close {
  display: none;
}
#sbGuidedModal.sbGuidedModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 480px;
}
#sbGuidedModal.sbGuidedModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbGuidedModal.sbGuidedModal > header > * {
  vertical-align: middle;
}
#sbGuidedModal.sbGuidedModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > h3 {
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbGuidedModal.sbGuidedModal.close {
  display: none;
}
#sbGuidedModal.sbGuidedModal > .sbFieldCon {
  text-align: left;
  overflow: auto;
}
#sbGuidedModal.sbGuidedModal fieldset {
  padding: 10px;
  border: 0;
  font-size: 1.4em;
}
#sbGuidedModal.sbGuidedModal fieldset > label {
  font-size: 10px;
  display: inline-block;
  padding: 0 0 5px 7px;
  vertical-align: middle;
}
#sbGuidedModal.sbGuidedModal fieldset > span {
  display: block;
}
#sbGuidedModal.sbGuidedModal fieldset > span > input[type=checkbox] {
  display: none;
}
#sbGuidedModal.sbGuidedModal fieldset input,
#sbGuidedModal.sbGuidedModal fieldset select {
  font-size: inherit !important;
  margin-left: 6px;
  vertical-align: middle;
  min-width: 100px;
}
#sbGuidedModal.sbGuidedModal fieldset > *[class^=sb-icon] {
  color: #888;
}
div.chatterFollow {
  white-space: nowrap;
}
.chatterFollow a {
  text-decoration: none;
  color: #000000;
  cursor: pointer;
}
.chatterFollow .followIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 0;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .checkIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 -27px;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .unfollowIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 -54px;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .hion {
  background-position: 0 -75px;
}
#sbSubscriptionSearch .sbTable {
  font-size: 10px;
}
#sbSubscriptionSearch .sbTable > thead > tr > th:first-of-type,
#sbSubscriptionSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbSubscriptionSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbSubscriptionSearch .sbTools {
  float: right;
}
#sbSubscriptionSearch .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbSubscriptionSearch .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
}
#sbSubscriptionSearch .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
.sbSubscriptionFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbSubscriptionFilter.open {
  right: 0px;
  display: block;
}
.sbSubscriptionFilter > a {
  text-align: right;
  font-size: 14px;
}
.sbSubscriptionFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbSubscriptionFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbSubscriptionFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbSubscriptionFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbSubscriptionFilter fieldset input,
.sbSubscriptionFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbSubscriptionFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbSubscriptionFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbSubscriptionFilter input {
  display: inline;
}
.sbSubscriptionFilter div > a {
  text-align: right;
  display: flex;
  font-size: 14px;
}
#sbCloneRelated,
#sbRefreshPrices,
#sbPreviewApprovals,
#sbListApprovals {
  background: #fff;
  color: #16325C;
  text-align: center;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
}
#sbCloneRelated .sbPageTitle,
#sbRefreshPrices .sbPageTitle,
#sbPreviewApprovals .sbPageTitle,
#sbListApprovals .sbPageTitle {
  text-align: left;
}
#sbCloneRelated .sbPageTitle h1,
#sbRefreshPrices .sbPageTitle h1,
#sbPreviewApprovals .sbPageTitle h1,
#sbListApprovals .sbPageTitle h1 {
  font-size: 20px;
  font-weight: 300;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  color: #16325C;
}
#sbCloneRelated .sbPageTitle h2,
#sbRefreshPrices .sbPageTitle h2,
#sbPreviewApprovals .sbPageTitle h2,
#sbListApprovals .sbPageTitle h2 {
  font-size: 12px;
  color: #16325C;
}
#sbCloneRelated .sbPageTitle .sf-icon-copy:before,
#sbRefreshPrices .sbPageTitle .sf-icon-copy:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-copy:before,
#sbListApprovals .sbPageTitle .sf-icon-copy:before,
#sbCloneRelated .sbPageTitle .sf-icon-refresh:before,
#sbRefreshPrices .sbPageTitle .sf-icon-refresh:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-refresh:before,
#sbListApprovals .sbPageTitle .sf-icon-refresh:before,
#sbCloneRelated .sbPageTitle .sf-icon-approval:before,
#sbRefreshPrices .sbPageTitle .sf-icon-approval:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-approval:before,
#sbListApprovals .sbPageTitle .sf-icon-approval:before {
  margin-top: 10px;
  position: inherit;
}
#sbCloneRelated .sbPageTitle .sf-icon-post:before,
#sbRefreshPrices .sbPageTitle .sf-icon-post:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-post:before,
#sbListApprovals .sbPageTitle .sf-icon-post:before {
  position: inherit;
}
#sbCloneRelated .sbPageTitle .sf-icon-approval:before,
#sbRefreshPrices .sbPageTitle .sf-icon-approval:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-approval:before,
#sbListApprovals .sbPageTitle .sf-icon-approval:before {
  margin-top: 0px;
}
#sbCloneRelated .sbPageTitle .resize,
#sbRefreshPrices .sbPageTitle .resize,
#sbPreviewApprovals .sbPageTitle .resize,
#sbListApprovals .sbPageTitle .resize {
  padding: 2px 10px;
}
#sbCloneRelated .message,
#sbRefreshPrices .message,
#sbPreviewApprovals .message,
#sbListApprovals .message {
  padding: 10px;
  margin: 18px 24px;
}
#sbCloneRelated .message .messageText,
#sbRefreshPrices .message .messageText,
#sbPreviewApprovals .message .messageText,
#sbListApprovals .message .messageText {
  font-size: 14px;
}
#sbCloneRelated .message .messageText h4,
#sbRefreshPrices .message .messageText h4,
#sbPreviewApprovals .message .messageText h4,
#sbListApprovals .message .messageText h4 {
  padding: 0 4px;
  display: inline-block;
  font-size: 10px;
  font-weight: 300;
}
#sbCloneRelated .sbBtns,
#sbRefreshPrices .sbBtns,
#sbPreviewApprovals .sbBtns,
#sbListApprovals .sbBtns {
  font-size: 9px;
  border-radius: 0;
  vertical-align: top;
  float: right;
}
#sbCloneRelated .sbBtns .sbBtn,
#sbRefreshPrices .sbBtns .sbBtn,
#sbPreviewApprovals .sbBtns .sbBtn,
#sbListApprovals .sbBtns .sbBtn {
  border-radius: 0;
}
#sbCloneRelated .sbBtns .sbBtn:first-of-type,
#sbRefreshPrices .sbBtns .sbBtn:first-of-type,
#sbPreviewApprovals .sbBtns .sbBtn:first-of-type,
#sbListApprovals .sbBtns .sbBtn:first-of-type {
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
#sbCloneRelated .sbBtns .sbBtn:last-of-type,
#sbRefreshPrices .sbBtns .sbBtn:last-of-type,
#sbPreviewApprovals .sbBtns .sbBtn:last-of-type,
#sbListApprovals .sbBtns .sbBtn:last-of-type {
  border-left: 0;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
#sbCloneRelated .sbGroup,
#sbRefreshPrices .sbGroup,
#sbPreviewApprovals .sbGroup,
#sbListApprovals .sbGroup {
  margin: 15px 15px;
  border: 1px solid #d0d0d0;
  border-radius: 3px;
}
#sbCloneRelated .sbGroup > header,
#sbRefreshPrices .sbGroup > header,
#sbPreviewApprovals .sbGroup > header,
#sbListApprovals .sbGroup > header {
  margin: 0;
  border: 0;
  padding: 10px 15px 5px;
  border-bottom: 1px solid #d0d0d0;
}
#sbCloneRelated .sbGroup .sbPageBlockSection,
#sbRefreshPrices .sbGroup .sbPageBlockSection,
#sbPreviewApprovals .sbGroup .sbPageBlockSection,
#sbListApprovals .sbGroup .sbPageBlockSection {
  padding-bottom: 6px;
  text-align: left;
}
#sbCloneRelated .sbGroup .sbPageBlockSection > h3,
#sbRefreshPrices .sbGroup .sbPageBlockSection > h3,
#sbPreviewApprovals .sbGroup .sbPageBlockSection > h3,
#sbListApprovals .sbGroup .sbPageBlockSection > h3 {
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  font-weight: 300;
}
#sbCloneRelated .toggleButton,
#sbRefreshPrices .toggleButton,
#sbPreviewApprovals .toggleButton,
#sbListApprovals .toggleButton {
  float: right;
}
#sbCloneRelated .tableContainer,
#sbRefreshPrices .tableContainer,
#sbPreviewApprovals .tableContainer,
#sbListApprovals .tableContainer {
  display: none;
}
#sbCloneRelated .sbTable .rfHead,
#sbRefreshPrices .sbTable .rfHead,
#sbPreviewApprovals .sbTable .rfHead,
#sbListApprovals .sbTable .rfHead {
  background: #F4F6F9;
}
#sbCloneRelated .sbTable > thead > tr > th:first-of-type,
#sbRefreshPrices .sbTable > thead > tr > th:first-of-type,
#sbPreviewApprovals .sbTable > thead > tr > th:first-of-type,
#sbListApprovals .sbTable > thead > tr > th:first-of-type,
#sbCloneRelated .sbTable > tbody > tr > td:first-of-type,
#sbRefreshPrices .sbTable > tbody > tr > td:first-of-type,
#sbPreviewApprovals .sbTable > tbody > tr > td:first-of-type,
#sbListApprovals .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbCloneRelated .sbTable > thead > tr > th:last-of-type,
#sbRefreshPrices .sbTable > thead > tr > th:last-of-type,
#sbPreviewApprovals .sbTable > thead > tr > th:last-of-type,
#sbListApprovals .sbTable > thead > tr > th:last-of-type,
#sbCloneRelated .sbTable > tbody > tr > td:last-of-type,
#sbRefreshPrices .sbTable > tbody > tr > td:last-of-type,
#sbPreviewApprovals .sbTable > tbody > tr > td:last-of-type,
#sbListApprovals .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbCloneRelated .sbTable > tbody > tr:last-of-type > td,
#sbRefreshPrices .sbTable > tbody > tr:last-of-type > td,
#sbPreviewApprovals .sbTable > tbody > tr:last-of-type > td,
#sbListApprovals .sbTable > tbody > tr:last-of-type > td {
  border-bottom: none;
}
#sbCloneRelated .sbTable > thead > tr > th,
#sbRefreshPrices .sbTable > thead > tr > th,
#sbPreviewApprovals .sbTable > thead > tr > th,
#sbListApprovals .sbTable > thead > tr > th {
  height: 24.5px;
}
#sbCloneRelated .sbTable > tbody > tr > td,
#sbRefreshPrices .sbTable > tbody > tr > td,
#sbPreviewApprovals .sbTable > tbody > tr > td,
#sbListApprovals .sbTable > tbody > tr > td {
  padding: 4.9px 9.8px;
  height: 24.5px;
  vertical-align: middle;
  text-align: left;
}
#sbCloneRelated .sbTable > tfoot > tr > td,
#sbRefreshPrices .sbTable > tfoot > tr > td,
#sbPreviewApprovals .sbTable > tfoot > tr > td,
#sbListApprovals .sbTable > tfoot > tr > td {
  text-align: left;
  padding-top: 4.9px;
  padding-bottom: 4.9px;
  padding-left: 15px;
  height: 19.6px;
}
#sbCloneRelated .sbTable tbody > tr:hover,
#sbRefreshPrices .sbTable tbody > tr:hover,
#sbPreviewApprovals .sbTable tbody > tr:hover,
#sbListApprovals .sbTable tbody > tr:hover {
  background: none;
}
#sbFavoritesManager .sbPageTitle .sbTools {
  margin-right: 10px;
}
#sbFavoritesManager .sbPageTitle .sbTools > .sbTool {
  background: #ffffff;
  padding: 7px;
}
#sbFavoritesManager .topMsg {
  text-align: center;
  display: block;
  padding: 32px;
}
#sbFavoritesManager .botMsg {
  text-align: center;
  display: block;
}
#sbFavoritesManager .sbTable > thead > tr > th:first-of-type,
#sbFavoritesManager .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
  text-align: left;
}
#sbFavoritesManager .sbTable .sbSelectionHeader {
  width: 1%;
}
#sbFavoritesManager .sbTable .sbFavoriteHeader {
  width: 160px;
}
#sbFavoritesManager .sbTable .sbDescription {
  width: 50%;
}
#sbFavoritesManager .sbTable tbody tr td {
  vertical-align: middle;
}
#sbFavoritesManager .sbTable tbody tr td i {
  color: #0070D2;
}
#sbFavoritesManager .sbTable tbody tr td i:hover {
  color: #16325C;
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbFavoritesManager #sbFavoritesManagerMask.close {
  display: none;
}
#sbFavoritesManager #sbFavoritesManagerModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  min-height: 160px;
  max-width: 400px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > * {
  vertical-align: middle;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > h3 {
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer ul {
  -webkit-padding-end: 0px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable .sbActions {
  width: 1%;
  text-align: left;
  white-space: nowrap;
}
#sbFavoritesManager .form-control {
  display: block;
  width: 100%;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
}
#sbFavoritesManager .sbValidationErrors {
  font-size: 14px;
  padding: 5px 15px;
  display: block;
  text-align: left;
  color: #c00;
}
#sbFavoritesManager .invalid {
  border-color: #c00;
}
#sbFavoritesManager .dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  font-size: 14px;
  text-align: left;
  list-style: none;
  background-color: #fff;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 4px;
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  background-clip: padding-box;
}
#sbFavoritesManager .dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333;
  white-space: nowrap;
}
#sbFavoritesManager .dropdown-menu > li > a:hover,
#sbFavoritesManager .dropdown-menu > li > a:focus {
  color: #262626;
  text-decoration: none;
  background-color: #f5f5f5;
}
#sbFavoritesManager .dropdown-menu > .active > a,
#sbFavoritesManager .dropdown-menu > .active > a:hover,
#sbFavoritesManager .dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  background-color: #337ab7;
  outline: 0;
}
#sbBlockPrice {
  background: #fff;
  color: #16325C;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  padding-top: 10px;
  padding-bottom: 10px;
}
#sbBlockPrice #sbPriceBookGroup {
  display: inline-block;
}
#sbBlockPrice #sbClonePriceBookGroup {
  display: inline-block;
  padding-left: 100px;
}
#sbBlockPrice .sbPriceBookText {
  padding: 10px;
}
#sbBlockPrice .sbCloneFromPriceBook {
  margin-left: 15px;
  padding-bottom: 4px;
}
#sbBlockPrice .sbPriceBookSelect {
  padding-bottom: 2px;
}

/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImZvbnRzLmxlc3MiLCJ0eXBvZ3JhcGh5Lmxlc3MiLCJidXR0b25zLmxlc3MiLCJzZmRjLmxlc3MiLCJkaWFsb2dzLmxlc3MiLCJsYXlvdXQubGVzcyIsImZvcm1zLmxlc3MiLCJtaXhpbnMubGVzcyIsImRhdGVQaWNrZXIubGVzcyIsInRhYmxlcy5sZXNzIiwiZHJvcGRvd25zLmxlc3MiLCJpY29ucy5sZXNzIiwiYmFzZS5sZXNzIiwidmFyaWFibGVzLmxlc3MiLCIuLi8uLi9hZG1pbi9zZXR0aW5ncy9hcHBTZXR0aW5ncy5sZXNzIiwiLi4vLi4vYWRtaW4vc2V0dGluZ3MvdGhlbWVTZXR0aW5ncy5sZXNzIiwiLi4vLi4vYWRtaW4vdHJhbnNsYXRlLmxlc3MiLCIuLi8uLi9hc3NldHMvYXNzZXRMb29rdXAubGVzcyIsIi4uLy4uL2NvbnRyYWN0cy9zZWxlY3RDb250cmFjdC5sZXNzIiwiLi4vLi4vY29udHJhY3RzL2FtZW5kQ29udHJhY3QubGVzcyIsIi4uLy4uL2RvY2dlbi9wcmV2aWV3Lmxlc3MiLCIuLi8uLi9xdW90ZXMvaW1wb3J0TGluZXMubGVzcyIsIi4uLy4uL3F1b3Rlcy9saW5lRWRpdG9yLmxlc3MiLCIuLi8uLi9xdW90ZXMvbmV3UmVsYXRlZENvbnRlbnQubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RDb25maWd1cmF0b3IubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RMb29rdXAubGVzcyIsIi4uLy4uL3N1YnNjcmlwdGlvbnMvc3Vic2NyaXB0aW9uTG9va3VwLmxlc3MiLCIuLi8uLi9jbG9uZS9jbG9uZS5sZXNzIiwiLi4vLi4vZmF2b3JpdGVzL2Zhdm9yaXRlc01hbmFnZXIubGVzcyIsIi4uLy4uL2Jsb2NrUHJpY2UvYmxvY2tQcmljZS5sZXNzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0VBQ0UsYUFBYSxpQkFBYjtFQUNBLFNBQVMsMkdBQTJHLE9BQU8sY0FDbEgsMEdBQTBHLE9BQU8sT0FEMUg7RUFFQSxrQkFB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QUFHO0FBaEp6QixtQkFpSkUsZUFBZSxLQUFLLElBQUc7RUFDckIsY0FBQTtFQUNBLHFCQUFBO0VBQ0EseUJBQUE7O0FBcEpKLG1CQXVKRSxlQUFlLFVBQVU7QUF2SjNCLG1CQXdKRSxlQUFlLFVBQVUsSUFBRztBQXhKOUIsbUJBeUpFLGVBQWUsVUFBVSxJQUFHO0VBQzFCLFdBQUE7RUFDQSxxQkFBQTtFQUNBLHlCQUFBO0VBQ0EsVUFBQTs7QUM3Sko7RUFFQyxnQkFBQTtFQUNBLGNBQUE7RUFDQSxhaEJRUSxtQkFBbUIsOEJnQlIzQjtFQUNBLGlCQUFBO0VBQ0csb0JBQUE7O0FBTkosYUFRQztFQUNPLHFCQUFBOztBQVRSLGFBWUk7RUFDSSxxQkFBQTtFQUNBLG1CQUFBOztBQWRSLGFBaUJJO0VBQ0ksYUFBQTs7QUFsQlIsYUFxQkM7RUFDSSxpQkFBQTtFQUNBLG1CQUFBOztBQXZCTCxhQTBCQztFQUNJLG1CQUFBIiwiZmlsZSI6InNiLmNzcyIsInNvdXJjZXNDb250ZW50IjpbIkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogXCJTYWxlc2ZvcmNlIFNhbnNcIjtcbiAgc3JjOiB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUxpZ2h0LndvZmYyXCIpIGZvcm1hdChcIndvZmYyXCIpLFxuICAgICAgIHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtTGlnaHQud29mZlwiKSBmb3JtYXQoXCJ3b2ZmXCIpO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG4gIGZvbnQtd2VpZ2h0OiAzMDA7XG59XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6IFwiU2FsZXNmb3JjZSBTYW5zXCI7XG4gIHNyYzogdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1SZWd1bGFyLndvZmYyXCIpIGZvcm1hdChcIndvZmYyXCIpLFxuICAgICAgIHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtUmVndWxhci53b2ZmXCIpIGZvcm1hdChcIndvZmZcIik7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IDQwMDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogXCJTYWxlc2ZvcmNlIFNhbnNcIjtcbiAgc3JjOiB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUl0YWxpYy53b2ZmMlwiKSBmb3JtYXQoXCJ3b2ZmMlwiKSxcbiAgICAgICB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUl0YWxpYy53b2ZmXCIpIGZvcm1hdChcIndvZmZcIik7XG4gIGZvbnQtc3R5bGU6IGl0YWxpYztcbiAgZm9udC13ZWlnaHQ6IDQwMDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogXCJTYWxlc2ZvcmNlIFNhbnNcIjtcbiAgc3JjOiB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUJvbGQud29mZjJcIikgZm9ybWF0KFwid29mZjJcIiksXG4gICAgICAgdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1Cb2xkLndvZmZcIikgZm9ybWF0KFwid29mZlwiKTtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXdlaWdodDogNzAwO1xufVxuQGZvbnQtZmFjZSB7XG4gIGZvbnQtZmFtaWx5OiBcIlNhbGVzZm9yY2UgU2Fuc1wiO1xuICBzcmM6IHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtQm9sZEl0YWxpYy53b2ZmMlwiKSBmb3JtYXQoXCJ3b2ZmMlwiKSxcbiAgICAgICB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUJvbGRJdGFsaWMud29mZlwiKSBmb3JtYXQoXCJ3b2ZmXCIpO1xuICBmb250LXN0eWxlOiBpdGFsaWM7XG4gIGZvbnQtd2VpZ2h0OiA3MDA7XG59XG4iLCIuc2Ige1xuICBoMSxoMixoMyxoNCxoNSxoNiB7XG4gICAgY29sb3I6IEBzYkhlYWRlckZvbnRDb2xvcjtcbiAgICBmb250LXdlaWdodDogMzAwO1xuICAgIGZvbnQtZmFtaWx5OiBpbmhlcml0O1xuICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICBtYXJnaW46IDA7XG4gICAgcGFkZGluZzogMDtcbiAgfVxuXG4gIGgxIHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMi40O1xuICB9XG5cbiAgaDIge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjg7XG4gIH1cblxuICBoMyB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNjtcbiAgfVxuICBoNCB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgfVxuXG4gIGg1IHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICB9XG5cbiAgaDYge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAwLjk7XG4gIH1cblxuICAvLyBIeXBlcmxpbmtzIC0gdGhlIGRlZmF1bHQgc3R5bGVcbiAgYSwgYTp2aXNpdGVkLCBhOmhvdmVyLCBhOmFjdGl2ZSB7XG4gICAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgY3Vyc29yOiBwb2ludGVyO1xuICB9XG5cbiAgLy8gSHlwZXJsaW5rcyAtIGNvbG9yIGNoYW5nZSB3aGVuIGhvdmVyZWRcbiAgYTpob3ZlciB7XG4gICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICB9XG59XG4iLCJAc2JCdG5Cb3JkZXJSYWRpdXM6IDRweDtcbkBzYkJ0blBhZGRpbmc6IDhweCAxMnB4O1xuXG4vKlxuQnV0dG9uXG5cbkEgc3RhbmRhcmQsIHN0YW5kYWxvbmUgYnV0dG9uXG5cbiovXG4uc2JCdG4ge1xuICBwYWRkaW5nOiBAc2JCdG5QYWRkaW5nO1xuICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gIGNvbG9yOiBAc2JHcm91cEJ0bkZvbnRDb2xvcjtcbiAgY3Vyc29yOiBwb2ludGVyO1xuICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIGZvbnQtd2VpZ2h0OiA0MDA7XG4gIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG4gIG1hcmdpbjogMDtcbiAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICBoZWlnaHQ6IDM2cHg7XG5cbiAgJjpmb2N1cyB7XG4gICAgb3V0bGluZS1vZmZzZXQ6IC0ycHg7XG4gICAgb3V0bGluZS13aWR0aDogMnB4O1xuICB9XG5cbiAgJjpob3ZlciB7XG4gICAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5Ib3ZlckJnQ29sb3I7XG4gIH1cblxuICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgYm9yZGVyOiAxcHggc29saWQgQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgY29sb3I6IEBzYlByaW1hcnlCdG5Gb250Q29sb3I7XG4gICAgJjpob3ZlciB7XG4gICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO1xuICAgIH1cbiAgfVxuXG4gICYuc2JFbmFibGVkIHtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICBib3JkZXItY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgIGNvbG9yOiBAc2JQcmltYXJ5QnRuRm9udENvbG9yO1xuICAgICY6aG92ZXIge1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjtcbiAgICB9XG4gIH1cbn1cblxuLy8gQSBjb250YWluZXIvcm93IG9mIGJ1dHRvbnMsIGEgbGEgYSBidXR0b24gXCJiYXJcIlxuLnNiQnV0dG9ucyB7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgYmFja2dyb3VuZDogQHNiSGVhZGVyQmdDb2xvcjtcbiAgcGFkZGluZzogN3B4IDAgN3B4O1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG59XG5cbi8vIEJ1dHRvbnMgd2l0aGluIGEgYnV0dG9uIGNvbnRhaW5lclxuLnNiQnV0dG9ucyA+IC5zYkJ0biwgLnNiQnV0dG9ucyA+IGRpdiA+IC5zYkJ0bixcbi5zYlBhZ2VCdXR0b25zID4gLnNiQnRuLCAuc2JQYWdlQnV0dG9ucyA+IGRpdiA+IC5zYkJ0biB7XG4gIGJvcmRlci10b3A6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICBib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgYm9yZGVyLXJpZ2h0OiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgYm9yZGVyLWxlZnQ6IDA7XG4gIGJvcmRlci1yYWRpdXM6IDA7XG4gIGZsb2F0OiBsZWZ0OyAvLyB0aGlzIHJlbW92ZXMgd2hpdGVzcGFjZSBpbiBiZXR3ZWVuIGJ1dHRvbnNcblxuICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgYm9yZGVyOiAxcHggc29saWQgQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gIH1cblxuICAvLyBGaXJzdCBidXR0b24gd2l0aGluIGEgYnV0dG9uIGNvbnRhaW5lclxuICAmOmZpcnN0LW9mLXR5cGUge1xuICAgIGJvcmRlci1sZWZ0OiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgICYuc2JQcmltYXJ5QWN0aW9uIHtcbiAgICAgIGJvcmRlci1sZWZ0OiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICB9XG4gIH1cblxuICAvLyBMYXN0IGJ1dHRvbiB3aXRoaW4gYSBidXR0b24gY29udGFpbmVyXG4gICY6bGFzdC1vZi10eXBlIHtcbiAgICBib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIH1cbn1cblxuLy8gVGhlIGNlbnRlcmVkIGNvbnRhaW5lciB3aXRoaW4gYSBCdXR0b24gY29udGFpbmVyXG4uc2JCdXR0b25zID4gLmNlbnRlcixcbi5zYlBhZ2VCdXR0b25zID4gLmNlbnRlciB7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbn1cblxuLy8gUGFnZSBidXR0b25zIHRha2UgdXAgdGhlIHdob2xlIHdpZHRoXG4uc2JQYWdlQnV0dG9uczpleHRlbmQoIC5zYkJ1dHRvbnMgKSB7XG4gIHdpZHRoOiAxMDAlO1xuICBib3JkZXItdG9wOiAxcHggc29saWQgQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG5cbiAgJi5ib3R0b20ge1xuICAgIHdpZHRoOiBhdXRvO1xuICAgIHBvc2l0aW9uOiBmaXhlZDtcbiAgICBib3R0b206IDBweDtcbiAgICBsZWZ0OiAxMHB4O1xuICAgIHJpZ2h0OiAxMHB4O1xuICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGRpc3BsYXk6IG5vbmU7IC8vIGluZGl2aWR1YWwgcGFnZXMgc2hvdWxkIChkeW5hbWljYWxseSkgc2hvdyBpZiBuZWVkZWRcbiAgfVxuXG4gICYuaW5saW5lIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JIZWFkZXJCZ0NvbG9yO1xuICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIG1hcmdpbi10b3A6IDgwcHg7XG4gIH1cbn1cblxuLnNiUGFnZVRpdGxlID4gLnNiUGFnZUJ1dHRvbnMge1xuICBib3JkZXI6IDA7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgd2lkdGg6IGF1dG87XG4gIGZsb2F0OiByaWdodDtcbn1cblxuLy8gQSBjb250YWluZXIvcm93IG9mIHRvb2xzXG4uc2JUb29scyB7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbn1cblxuLy8gQSBzaW5nbGUgdG9vbCBpbnNpZGUgdGhlIGNvbnRhaW5lciBvZiB0b29sc1xuLnNiVG9vbHMgPiAuc2JUb29sIHtcbiAgYm9yZGVyLWxlZnQ6IDA7XG4gIGJvcmRlci1yYWRpdXM6IDA7XG4gIGZsb2F0OiBsZWZ0O1xuXG4gID4gLnNiLWljb24tdHJpYW5nbGUtZG93biB7XG4gICAgbWFyZ2luLWxlZnQ6IC01cHg7XG4gIH1cblxuICAmOm5vdCgubmctaGlkZSk6bm90KC5zYkJ0bkNsZWFyKTpmaXJzdC1vZi10eXBlIHtcbiAgICBib3JkZXItbGVmdDogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgfVxuXG4gICY6bm90KC5uZy1oaWRlKTpsYXN0LW9mLXR5cGUge1xuICAgIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgYm9yZGVyLWJvdHRvbS1yaWdodC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgfVxufVxuXG4vLyBBIHNpbmdsZSB0b29sL2J1dHRvbiBpbiBhIHRvb2xiYXJcbi5zYlRvb2wge1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgcGFkZGluZzogNXB4IDdweDtcbiAgY29sb3I6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gIGN1cnNvcjogcG9pbnRlcjtcblxuICAvKiB0aGUgZG93biB0cmlhbmdsZSBpbiBhIHRvb2wgKi9cbiAgPiAuc2ItaWNvbi1kb3duLWRpciB7XG4gICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICB9XG5cbiAgLy8gdGhlIFwiYWN0aXZlXCIgc3RhdGUgb2YgYSB0b29sLCBpLmUuIGl0IHdhcyBjbGlja2VkIGFuZCBub3cgXCJhY3RpdmVcIlxuICAmLmFjdGl2ZSB7XG4gICAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5Gb250Q29sb3I7XG4gICAgY29sb3I6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgfVxuXG4gICY6aG92ZXIge1xuICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuSG92ZXJCZ0NvbG9yO1xuICAgIGNvbG9yOiBAc2JHcm91cEJ0bkhvdmVyRm9udENvbG9yO1xuICB9XG5cbiAgJjpmb2N1cyB7XG4gICAgb3V0bGluZS1vZmZzZXQ6IC0ycHg7XG4gICAgb3V0bGluZS13aWR0aDogMnB4O1xuICB9XG59XG5cbi8vIGEgdG9vbCB3aXRoIGEgcG9wdXAgbWVudVxuLnNiVG9vbCA+IG1lbnUge1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIHJpZ2h0OiAtMXB4O1xuICB0b3A6IDE2cHg7XG4gIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgcGFkZGluZzogOHB4IDE0cHg7XG4gIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgYm9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IDA7XG4gIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gIGRpc3BsYXk6IG5vbmU7XG4gIHotaW5kZXg6IDQ7ICAvLyB1bmRlciBmaXhlZCBwYWdlIGhlYWRlclxuICB0ZXh0LWFsaWduOiBsZWZ0O1xuXG4gICYuZHQge1xuICAgIHRvcDogMjBweDtcbiAgICBtYXgtaGVpZ2h0OiAzMDBweDtcbiAgICBvdmVyZmxvdzogYXV0bztcbiAgfVxuXG4gIC8vIGEgaGVhZGVyIHJvdy90aXRsZSBvZiB0aGUgbWVudVxuICAmID4gaGVhZGVyIHtcbiAgICB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuICAgIGNvbG9yOiAjNzc3O1xuICAgIG1hcmdpbi1ib3R0b206IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgfVxuXG4gIC8vIGEgaWNvbiBpbiB0aGUgbWVudVxuICAqW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgbWFyZ2luLXJpZ2h0OiA2cHg7XG4gICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICBjb2xvcjogIzc3NztcbiAgfVxufVxuXG4vLyB0aGUgXCJvcGVuXCIgc3RhdGUgb2YgdGhlIG1lbnUgb2YgYSB0b29sXG4uc2JUb29sLm9wZW4gPiBtZW51IHtcbiAgZGlzcGxheTogYmxvY2s7XG59XG5cbi8vIHRoZSBsaXN0IG9mIGl0ZW1zIGluIHRoZSB0b29sJ3MgbWVudVxuLnNiVG9vbCA+IG1lbnUgdWwge1xuICBsaXN0LXN0eWxlOiBub25lO1xuICBwYWRkaW5nOiAwO1xuICBtYXJnaW46IDA7XG5cbiAgLy8gYSBpdGVtIGluIHRoZSBsaXN0IG9mIHRoZSB0b29sJ3MgbWVudVxuICAmID4gbGkge1xuICAgIHBhZGRpbmc6IDNweCAzcHggM3B4IDBweDtcblxuICAgICYgPiBhIHtcbiAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIH1cblxuICAgIC8vIHRoZSBjaGVja21hcmsgb2YgZWFjaCBpdGVtXG4gICAgLnNiLWljb24tb2sge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG5cbiAgICAvLyB0aGUgY2hlY2ttYXJrIG9mIHRoZSBzZWxlY3RlZCBpdGVtXG4gICAgJi5zZWxlY3RlZCAuc2ItaWNvbi1vayB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDA7XG4gICAgfVxuICB9XG59XG5cbi8vIGEgdG9vbCBtZW51IHdpdGggbXVsdGlwbGUgaGVhZGVyIHNlY3Rpb25zXG4uc2JUb29sID4gbWVudS5tdWx0aSA+IGhlYWRlcjpsYXN0LW9mLXR5cGUge1xuICBtYXJnaW4tdG9wOiAxNnB4O1xufVxuLy8gYSB0b29sIG1lbnUgd2l0aCBtdWx0aXBsZSBsaXN0cyAgKHJldmlzaXQgdGhpcyEpXG4uc2JUb29sID4gbWVudS5tdWx0aSA+IHVsOmxhc3Qtb2YtdHlwZSBsaSB7XG4gIG1pbi13aWR0aDogMTMwcHg7XG59XG5cbi8vIGEgbWVudSBsaW5rIGFjY2Vzc2VkIGZyb20gdGhlIGFycm93XG4uc2IgbWVudSBhe1xuICBjb2xvcjpAc2JHcm91cEJ0bkZvbnRDb2xvcjtcbiAgJjpob3ZlciB7XG4gICAgY29sb3I6IEBzYkdyb3VwQnRuSG92ZXJGb250Q29sb3I7XG4gIH1cbn1cbiIsIi8vIEFsbCBzYWxlc2ZvcmNlIHN0eWxlL2VsZW1lbnQgb3ZlcnJpZGVzXG5cbiNib2R5Q2VsbCB7XG4gIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgb3ZlcmZsb3c6IGhpZGRlbjtcbiAgcGFkZGluZzogMHB4O1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIHdpZHRoOiAxMDAlO1xuICBtaW4taGVpZ2h0OiA1MDBweDtcbn1cblxuLy8gZm9yIFwic2V0dXBcIiBwYWdlcywgZS5nLiBFZGl0U2V0dGluZ3NcbiNib2R5RGl2X3NldHVwID4gLm91dGVyIHtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvciAhaW1wb3J0YW50O1xuICAub0xlZnQge1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkhlYWRlckJnQ29sb3IgIWltcG9ydGFudDtcbiAgfVxufVxuXG4jc2lkZWJhckNlbGwuc2lkZWJhckNvbGxhcHNlZCB7XG4gIHBhZGRpbmctbGVmdDogMDtcblxuICArICNib2R5Q2VsbCB7XG4gICAgbWFyZ2luLWxlZnQ6IC0xcHg7XG4gIH1cbn1cblxuI01vcmVUYWJzX1RhYiA+ICNNb3JlVGFic19MaXN0IHtcbiAgei1pbmRleDogMTA7ICAvLyBtdXN0IGJlIGxhcmdlciB0aGFuIGZpeGVkIHBhZ2UgaGVhZGVyICh0YWIgb3ZlcmZsb3cgZHJvcGRvd24pXG59XG5cbnRhYmxlIHRkIHtcbiAgZm9udC1mYW1pbHk6IGluaGVyaXQ7XG59XG5cbi5zYiB1bCBsaSxcbi5zYiBvbCBsaSB7XG4gIG1hcmdpbjogMDtcbiAgcGFkZGluZzogMDtcbn1cblxuLy8gQnV0dG9ucyAtIG1vcmUgc3BlY2lmaWNpdHkgbmVlZWRlZCBhcyAuYnRuIHRha2VzIHByZWNlZGVuY2Vcbi5idG4uc2JCdG46ZXh0ZW5kKC5zYkJ0bikge31cblxuLy8gQXBleCBQYWdlTWVzc2FnZXMgPGFwZXg6cGFnZU1lc3NhZ2VzPlxuLnNiIC5tZXNzYWdlIHtcbiAgYm9yZGVyLXJhZGl1czogM3B4O1xuICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJMZWZ0IEBzYlBhZ2VIZWFkZXJMZWZ0IDAgQHNiUGFnZUhlYWRlckxlZnQqMS42O1xuICBwYWRkaW5nOiAxMnB4O1xuICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICBiYWNrZ3JvdW5kOiBub25lO1xuXG4gIC5tc2dJY29uIHtcbiAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgIHdpZHRoOiAwO1xuICAgIGhlaWdodDogMDtcbiAgfVxuXG4gIC5tZXNzYWdlVGV4dCB7XG4gICAgbWFyZ2luOiAwIDAgMCAzMHB4O1xuXG4gICAgPiBzcGFuLCBoNCwgPiBkaXYge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgdmVydGljYWwtYWxpZ246IHRvcDtcbiAgICAgIGxpbmUtaGVpZ2h0OiBAc2JGb250U2l6ZSAqIDIuMDtcbiAgICB9XG5cbiAgICBoNCB7XG4gICAgICBtYXJnaW4tbGVmdDogMTBweDtcbiAgICAgIG1hcmdpbi1yaWdodDogNnB4O1xuICAgIH1cblxuICAgID4gZGl2Om5vdCg6Zmlyc3Qtb2YtdHlwZSkge1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgfVxuXG4gICAgJjpiZWZvcmUge1xuICAgICAgZm9udC1mYW1pbHk6IFwic2JcIjtcbiAgICAgIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgICAgIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMi4wO1xuICAgICAgc3BlYWs6IG5vbmU7XG5cbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIHRleHQtZGVjb3JhdGlvbjogaW5oZXJpdDtcbiAgICAgIHdpZHRoOiAxZW07XG4gICAgICBtYXJnaW4tbGVmdDogLTMwcHg7XG4gICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICBmb250LXZhcmlhbnQ6IG5vcm1hbDtcbiAgICAgIHRleHQtdHJhbnNmb3JtOiBub25lO1xuICAgICAgbGluZS1oZWlnaHQ6IDFlbTtcbiAgICB9XG4gIH1cblxuICAmLmVycm9yTTIsXG4gICYuZXJyb3JNMyxcbiAgJi5lcnJvck00LFxuICAmLmVycm9yTTUsXG4gICYuZXJyb3JNNiB7XG4gICAgLm1lc3NhZ2VUZXh0IHtcbiAgICAgIGNvbG9yOiAjY2MwMDAwO1xuICAgICAgJjpiZWZvcmUge1xuICAgICAgICBjb250ZW50OiAnXFxlODIxJzsgIC8vc2ItaWNvbi1hdHRlbnRpb24tY2lyY2xlZFxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gICYud2FybmluZ00yLFxuICAmLndhcm5pbmdNMyxcbiAgJi53YXJuaW5nTTQsXG4gICYud2FybmluZ001LFxuICAmLndhcm5pbmdNNiB7XG4gICAgLm1lc3NhZ2VUZXh0IHtcbiAgICAgIGNvbG9yOiAjZDk4NjMzO1xuICAgICAgJjpiZWZvcmUge1xuICAgICAgICBjb250ZW50OiAnXFxlODIwJzsgIC8vc2ItaWNvbi1hdHRlbnRpb25cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAmLmluZm9NMixcbiAgJi5pbmZvTTMsXG4gICYuaW5mb000LFxuICAmLmluZm9NNSxcbiAgJi5pbmZvTTYge1xuICAgIC5tZXNzYWdlVGV4dCB7XG4gICAgICBjb2xvcjogIzAwMDBjYztcbiAgICAgICY6YmVmb3JlIHtcbiAgICAgICAgY29udGVudDogJ1xcZTgwZic7ICAvL3NiLWljb24taW5mby1jaXJjbGVkXG4gICAgICB9XG4gICAgfVxuICB9XG59XG4iLCIvKlxuTW9kYWwgZGlhbG9nIG1hc2tcblxuVGhlIGxheWVyIGJlaGluZCB0aGUgZGlhbG9nIHRoYXQgbWFza3MgdGhlIGVudGlyZSBwYWdlLlxuKi9cbi5zYk1vZGFsTWFzayB7XG4gIHBvc2l0aW9uOiBmaXhlZDtcbiAgdG9wOiAwO1xuICBsZWZ0OiAwO1xuICByaWdodDogMDtcbiAgYm90dG9tOiAwO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JNYXNrQ29sb3I7XG4gIG9wYWNpdHk6IDAuODtcbiAgei1pbmRleDogMTAwMDtcbn1cblxuLypcbk1vZGFsIERpYWxvZ1xuXG5BIGRpYWxvZyB3aXRoIG1vZGFsaXR5IHRoYXQgdGFrZXMgdXAgdGhlIGVudGlyZSBwYWdlLlxuICovXG4uc2JNb2RhbERpYWxvZyB7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG4gIC8vIGJvcmRlcjogMXB4IHNvbGlkICMwMDA7XG4gIGJvcmRlci1yYWRpdXM6IDRweDtcbiAgdG9wOiAxNjBweDtcbiAgcG9zaXRpb246IGZpeGVkO1xuICBsZWZ0OiAwO1xuICByaWdodDogMDtcbiAgbWFyZ2luOiAwIGF1dG87XG4gIC8vIG1heC13aWR0aDogNjAwcHg7XG4gIG1pbi1oZWlnaHQ6IDIwMHB4O1xuICB6LWluZGV4OiAxMDAxO1xuICBjb2xvcjogQHNiRm9udENvbG9yO1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgPiBoZWFkZXIge1xuICAgIGJvcmRlci1ib3R0b206IDJweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgICBwYWRkaW5nOiAyNHB4IDE2cHg7XG4gICAgLy8gbWFyZ2luLWJvdHRvbTogMTBweDtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICAgIC8vIGxpbmUtaGVpZ2h0OiBAc2JGb250U2l6ZSAqIDJlbTtcbiAgICBjb2xvcjogQHNiSGVhZGVyRm9udENvbG9yO1xuXG4gICAgPiBpIHtcbiAgICAgIGNvbG9yOiBAc2JIZWFkZXJGb250Q29sb3I7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMjtcbiAgICB9XG5cbiAgICA+ICoge1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICB9XG5cbiAgICA+IGgyIHtcbiAgICAgIC8vIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgICAgbWFyZ2luOiAwIDAgMCA2cHg7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMi40O1xuICAgICAgY29sb3I6IEBzYkhlYWRlckZvbnRDb2xvcjtcbiAgICB9XG5cbiAgICA+IGgzIHtcbiAgICAgIGNvbG9yOiBAc2JIZWFkZXJGb250Q29sb3I7XG4gICAgfVxuXG4gICAgPiAuc2YtaWNvbi1jbG9zZSB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMztcbiAgICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICAgIHRvcDogLTUwcHg7XG4gICAgICByaWdodDogMHB4O1xuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgIH1cbiAgICB9XG4gICAgPiAuc2YtaWNvbi1jbG9zZTpiZWZvcmUge1xuICAgICAgY29sb3I6ICNmZmY7XG4gICAgfVxuICB9XG5cbiAgLnNiTW9kYWxDb250ZW50Q29udGFpbmVyIHtcbiAgICBvdmVyZmxvdzogYXV0bztcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgIGlbY2xhc3NePXNmLWljb25dIHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuXG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiVGFibGUge1xuICAgICAgbWFyZ2luLWJvdHRvbTogOHB4O1xuXG4gICAgICB0ZCB7XG4gICAgICAgIGJvcmRlci1ib3R0b206IDA7XG4gICAgICB9XG4gICAgfVxuXG4gICAgdWwge1xuICAgICAgLXdlYmtpdC1wYWRkaW5nLWVuZDogNDBweDtcbiAgICB9XG4gIH1cblxuICAuc2JNb2RhbEZvb3RlciB7XG4gICAgd2lkdGg6IDEwMCU7XG4gICAgYm9yZGVyLXRvcDogMnB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuICAgIHBhZGRpbmc6IDEycHggMTZweDtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JIZWFkZXJCZ0NvbG9yO1xuICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IDRweDtcbiAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogNHB4O1xuICAgIGRpc3BsYXk6IGlubGluZS10YWJsZTtcblxuICAgID4gLnNiQnV0dG9ucyB7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICBwYWRkaW5nOiAwIDAgMCAxNnB4O1xuICAgICAgPiAuc2JCdG4ge1xuICAgICAgICBwYWRkaW5nOiA4cHggMTZweDtcblxuICAgICAgICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5Gb250Q29sb3I7XG4gICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICB9XG59XG5cbiNEZXNjcmlwdGlvbkVkaXRvckRpYWxvZyB7XG4gICBtaW4taGVpZ2h0OiA0MjlweDtcbn1cblxuXG4vLyBKUSBVSSB0b29sdGlwc1xuLnVpLXRvb2x0aXA6ZXh0ZW5kKC5zYikge1xuICBwYWRkaW5nOiA4cHg7XG4gIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgei1pbmRleDogOTk5OTtcbiAgbWF4LXdpZHRoOiAzMDBweDtcbiAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgYm9yZGVyOiAxcHggc29saWQgQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG4gIGJveC1zaGFkb3c6IDAgMCAycHggQHNiQm9yZGVyQ29sb3I7XG5cbiAgPiAudWktdG9vbHRpcC1jb250ZW50IHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgfVxuXG4gID4gLmFycm93IHtcbiAgICB3aWR0aDogNzBweDtcbiAgICBoZWlnaHQ6IDE2cHg7XG4gICAgb3ZlcmZsb3c6IGhpZGRlbjtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgbGVmdDogNTAlO1xuICAgIG1hcmdpbi1sZWZ0OiAtMzVweDtcbiAgICBib3R0b206IC0xNnB4O1xuICB9XG4gID4gLmFycm93LnRvcCB7XG4gICAgdG9wOiAtMTZweDtcbiAgICBib3R0b206IGF1dG87XG5cbiAgICAmOmFmdGVyIHtcbiAgICAgIGJvdHRvbTogLTIwcHg7XG4gICAgICB0b3A6IGF1dG87XG4gICAgfVxuICB9XG4gID4gLmFycm93LmxlZnQge1xuICAgIGxlZnQ6IDI4JTtcbiAgfVxuICA+IC5hcnJvdzphZnRlciB7XG4gICAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgICBib3JkZXI6IEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgIGNvbnRlbnQ6IFwiXCI7XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIGxlZnQ6IDIwcHg7XG4gICAgdG9wOiAtMjBweDtcbiAgICB3aWR0aDogMjVweDtcbiAgICBoZWlnaHQ6IDI1cHg7XG4gICAgYm94LXNoYWRvdzogNnB4IDVweCA5cHggLTlweCBibGFjaztcbiAgICAtd2Via2l0LXRyYW5zZm9ybTogcm90YXRlKDQ1ZGVnKTtcbiAgICAtbXMtdHJhbnNmb3JtOiByb3RhdGUoNDVkZWcpO1xuICAgIHRyYW5zZm9ybTogcm90YXRlKDQ1ZGVnKTtcbiAgfVxufVxuXG4vLyBKUSBVSSBhMTF5IHN0eWxlcyAobmVlZGVkIGZvciB0b29saXBzKVxuLnVpLWhlbHBlci1oaWRkZW4tYWNjZXNzaWJsZSB7XG4gIGJvcmRlcjogMDtcbiAgY2xpcDogcmVjdCgwIDAgMCAwKTtcbiAgaGVpZ2h0OiAxcHg7XG4gIG1hcmdpbjogLTFweDtcbiAgb3ZlcmZsb3c6IGhpZGRlbjtcbiAgcGFkZGluZzogMDtcbiAgcG9zaXRpb246IGFic29sdXRlO1xuICB3aWR0aDogMXB4O1xufVxuXG4jc2JDdXN0b21BY3Rpb25Db250YWluZXIge1xuICBtYXJnaW46IDE4cHg7XG4gIHRvcDogMHB4O1xuICBoZWlnaHQ6IDk1JTtcbiAgLy8gbWluLWhlaWdodDogMHB4O1xuICA+IC5zZi1pY29uLWNhbmNlbC1jaXJjbGVkIHtcbiAgICBmb250LXNpemU6IDM1cHg7XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIHRvcDogLTlweDtcbiAgICByaWdodDogLTRweDtcbiAgICB3aWR0aDogMjBweDtcbiAgICBoZWlnaHQ6IDIwcHg7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiTWFza0NvbG9yO1xuICAgICY6aG92ZXIge1xuICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgIH1cbiAgfVxuICA+IC5zZi1pY29uLWNhbmNlbC1jaXJjbGVkOmJlZm9yZSB7XG4gICAgY29sb3I6ICNmZmY7XG4gICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgIHJpZ2h0OiAxNXB4O1xuICAgIHRvcDogLTEwcHg7XG4gIH1cblxufVxuXG4jZWFzeVhETV9TQlFRX3Byb3ZpZGVyIHtcbiAgd2lkdGg6IDEwMCU7XG4gIGhlaWdodDogMTAwJTtcbn1cblxuI3NiUHJpY2Vib29rTW9kYWwge1xuICAuc2JNb2RhbERpYWxvZztcbiAgbWF4LXdpZHRoOiA2NDBweDtcblxuICA+IC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgcGFkZGluZzogMjBweDtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgICA+IHNlbGVjdCB7XG4gICAgICBoZWlnaHQ6IDM0cHg7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS42O1xuICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICBtYXJnaW46IDE0cHggMDtcbiAgICB9XG4gIH1cbn1cbiIsIi8vIFRoZSBwYWdlIHRpdGxlIGF0IHRvcCBsZWZ0IG9mIHBhZ2UgKGljb24sIHBhZ2UgbmFtZSwgb2JqZWN0IGluc3RhbmNlIG5hbWUsIGV0YyApXG4uc2JQYWdlVGl0bGUge1xuICAvLyBwYWRkaW5nOiA5cHggQHNiUGFnZUhlYWRlckxlZnQ7XG4gIHBhZGRpbmc6IDI0cHggMjRweCAxNnB4O1xuICBjb2xvcjogQHNiSGVhZGVyU3VwcG9ydEZvbnRDb2xvcjtcbiAgYmFja2dyb3VuZDogQHNiSGVhZGVyQmdDb2xvcjtcbiAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICB0cmFuc2l0aW9uOiBwYWRkaW5nIC4yNXMgZWFzZS1pbjtcblxuICBoMSwgaDIge1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgdHJhbnNpdGlvbjogYWxsIC4yNXMgZWFzZS1pbjtcbiAgfVxuXG4gIC8vIHRoZSBzZWNvbmRhcnkgcGFnZSB0aXRsZSwgb2JqZWN0IGluc3RhbmNlIG5hbWUsIGV0YyAob3B0aW9uYWwpXG4gIGgyIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTsgIC8vIG5vdCBhIG5vcm1hbCBoMiBzaXplXG4gICAgY29sb3I6IEBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I7XG4gICAgLy8gdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICBmb250LXdlaWdodDogNDAwO1xuICAgIHBhZGRpbmctYm90dG9tOiA0cHg7XG4gIH1cblxuICA+IC5zYlBhZ2VUaXRsZVRhYmxlIHtcbiAgICBkaXNwbGF5OiB0YWJsZTtcbiAgICB3aWR0aDogMTAwJTtcbiAgICAtd2Via2l0LXRyYW5zaXRpb24tZGVsYXk6IDBzLCAwcywgMHM7XG4gICAgLXdlYmtpdC10cmFuc2l0aW9uLWR1cmF0aW9uOiAwLjI1cywgMC4yNXMsIDAuMjVzO1xuICAgIC13ZWJraXQtdHJhbnNpdGlvbi1wcm9wZXJ0eTogLXdlYmtpdC10cmFuc2Zvcm0sIG9wYWNpdHksIGxlZnQ7XG4gICAgLXdlYmtpdC10cmFuc2l0aW9uLXRpbWluZy1mdW5jdGlvbjogZWFzZS1pbiwgZWFzZS1pbiwgZWFzZTtcbiAgICAtd2Via2l0LXVzZXItZHJhZzogbm9uZTtcblxuICAgICYuc2JSZXN1bHRzU2VjdGlvbiB7XG4gICAgICA+IC5zYlBhZ2VUaXRsZUxlZnQge1xuICAgICAgICB3aWR0aDogMTAwJTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IC5zYlBhZ2VUaXRsZUxlZnQsXG4gICAgPiAuc2JQYWdlVGl0bGVSaWdodCB7XG4gICAgICBkaXNwbGF5OiB0YWJsZS1jZWxsO1xuICAgICAgdmVydGljYWwtYWxpZ246IHRvcDtcbiAgICAgIHRyYW5zaXRpb246IGFsbCAuMjVzIGVhc2UtaW47XG4gICAgfVxuXG4gICAgPiAuc2JQYWdlVGl0bGVMZWZ0IHtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1mbGV4O1xuICAgICAgd2lkdGg6IDMwJTtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG5cblxuICAgICAgLnNiVGl0bGVzIHtcbiAgICAgICAgdmVydGljYWwtYWxpZ246IHRvcDtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuICAgICAgICAtd2Via2l0LXRyYW5zaXRpb24tZGVsYXk6IDBzLCAwcywgMHM7XG4gICAgICAgIC13ZWJraXQtdHJhbnNpdGlvbi1kdXJhdGlvbjogMC4yNXMsIDAuMjVzLCAwLjI1cztcbiAgICAgICAgLXdlYmtpdC10cmFuc2l0aW9uLXByb3BlcnR5OiAtd2Via2l0LXRyYW5zZm9ybSwgb3BhY2l0eSwgbGVmdDtcbiAgICAgICAgLXdlYmtpdC10cmFuc2l0aW9uLXRpbWluZy1mdW5jdGlvbjogZWFzZS1pbiwgZWFzZS1pbiwgZWFzZTtcbiAgICAgICAgLXdlYmtpdC11c2VyLWRyYWc6IG5vbmU7XG4gICAgICB9XG4gICAgICBbY2xhc3NePXNmLWljb25dIHsvL3RoZXNlIG5lZWQgdG8gYmUgdmFyaWFibGVzXG4gICAgICAgIGZvbnQtc2l6ZTogNTBweDtcbiAgICAgICAgaGVpZ2h0OiA1MHB4O1xuICAgICAgICB3aWR0aDogNTBweDtcbiAgICAgICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICAgICAgICBtYXJnaW4tcmlnaHQ6IDEycHg7XG4gICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuXG4gICAgICAgICYucmVzaXplIHtcbiAgICAgICAgICBmb250LXNpemU6IDMwcHg7XG4gICAgICAgICAgcGFkZGluZzogMTNweCAxMHB4IDAgMTBweDtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICBbY2xhc3NePXNmLWljb25dOmJlZm9yZSB7Ly90aGVzZSBuZWVkIHRvIGJlIHZhcmlhYmxlc1xuICAgICAgICBjb2xvcjogI2ZmZjtcbiAgICAgICAgbWFyZ2luOiAwO1xuICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgICAgIHRvcDogLTdweDtcbiAgICAgIH1cblxuICAgICAgLnJlc2V0SGVpZ2h0W2NsYXNzXj1zZi1pY29uXTpiZWZvcmUge1xuICAgICAgICB0b3A6IDBweDtcbiAgICAgIH1cblxuXG5cbiAgICAgID4gc3BhbiB7XG5cdFx0XHRcdC8vVGhpcyBpcyB0byBmaXggdGhlIGhlYWRlciBpc3N1ZSBpbiBTYWZhcmlcbiAgICAgICAgd2lkdGg6IDIwMHB4O1xuXG5cdFx0XHRcdC8vIEJ1dCBpbiBJRTExKyBpdCBicmVha3MsIHNvIHJlc2V0IGl0IGJhY2sgd2l0aCBhIGhhY2t5IHdheSB0byB0YXJnZXQgSUUgb25seVxuXHRcdFx0XHRAbWVkaWEgc2NyZWVuIGFuZCAoLW1zLWhpZ2gtY29udHJhc3Q6IG5vbmUpLCAoLW1zLWhpZ2gtY29udHJhc3Q6IGFjdGl2ZSkge1xuXHRcdFx0XHRcdHdpZHRoOiBhdXRvO1xuXHRcdFx0XHR9XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiAuc2JQYWdlVGl0bGVSaWdodCB7XG4gICAgICB3aWR0aDogMTAwJTtcbiAgICAgID4gLnNiVG9vbHMsXG4gICAgICA+IC5zYkJ1dHRvbnMge1xuICAgICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gdGhlIFwiWCBQcm9kdWN0cyBGb3VuZFwiIGxhYmVsXG4gIC5zYlJlc3VsdHMge1xuICAgIG1hcmdpbjogN3B4IDAgMCA2MnB4O1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIHRyYW5zaXRpb246IGFsbCAuMjVzIGVhc2UtaW47XG5cbiAgICAmLnNiV2FybmluZyB7XG4gICAgICBtYXJnaW4tdG9wOiAycHg7XG4gICAgICBjb2xvcjogI2NjNzgyNDtcbiAgICAgIFtjbGFzcz1zZi1pY29uLXdhcm5pbmddIHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNjtcbiAgICAgICAgd2lkdGg6IDEzcHg7XG4gICAgICAgIGhlaWdodDogMjBweDtcbiAgICAgICAgLy8gdG9wOiAtMTVweDtcbiAgICAgICAgJjpiZWZvcmUge1xuICAgICAgICAgIGNvbG9yOiAjY2M3ODI0O1xuICAgICAgICAgIG1hcmdpbjogMCA2cHggMCAwO1xuICAgICAgICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICAgICAgICB0b3A6IDJweDtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gICYuc3F1ZWV6ZWQge1xuICAgIHBhZGRpbmc6IDIwcHggMTVweCA3cHg7XG5cbiAgICA+IC5zYlBhZ2VUaXRsZVRhYmxlIHtcbiAgICAgID4gLnNiUGFnZVRpdGxlTGVmdCB7XG4gICAgICAgIC8vIHBhZGRpbmc6IDdweCAwO1xuXG4gICAgICAgIFtjbGFzc149c2YtaWNvbl0ge1xuICAgICAgICAgIGZvbnQtc2l6ZTogMzZweDtcbiAgICAgICAgICBoZWlnaHQ6IDM2cHg7XG4gICAgICAgICAgd2lkdGg6IDM2cHg7XG4gICAgICAgICAgJi5yZXNpemUge1xuICAgICAgICAgICAgZm9udC1zaXplOiAyM3B4O1xuICAgICAgICAgICAgcGFkZGluZy10b3A6IDhweDtcbiAgICAgICAgICAgIHBhZGRpbmctbGVmdDogN3B4O1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgICBbY2xhc3NePXNmLWljb25dOmJlZm9yZSB7XG4gICAgICAgICAgdG9wOiAtNXB4O1xuICAgICAgICB9XG4gICAgICAgIC5zYlRpdGxlcyB7XG4gICAgICAgICAgdHJhbnNmb3JtOiB0cmFuc2xhdGUzZCgwcHgsIC0xMnB4LCAwcHgpO1xuICAgICAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiBtYXRyaXgoMSwgMCwgMCwgMSwgMCwgLTgpO1xuICAgICAgICB9XG4gICAgICAgIGgyIHtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAuc2JCdXR0b25zIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgIH1cblxuICAgICAgJi5zYlJlc3VsdHNTZWN0aW9uIHtcbiAgICAgICAgb3BhY2l0eTogMDtcbiAgICAgICAgZGlzcGxheTogbm9uZTsgLy9UZW1wb3JhcnkgdW50aWwgdGhlcmUgaXMgYW5vdGhlciB3YXkgdG8ga2VlcCB0aGlzIGZyb20gdGFraW5nIHVwIHNwYWNlXG4gICAgICAgIHRyYW5zZm9ybTogdHJhbnNsYXRlM2QoMHB4LCAtMTdweCwgMHB4KTtcbiAgICAgICAgLXdlYmtpdC10cmFuc2Zvcm06IG1hdHJpeCgxLCAwLCAwLCAxLCAwLCAtMTcpO1xuICAgICAgfVxuICAgIH1cbiAgfVxufVxuXG4vLyBGaXggdGhlIHBhZ2UgdGl0bGUgdG8gdG9wIG9mIHZpZXdwb3J0IHdoZW4gbmVlZGVkXG4uc2JIZWFkZXJGaXhlZCAuc2JQYWdlVGl0bGUge1xuICBwb3NpdGlvbjogZml4ZWQ7XG4gIHRvcDogMTE0cHg7IC8vIGhlaWdodCBvZiBTRiBBcHAgaGVhZGVyLiAgT25seSBzZXQgaGVyZSBmb3IgaW5pdGlhbCByZW5kZXJpbmdcbiAgbGVmdDogMTBweDsgIC8vIHNpemUgb2YgU0YgQWxvaGEgZ3V0dGVyc1xuICByaWdodDogMTBweDtcbiAgei1pbmRleDogNTtcbiAgdmlzaWJpbGl0eTogaGlkZGVuOyAvLyBmb3IgbG9hZGluZy4gd2UnbGwgZHluYW1pY2FsbHkgc2hvdyB3aGVuIHBhZ2UgaXMgXCJyZWFkeVwiXG59XG5cbiNzaWRlYmFyQ2VsbDpub3QoLnNpZGViYXJDb2xsYXBzZWQpICsgI2JvZHlDZWxsIC5zYkhlYWRlckZpeGVkIC5zYlBhZ2VUaXRsZSB7XG4gIGxlZnQ6IDIzMHB4OyAgLy8gZm9yIGluaXRpYWwgcG9zaXRpb24gd2hpbGUgXCJsb2FkaW5nXCIgaXMgc2hvd25cbn1cblxuI21haW5Db250ZW50IHtcbiAgbWFyZ2luLWxlZnQ6IDFweDtcbn1cblxuLy8gVGhlIHBhZ2UgYmxvY2sgYWZ0ZXIgdGhlIHBhZ2UgdGl0bGUsIGkuZS4gdGhlIG1haW4gY29udGVudHMgb2YgdGhlIHBhZ2Vcbi5zYlBhZ2VCbG9jayB7XG4gIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG59XG5cbi8vIEEgc2VjdGlvbiB3aXRoaW4gYSBwYWdlIGJsb2NrXG4uc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgbWFyZ2luOiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgYmFja2dyb3VuZDogQHNiSGVhZGVyQmdDb2xvcjtcbiAgYm9yZGVyOiAxcHggc29saWQgQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG4gIGJvcmRlci1yYWRpdXM6IDRweDtcbiAgcGFkZGluZzogMTRweDtcbiAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcblxuICA+IGhlYWRlciB7XG4gICAgbWFyZ2luLWJvdHRvbTogMTBweDtcbiAgfVxuXG4gICY6YWZ0ZXI6ZXh0ZW5kKCAuc2JDbGVhciApIHt9XG59XG5cbi8vIFRoZSBMb2FkaW5nIGxheWVyIG1vZGFsIG1hc2tcbi5zYkxvYWRpbmdNYXNrIHtcbiAgcG9zaXRpb246IGZpeGVkO1xuICB0b3A6IDA7XG4gIGxlZnQ6IDA7XG4gIHJpZ2h0OiAwO1xuICBib3R0b206IDA7XG4gIGJhY2tncm91bmQtY29sb3I6ICNBOEI3Qzc7XG4gIG9wYWNpdHk6IDAuODtcbiAgei1pbmRleDogMTAwMDE7XG59XG5cbi8vIFRoZSBMb2FkaW5nIHNwaW5uZXIgaWNvblxuLnNiTG9hZGluZyB7XG4gIHBvc2l0aW9uOiBmaXhlZDtcbiAgdG9wOiAzNyU7XG4gIGxlZnQ6IDUwJTtcbiAgbWFyZ2luLWxlZnQ6IC03NHB4O1xufVxuXG4vLyBMb29rdXAgU2VhcmNoIFJlc3VsdHNcbi5zYlNlYXJjaFJlc3VsdHMge1xuXG4gIC8vIHRoZSBsaXN0IG9mIHByb2R1Y3RzXG4gIC5zYlRhYmxlIHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuXG4gICAgLy8gZmlyc3QgY29sdW1uIG9mIGxpc3QgaXMgY2hlY2tib3gvc2VsZWN0b3IgY29sdW1uXG4gICAgPiB0aGVhZCA+IHRyID4gdGg6Zmlyc3Qtb2YtdHlwZSxcbiAgICA+IHRib2R5ID4gdHIgPiB0ZDpmaXJzdC1vZi10eXBlIHtcbiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICB9XG5cbiAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cbiAgfVxuXG4gIC8vIHRvb2xiYXIgaW4gdXBwZXIgcmlnaHQgb2YgcGFnZSAoRmlsdGVyLCBldGMpXG4gIC5zYlRvb2xzIHtcbiAgICBmbG9hdDogcmlnaHQ7XG4gIH1cbn1cbiIsIkBzYlRleHRib3hIZWlnaHQ6IEBzYkZvbnRTaXplICogMi41O1xuQHNiVGV4dGJveEJvcmRlcjogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuQHNiVGV4dGJveFJhZGl1czogM3B4O1xuQHNiU2VsZWN0SGVpZ2h0OiBAc2JGb250U2l6ZSAqIDIuNTtcbkBzYlNlbGVjdEJvcmRlcjogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuQHNiU2VsZWN0UmFkaXVzOiAzcHg7XG5Ac2JTZWxlY3RCZ0NvbG9yOiBAc2JQYWdlQmdDb2xvcjtcbkBzYkNoZWNrYm94U2l6ZTogMjJweDtcblxuLnNiIHtcbiAgLy8gVGV4dCBib3hlcyAtIGRlZmF1bHQgc3R5bGVzXG4gIGlucHV0W3R5cGU9dGV4dF0sIGlucHV0Om5vdChbdHlwZV0pIHtcbiAgICBoZWlnaHQ6IEBzYlRleHRib3hIZWlnaHQ7XG4gICAgYm9yZGVyOiBAc2JUZXh0Ym94Qm9yZGVyO1xuICAgIGJvcmRlci1yYWRpdXM6IEBzYlRleHRib3hSYWRpdXM7XG4gICAgcGFkZGluZzogMCA1cHg7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICAmLmhhc0RhdGVwaWNrZXIge1xuICAgICAgbWluLXdpZHRoOiA5NXB4O1xuICAgICAgd2lkdGg6IDg1JTtcbiAgICAgICAmLmludmFsaWREYXRlIHtcbiAgICAgICAgYm9yZGVyLWNvbG9yOiAjYzAwO1xuICAgICAgIH1cbiAgICB9XG5cbiAgfVxuXG5cbiAgLy8gU2VsZWN0IHB1bGxkb3ducyAtIGRlZmF1bHQgc3R5bGVzXG4gIHNlbGVjdDpub3QoW211bHRpcGxlXSkge1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIC13ZWJraXQtYXBwZWFyYW5jZTogbm9uZTtcbiAgICAtbW96LWFwcGVhcmFuY2U6IG5vbmU7XG4gICAgbWluLXdpZHRoOiAxMDBweDtcbiAgICBwYWRkaW5nOiAwIDE0cHg7XG4gICAgbWFyZ2luOiAwO1xuICAgIGhlaWdodDogQHNiU2VsZWN0SGVpZ2h0O1xuICAgIGJhY2tncm91bmQtaW1hZ2U6IHVybCgnZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpSUhodGJHNXpPbmhzYVc1clBTSm9kSFJ3T2k4dmQzZDNMbmN6TG05eVp5OHhPVGs1TDNoc2FXNXJJaUIyWlhKemFXOXVQU0l4TGpFaUlHbGtQU0pNWVhsbGNsOHhJaUI0UFNJd2NIZ2lJSGs5SWpCd2VDSWdkbWxsZDBKdmVEMGlNQ0F3SURJM0xqWWdNakVpSUdWdVlXSnNaUzFpWVdOclozSnZkVzVrUFNKdVpYY2dNQ0F3SURJM0xqWWdNakVpSUhodGJEcHpjR0ZqWlQwaWNISmxjMlZ5ZG1VaVBnMEtJQ0E4Wno0TkNpQWdJQ0E4WkdWbWN6NE5DaUFnSUNBZ0lEeHdZWFJvSUdsa1BTSlRWa2RKUkY4eFh5SWdaRDBpVFRVdU5pQTFhREUyTGpSak1DNDBJREFnTUM0NElEQXVOaUF3TGpRZ01Xd3RPQ0E1TGpoakxUQXVNeUF3TGpNdE1DNDVJREF1TXkweExqSWdNR3d0T0MwNUxqaEROQzQ0SURVdU5pQTFMakVnTlNBMUxqWWdOWG9pTHo0TkNpQWdJQ0E4TDJSbFpuTStEUW9nSUNBZ1BHTnNhWEJRWVhSb0lHbGtQU0pUVmtkSlJGOHlYeUkrRFFvZ0lDQWdJQ0E4ZFhObElIaHNhVzVyT21oeVpXWTlJaU5UVmtkSlJGOHhYeUlnYjNabGNtWnNiM2M5SW5acGMybGliR1VpTHo0TkNpQWdJQ0E4TDJOc2FYQlFZWFJvUGcwS0lDQWdJRHh5WldOMElIZzlJakFpSUhrOUlqQWlJR05zYVhBdGNHRjBhRDBpZFhKc0tDTlRWa2RKUkY4eVh5a2lJR1pwYkd3OUlpTTFOVFk1T0VRaUlIZHBaSFJvUFNJeU55NDJJaUJvWldsbmFIUTlJakl4SWk4K0RRb2dJRHd2Wno0TkNqd3ZjM1puUGcwSycpO1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG4gICAgYmFja2dyb3VuZC1wb3NpdGlvbjogOTUlIDUwJTtcbiAgICBiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuICAgIGJhY2tncm91bmQtc2l6ZTogMTRweCAxNHB4O1xuICAgIGJvcmRlcjogQHNiU2VsZWN0Qm9yZGVyO1xuICAgIGJvcmRlci1yYWRpdXM6IDNweDtcblxuXHRcdCY6Oi1tcy1leHBhbmQge1xuXHRcdFx0ZGlzcGxheTogbm9uZTsgLy8gcmVtb3ZlcyBhcnJvdyBmb3IgSUVcblx0XHR9XG4gIH1cblxuICAvLyBDaGVja2JveCAtIGRlZmF1bHQgc3R5bGVzXG4gIGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICB3aWR0aDogQHNiQ2hlY2tib3hTaXplO1xuICAgIGhlaWdodDogQHNiQ2hlY2tib3hTaXplO1xuICAgIG1hcmdpbjogMDtcbiAgICBib3JkZXI6IDA7XG4gIH1cblxuICBpbnB1dCwgYnV0dG9uLCBzZWxlY3QsIHRleHRhcmVhIHtcbiAgICBmb250LWZhbWlseTogaW5oZXJpdDtcbiAgfVxufVxuXG4vKlxuRHVhbGluZyBMaXN0IGJveFxuXG5BIGNvbnRyb2wgd2l0aCB0d28gbGlzdCBib3hlcyBhbmQgYXJyb3dzIHRvIG1vdmUgaXRlbXMgbGVmdC9yaWdodCBhbmQgdXAvZG93biBiZXR3ZWVuIHRob3NlIHR3by5cbiAqL1xuLnNiRHVhbExpc3RCb3gge1xuICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgY29sb3I6IGluaGVyaXQ7XG4gIGJvcmRlci1jb2xsYXBzZTogY29sbGFwc2U7XG4gIGJvcmRlci1zcGFjaW5nOiAwO1xuXG4gID4gdGhlYWQgPiB0ciA+IHRoIHtcbiAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcblxuICAgID4gW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS40O1xuICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICB9XG4gIH1cblxuICA+IHRib2R5ID4gdHIgPiB0ZDpudGgtY2hpbGQoMiksXG4gID4gdGJvZHkgPiB0ciA+IHRkOm50aC1jaGlsZCg0KSB7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gIH1cblxuICBhIHtcbiAgICBjb2xvcjogaW5oZXJpdDtcbiAgICBwYWRkaW5nOiAycHg7XG4gICAgbWFyZ2luOiAwIDhweDtcbiAgICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgIGJvcmRlci1ib3R0b206IDA7XG4gICAgZGlzcGxheTogYmxvY2s7XG5cbiAgICAmOmhvdmVyIHtcbiAgICAgIGJhY2tncm91bmQ6ICMwMDY5ZDk7XG4gICAgICBjb2xvcjogI2ZmZjtcbiAgICAgIGJvcmRlci1jb2xvcjogIzAwNjlkOTtcbiAgICB9XG5cbiAgICAuc2YtaWNvbi1yaWdodCwgLnNmLWljb24tbGVmdCB7XG4gICAgICBwYWRkaW5nOiAycHg7XG4gICAgfVxuXG4gICAgW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS41O1xuICAgIH1cblxuICAgIFtjbGFzc149c2ItaWNvbi10by1lbmRdOmJlZm9yZSB7XG4gICAgICAucm90YXRlKC05MGRlZyk7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogLjg1O1xuICAgIH1cblxuICAgICY6bnRoLWNoaWxkKDQpIFtjbGFzc149c2ItaWNvbi10by1lbmRdOmJlZm9yZSB7XG4gICAgICAucm90YXRlKDkwZGVnKTtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAuODU7XG4gICAgfVxuXG4gICAgJjpmaXJzdC1vZi10eXBlIHtcbiAgICAgIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiAzcHg7XG4gICAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiAzcHg7XG4gICAgfVxuXG4gICAgJjpsYXN0LW9mLXR5cGUge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogM3B4O1xuICAgICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogM3B4O1xuICAgIH1cbiAgfVxuXG4gIHNlbGVjdCB7XG4gICAgZm9udC1zaXplOiBpbmhlcml0O1xuICAgIGhlaWdodDogMzUwcHg7XG4gICAgd2lkdGg6IDE4MHB4O1xuICAgIHBhZGRpbmc6IDhweDtcblxuICAgID4gb3B0aW9uIHtcbiAgICAgIHBhZGRpbmc6IDRweDtcblxuICAgICAgJi5yZXF1aXJlZCB7XG4gICAgICAgIGNvbG9yOiAjYWYyNjI2O1xuICAgICAgICBmb250LXdlaWdodDogYm9sZDtcbiAgICAgICAgLXdlYmtpdC1mb250LXNtb290aGluZzogc3VicGl4ZWwtYW50aWFsaWFzZWQ7XG4gICAgICB9XG4gICAgfVxuICB9XG59XG4iLCIvKlxuUm90YXRlcyBhbiBlbGVtZW50XG5cbiRyIC0gdGhlIHJvdGF0ZSBmdW5jdGlvbiBwYXJhbXRlciwgZS5nLiA5MGRlZ1xuICovXG4ucm90YXRlKEByKSB7XG4gIC13ZWJraXQtdHJhbnNmb3JtOiByb3RhdGUoQHIpO1xuICAtbW96LXRyYW5zZm9ybTogcm90YXRlKEByKTtcbiAgLW1zLXRyYW5zZm9ybTogcm90YXRlKEByKTtcbiAgdHJhbnNmb3JtOiByb3RhdGUoQHIpO1xufVxuIiwiI3VpLWRhdGVwaWNrZXItZGl2IHtcbiAgZGlzcGxheTogbm9uZTtcbn1cblxuLnVpLWRhdGVwaWNrZXIge1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JDb250ZW50QmdDb2xvcjs7XG4gIGJvcmRlci1sZWZ0OiBAc2JDb250ZW50Qm9yZGVyO1xuICBib3JkZXItcmlnaHQ6IEBzYkNvbnRlbnRCb3JkZXI7XG4gIGJvcmRlci1yYWRpdXM6IDNweDtcbiAgYm94LXNoYWRvdzogMCAycHggNnB4ICNhYWE7XG4gIHBhZGRpbmc6IDdweCA1cHggNnB4O1xuICBvdmVyZmxvdzogaGlkZGVuO1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gIHdpZHRoOiBhdXRvO1xuICB6LWluZGV4OiA0OyAvLyB1bmRlciBmaXhlZCBwYWdlIGhlYWRlclxuXG4gIC51aS1kYXRlcGlja2VyLWhlYWRlciB7XG4gICAgcGFkZGluZzogMCAwIDNweDtcbiAgfVxuXG4gIC51aS1kYXRlcGlja2VyLXRpdGxlIHtcbiAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1tb250aCB7XG4gICAgZmxvYXQ6IGxlZnQ7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci15ZWFyIHtcbiAgICBmbG9hdDogcmlnaHQ7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1wcmV2LCAudWktZGF0ZXBpY2tlci1uZXh0IHtcbiAgICBtYXJnaW4tdG9wOiA0cHg7XG4gICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgIHdpZHRoOiAxOXB4O1xuICAgIGhlaWdodDogMTZweDtcbiAgICBtYXJnaW46IDJweCA0cHggMCAwO1xuICAgIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gICAgbGluZS1oZWlnaHQ6IDQwMCU7XG4gICAgZmxvYXQ6IGxlZnQ7XG4gIH1cblxuICAvLyBOZWVkIHRvIHJlcGxhY2UgaWNvblxuICAudWktZGF0ZXBpY2tlci1wcmV2IHtcbiAgICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9pbWcvZnVuY19pY29ucy9jYWwvbGVmdEFycm93LmdpZicpO1xuICB9XG5cbiAgLy8gTmVlZCB0byByZXBsYWNlIGljb25cbiAgLnVpLWRhdGVwaWNrZXItbmV4dCB7XG4gICAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCcvaW1nL2Z1bmNfaWNvbnMvY2FsL3JpZ2h0QXJyb3cuZ2lmJyk7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1jYWxlbmRhciB7XG4gICAgcGFkZGluZzogMCA1cHg7XG4gICAgbWFyZ2luLWxlZnQ6IGF1dG87XG4gICAgbWFyZ2luLXJpZ2h0OiBhdXRvO1xuXG4gICAgPiB0aGVhZCA+IHRyID4gdGgge1xuICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICAgIGZvbnQtc2l6ZTogLjllbTtcbiAgICAgIHdpZHRoOiAxNCU7XG4gICAgfVxuXG4gICAgdGQge1xuICAgICAgcGFkZGluZzogMnB4O1xuICAgIH1cblxuICAgIGEge1xuICAgICAgd2lkdGg6IGF1dG87XG4gICAgICBib3JkZXItYm90dG9tOiBub25lO1xuICAgICAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICAgICAgZm9udC1zaXplOiAuOTVlbTtcbiAgICB9XG5cbiAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2UwZjBmYjtcbiAgICAgICAgZm9udC13ZWlnaHQ6IGJvbGQ7XG4gICAgICAgIC8vIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1vdGhlci1tb250aCBhIHtcbiAgICBjb2xvcjogIzk5OTtcbiAgfVxuXG4gIC51aS1kYXRlcGlja2VyLXRvZGF5IHtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjMTc5N2MwO1xuICAgIGNvbG9yOiAjZmZmO1xuICAgIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblxuICAgICY6aG92ZXIge1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2UwZjBmYjs7XG4gICAgICBjb2xvcjogIzMzMztcbiAgICB9XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1jdXJyZW50LWRheSB7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2M2ZTFmZjtcbiAgICBib3JkZXI6IDFweCBzb2xpZCAjOWNmO1xuICAgIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblxuICAgID4gYSB7XG4gICAgICBjb2xvcjogIzMzMztcbiAgICB9XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1idXR0b25wYW5lIHtcbiAgICBwYWRkaW5nOiAxcHg7XG4gICAgY2xlYXI6IGJvdGg7XG5cbiAgICA+IGJ1dHRvbiB7XG4gICAgICBiYWNrZ3JvdW5kOiB0cmFuc3BhcmVudDtcbiAgICAgIGJvcmRlcjogbm9uZSAhaW1wb3J0YW50O1xuICAgICAgY29sb3I6ICMwMTViYTc7XG4gICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgICAgcGFkZGluZzogMDtcbiAgICAgIG1hcmdpbjogMDtcblxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIHRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC51aS1kYXRlcGlja2VyLWNsb3NlLCAge1xuICAgIGRpc3BsYXk6IG5vbmU7XG4gIH1cbn1cbiIsIi8vIERlZmF1bHQgcGFkZGluZyBmb3IgYWxsIGNlbGxzIChoZWFkZXIsIGJvZHksIGZvb3RlcilcbkBzYlRhYmxlQ2VsbFBhZGRpbmc6IDhweCA2cHggNnB4O1xuXG4vLyBEZWZhdWx0IGhlaWdodCBmb3IgYWxsIHRhYmxlIGNlbGxzIChoZWFkZXIsIGJvZHksIGZvb3RlcilcbkBzYlRhYmxlQ2VsbEhlaWdodDogNDlweDtcblxuLy8gQmFja2dyb3VuZCBjb2xvciB3aGVuIGhvdmVyaW5nIG9uIGNvbnRlbnQgdGFibGUgYm9keSByb3dzXG5Ac2JUYWJsZVJvd0hvdmVyQ29sb3I6IEBzYkNvbnRlbnRCZ0NvbG9yO1xuXG4vLyBPdmVycmlkZSB0aGUgc3RhbmRhcmQgU0YgZm9udCBjb2xvciBvZiBibGFjay5cbnRhYmxlID4gdGJvZHkgPiB0ciA+IHRkIHtcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbn1cblxuLy8gYSB0YWJsZSB0aGF0IGRpc3BsYXlzIGEgbGlzdCBvZiBlbnRpdGllcy9yb3dzL2V0YywgYSBsYSBhIFwibGlzdCBwYWdlXCJcbi5zYlRhYmxlIHtcbiAgYm9yZGVyLWNvbGxhcHNlOiBjb2xsYXBzZTtcbiAgYm9yZGVyLXNwYWNpbmc6IDA7XG4gIHdpZHRoOiAxMDAlO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuXG4gIC8vIHRoIHtcbiAgLy8gICAvLyBoZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcbiAgLy8gfVxuXG4gIHRkIHtcbiAgICBoZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcbiAgfVxuXG4gIC8vIGNlbnRlciBhbGlnbmVkIGNlbGxzXG4gID4gdGJvZHkgPiB0ciA+IHRkLmNlbnRlcixcbiAgPiB0Ym9keSA+IHRyID4gdGQuc2JBY3Rpb25zLFxuICA+IHRoZWFkID4gdHIgPiB0aC5zYkFjdGlvbnMsXG4gID4gdGhlYWQgPiB0ciA+IHRoLmNlbnRlcixcbiAgPiB0Zm9vdCA+IHRyID4gdGQuY2VudGVyIHtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIH1cblxuICAvLyByaWdodCBhbGlnbmVkIGNlbGxzXG4gID4gdGhlYWQgPiB0ciA+IHRoLnJpZ2h0LFxuICA+IHRib2R5ID4gdHIgPiB0ZC5yaWdodCxcbiAgPiB0Zm9vdCA+IHRyID4gdGQucmlnaHQge1xuICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICB9XG5cbiAgYSB7XG4gICAgY29sb3I6IGluaGVyaXQ7XG4gIH1cblxuICB0Ym9keSB7XG4gICAgLnNiQWN0aW9ucyB7XG4gICAgICBpICB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICAgICY6aG92ZXIge1xuICAgICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgLnNiTWFzdGVyIHtcbiAgICAgIGkge1xuICAgICAgICBmb250LXNpemU6IDIwMCU7XG4gICAgICAgIGNvbG9yOiBAc2JCZ0NvbG9yO1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjQ0ZEN0U2O1xuICAgICAgICBib3JkZXItcmFkaXVzOiAuMThyZW07XG4gICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgICAgJi5zZWxlY3RlZE1hc3RlciB7XG4gICAgICAgICAgYmFja2dyb3VuZDogIzdGOERFMTtcbiAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgJi5ub3RTZWxlY3RlZE1hc3RlciB7XG4gICAgICAgICAgYmFja2dyb3VuZDogI0NGRDdFNjtcbiAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBpbnB1dCwgc2VsZWN0IHtcbiAgICBmb250LXNpemU6IGluaGVyaXQ7XG4gIH1cbn1cblxuLy8gdGhlIHRhYmxlIGhlYWRlciBjb250YWluZXJcbi5zYlRhYmxlID4gdGhlYWQge1xuICAvLyBhIHN0YW5kYXJkIHRhYmxlIGhlYWRlciBjZWxsXG4gID4gdHIgPiB0aCB7XG4gICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuICAgIHBhZGRpbmc6IEBzYlRhYmxlQ2VsbFBhZGRpbmc7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG4gICAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gIH1cblxuICA+IHRyID4gdGggPiAqW2NsYXNzXj1cInNiLWljb25cIl0ge1xuICAgIG1hcmdpbi1sZWZ0OiA0cHg7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgfVxufVxuXG4vLyB0aGUgdGFibGUgYm9keSBjb250YWluZXJcbi5zYlRhYmxlID4gdGJvZHkge1xuICAvLyBhIHN0YW5kYXJkIHRhYmxlIGJvZHkgY2VsbFxuICA+IHRyID4gdGQge1xuICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgICBwYWRkaW5nOiBAc2JUYWJsZUNlbGxQYWRkaW5nO1xuICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgaSB7XG4gICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgIH1cbiAgfVxuXG4gID4gdHI6aG92ZXIge1xuICAgIGJhY2tncm91bmQ6IEBzYlRhYmxlUm93SG92ZXJDb2xvcjtcbiAgfVxufVxuXG4vLyB0YWJsZSBmb290ZXIgY2VsbHNcbi5zYlRhYmxlID4gdGZvb3QgPiB0ciA+IHRkIHtcbiAgcGFkZGluZzogQHNiVGFibGVDZWxsUGFkZGluZztcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG59XG4iLCIvKlxuU2lkZSBQYW5lbHMgXG5cblBhbmVsIHRoYXQgc2xpZGVzIG91dCBmcm9tIHRoZSByaWdodCBzaWRlIG9mIHRoZSBzY3JlZW5cbiovXG4uc2JQYW5lbCB7XG4gIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgdG9wOiAxMDdweDtcbiAgbWF4LXdpZHRoOiA1MDBweDtcbiAgYm90dG9tOiAwO1xuICBiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICBib3JkZXItbGVmdDogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuICBib3gtc2hhZG93OiAtM3B4IDBweCAyMHB4IC01cHggI2FhYTtcbiAgb3ZlcmZsb3c6IGF1dG87XG4gIGRpc3BsYXk6IG5vbmU7XG4gIHBhZGRpbmctdG9wOiAxMHB4O1xuXG4gICYub3BlbiB7XG5cdCAgcmlnaHQ6IDBweDtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuXG4gID4gYSB7XG4gICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gIH1cblxuICA+IGhlYWRlciB7XG4gICAgcGFkZGluZzogMCAyMHB4O1xuICAgIGxpbmUtaGVpZ2h0OiA0ZW07XG5cbiAgICA+IC5zZi1pY29uLWNsb3NlIHtcbiAgICAgIGZsb2F0OiByaWdodDtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgIGxpbmUtaGVpZ2h0OiA0ZW07XG4gICAgfVxuICB9XG5cbiAgZmllbGRzZXQge1xuICAgIGJvcmRlcjogMDtcbiAgICBwYWRkaW5nOiAxNHB4IDE4cHg7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICA+IGxhYmVsIHtcbiAgICAgIG1hcmdpbjogMCAzcHggM3B4IDA7XG4gICAgICBtYXgtd2lkdGg6IDEyMHB4O1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgfVxuXG4gICAgaW5wdXQsIHNlbGVjdCB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmU7XG4gICAgICBmb250LXNpemU6IGluaGVyaXQgIWltcG9ydGFudDtcbiAgICAgIG1pbi13aWR0aDogMTM4cHg7XG4gICAgfVxuICB9XG5cbiAgLnNiQnV0dG9ucyB7XG4gICAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgICBwYWRkaW5nOiAxMHB4IDAgMCAxOHB4O1xuXG4gICAgLmNsZWFyRmllbGRzTGluayB7XG4gICAgICBwYWRkaW5nOiAxMHB4O1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgIH1cbiAgfVxufSIsIi8vIEBpbXBvcnQgXCJpY29ucy9zYWxlc2ZvcmNlL2Nzcy9zZi1pY29ucy1lbWJlZGRlZC5jc3NcIjtcbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogJ3NmLWljb25zJztcbiAgc3JjOiB1cmwoJy4uL2ZvbnQvc2YtaWNvbnMuZW90PzEzMDY3Njc2Jyk7XG4gIHNyYzogdXJsKCcuLi9mb250L3NmLWljb25zLmVvdD8xMzA2NzY3NiNpZWZpeCcpIGZvcm1hdCgnZW1iZWRkZWQtb3BlbnR5cGUnKSxcbiAgICAgICB1cmwoJy4uL2ZvbnQvc2YtaWNvbnMuc3ZnPzEzMDY3Njc2I3NmLWljb25zJykgZm9ybWF0KCdzdmcnKTtcbiAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xufVxuQGZvbnQtZmFjZSB7XG4gIGZvbnQtZmFtaWx5OiAnc2YtaWNvbnMnO1xuICBzcmM6IHVybCgnZGF0YTphcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07YmFzZTY0LGQwOUdSZ0FCQUFBQUFHSVlBQThBQUFBQXZBUUFBUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCSFUxVkNBQUFCV0FBQUFETUFBQUJDc1A2ejdVOVRMeklBQUFHTUFBQUFRd0FBQUZZK0lFbjdZMjFoY0FBQUFkQUFBQUxHQUFBSTB1MDRBN0ZqZG5RZ0FBQUVtQUFBQUJNQUFBQWdCdFgvQkdad1oyMEFBQVNzQUFBRmtBQUFDM0NLa1pCWloyRnpjQUFBQ2p3QUFBQUlBQUFBQ0FBQUFCQm5iSGxtQUFBS1JBQUFVR1VBQUprNFVSbkozbWhsWVdRQUFGcXNBQUFBTWdBQUFEWUpZU2ZGYUdobFlRQUFXdUFBQUFBZkFBQUFKQWRBQTlab2JYUjRBQUJiQUFBQUFDWUFBQUlrRmFILytteHZZMkVBQUZzb0FBQUJGQUFBQVJReEhscG1iV0Y0Y0FBQVhEd0FBQUFnQUFBQUlBSXBES0J1WVcxbEFBQmNYQUFBQVlNQUFBTE52MXFpM25CdmMzUUFBRjNnQUFBRHVnQUFCYnBncU5NemNISmxjQUFBWVp3QUFBQjZBQUFBaHVWQks3eDRuR05nWkdCZzRHS1FZOUJoWUhSeDh3bGg0R0JnWVlBQWtBeGpUbVo2SWxBTXlnUEtzWUJwRGlCbWc0Z0NBSW9qQTA4QWVKeGpZR1IreWppQmdaV0JnYW1LYVE4REEwTVBoR1o4d0dESXlBUVVaV0JsWnNBS0F0SmNVeGdjWGpDOGFHY08rcC9GRU1VY3hEQU5LTXdJa2dNQUUza01tUUI0bk8zV0NiZk5CUmlGOGVkeXVrbEMwaUFOaHBLb0RGRXBJbFNha0Nha1NCa3laYTZFeUhRLzZ2NFdldjdIL2hqdVdyK3o3am5yM0dIZDllNjlML0FJTUYxdmFBVFREalBoWjB3YzhOV0o4ZXZUbVRsK2ZUU3hldnllMGZCNjd0Mi83eVBEbzg5SDQ4ZHB2bmZrZDV6a1VXYndtRi8zT0xONGd0bk1ZUzVQTW8rbm1NL1RQTU96UE1jQ25tY2hML0FpTC9FeWkxak1FcGJ5Q3EreWpOZFl6dXVzWUtVLy8wM2VZaFdyV2NOYTNtWWQ2M21IZDNtUERielBCMnhrRXgreW1TMTh4RmEyc1oyUCtZUlAyY0ZuZk00WGZNbFg3R1FYdS9tYVBYekR0M3pIOS96QVh2YXhueDg1d0UvOHpFRU84UXVIK1pYZk9NSlJqbkdjM3puQlNVNXhtalA4d1ZuT2NaNExYT1FTbC9tVHYvaWJLL3pEVmE1eG5YKzV3VTMrNHhhM3VjTmQ3akhsSDJTU2h4K3pob2ZKczMwMk5kek1BK01yS2krSDFIQ05xZUd1VXNPbHByd3dVdDRhS2ErT2xQZEhhcmpnbERkSmF2anRVdDRwS1MrV2xMZEx5aXNtNVQyVDhySkplZU9rdkhaUzNqMHBFMERLTEpBeUZhVE1CeW1UUXNyTWtESTlwTXdSS1JORnlteVJNbVdrekJzcGswZktESkl5amFUTUpTa1RTc3Fza2pLMXBNd3ZLWk5NeWt5VEdsb25aYzVKbVhoU1pwK1VMVURLUGlCbE01Q3lJMGpaRnFUc0RWSTJDQ203aEpTdFFzcCtJV1hUa0xKelNOaytwT3doVWpZU0tidUpsQzFGeXI0aVpYT1Jzc05JMldhazdEVlNOaHdwdTQ2VXJVZksvaU5sRTVLeUUwblpqcVRzU1ZJMkppbTdrNVF0U3NvK0pXV3prckpqU2RtMnBPeGRVall3S2J1WWxLMU15bjRtWlZPVHNyTkoyZDZrN0hGU05qb3B1NTJVTFUvS3ZpZGw4NU55QTBpNUJxVGNCVkl1QkNtM2dwU3JRY3I5SU9XU2tISlRTTGt1cE53WlVpNE9LYmVIbEN0RXlqMGk1VEtSY3FOSXVWYWszQzFTTGhncHQ0eVVxMGJLZlNQbDBwRnk4MGk1ZnFUY1FWSXVJaW0za1pRclNjcTlKT1Z5a25KRFNibW1wTnhWVWk0c0tiZlcvMFllWU9wL3krT1FVZ0FBZUp4allFQURFaERJSFBRL0M0UUJFbXdEM1FCNG5LMVdhWGZUUmhRZGVVbWNoQ3dsQ3kxcVljVEVhYkJHSm16QmdBbEJzbU1nWFp5dGxhQ0xGRHZwdnZHSjMrQmY4MlRhYytnM2ZscnZHeThra0xUbmNKcVRvM2ZuemRYTTIyVVNXcExZQyt1UmxKc3Z4ZFRXSm8zc1BBbnBoazNMVVh3b08zc2haWXJKM3dWUkVLMlcycmNkaDBSRUlsQzFyckJFRVBzZVdacGtmT2hSUnN1MnBGZE55aTA5NlM1YjQwRzlWZDkrR2pyS3NUdWhwR1l6ZEdnOXNpVlZHRldpU0tZOVV0S21aYWo2SzBrcnZML0N6RmZOVU1LSVRpSnB2Qm5HMEVqZUcyZTB5bWcxdHVNb2lteXkzQ2hTSkpyaFFSUjVsTlVTNStTS0NRektCODJROHNxbkVlWEQvSWlzMktPY1ZyQkx0dFA4dmk5NXAzYzVQN0ZmYjFHMjVFQWZ5STdzNE94MEpWK0VXMXRoM0xTVDdTaFVFWGJYZDBKczJleFUvMmFQOHBwR0E3Y3JNcjNRakdDcGZJVVFLeitoelA0aFdTMmNUL21TUjZOYXNwRVRRZXRsVHV4TFBvSFc0NGdwY2MwWVdkRGQwUWtSMVAyU013ejJtRDRlL1BIZUtaWUxFd0o0SE10NlJ5V2NDQk1wWVhNMFNkb3djbUFsWllzcXFmV3VtRGpsZFZyRVc4Sis3ZHJSbDg1bzQxQjNZanhiRHgxYk9WSEo4V2hTcDVsTW5kcEp6YU1wRGFLVWRDWjR6SzhES0QraVNWNXRZeldKbFVmVE9HYkdoRVFpQWkzY1MxTkJMRHV4cENrRXphTVp2YmticHJsMkxWcWt5UVAxM0tQMzlPWld1TG5UVTlvTzlMTkdmMWFuWWpyWUM5UHBhZVF2OFduYTVTSkY2ZnJwR1g1TTRrSFdBaktSTFRiRGxJTUhiLzBPMHN2WGxoeUYxd2JZN3Uzeks2aDkxa1R3cEFIN0c5QWVUOVVwQ1V5Rm1GV0lWa0Jpcld0WmxzblZyQmFweU5SM1E1cFd2cXpUQklweUhCZkh2b3h4L1Y4ek01YVlFcjdmaWRPekl5NDljKzFMQ05NY2ZKdDFQWnJYcWNWeUFYRm1lVTZuV1pidjZ6VEg4Z09kNWxtZTEra0lTMXVub3l3LzFHbUI1VWM2SFdONVFRdWFkTi9Ca0lzdzVBSU9rRENFcFFORFdGNkNJU3dWREdHNUNFTllGbUVJeXlVWXd2SmpHTUp5R1lhd3ZLeGwxZFJUU2VQYW1WZ0diRUpnWW80ZXVjeEY1V29xdVZSQ3UyaFVha09lRW02VlZCVFBxbjlsb0Y0ODhvWTVzQlpJbDhpYVh6SE9sWTlHNWZqV0ZTMXZHanRYd0xIcWJ4K085am54VXRhTGhUOEYvOVhXVkNXOVlzM0RrNnZ3RzRhZWJDZXFOcWw0ZEUyWHoxVTl1djVmVkZSWUMvUWJTSVZZS01xeWJIQm5Jb1NQT3AyR2FxQ1ZROHhzekR5MDYzWExtcC9EL1RjeFFoWlEvZmczRkJvTDNJTk9XVWxaN2VDczFkZmJzdHc3ZzNJNEV5eEpNVGZ6K2xiNElpT3owbjZSV2NxZWozd2VjQVdNU21YWWFnT3RGYnpaSnpFUG1kNGt6d1J4VzFFMlNOcll6Z1NKRFJ6emdIbnpuUVFtWWVxcURlUk80WVlOK0FWaGJzRjVKMXlpZXFNc2grNUY3UE1vcFB4YnArSkU5cWhvak1DejJSdGhyKzlDeW05eERDUTArYVYrREZRVm9ha1lOUlhRTkZKdXFBWmZ4dG02YlVMR0R2UWpLbmJEc3F6aXc4Y1c5NVdTYlJtRWZLU0kxYU9qbjlaZW9rNnEzSDVtRkpmdm5iNEZ3U0ExTVg5NzMzUnhrTXE3V3NreVIyMERVN2NhbFZQWG1rUGpWWWZxNWxIMXZlUHNFemxybW02Nkp4NTZYOU9xMjhIRlhDeXc5bTBPMGxJbUY5VDFZWVVOb3N2RnBWRHFaVFJKNzdnSEdCWVkwTzlRaW8zL3EvcllmSjRyVllYUmNTVGZUdFMzMGVkZ0RQd1AySDlIOVFQUTkyUG9jZzB1ei9lYUU1OXU5T0ZzbWE2aUYrdW42RGN3YTYyNVdib0czTkIwQStJaFI2Mk91TW9OZktjR2NYcWt1UnpwSWVCajNSWGlBY0FtZ01YZ0U5MjFqT1pUQUtQNWpEayt3T2ZNWWRCa0RvTXQ1akRZWnM0YXdBNXpHT3d5aDhFZWN4aDh3WngxZ0MrWnd5QmtEb09JT1F5ZU1DY0FlTW9jQmw4eGg4SFh6R0h3RFhQdUEzekxIQVl4Y3hna3pHR3dyK25XTU13dFh0QmRvTFpCVmFBRFUwOVkzTVBpVUZObHlQNk9GNGI5dlVITS9zRWdwdjZvNmZhUStoTXZEUFZuZzVqNmkwRk0vVlhUblNIMU4xNFk2dThHTWZVUGc1ajZUTDhZeTJVR3Y0eDhsd29IbEYxc1B1ZnZpZmNQMjhWQXVRQUJBQUgvL3dBUGVKek12UW1jSEVkNU4xeFZmVldmTXozMzdESG56ckhIN0s1MmQvYlc3cXlrUFNTdDdwVzBrbTE1ZlVpV0xldndiV09JeldVN3htREhPTVlSSkJDd2dRREdoSmh3aElDQnZCL0VFRUk0QXNFMnh5K0FJZVFqRHZETGwvaVZtdStwNnA1alJ5dkxocno1dlRxNnE2dXJlN3FycTU3bitUOVhJUUhCSCtIeitPdklRSEdVUitPVkVTb3FSSllReG1qSkt5SzhMQWtFSTd6WTJtS1pHS1ZUTGZuV2ZDaG94cTI0SWlNREc2b1U2ZzRPSkhESXdwbGVQRFNGMCtjOU9KMHNKNVBsS2JiQnR6V1dVMnczemN2LzRGV2Vad09QakJINnpjZUZ0d3NTNmtORGxYV0lZSElTU1VnNkpjQnpJN3dFTzR5V1JabEF5MFdDdWdxWlpFczA0Tk1VMUVmNkZIaGFlS2poOVhnb24wMW44bVY3S04rTk0zTFlEc2x3TExmalVHUXdQUkNCNDhnRUhoaUc4OE5rQnE4M2JOdHd2cUJxQVgxY0QyaXE4d1ZXZ2RkWEszQ0hkK0lsV2lMdjJmOUwyRTgrQjg5ZXJPUll4NktURWhaRTRSVENvb2lYb08vRlpTUmljVEVZVEFhREVWbHE2Y1lqdzBOOU9KL3hZVG5qN1VOSkhBbDUrNEZwUER6ZzdWbTdJYkwwb3FybTFhaDZSdkpMWjJCZlZLRW9PU29VZUtYOHY5M0tGeVY4elJuYWRQNS95MzRvdXBXeWZLWjJFWFF4R3k4R3VSY1YwQWlhUi92UlZlakd5blVyT3l2OW9xQXVMNHdXUlNxU2VYZ2pvbUt5NHNmSVorcUNLaUIxQlFsSXBJSzRZaG1hUUNXRkxzSE5aRVdTM1FxcUxDT0ZLdkN0cnJ6ODRvTkx1eGUzYk5vd09UNDAwTk9WU2JhMVJNT2hnTTgwTkVWQ0JWS3crZmRqM3ltYmtka25DamZ2K2ZkajN5MlBReko4Mmp4ODZtSDRsSkZ3OUJVZWs3OXo3b2wzaFB5eG1EL1V1TTNGOEszeGZNNzVvaVFWUlZrV2k1SzBVNUpDckJpU3BDdlhyQ1gzWnFPUmFEcDJwZmMvRUMxMHh2RVBZZ25uQ0d2eHJBUi9ubjNKRWlJd2RoNFF1b1UrdEE3Tm9LbktCR0xEaDZEak1rWVMvRHNHdll5SmdGZVFKSW9TZExIRVJwSWtRcjlPVDQ0TVpkTXRVZHVIMXBGMWJBN2tzdTZManZDL3ZiaVFseFZac1REcmdKRXBEUCtpQ1F4UEhMRXcxTUtza00vcG5jeUs3cDhmNzJqSnlGSmh2anM1RWN2THhHZXNtRGFXK3d1OU4xUzIzMVhzRklSMWg2Wk1mekJvR3l0NklLQ3ZHUFl0ZnIxOS9aVWhzN1dycjN0YlA4YVJjSFpBTlFMbThHV0Y3aElXZG0zWXRHUERiUmRIcGJEUmJ0aFBzNHN1MDIxYlIwams3Lzkyb2FjMi9xNm9yRmd3bzB5Q3pCVTI3QXdZZGtETWROSFErWkRUWU1naERhbVNwcTVRN0EwNUtFaHN3RWxzd08zbGcyMzllSG5Od2VaN0JZTk40UFNEZHcrbkh5TVhPQmEybi8xc3NuY3NuazdIeHhxM3ZVa3lreXFWM3F1cnpxK29ybE5zcW5wZXA4NTdWVjFYOFVHcUYrRE1BWDdtZmFvdTlKUlM0K21CMU9uMFFQcVA0UDk0c3JlVUVraXFkUFo2VmRPQUNNRG1SbllsTDUxbW14dllJWi9LZlBOMjhnbmtRMG1nUnpPVktZUmhMQWtZUWU4cG1BRGhieHhMRkxQQmxFa0YvSXlvcHZveWZTMVJmektRQk1McUl6N1Y3YXZhQzdJaEkxem8rUGZPL0N1amprS0liYzlUSnJPMk1jYU9ZT1A4RUtpcVp2T044NzE2dlRjM1BpK1U0RTAyb1lYS0xCSmw4U1NTSmZraysvRFNTYUlTcEtDVFNNSEtTWVFGZ1ZOYVlSbGVWbUR6WTJwNHNMZlUxWmxKZTV3aVNaS2FPMHNZUjZoK3VTcW5xRk9ZZkVacElNS3J1RWFWSWhlRXg0QVIyTWJadXd6MjRMcGRTcklQRkhEMjB4aDF6bERhQ2Z0ckpkdnd3OGxRUkx1VzBWNUtuWUQrRkh1N3A5Z01jTTZrU3IxSkxPb0JrcWZzb2hnRjhueE1obkZ4VkE4RU5meXdDWWVjVkZQMlhYbGY5S0FRNmtUVGFGTmxCb21DSklqU2NTUVJRU0xINENNalFVVENDbnhrak1rUzdBaGVCdUtCRnlOaGpNYkhCdnBTeVhCbnBGUFhVQWlIS1B1MEdTQVBjb2hSaEFGR01ZWUsrVUpleUxEdEVEc2VZR2RDckkxUTZ5bm91Vm9uNEYrLzV0alY2NmVuMTE5OTdNVnJqMDVOVDA4ZHZmWTFsK3phM2dkL3R1LzZWTFhRcG5DMlNkL2lNaUNoaDdXclhjQUxaNzZ6NmdwZXdQdW8rVW5XVVQ5VGpiZTRISXVQNzkvOFV2Z3ArVElxb2gzb2RsU3FkSTNMUkVSNEh1aW1DR01CdU94SkVCWWtET0tEZE9URzZ3NWRzbVYrcEp4czc1U2xjRGZPbDltTHdmdGxNMEFCdy9EcVlmNSs4RGVCMlVmbXBITUs1NkFKYTFvZWN0dktTc1J0Q3J1bzI3SThYTWhMYnJNcHpOdTV0NHcwM05NYlZIbldvM2lnc3lYZTQyOXQ3K2hNdHFlNjIxUXp2VDdWaVVrdVVWRXNNZHpaMW12S3BDdHRhRzNkeWZaa1YwZDdtOTBUYitsVUZPUEtEdEZTS29rY0xxU2NiM1ZZUmpvYXo2U3lCN09wVER5YTFxM2NRcW9QOTZieEErbGVIQW5tNG5oMC9iYVprYUZNcTg4T0J6Y1ZOK1FTTWR1d3JkYjJYSGU2aXlyNVpDUW10Nnp6K1l4QVcwdWhVdHdVRE51KzFzelF5TXkyOVVaYzd0K28wSzUwZDY3OU9yOXRCZHFUa1lsTXo1WndOQnJlMHBPWmlHVGpNSHY5eVhoSFgzWmdJSnRxQVZhQytEejlPSXhOQ1VXQmlrOVd4bUF1WWhDQWtBZ2ZoaHhIaEp5UVFSb1NoU1hZQ1l4L0NlSmlQRVpRT2hFcnhBdDhia1pKVlBHSURid01icDZUQlNEWU1PemdNQnBoSDBXNHlka2E2dEEzNmgzaDE2ZDZlamgxTEtXY2Zra1NFcktCMzVlSnkwYUp6SWJ0R3dPaFV1cnNJanVMZjUwcW5WYWxJZDBRcUpJcXViem5hYUNWdi9SbzVUVGFVOWxKbWJnSlV1WUtpRHRJa0ltd29tTVpLYUtzckdoQUt5VnhDWGFpdEF3MFZGb2M2SGNwNS9oSS8vVEE5TG4wMDZqeEd2ZFYyQ1JTbW82RnB1TkM4L2xWOUpRUkhOc2dyMm91TjlMV1gzS0taTE01OTN3RG1SM2tzNUJ2ZmdJbldUVTBBM2FoY0o2UkFobXcyZzg3MEtVd2xkNVNlZFB4dzhRMEZqZE5EdlYwdElkTlNVUDRrcjFFMTRSNUtvcytJbUVUQVh3NEhsQnR4UzhKRmtXYWliUmpJV3hBdFdHdUJMR202OW9TN0RSOUdlbWF2bmpaeXE2ZGxVcC9meXBsZ3loNTlWVXJKeTg3ZVdEL3prdDNYVnJaVWRtK01OYy8zVDgxT3B6cVMvVVc4M0hvU0R1cFFrZGlYeGc2Y21UUUhRdlZzY0g0ZHdOdHp1UFZweWVhamdlelRjZlNCVDdFc3dQVU1DamJrTkZhMFhGWWFaSnRubVNiRU51OFVDdmgwMmUveHZha24yMGJ5cCtCYzhQc3lIbWFHdmlRdTNmcm5IYzNuanRmZWRMN0JkZ1FXaS9YZVg2YTNJTGFVQS9haC9aV2RxL0RvcHhySjBRQTBWMVNtSWgwSE1taUlvdkgyUGdHUVVoWmdlRXZFRkZZUVp4Ym9CcXp3R2pYanMxek01WHlZR2NoblF3RlVCdHVVMnZNZ3BGTWdDZ1JvUC9SeUtETE5SalRhSklqUjF6eDBxc0QwWE80bDlSRjBXRXVpWkpvUk1hLzNqMjNzZGlabDRRMk1XQXNxM1JoSDYvWXZYRnVxUDZTVkpENHZyVUxobG1tTjJRS1JGUENxb0ZwaTEyS0o4c3BURXJrNW55dU1yTzRNRVBwQWNNV2s0TFV4U29lZVcwdTcwelZ2czh4TElsK2FwclVIOG41OURDdzM0RHBVMVNmbW8vYkFZd0JzaFlxU1BpTkEvVHM1NEtLTEU3UlJpdndDNEtJNXhuaE9nbmRUVEFJVVpJTFRDVU9UQmtJWFBUN09qTHRMYUdnTCtxUGpqRjJrd05LSm9Nc2tjQXdwb0NwWlBKRElFK0U1SkdtM2hLZWMrYjFYRTUzRmt3NUZSVk94ZEt5bzRMZ09KQk9wM1c2amNsMjI2aWVKbDhNV2xidzdGaGtJSk1abUFNQk1kMmZlWnhKZnk4eXlSRTF5RXZ0cUF0MVZOSWlJQWVBMFNBT2dYaUVnQ01pZENTWnlIVWt1cEpkM1lPU0ZPbk9oV3R5ME1pdzkwM2hrd0twWmF3Zk4rSjg0Zk1qK2JPSjNNak9zUnNOdjdsNG9IdHYzdlFaMjNvcnFZSXpNSFhOK3ZYWHZKcHRvbDI1MFpGODE5WkthVkNXbElHV0dJeTlkR3RIb1kvOFlOTk45OTYwaVc5Y3pQeXY1Qm55RlJEdHRZK3pCd3RpMW1NMi9GSVVZREQwV2g2YlZrakZiNE5KZDdYVnJwSDNhd0JibkwrZ1NkVjVRZ08yVTN2ZmZwUUZxalZSR2VVdlNXUlNFNFE0dlZicTlEcmZRVkIzVjBkZnZpL1JHZ2thR3NxU0xLMERKOGFtK1NqMXh1NHFjaUFCdVFIV3o3b0gySS9XV3V6cDJieDEvNjdaRGRzS2JWcXlaT3ZDNVhxZzVQejFwMVdES0pXbENzWEd0NHR0eiszYlBBK0lTU3gxMzcvblcyMzUzbFM3N3JlTjltVHBHejVhQkJGQ3RkeStlRUQ0RzVEdE1xaW4wc25VSGllWnBvTUFEV1o2RUtiN09JSlJlMXM0NUxkMFRSRlJCaVlqbTVKWjJ4MUpaYnVobElHM0dBSEJGYm9SQkxjUHIyanFVNnIrRTExOWl1b3JzbzVGaXY5S0NvajRVMVFVOEZibkFJY2c4ODRuK2Y1OXNtUm8rRk95N014UkMrQ1poOCtZM0JrRzJySVJIVVJ2cmZoM2I3WWtFTGttQmpwYVJZR1ErYTBmVVhjdVYrSXladjJ2VVA3a2tzcW96MGtST1A2UjFxMGYwYUJCTzVLeDdJN0V0UnE5eEEwT0hLaTB4aUlFSGRpM3VIWERkSGtvazQ3MHhIb01IWVZKV1BPVVAzMmVSa1gyTWR6TEtMekNoUWFsS3NyRHgrTU1JQXFuNElqTHNDQnNBQzFpU2lPNUFLZllwWjRtQmtZQi8vUmtEQmQ5c243b2NVcm5hVWg5L0hJOUhyclQrUTZ2VWhSVzljVGxzbTJFTDQvckswL1FpREl2WStYeFE1Um9xdk50TGJDdEJXcVZDSjFYbENjT1VWSFRjRjZMNGpldWFtc28xbm1iSmxmOTB1T1hLd0VqZkdmOWdZQUl3cS83alJDWGl4OFZuaEphNEN1Tm9VdlF3eFdyRFN0MEhJdktOTkE4QWI2UkRaK2dsODJha3lxY0VhbHlXT1lUNUFvTkpCMnFFQXE0RUFSbmhndnhBUzVDYjJ1dDlEZGVJQjVuVjFCUk9uYitTdzVVV25wTEZ4M1l0MmZuOXMzem0yYW1Kb2NHUzJPOVk4VmN1ODdtZDFVNUFiM2VpMkUreTFGT2FiaTBQT3hLelp4YURoZDZNYzVZT0FRemJnb1A5V0t1cVFoWENXZTJTajNMTGdsdHg0TkFSL0Zqc1pBVmt0dENlb2RaT25MblphR1lhUTdFRFV1VGJUT3NkRzhwak9sS2ZEeVA1M1ZkNlNnQVVUczJOWFhzMVd3ellxaWpCdUJwZFVKVitTYXZHcU9xOGFiOFVqWWVwZTBSZi9sTk4yMFFGaVkyYmRyY0YydEp0ZGsrWFJmRDZVUnBvbU8yTzBLN2p1TDJLYUIvMDNDN2E2YUFISTlUWFZQSE5iV2dhdU9xcHROeFJwL1ZtbzV6dFp4MUI3b2YzVk41WTh3SXl3RUptUXJCTUxsV1d2eFJMU1NKdGs0a0lrb3JjU3RDZzREMEJMTGtGWW13N0ZOaGlnaUxyN3Z6K2xPWHIremV1YUZTRlVqdnZmdk8rMTkzLzZ0dU9YWEg5WGRjQTFMVzVTY1BncFMxKzlJdDg1VWRHM2FjVDF4dFpWcGZGeDF6OFlsTFJSYzR4ditIMjc5NEE5T2duRytEVzIrTXBkT3g4MjF3NjB0ZUxVajFnN04vVkMvREFLemRBdy85OTdRQldpclZkRjAyU25OOTN5NjBVcmxrZklBUUNzSUZvVUQ1bE9NNkV5c0VHQUF3cDJWSmtHR0tJVTJWdEJVWVA1U29NT1VVVVZTV2tLSXdKS1V3VGVDT3hmbE5UQnZZMTFQb1NMWkZRMXpWWlJPN0RqKzQ4dHVUbndXdUpLL0RxMmFOYXZDQ1NpN0hTUGJpcjZaS2VZQlZid1hZWlhCRkJzQXI1NzI2K2tlTWtjRG10SzQ2ZjhlWnlxQ3FMd0k1dkpNZjNLbHFUTDlWQUZUMmsxS0txY1djWHpKMHhoUm5jSk8vcW1tNG5QY3lxYWJBTmplNGxVekZ4ZWpjYzhMbnlmZGhEbVdCMW0ydExBQktrMlJCT2s2QnpzbVNlQXhncHl5U1k5RGhNdlRnR3VxUVhFZkEzMW5zNk1uMUpCUFJpRDhieUpZSFZCQ0djRlBIQUJMTGp3U1pHajZCUFhXOExGUmxPT0h6cGRRWkoxbHlGVDlmT3Z0MTIxYi9UQTdMUjZTSXRBZjJqMUJ6QTd4WHBWUWlEL0wzZTRSMTByYUVEOGk2OW9SSzFGdFU5WmRXSEI5a1RTb2xUNDczZUMxQkEyZy9PbFM1eUErUERrTkRGcWdnMCtOQWNnRzZBdkZWaUtEQUc2cFlQY1dHaXlDRHRDTzY3eW55OTVUWWRZdVNzSC9mOXExenN4dG14c2RLWFRrUVRzTUJVeE1HcEFFMk1rYktZWnl1WXlWUHdjT01KOE9lc2FRbUExV3hsRkEzV3B4ZlAzYWFQT04yelBQc3M3Mm5qbEhmdzQ2Zmg4NzRtMDVLZjBWajlBVlZMY0x1UUYxUGRvQzIvTGtSSTNkRGYyMU5sYmpZYXh2NEI5ejhrakpzTGd6M0pzbkhVcVd6YjJaNnNWOVIrdSt1cldPWjZjM2V4L0F0UG1DcTZrSEY3YzhIaGNlRUxwQXhsOUZoWnRmb2JDTXFzVURNMkxHQktGU1laeEt5S2hEMXVJWlpieUo4SEdHcVlub01LVlNpQ2xPdXlWU1NtUllleHA2Nm9tT3F5SFFKZGxSZVJqS1ZGdzhld0dqbDBnT0hEeDdlc3d1bzYxU3B1eU1kajdsV05ENy9HcGtZTGd3UEZZRDFNUlZIRm5xeHB1dUFEbFdZb29rVklrbm8zU2pJSDJ6Y0RVSWZSMWlCOVRCMDl3aVgwSm5rSXJsaXVTdWk0Ly9JVFhWMFRHMWhHM3h5WHBMbUE2cVJwQWxiOWgwWW1QYUwyZGhVTEN2Nng4ZVcvYktkb0VtREJoc2FtZW95TkpJeXNhbG9oK2pmTkxqSFVxRlJ1MG1kZytPWGpZMWRkaVBiNEgrRys2L3Y2RmdQUC9JYk5ObXl2V1hTMXhzYXR2eEN1aFM2S05MU0Vqa1E2RXVKZm1zNDFHZE5adUZ2L2ZRbDBmWms5SkpvZjFxMHJRRmZhZXZZQ3IvbGpTdGoxWEYvUHgvM1diUUphT0xSeXVFY1ZzWDFXRkdaNVVsRDhIR09BL1pTQlZGbGM0Q2VRakxVeWRvSzBRbGloallZL2daV0ZVVmRncDNLREFHcXNqZzNDNWhzNit5dXVWMlY2ZkhSdnQ1RVd5d1N0TG44bk1WWms4dlA1YXBTczhaMXd0WFpNT2p4cThJd1V3TVd1SDZ2cWkzbHdKZExrQXpWTlh3SHNuUURINk0zY0xMRnh5OGpYdmlTNXpxQ29mTGcvb05mTzdoL2NBZ0tCNDVPVFk2dWU0NXJSUEhaSDIrK2ZmUG0yeDlrRy94alR1M2cya1ZWYnlnNjlKbUIwWW1wbzNCOXVYcWpjaWpZOFJ5bFJUWCthZTlxMkNCRWF6WTlYNU9VOFVEbHplMG1TTmYzM0xtOFU5VDBXMDh0VkVTcUhsMFo3UmRsUlp3WGc4U3pQaUVjcU5vTWJLeHJncjdpeDVvUHExUlRWeXhNVFJEY3FBSjlMa3VTREgwdXl3eGd5ZElpMCtyY2QrOGJYdmZxVjkxNC9iWFhyTGI4dVRaYmY1L2RwM0dkVG9oOWdjRWE0ZUg5WDlYTmV3enBYTjE4RTY4cVgrQlllb1h0OFYzUFVpTWJ2eStlTmZEdWtDajNwWjlOOTBsU0tKN054dkVuWU92OGNWMHRzZFlHeHd6NkpWWSt6NFlFREZwa2R5dFNZMDZTaXVtK3ZuUlJrckp4WnpmL2pRL0hzODd1MmcxM3JsRjY5aVhQVnUzUjd4SFdDekdVUStsS2d1Ti96aEFBVE1ISDUycUFZTGdjaklhWklYb0VoalJRN1JGY3QwZXZNcUJ6NjdUeVNjUEFLU09wNDR4aGxHRi9rUkx5UlgzYi9GRmZTTGxJVCtxT250Q2RIK3M2Ym9YQ2tLNGZVQ3lkS0w1b3pEcjdYN3FsSE5BOVc5ODdnQjZYUVBZWkJ5eTVINDFWaGp1U1BvRWc0SEVNOVhLd3dSZ1pPYWtJTWdDS0k1TVRnd056czVYcGlZMlRHMGVHQjhZSHh6TnBqdGp6Q3BCT0gwQ0lhSkFaemZNS0F4TXdOWm1kY3poZkdHSHMybkx0blZBRmFFS3FjdTYwVzdDdzRFTEF3b2lTZDNFajlJVGdLL1U2KzBXZ20zRWwrR1ZaUHQ2MXJyeW9LT1grd2JIQjdicGlCSGJSQk4wVk1CUnQrOURZWUg5Wk1iZWYvVXRYVllPZjRYdWMrVE01S0ovMkV6OGh4REpsdi9SbnN2d2Z1azJHUUVneGdsTXR6aStWa1BJSGZrM2ZXUjVkaWJWb2RQTmdkaVorcmE1ZjIxWkpEMjZtV2t0c1pYUmt4N2ZaUGF2LzhOY1Y1ZW53VUpnUVVkZEF2dm1oRXFLZVBPblN6WEcwQmJENU5lajJ5cTFJTmcxVE5tQU9HeXFRdytOSXBZWUtIRTBVeEZOSVFVQUFkV1pBOVZtYWJ3Vlp5SlF0a3hsWUtUTG9DancwRWdTMHhQWklBREZDUU1JaVJrY1BYM3JKOHQ0ZDIrWm5wOWVQajVZSGU3dUwrVVJiSE1pcDRaRlRtMnRSTGt4T2MyeWkyWTJDRmtkd3IxZ0dmV3cvVjJydlp3eS9YbVRtdzM2UUhYN014QS84Zmx2ZkR4SXB2WkVSWTlnOHIzdENKVDdvU3FSVmk2dDJTOU45dk9LamVnQy9qd3R2UDA2VitnMGJwTk9xMWRWNWIwMG1yWnRpVWRVVzhpWEFlR0dVUjVlNWlvOHNtNUw0Q3VoTkloSkJCRjRtbm9DbUJDMnhLL2JEUldScmF5WEROU012MmVoQXhZcEYwb2xJUHBZUGpnM0lVdFNUV1F2NVBnRVlsTnYzNldnNnc2YUZpNk5CZ00wTDIwRkkvNG5mTmcydG4ycUdIZHFjS3BFblI4ODhHMHlZNGdrNUZTSmJ3bW54aEpRakE2a1NEQTl0WE5NVnJaUjZmRnM0RTNDdURVYWpRZnhRRzVkUnBacXRwNDVoUVU3VmlTWjRXamNEMEtza0EySTFtZDJFeWdwakdCalRKZGhSdkt4Q0VTL1drZXBMSTlLcXNiNlJCNlNiRUtMeUNvK0Z4ODcrRnhkS0ZmalNaNi82SmpPVmZKTjk5SmNzQ2RKcVkzYlY4K0Y1MjNWbGdNMVBlQVUvOVh5OTZOSTlWNzVSVVJBTkFlNWJxTXlHc1lKS1dGSkF3Z0g0Y2dvYVVTekNCTVFZMks0Q25GZkZpaVFwUzdCVEdITlZwTVhoOHVSRWVXWjRKdHpabXJkektVMXFiZUNmNjJwditjb2tGbnljaStuUHV4SUwyZmJ5QlpYcnVGemlDaWV2ZXU1bENpY2lsMDFNY2lzS29BeWduQWwwc0xMZkIrODhWN1ZUcUZnV0ZGa0FrVnRVQkk3bUZFQnpkYk5GazdsaWFKQ2cwWkhCaWFHSjNsSStsMmlQaEdFZUJraUFxd1d6K2FvbGZ3VGV1OEFNaHdwbmFFTWVuZ3VOTkI5WHVRVDUyak5CMi9tMWJYL1RIZ2hnSHd6ZDdMOWJzbCsrUjViZDNaWlZSd1BoOXZhdTluWnlNN2FkWDhFVjM3UnQ3S2NSN2V2QXp4Y3NHVnI0WlhlM1pkWFJvK3lxcm5aUFptTTJ1QWpRaldFMGgvYWhJK2htZEJkNnFQSUh6TlF3UGRKWEVDWDUwdjA3NWtWVk16R3hicm1LbUVTYXYrTWs5TVVjQWxaakVmTzRYZFVlQkxCQU1kY2ZLRmd5TU5jZzZGajFZNHVvMW9vUG02Sm9Mc0hPWkZvRVUxeU1SUWw2L1d0dnYrMkc2NDVkZmNWbEZ4M1lzMnZyNW8wekUyT0Q2N283VSszUmZDeG5NenR0aEVTQ3E0MmFIUDk1cWdWcDlVek5LaGR3eHZwZHo1TWZPVS9GczdLSU0yemIzcGwxV3JrVVZXSGJGK3BTMmJNR3ZZOFY3K1BGbDExTDdzM0dOVkVHNGV4cFVlNXN4MXZpMmZ2ZzRFUDhONWJnWUEwWjhOYVhXZWZhWFg5empYQk0ySTFNWkFPL2lLTjIxSXRHR0U0dEdFUUhvYWdQbzFuRGdxSUdiUHM0MGdqOE80YUlBUDhZSkJVbFFUemtlZDBkZ3R0UlZhR0hUQmdCeGdKU1ZUWkJzSWszSnhJWWpaUVR2WWxTS3RuZTF0b1NqekVQaFdEQTl2c3NWVVltTmhtVkRUWitPaFdudy9XL2crRXNEbWNMM0l0aHhOWFhEZ3BoVGxZbThFNG13Wkl2cC91Y2YzSU80bDNPRTlYL1R6MUYvdTVML29BL2JQZ0FaRk10RUVsZXJHakJhTWVYaE4xOTZUT2Y0TmRkaE5lZi9VUzZpLzhsdWs5VU5ETVFiYmRzTTZSYmVQcEhkaUJtQlFEczFYVStkYjNwMVpVakpqRVkxNUdBNnlESkVnbU1kN3ppcHo1QlJxb21xeXMyMWhSRlc0S2RwaXpyV05HVXhVWWw2Y3RSaVFZNEdWbk5RRHFiTEVNTnJxZTh2cG5oTkxkdjlnREEwUnFYSWE5djVFMi93SE5jOC9FcDJONitkcHV2OEpNR2IwaStIOUJmWkVjdmVtWit2bkcrd3UzODNPSi8yanYzb3VjVHdEZFAxZHRXYldvM0FhK0tBbnJvck9SQkNCZnhTYURiSXZQbzRDWXBjb1NnVEtxMXBlcTRJYnQ5bEYvZnJFQURFakFDVEtqV0dVUEN2bS9udXdPbTg3bmM2R2lPTE9SSEFzWlg1SkJWYUhrVUlPV1B1M1BmTVFQY3lBaG44VCtaZ1p1K0lwdnFlMW9LVnNpemtURWUybzNhS3kxWnpER0RhOVQwSHFxOUt5d3dpWWpCZ2hwUjUrNDdNamN6QUJ5SXVBWTg3T0tFOHBEd2w0S2Z2b1BHMVJPVS9va3MwbUxYcnJzeUhacGlPSStFTFN2czd5eDIrdkdSMXQ3ZEMzTkw1Q3BWa045QjZRazFUdDhCVXIyeE5MZXd1NmZkT1IwZUhRbjViVUMrUndBVmRHVHUydFh0WWJCSGhhSVE5ekJZSGRoSWpNT2ZCQ203QVlOeFo2cVhjRHZqbnNBalFwdGhPRDhBOE9WOFg5ZUg2eURNRndNUWRwQ0JzODhZN1F5Qk1TVFdibmdvN094LythSnhFd2FMaDhMY1o3dGIrTEl3aU9hUlhiRnFwdUdnVFpoSk9ETE1oQVFHcWl4WFFUWE1tQ2RYUXNrY2NMRmU1RzN5aFN3M2NGdnVXVjdYUzF3Z2hmZlFxUHFVbm93Wi85b3lPOWRDV215N0JiODdQamNMeFVDZ2hWQWlCMVFoSE5EVi9reW1YK3gvM2V2Nm5VdFpVVmgzNTJ2Ny95MFJpcTdmdmJQOXJ5bDlnR0xsY3hxT1pveWZzWHVRRnJnRi9sTitEN2h4bk5DQW11d3daRUFpN0I3c0RzNUsvK3RldTA1a3hmODNzWHZYUkRDYS9EUjhORSsveXZUdmpJcHNRRy8vMkFoV05UeS85U01tQ09tRHJxZjVGVUE2cUtiUzR5TFI0UUpKUnRKbEJraXltaXBySzRncXpNKzU1dHpjV2hrUXVNM3lsVngwb0pMT3BEQ3FUSStQRFExV0tVN0Fid0pJazBTVXhNbWFhb3BMODk0K3U1cG1SSnZtR1RPTnNSa0k0b3dyekRBOS9VcW1MK1A4TXQyZldVbVZYTG0xNUdjeWJHK1NQQWsxenFPeFJMU2RSbTF0cTU2SmtTOFhZcGxNck9CdVM4bDFqR2FzUy9XOGFPdE9rWG1nNHUvb3RuTkFNQURUZnk1SkF4RnRxeEgxcjlaYmg0Q0RUYU5MS3hjUHdMQVk3eUdTbkU4UTRGTHp3S3F3SkRMdEtqNmhZcVJoeHNPWWhRTWtQWkRwdUJvSk1TMFN4VXlOeEJ3VzEwOE9EL1gxZGhZenFaWjR1RDNTN3JvdDZ1ZHpXMVNZME1hRXQyQmRSbkM3cWk0dnNBNWtTcDVmLzk2eHF5ZW5weWV2UG5ibTJxUE1mL0hvdGIvbll2amJOUFcwWXVoK1hmTWJnQmtWQS9aQ0QydFFhOGtMUDNPOUw1eHJxYXJTZ21LcGRCczFlY21rcDZscTBycGZ6ay9KUTl4bmN3eHBIeC9xNllqcFJDaDFjOWRzQWQ0aHlFd0xUQ0U4TXB5WEJGZWp3V3pXTUtFaURMc05lUzJyeDNrOFh0SWk5UHV5L0VNbHF2WG9SSDN5TDJXQi9Na1BsWmpLamo3K2NZV29QZERpaDdKejY3Z2VKZmNMSmxEK2lQQVd3U0JYNWVDazg3d1NwczdQVklIbWxEajk0US9WNkFzNHFvcHFCNDJwUC93aGpTczVCU1RIdUJiRUxSWmNlL1o3Umtpd2lHR1FqQkZxdEdIVmRZdkhLOWNzN3lTYXZsQWhWQ1h6b2xuWElocFZMU0xpU2tUbXQ4MVVpQ0R1Y2dWaXc0Zm42a1BHbFM4K3lQeTNaemRNanBkcktzTkFuOHVOcllaQWoyYVY0Zm5jZVp0OXVNc1hPTWE3OEx4dWwxSS9nUmxDMUg0OUFOajV6bFFwb1BjekF4V2JPS1czNnRUem0zZ2ZRMDFybDhteGdMNmZLUS8yNjRFYjYwVm0yV0N6aWRzd0xxMnBEbTZvRzd0cUplVHBFKzduUGoxWm9OWjNWL1VKOEIxT0lwaFN6RGRFQnZJamkvSko1bTRKakZBaEo1R2lNSjhMSFpvbVZ6VUZUaTdqMWMxZTFzME9IS2pvMGRob0tEWWFEVk9wclJ1Zll3WTZ4d28wNHJsU3JOSWxObDJVSnphbHp3QzBmSTQ1VEVmVldUWEdKWklZbEtJcS9udm04cnVxRGxyUjUzaDdUQkx1ZFM0eWhaT3E2YmxOUDJMeVErZjllYmNhdjROVk8wZmQ2cTdxWlhHR3VXcnlkNEw1ZWFFSzJnNjQ2eVMrcFJLTkdrQ2lqbDgxMXk5UzViSXVJcHZDZkJLazhhMGY4VUd2N2hWRGpJQWhnWG0zS3ZBUHZqVlJZRkRUWThpdlNyTC9jQmhMcGl4ZGdYd3E5ZTFHcXArcVMzRXJaa1FraWt5Wk10ZElKcVhiVVUyUVpYekFGZFJiWFIrTmZTOTljOVV2SGYrdDdsN1ovL0p1ckVybXNWZDBaeGdkczh2N2QrNWdac2JPb21WaGRPM1ZWMTZ4Y3VqZ2dmMG5sMC91MmJWajM4NTlXeGRtdG0vWXZuNWlyREplS1ErVWVvcWpuYU9GbkpXdzJ2MCtGNFMwbkF0Q3pnczZjTlpqZHk1ZEQ4bUZiQmdnS0xERjdEbTFJS1lNc24zRWN5Q3BOUWhINUFid2dndGY4Z1Y5WWQwREsrSGtKUzVZT2Z0N1E3SUd5R0c4TlpWcUh4aXd3K0VIK3hUQUUzM2R3K1dlenM1MEFSZWVQWGlBK2RFY2dGWTY4eEtXVndNYzUzUG40cHBnMUFvNE14VkpWc1IzS1ZxNlAzWEpRaWdWZXIrdS9KR2lEZThjZnYrRFhkT2Q2MlZWM3VxMTBFVUpOY1JxMVdndlZpc1JidEZad0xxNmpCVjlaOFd6NVd6OWlBVmphYktCR091cW91cUhnZkNxeWhXTmxGblZCWFZGQTNtTTBXSzJyMUpqR0k5SnVNZjZ0ZThoSDN0NU42bE1OVit2SEg4bE40RFJsV1ZtcFpjeUpWbi9EYWFrQ3dXT1hkZzA5TC9xK1A3S05Zc3Z4L2h6aExXOXNyYjVURzN6TU5jYXlId01STWdkSUZOMG9DRzBDUzJoSzlIZGxUZGtXaVJCRURlTUQzU0prbno1d2QxYlJGVUR1WXVGSWlJWHdUSGZWU0tBc0NBZnQzVy9vR3JxS2JPbUpQSXBsaUJwbXJURUM1SzJiR0JOMGhiMzdaMmJIUzduYzVId29ZdjNYcm52eXUyTHMwdHpTMU9UNVUzRG0zcDdja1A1b1VSYnVDUFNFUTBGQWd4N2NacGZXRVhraDZTbUFDR2w2VGlkWFNXaHlVclRjU2RlM1I1L1BTd2EwaHZLc0FtTDRoWTFwdjZSaUh1Y005eGZXdVQrMGsveGNvWDVhMWVLckx4Nmd6L1MwSUljRGt0d04wbGlkOTJpd3MzTU45WGJQdGw4N1hrck9hL21PcndIVUErYVpKRzNHWTVTc1FRbnVMeDdiaFJFYjRtZ2thSFNaTzlrdmlQWmhucElqK0tCNlhMVlVZNUJXQjZxd2tQM3p2VkxiZFlta0IrZGlHZUpJbXNXb1ZnWTZzbHY2bFRFbUVSSk5nNG5YSGYwYk14SlVCMUczQi9FTXpvZXpzWVRVWDh3SXZ1RHBRV050ay9tSWdHMTZJOGx2YUhLQisyVE9naUZiSkRTR29aa01uOHZLcUdkbFcwUkxKQW9BRnNGNW5sR0lNd2tKSW5TUE9XSzNkVk95TElYcHlPSlBFSUhvMklobld5SkJRREFvUkl1OFRoR1FPeTU0WEloeC93ZnVPTkVodm5rU2dEbHVUUEY0TUNJRks0NVZRakIzRXpVZVI1b1REeTZNZGUzczdkMzU2R2RmYzczeWxPODNEZlRqN085TzFaMlFQbm43Zkg3dEhEeXZwWUViOU83czE5L3NNaUt2VjBQbVAyc05UU3IrUlgzd0hjOGlMb3FoU0I4eHd6R2hNeWptbE11cXFMNHBWMFQ0L2xzcjhqRGkxZzQwSEExSG9qSERiSHZCbHpId3l1RnFsTG93ckZEalIrMWtCZUtPVXNQK1dJdHVVeEgzMHhYUWRaR3Byb0tncUNHSitLYTlMTjBMeUM5ajVWc3M5aWU3TzdzdnFHNzJKTm83elFEdlJQcDNsaGJLVTNDNmY3aEluN01DcGhCWDhJSWpXZTZGOEtSWW41Q1U3STNiUjY1TkN1b2dxeTFHMkpmd3VqTnR2d2lHUFJGMGgzeFRjWEJ2YkdXbHRqZXdlS21lRFlUOFlYdFdDRGVtc3JIbVROVDYzQlgwaHNMMEMvUGtNZGdMQlFxSFlqNWhMSUlHdVpjSTdnZVNTd29qd2lMNVZ5NW5CdmtHbzl5WFY4R3ZGa1JlR2pBcW9HY1pkNVhVOXp4aFR3VDlUdS84a2NpL25oU25oWGI3VjUvTk9ySFprTk5PcElnUitLc291Q1BGS0xPaDRNeFh2U084ZTVnTEZIendic0h2bTBjSk9wQnRCSHRZZllyRnVJaVVwV3JsRVNnbHl1U3ExcGtqbFVtbG5Xc1VobllFK1pRSG5aVkxKL3Z3R2pYOXMxek0xTmp3NzNkSFlNZ2FtUVNiU0hYTEJySGNXdE5MNVBxRythcVJDNHJOY1A1cWpkMzNSNjY2bGc0OWtJcGRXT3k5d1dtdUNPL1lLYlBUZHpiNUVaODVka1A2WUhSSXY1cWNkUjJIdkJzbElBeFB1Y2hEVGdtRDI1amFHUmJYZkUzeGhxTmZRNmcvbVRuNkdnbi9oc0c5YmwxMU9LbzVwZjFzanYzLzAzNFBQazc2TUhlU3JlclA0Skpma3JFM0hnc01wYzArT0NJUldFbVdvTUJuVHZhUzE1OGx4ZlJ6clZkMFhxRSszQXREdWQ5WjE4THN2b25RRlpud1pSUFVJcDN1YkdSVUdXU08vU0FIejhTbzU4RU9OQk5xZk80MTRoRlhINVNpL2tCN1FaWDZ5VFNxSmRSNDN3dW1SQUZndWZaODNGNkxNRWN4c0tTeEVKSGw5bUVYc3htTU1yMFpudmJXbHgxZzN3K2RRUG1BWkl3Y3FPWU9Tcm5DNWhOYzlad3JhQklwNU5GTlY0eWVyamJhVStrOFVFbzRIOU9wRm5sV3RHUXpnQVBva3dublBidXc4NzMwZ244ejkySFIzbWRod2xaamdmeVpjQXRIWXcrZWJRSUNWVmxxQ2h5RXhsak1rUmNIQW5HeTdZa3hidGROdzhnVEJJekVFdER6RHFXWVlwSE9aeXZqc3N5L2o1MEpQNExSWkxEWng3VkF5SVZIbTQxbkE5bEwrMXdQcXdFVGV3NlBIS0wyRU9tYVdFenFMN0RaMnJPLzVOSzRFbloxTVZubjJYRXdkTUwvYnNRSnA5QU1aUkNSUmFMSEhiamFHQWVpa2hpQVJwdURKTHMraTdLZFIvTlRMb2xuc3VtaTVsaWUyczgxWklxRDFMdW9kbUxHelRNakhiQ3g0QVBJV1RMWE1LdjdjTWpsd3c3bjJmVEgwOE5YekxpODdXMCtIeFBmKzk3clYxZHJYeUxmeng2K1ZqRWYvYU4vc2pZNWFPZCtZNzJSRWZlK2F2VHZWTzlPSDI2YnhKNld2ak5iMkR6QzZCckVSanAvV2hEWlJxZWVGWFFMZktNM3VlK1FLNGpGdTN1NnVqUDlTZmFvOWxZdGpYRVg0QUY1V2U0cjRyTDBBZTR2OG9xWHo2aDBXTlErRkhwYlpkZS9vK1hYL3Eya2lqV2lxcWpqSytNZVY1MDQ0MnVmeGZmbHk4VzgvZGRUSU5LdFdoL28rNXVodzk2TFdIajhia3ZDRUMxQWZVZXFPeERxcUNlMURBaWxDRG1iU29UQ2tJNnZKU01qK253d2dvTGlTUXJ6VWt0T29zRWJWdWMzVFE1TnRoZjNOZTV0NWFhbzBBS1J0MStJbnVwT1lZYnZFMVhFNzJNeS9nNGorVDl3bWlkcjJiQmRaWGtyb1lzSW1jYlFyQnRZeHNqWkg5UWRjY05PTjg3dEg5cGVKU1NnRG11KzRtOGMycG1jeEtJeXRWdU9EV1dhd0hYaElWWW14aHU4UTF1U0hsSTV3SGRBZGZwb3plSm80YU5oNFlHOXU2L3dnajZ0UG5ic2gweGVpMWMya21adEJsakc4b1VGVkJYMC9reE8yNEl1T0VrV2w4WnIzbDB5TXl3N3lvK1JlaThKUVRkdU15RWM2N3ZMT1l6NmJiV2NDbFN1a0NBdGpMQVNRMHphMWlNOGpBUFVwQWtwbkF3d3ZvTUJFWWV3eFRCdjk0MXQ2blkyVm5jTlBmdWFtSFh4SkVKY2tEUmlUeTFlMHJHT2oxQUpvNTBCSXBCMDFRb1RiYTNwNEk2dVhmVkpieXdFNjdUUWlvdERBOFhGQzJrd2FIelhjM005dmNVdThSRWV6YWZMVlR4S1h2M0RqU0FLbWdMWUpPcktsZnFXTUlER0VrdE1Oc1hnSkdLODdwSnFLZ0N2ejJ1WVZVOUFWTkh3UkxDMG9vc0FOY1ZSYlRFQzRpTkx5UXVicGpCYVBldW5kdG5OODVzMmJCbC9lVEljRzlQb2kwYXRuMktoRHB3aDh0a2E2WWVoWFVKaisrT052SGJkS2JRUzF5cUhRbVBRTk1zRjhBR29oRTVtclU5L0NoeGx5VWJMaVUvMmg4VW82MjVZTjRDZUM5YnVWQkhhMVFNTHRla2FPZWY3RUE0U2pScStLT3lmS2NSQ3RxeUhHK2hHbm45MXo4VXl4aU9tSTEvNE92VXdMOU96TVphYlo5RXFlVDN0OFptRTNXNVdsYmlhWTIyUklKMjJGUmsyUTVHV3FpZWVzYjVaU1lHR0NYMG1YZ1dXOGJxY1pWR1plYjNuczBReVExS2ZBVnBBUHI3Q2prWVplbEkrb0pwQUJwSVVxRzhWdkQvR3NOcjVzVE16SW5Yc1UyV0kxNTF4ZlYwV0d0TW5mMlIxeFEyWis3a0puZVRycmdPRmU1WUlyK0E5elZSRG0xR0I5RFZMRllpQ01ScDAvcGhBYVBLV0JibzBlVUhpYXpzM2tKRVNacEhybThqQUY2S1lhYkptT21YRVlzSmdQa0dpSXZOTnlhV2lNS2kzenB5NWFHTDl5MXRYMHkxeDhKV3pwOHJxa3grWDJXczlIRG9PV1FxTjQwSHl0eS9NRElJTkJ6b1V4Z0dFRWd3VE5zNWpia3NneS9ndjBiKzVRMmlRV1ArYTJRYVlob0YraVdPclY0TlJlZlFPb0lqUklML2VCMGhwQU5UUUpBOUJQNUpVT3dBWGo5cTBEcmNMY0xCTi9sQkR6VUllWU5JNVd2OE1XcnN6TWJ2WXdvTEo4VnZEU2NQS1JpWENDa1JtRzA0aTRWMVJNQlJBcmhOSU9zRW5DV2k4eGMxOTRRckd4d1ZhRTJXYW81YnVyNXlNb0F0eVFKUUovbWtrOGduK2s0eXBpN0NKeUJZdzBRNzdzZWFBUCtPcVZqUTRkOHhwT3NuYklQd2RGUnNqL0N5eVV4b2kyNEkweG9oUzV1ai9FK3dQQmlVMmpsd2FBeExpSzVXTmhUcUFpV3ZqK2FhenpjZDU1cU05YzNIemNaL1BGUjNDdXNBOHYrd201bmlZZUFHdmxXSHpodGN6ZlRESHE4WWd6M0lxdys3dGM0WHFxSjNBUCsrNTJrR1F2eGw5ZHFaV25GcjdTcDJMeVo1ZVljUHdlR25hei9JQkdEbmI5Mjk5eGliQTFVdnRzQ0xkV0VmUDFTdnJ0cnZYUDhLQTNXalViU3Zza2Rrd1plS1FKVGpsREV0aFFkR3NGQm01bmFpSUlHck9ibW1ydTc3WGVyeG1SZ05EdlNNbGtieldSWmdhM2I3dXQxSUNMMDVFZ0s2dVI3N1lKMlQ3d0d2Y2xIN2RkZDhaOWZjMG54bjV6emVmMld4cFVmcmFmMTBTOG5vMGJLaEs2bzh2K1JjV28vbncvL1FPYjk3dnF0emZtbXU4OGJNcGxoYlcyeVRuMWx5QmpoUC8ycXE1Qmc4Vm0vcUdtaVBxbVA4N2VlTThmdlIweFhyNkVJUktPek9mci9BQXVwZGMvRjZHL3NzeTNkRndCOFdMQlJFVnZDeUVFYW1TcmhrQ3d4QzFCWENoVnROSnB3U3MzMlZGTGRXSnRuMXZwTy8zZVVIS29QWG5XSlJmcSs3OHpXdnZ1M1dtMjQ4ZGY5MTkxOTd6ZUhMRzQxbnBTNGVqaDV3VFdlUk5Ud3BMK1JOSC94ZHoxL0FpTzJtdHZDczBXZi9XV01BbG9WUGFQWFM1K3J4Ny9YU1UwMk5lR2xsRFdzMy9vZlZ4dXZhVFc2czNkT0Z0aStuRXI5MWJRTTVueitOUHJHVnlucUZ5QUl6cWNHOFlkSGJKNmdiaWs3cm9lZ3ZsWElwMkpUWm9uT05iQ2lOL2ZqY2FkM3VTVjNEWElBK2ZmYXozRGZJQmlGNDRveVQ2dkhpMG9sdUcwNkVkUXhwNGJsRGZnTGRrOEwvWXRndmxsSWJHVEhZeUZLaXJKRVRaYmd5aUx5VUtNakxpSUs4aENpSXZ4U3F2VlBaL1RQQVRZUU4raDMyMk9HbVkvc0N4OExiejVzODZqeGw4aTJYdnNGWGViem0zK1JjVy9PRndtblBDOG8yL2crK3A5TDhIazNId1pkOHp4c0MrdG12YzUxT3J4NG91RUZ2YmdEYzZkLzZWUnZpcTlpN3JrUFpTc3BUeHhLbXVCR0o2OTdGWElBU1VZQnVURlhBZklWSEdoUTFEU3pUcTJJcFFCbzRyZkx4RDhvK0dYOVFrdjZNNVJyY0l4TkprajRnK2FWMTBlaEYwZW5vMlZrU3RyNnVLYUlvUHk3NVlTdCs3WU95akQ4RWpUOGdzZllXOFVtODNCOVpEMWRFei95SkZSRUdCTGpBTHowdXd3VTZxdW52M0hjSmVocThvNVhETTJQck91Rkw0WGtWd3hjVEZmbTRTUTM0aHFJTUdCMGpBVERZSVNUcFdGUWtrWDFlUkhZejEvcGxCbmJSWW5rbzF4RU9FVFExTWJTeHZKSHA4WEtEaWRaUU5weGxYcEoxMXdNcHZUbzhNcGUyMDgzcDBYQ1Q5YUxadWlHOC9jeEhtVnBDMk82SGQveVNRTTQ0NUhiSDRBVG0xMERLbkp0ZFQyd2dPL2pXNTFtUitXZWZpcm9YK09IaTZEYUJPTC9VMVJ1OHhHL09uZENHTjJ6YzFQSmpmSmozMVNUMzlIS3RRZmhJZVlCNWVnV2JrdVhBUjVRTEREelY4bUN3VXd3UnVQWlg5cGRIN3JQSituamRnWkQ4ZUtTM001ZElCeGNqSFIzZDYwWTNVTjJtRzBiNnV6czZncDI1Y0RxVjYrNGJWMmhROExHeGVlWlAyRmF3MjNWVkVuMWFyMllycWlSSGlWOTFLcG91UmtSUnBiWVdqMmlXSUJwbVNyUVUvRmxOcjhjSjNpT1VVSlRQV0taN2RNMElnbFJMeThKRExaaHl3a3ZLRWsyMnRyWUdtTW81SjhtWlFxN202bDNOc0JrcW5LZStoUE5ESTduaGdhZ1VDU25RUnJqTmVkaktXczRqdXI1WDFNVm5VbHVUejhKK3I2NDMxVzlKdWZYT0R1ZHRob0d2OW1VdGZMVmhPRyt6c2tlK1N1bFg1YWpjTHdpdkNRUmVJd2o5Y3ZTSFgxWFZyMG94aWRYWk5xdVRZcUd2U2xIWmJTdDlWWEhwTXNkLy9mQXQrd0ZiNzBUZnJmZzN6d0Q2R1ZzSDZLY1hFNTdqSVE2U3lUckVZcWVVdzlBM2hJaUhtZWU4b0NDaEJvWlVGeGlxREJnZVlEUmdXK3ZXajdUQWhRTU5GMG9pT2Y1eXJnU2l5UytTajcrQ3ExZzZEOGI5dG0yZDNiaCtvanlZU2Z2N0EvM3VQTlBXa2xNYTdHRk00OGM4OUpteTFYVUhBUERWbkZDbldSQWhQL0pRMEErWW5mWm5IN0lBK1ZvSnZ5eGE0Y3g0Sm15SnNyK0NTZWhaZ3g1a2tPZGd6ZDRLRzlJUEdPcDcvT3BNUE90OEtPNFAyWWFsVUVtMWpPRDZZakdSQ2hpV0tsRzVOZWRybVdNWEpXb2hlYnprWWZkV2NqTWdXZWJmdmFYQ3NDcHo0b2JScXZFOG55ekluOU1tb0YreTdFWjl5TXVVemNoRmpJYkxBK3RLUFozRlZIdExOQlR3R2FxQ2NqaW5lODVRekpFbW0rWnFJSkN3WVNvSHZYeERQQmR1b1p3ZlZrSVI1aHlSa2FQVkFuNC9MaWc2SGhZTXpSbWxnbC9yTjRJa1lMWWRnaUsrbUplZHIycCtJZ1VTYm9EQ0MrNE9INkxLWnpSZm0yYjQ0MEhuODN4bnFOaUsvY1NOZndpN3U2cU9Pa01Xa1k1U0xCZFJvNjh1c3dxaG1sRm9ORFpraTFMTTAwNHo1YlRNZE5PZUUyOTlJR1R3ODR6RHRFcUtkZlpyTEsvV25vRHliR1E2K3B3U2NMOHN4ajJTaEdYVnhyWjZVcVBLVjhMaHJ5aFVjODZ3ajllUUw0alpCSHBZbG1HV1l4VlZ5WWNvVkoyZXVIVVBjOHRrUnphVmpFVmRWWWx5UGxWSkVLK0tJYWtSa0xYOEROL2dmRmVOcTMvSy9KRGlkSzlzeTkrR2ZiZTJsbytoODVqemo1UStTbHRvbDZydWsrWHY4NHM4Mit2SGhEOEdlWE1lYmF4VVpsbTh4enpMOFltODF5QWdlUkxYMmJKWmRDRm93L1Q0eUxxK2RDb2VSZk5rWG1uUXozTGF6K2sraTZSa1p0WmhMMVlkcXRoSndxay9WNS9CcEd1MDE1WHRYaXo4SHZBQ1UxUDFoYzhkM1RLNWZCa2hFeVBqRHk5dHZudEV3MnFSUnRTaHUrYzZjc056RVo4YUtiNWhjZnlhb3FHTFB1dHVQZURYOFlybUl6YUxzYnJMb3RSUU5vK0ZmSjFqSHoyOC9ROUgxMWNHZXFITGloUXJQVWxiamFTUDNEN2RrWnRiN0NucWZ0MEk2Sk82MzZmaFE0YjlQeWZUTmN1cUx5M1RuVDVmMXI3ZlFhUnpiYTdDNVdRV01IdXNFblp6VHJOUnkvTHlJSU1ZQXNNUkxGRzNaK01aZmxkVEFpMHlhNFdvY3hRWTFDTm1PNThiOXdnZkJONmFRQ1ZFUDFZcWhpZ3BkV05KN3VYc25nOEtMM3N3VjgwREhlN0ZVbTRLdXk1YWZKb0t4NXliemRaQTFGejV3NDY4cmwyMWEvZGxoNWFYWHQrUmwwbXI4OGY0ZGx2Vk42eGNjWDBvRmNZUC9CT1Fid3QveHdxSUxYZGRzbkowNWRIQnNxYTF0OTJ5YTgvRjJZeGxYUG8wTGZndm1wd0tpSzBoWjd2SjM1bDkzNy9nT0tzZDVlSDdqaktMRXVYalhwRllJcHlUdXF5SnFsU2R3T3Y2aTRWa0FxUHlVUC9vdXRHZTdrSmZzUytiU2VTVCtWQUF0ZU4yNHp4WjdhcGVGNFU4cmthRERaNVRZSlA3NlBxcFVVMmVGRzNqdldibzVHdGZmZXpvNURTZW5qcDZ6SGxIc3JkM3VsVDY0cXFkSUkyTlhucjVEVWVPK0FMdk1mekN0S3l0eCtOUTg5TXJWa2JHSFlNMXFaVFlkcnJYM1RiNVZuZWlDV2FEcW1sNEtZdTBaTG1CemxYMTluUXhaVzk1b0d1aVo2SXg2NnQ2Zm5YdkdsbGZnMmtlT3VFRmt2S1VUQzh2NCtzeDU1VHVCektQYlIwL3dFdkUvN0xUdmo3azA1SlozZkpwcVl6bXEvcWF2RUNlSVY5Ym5Tc08yMHd6ellRMFBCd2h6elNNWnZMUnM4dHNyT050YXBMaVhTeFpIT3ZIdDBBL0RnSC9QWUVlWkZsSzczM3RyVENVV09JZDdwL0M2VDhXcTVueU9HT1FnVEhJOHBFMzMzZlAzYmUvNnVhYkZ1YXlmb1dGU1BETzRvb3JSako1WG81aFYwRG1tV0w2bUNOSWdZVkc4RFpldk1Sd25vZE05R0tlNUlPMWRnTXRvanl1d3BXOTJXblB3T1dLTm13c1JtdFpWK3JaeVdwSnphcHF6YS9hQVNzcTZZSVNxMnlJdDRYdGxqdGltVkJuTUI2Z3FoUlUralVncXFMWmx0KzVLeGR2dmIwbjA5TFY4NnJiZTd1b2h2dEx5V3hmNlphYmV2SXFOWXBKdWZFVzRWeFhQaGFrQ3R5aFY4YVNMc3VCU0taVTJKMUxSTDUxUUphSGdSL3Yyd09iWVZuZXM4czkzclhQUFg1UUpwUzVVc2FDZWlRK094ZS9JNlpLQWxWRG1xa1NwZDh3TFVVMlExR2ZHZExoY1c2K3VkU1hUY0RqUkxDLzkvWlg5WFMxWk9CeElrUmdnUUpLOVJhL0Z3RjZUMFBVb2tUcGxTelpwTEx0aTZqVURQa2pQMWwyZi9haVBmQVlrbC9ldmNzOTNyVmZrdGhqTldOSHhoL20wYVhvbXNwVlJqWGpxMllDSkJSVVlCSityQ0pkVlBVVnhTSmVOTE9QMlF6bEpkakpkQmxSbVM1dVdhZ0hrdTNlc1hEcGxrc1phKzJmSDVnL1Y2dGpyNDZaZkZtSllKVUdoL2FtZG12WFB3YlF5bmIxUFFIOTdLV2N6ZnpwT2VXQWw3RzYxckNwUXVoWkZjWmNDeU83b3lGaUROaDBZNXdaZnEydDM4M2p5aHJqeUR6N0RZc2o2NitVbUs5Rm1LV2ZtSzk3SzRpckFzcXE0V1JTUXpoWnMxNTRkVGdaK1c2VDdZVFdyQ3I0dytlWVA1WnFwaEZVdFZWRytQTlZNOCtmcWh4bmtiYjlSU0pMT3hjSWo3SlZLNk5FSWRKOExTdVhBVnVXYm9vSkVtNTRqd3JqWEZISk9YbTVXbUlFclY3M0lGWm9xV1U3TnRlSW9xM3ErNVFtL0NQVjFRZmNDNmpaTmJVWi9wRHZOb2JGYXRBQmo3RUtMekRXK2F0Nk9wSVg2c1dpbDhmMmhhYTRWeS9VdFRIdXRXNGNlbUV0ZzVGNkhudlIzZWlkNk9IS1cwUFYrUmFJeWhFeExCUEd2RzJZZFczWVJrRnFCMWQ4TFVaY2k4blUxSWxxVVhXbEZWdCt2N1VFTzh1L2pQeVdmL0hlZTVvejNwMSsyNFAzMy9QT2U5LzV1anRlZGN1cHU2Ky8rK1Zudld0ZlkyNUtUVmFmNXB3RHpjZk5WcUlMdGYrZDV2Ylo3L0xaeHphWThIbDN0OTVRZkJrTmZtc3FzTmFta1RLc3RYa1oxS0thWi9SditaZ3A4QkZ6dEhJWUdiSnhFcG1TSXBuTVo1eElDamttWWtJbFFvL3BtQW9TNVdIUWtvQ09JYVJLU0QzRzhEVExEc1hDSTJCbWFwcTZoRlJWVzRhcHFpMXUyeks3WWYwRVNLNkRIVEM3T2tMWjhvQWx0WGZubXFYM0xNODF6Z05VdXZscUdvTmw1azBnY2VZTG54REVqbXlZaTA1bGdFaUZadWtmdnpiQUlqU2hKMEZtRC96NGtFK25wNEVEbmFhNmRkRklkMi9mM3ZuWlhlUWVyK2FTZGN0amV4Zm1pbDJzR2VFWHVzSis0TFZWbzZDT25TQjlseWkrU3czMEhXaHJ1N0d6ODgxRGNFU0RZL3Y3NFdCMllXK1E0bit1dGE3bUlISHpUSTd6Zk95TTJDcWMySXFVRUltNDRUN0lqZmFSajdENU05RGZWV1NyaWZqSEErUG50MFJJMlZYams3bFFlS1RLazFmY2xOQ3N5ZE44K1BTblNnRnkydzNNQk5PdkIzbzY4aVhEOWhuZG5aRys3dGF1M3Yzck5tYUtKZndaUURwemVxQTNpZTgxN0dCdjhpbG1wN2hoOEpLMkJKeTRFN0NSSmxtbVREVXIxNzNqQlc2bWFNRHlTYlFSelZjMjlRTlV3VHlYeGtuRlhSeUNrdHFDQU9jdURqRzFIb1RqVlV0RHFDOWphUWhwVlo2a1BFTzl6YUZOMGZPdERMSE84eFZpZ1U3WDBoZ09hZEF1UnE5MW81ck9zekxFSGFvSzEzQmpMM2RUT3MxUEgzVVhodWhpQzBQVXNPQVh5S1BBeTVpbXBlWUgwZnphMFdBd3dqUXR1UVpseFlpbnJHQXdFWjkwdmtCcEY2RHRYOGkyakw4QmhTNUt6LzVBamFmeE5OTlRVUHJ2a29TL3pUd3pXK2paNzJxZUxvTDhHOC85MzZoaFRrYVlobGx5cGZQcUR6QjNUN2JBVVlZODZKeUNOM3ZBMVcyd0g4WGpsSFlyMFkzNFh2Z2QvQ1k0Z0hQTzB6U3V3Z1phS2FnNUYvRUd0SXgyVkJaM0xWZ1N5QkVUQTdrMmtZaGtubVVQNXMvQXg3WWdOMmgyV0VaaGNvVGxFZDYvdEhYTHpGUjVLSnRwemlPOE9tTnd4RlUvd3RmUDkrRUdLWndQaWx4VHdtQ1pEeFBja0YxNGlJZDFNdUlnZk5ENWxxVVl0WlRCaC9TSWRlWiszS2xxaEZZeitUNitZa1lEd3U5SFdMcmZzTXJUQUJ0QWRvcXFlZVp3TldFd3BZOGYwbVdmOHgwdEpQU3MxZkpLSTZBME53MUhjVGYvY1M5ak1QdHg0YnJWbVlWWHpGaXdPcS91RXI0c3JBT3NlUjN5Vll3c1JyTU1jblh3OU53YzJUUUJuenJ1WVFBbTZxb0RsR3FvdUF0emh0bXlLdnhLRi9tY0YvaDROeHNlY2UrZEozclJaNnVTSmFwdG03ZTJwV0xCOWdkYkMzMmxWQUJrcjRneXJLc1N2V3hQdTUwdmx3NFZzN0UzRHhSOHZ2NkIrVTMzRGZYTEJqNDROTHZ4cm5VOW1tWjJGaTFWYTkyeXBTMFZEeVllYkNuMGw5b2kvQTVsZ0RVMEdHanJ2UGlTem16OHdiSWRLUGJMb2lnUVFkVGFJbGE4ZGZ2T3hJTnhTN2Q5QWMwSEgydllzQlgxMmt0YTFiaEd6VWdJZnZIdURiT0RJNkZRZG1pZDZEZkprLzArWDNHZ1Myc2xnaUdvYWx2RWpMZnVnRnUwR0ViQUNPa1dTRFFBVDZocGgrd1cyd3FINGc4T3pjKyt5WjFIendnM2tlK0J2RFJXR2U1bW5zbnppQk13bHNRZEM4ZVJJSnlRc0VpSXVBUTdrU3d6eTkwaWZKbysxRGNTajdiSlRJWEtPLzk4RHRZakxvMTJxVGszOCtEcm1NOFlrYnhWWnB3emRYSnp0VXExYXc0dUQ0L0tRTVZNaXlqM25Mb0ovNGNnS0xJS3phTXFtN2RzbWJIYVlqYzBJb2pENWVXTGp1bitnSG52anpmT0l2TThQaFVzRStFNzBSUG9zK2p2MFZPVnYyNnB5b1B0Y3B2WUtuRnhrSUk0bURLU1drS3FDWUhaUU1hZmxxeWdUWHdoeTdlU2orVWlIVklvSEE0dGVjVlFlRGtlSmVGUWVQSHpUMzMwSSs5KzE0TVBuSnNYK2VrdlB2WDNuLy83VDMzOEk1Lzk2R2MvOEw1M1BmSHVKMDYvN1lGM1B2ak8zeTVmY3VHL1FYTDh2NjM5cXVWR3pyNlo2eUlmWi81SW5WNFJCTWtpcStCcXl2K0JCcTlBRW4zcXBVOS83Z0p5Nmt0ZlhlV3pRMlFINm1kek5HZkJvSTFqRVNCdFNTSjRWbUtPYjZlSXV5d0U0Y3RDQ0V3dHkrWm9QK29mVHVTTGJJNXk1WkhnTFlYaFFyYVJLWnpBMFNEZkpabCt2WXIwK3BqbUhmK0xvaGppOWhuQnAzTEQxTnpGb2ova0l6dU9pdjZBSlE3eHVoT3FUMHlmRXEzWGliSWZqLzZocW5FczlrMWdMNGJtL00zenNOZnByYnhPbzl2K1A2cXR5aEc2MnQvcE81VzJOK0tnWllJUWRYUmxvVkpNeWFLMHZITzBQK2FYZ1NqT2IvMUkrUDhLN3llTWZyL0orNmw1bmNHT1RKdm4vWVIvSysrblpwVDlTcy9YdkoreWEzcy9rZjg4KzU5TVE4R0NSdzNuZ2JWaUN1OTcyWlhGZ1dnNjlpVDhIK0RleVJSdWpEL01QRU9yMmcvbnA3WG1WOVpLVDc3TU9peUc3R2pVRHJuYmJOd05hSTFuRWMvTmRHNU8rLzJWSlVzMGlTSHhsVENCZllFd1ptdCs2cE9BMjUvVVZhSW9SMzdiVEV5TmNDUjlnZU5YM0Q3Nk8xTXJDU0RMSnpuNG0rY1duRFhMYkMwbTU1UGN0V2VlUy9Scmx0a1VsYjFZbjhkVzlTOWIvWTFaT1ZoY21ucUtFU1kzaXBvdHp5Q0lMT01icGRJUzdDUzZyR0VxMGNWTER1N2R2VzFMdVdybE1nRDNObnZ2cFp0d3JMVGEwYmJjakpNdmRQNTBmUmtxb2Rpb2hEenpuZm9aOGd5YytSQS9zNlFIenViT2R3M1pYak4vZVF0WDJmbzMxaURVYTlXZHZ4OEJHeE1XZ2M0WFhJRE9ZeDBuU2l6T1QxWGRPRDkxbWZmeG12MzNPL2JQLzJ6LzNWUHJ0dkhmcGdPWmZQb3V3RjZ0cUJzRksvNjZ2WEVxTWNpemJybE9CeEhaUzhscllROFE5MktXdFlhbmtZTHpMS0F6UW56THdNdHcydklUL1Yrb0pGd3Ntakg5WjBxUS9seVBtOUt5SUNrLzE0bHQ0blJFT2loR280TGcvSXFxNFZiNnVCeFFuWitiRVpsK1FKSStRT1dJaWNOcVFINmN0b2FCblpocTlUbi9zZ0dQMXBZOTRuaFU5WUJ1bjR0TG1UYzRCOEo0R2I4RjVObnJBVzZDWEl2SG9QeTNQUHlRbkhWdVprRDBaaGZ5NHVIcXBvdFc1WUcza3dQd1c2bEt1NEJkZnpvQVVVdmN1WXlocWNWZ01CcGdtRnQxemJEODU2SU51RnQ0YS8wWEdQUnQrQVY4eHJrZW51WXRIa3IrSXBSSCtGTjVXUGd2aFcrUlQ5U3lBR3lwekFNUm9DcEY2bkZFVkUwbDJuRWthdUlwbGlBUVN5d1BKSnhHbUs0Z09OV29GOXU5WThzOERPclJhREE4YXV0TUkrYXFOeG9WUFptK1pzZjVDemw0TmgvamJ3Rks0TmxjWU93WmZtbldCUkVzZjh2M0FmOS9DMGJyS0J1VTVFdGNIMWxQY1FjVWtXdkJnQ0wrRzZWelZEVWQxczVSTldtTzZRbGk5RGxWNVVHTDM2cUpjNDk3a3dDSWNuMFVzN0h4QnpDR3U5Rm1yaFh6MWxhQ0VjS1NJQ2pBbTQ0alJUa2hZaVJKYmhTcnRLd3lYZExpekhSSEtGdktkb1N6T1kzRklBQ1NiWGRORkN3KzNlc2FudTFZNWdFS1hrZnh0TWNSenZqckNrV2U3NWhGcjdOZUZENzlMaHA4U3RXdVUwSGUrckRrbHo1TURldTRwajdsYXZ6Y2M1YWhQaTc1WVp6clBuWktNOFYzeWZoYWRualNPNVNrV2xONnZydkFMOGlQSzM1VXplSDcwd2FldlpmRnFRR05sRThpUlZCT3NYbkVLQ0x3ZlhoL1ptRnU5dG5adHJWUUpZVzhRODUxZWwxRjJzNVJrVFo3SHVhYmNrYTdhNnorbFBOTS91ME5lMXM5ZCtHMnh2ckdkUTJkMDJyZ05hejhtaUI5cHlTUm0yb2YzN20yTmpad3FrWUE4VU4xRjJLeVRIWHJGRDl4UGV0eDEyam82bEp2NHV2cERxRnIzUXc5SFh4eGIxZXB4R0lpRWJsQ3hqeWloZG5tbVpNYllxNXgyYVptNU9TNXJRNVVvallJUUQyZDJYUnJ6RDlrRDduQ0RrOXgzb1FzYzB4SFVvc0F0MFBNR1dPcXNZSXYxTG9NczRqNUQ3Tlo1THhoZm5Kc0U0K0F6MjhvbHJiMnVNSHcrY3FHcmpvYjJDWVc4cStaeHpKelNuWCtzM08rUklUaTVoNDN0dDc1MVdKbEt0dFJzNWNOa2N0UjNNdmV2b2d1cWdCenhNakdmSmxCeGhCWWNtY1p4SFlzcmhpS0xta2craEZoeVNzS1RHVWhFQllvT2pFNDBOcXllV0hUNHV4aVkycjNucTZXZGEzckNpWlBwY0JjVEZnY242d2tBTlFyN3FwMHd3WG00OWEwQ0NFUEtGSE83Nm9oUkluWU9uRjRNai9mUG5YRldEalJxa2dWYWhMbjhPVGhpVFlCaHdWVHJWQ3hQQTJIRTRlZjlNZGk2V2owcWxVNzNFN0ZkY05qSzJQeGlMbnR4UFJJSC9XTFFoU3V3MW1vSE9sWHBJMnFDVDhqSk1kV3JsOFplNUZkazQ0MWJ1c3lDQ0VQb1FEcThqSzJIMFUzVmE2UFlWa2M3Q1lDS21KZDJMT1ZhUHJHQ1VKVmFaNHRZU01qQWVnNHl5WW9BZzAzeWJtcDFDUkNwWFB5SW9lRGg2L1k3NlZzSHluM2xkanFMOEd1Y0ZlbWJGdkFyM04yQXhqS2NuK0d0V3l1cTdJVXZFenI0Mm9iTGJOQk1nUVN6NzdRYlNjc1AvN0tsUXlodkt0YWF6aWY4TmJUbk9TNWQ1LzBNRWpSVytrQU5vc1hjNnZ1QnBrK2l5dlp1UE1HZHExSVkyMTRNaHUva2h0NWVkVUxjTlZMV2lZZnZWaWs4Z1p1QVhaOTZONEpOSEFHNVN0WndaTm5vUHVZdnB5TlZFd1dDWm9jRzFxSFpzaU15R3doTGpCM1hhQzVsaklhNGM1eXZaaTkrNGdiZk90NlQ5ZmltQ09OZ2MvWHdIVHpIT1EyVCsyL2pKRHhrYUc3dHZoQ1BtUDJwbHhFOVVYbVJ6cFQyeDRjOXZ6aS9KYnUvSW5tVzlzdGJxUWlrNEE1WnZpSXZIa3ExekY5KzVGMGxBYUx3ODFPY2FpSzBScHp0aStoVzVIajByS0xFZFlvU0xySEVhS0NnQTZEY0tBVFZUK090QkNtU0tOOEJSQ2lDdVN5TU5hUkllbkdTb0Q1SFptTUs1aklMNXYrRmVSVExOOVNrT1Y3dDVocm5jOW5MU1BMWndIUXY2VHg5cFFONWYvTyt4K29qT3pmTytQQnlCdXVPM1hpNmlPWFhYcm80cjIzN3IrVnJZbFZXWnBaT2hkT2xnY2pMQkkvdkRva3N6bUpiL1Bxc09jazdSME1yMTVqbHAyc0w1NFdibEtyQWQvMzRvdUZ6emRLTjJlZnhRYzVmM292aTk0Sk5vZzluK0JWQmo5OXR0SWYwRU82SGZIdkI3YjF4S09NZDczbUJrYWgrZkpLcjdrUml1UmJWY2svNEh5dnpoSWZYMVBCUmE1NmdkODg2by9ZUmhBWTU1MEJQUWlNTmVvLzdkVnNpMEF4NnRsY2JoTDZVWXJuYTU5RGk1WE5DWmd0Y3hOc2xhMTVvaEFXd1k3WWVnVUFvSGg4SUVOVTU2UjJKR2kwM0Y4cTVscGl0Z1V5YW9xa3FEdW4xck5BdnlqUStISUlPbXQ5d3lxY1NnSVh3bEpUVHVFY2R6ek5Ud09nbUNKdWFwMXZiZ3VPWGpveXNLc3Z0QzNJRitYY3VXbG1PeUc2U1Q3RzF0M2lhUnVQcGtyT2Q0aWgzYWZwSkJPSmFNV0pjaW9jeEQrMnlmQkZnNkl3ZW5CUWh2NzNGdXZzNlhyVExxcmE5RDE4VWVrSDJRMHFLc3pHRzN6clJvdDZwTlFlTFJvZTF2aTQ4QVdPTlpwOE1DMmQrWGdJcnRiSllpdWFOcWdaUVBUdnhjS2Zudm1BRmNBVTMyUUhnUTM3dy9nMmlnT0NGR2pSbk1WUXd2azUvejdoMWloK1Vtc0plRmpqSFdSL0E5WTRWVjhlWXBrWi9XcFl3MXY5azV2YXZMekNIUExzeGZjeWRIR3ZDMmE0WVkyYjJMcVVwMWJobndrWGJYU3AwVlUrMDV0WUZoWEtmYVlWN1ByR2Nmc2FFYnpVeHE3WDlPVEU2TWpRSVBPY2JtdTlrTmRoMUgzSTZzSXpuaGYxMEZyZTFFeW1Yc3VqT3ZVdzkvaVNIcGJkLzhPeUREV1B1RzVnajhEL2h5VzNVbHpUeVRwYnY4YTlFV3ZQcm1PVmowaHdTN25zM3RuTGUvTTVudmVtVk9seS9RYmhvNTlpM29YQ0VzdDlzOHhTNEtCejB0NEUwMnZsc2VESGNwWGd6SkE3dkt3M0xFSEZMdmdFVDdpV0dKYjE1dXhyZGR1SE8yTDBrMjRVTWQ3RDhNNHUxNXBjejNyVGFCZlBnbnpCSWcwRWlVZzg0Nk1Ja2p4ZlJ3SG9LT2JSR1FJUGpWY1U3Z2ZOTWhxSkNqejY3SWIxUEhxVXZRSklvL0FLYW9PZGcvRzArcUlLdzVHYWpHL3p4UldhODN5NHdRbE5HVm4vekhuQUNBU01SeXhOY3o3cFJpcmpPVFVTMGtGMHRWNmNDZGlldVA2Y0VWWTJNTHozZWhia1MxcFRwWmpRWThHcmhpT3E4eWszQmhyUFE0Tkg5SERJd0NkTXk1bmM1STg5VTAza29hb3phcXlXeU9NMXB0cUlmY0lvaDhwb0ZyQVBXME9RRW5vU3FaSjZxaHFaSVdzRUthNWlxTmxWSEtNOU83Y3ViS3hNakE3MmR4ZXpLUkRjTFJUR1liMmE3S2tSL25raTFPK0lqeVp1QjBBaml1OVVBN2Nid1NENTAxY0tqUEFIci9QcDlIRVl5SStyaG5XQ1MvOVB2d0p3NVBraE16NkFVUStxc0JWTUttVWljL2RaTjdlakNKd0FnSTNMQWNnYUhFQWdBMzJGam1RaUh2VmJxa0o2aEI3T0FjSlN1c3hYQ0UrdzFacHFwa21YQTRTYlJzNjV4UDhwY3RReCtuWVA5TzZhTUlpbTdLQUc5bDI4WWRNaTV3RlYwbC82MzR6MDY3cVFpWVlOai9UL0I5MTNjSEI1VkJBeU0xMnk1cU9iYjBnbUdlbS9iK2VoS3RISEo0QnJ2RkVGVWVvRy83cVJHdVVuSGhhNkUrU3BCYlJVMmJVdUFteVFaZUlBb0NmcmhLaVloYzZ6OUZJZ25RdDBSWE5objhibTNqS2pHSHlkdE5sTmxhbUo4WkhodmxKSHRpWG1YN0FYWEZ1RnNRYjJZNGxSUTVHb3hSYXlLbmhKNDl5cVNKaDU1dWNMWGxXSTU2UVk1R0ZCTE5TSGZORTVxQml1MjU3ZUNmODFjeVJUSENQRURtY0hzbUdia0xGaVp0VFFkRGpLeHR1d3J1QVBLQnBwQTNuNlhmV01mL2gwTm03R2FTS0xvYmxObFVTUW5RZ2tGV3F6ZTNVa0tKek93aTMrVVZGVjVSK2hVUGRMaVpOWG9iYlYvQkVqZDFsNTRhV1dsZWYyNlg5ZGUzbDR2R3ZUSExudHZBdSsxMzc3U0RVK3dsMFpIQ3BYeFVkQUwvZGlqMW5Ld2tLVDAvZ3REYXVQMS9Jd0QxYlhWbWNNT0lJUnl3bm9xZjNjaGRXS2hVdzZIbU4zbHpEM21SZDQ2QVJiN1g2RXJUekFWK0NwNXphQUJ4QSs1VGhGTzZqcEY3MzVzZTFicjJ0cjgrLzcvVjBMc3h0R01YSlgzVG56blkzWDMzWDlScjRKWXpTNllYWmg5Ky92OWJlMVhiOWwrM3Z2dTFqWEFuYnhONGd2dFlPL3Q5RnJ1T0Y2L3N4M0NQOGdUSERlWGE0TWxMRWdsb0JCdGNOb0ZOelY3UGtLWHlmcm4yWm1lbXhrb0kvbFY0Mjc2em93WWF3Vys4RXhUb0dsMUs3cUJSdXlxMVlSNEhCanVuVTNXOTNFZ2R0dXV1bTJQMC9DbnorSDBxMS9ub0xTTVoxK1V6RU1aWnVxYStvM1ZOMVV2cUZxcHJKTk1UUVZUcERIbHF2dGIvdG9LcEZJZlpTVm5IOVZkWjErUXpGMXVFVFQxV3BydUplcUdRcm4wUTl5L25jRGVtUGxkUWtZZFVLQnBSdTViSTVvNnZJT29BTmk3YzB4ODRwakk4T1BOZFdBNjQ5YjJEQlZ3enlHVFBNRUJZQWxJbFZGUzI0SnFjdTJUeGRVcEFJSE9ISHRrY05YWEg0UnN3b3N6bTdhTURNeE5qVFEwOTFaVEFNM1lKd2ZCdGtOK0FhK1ZFNjI1amlVTGRlS3RTd21OZjhobHV6WUs5YXdRODBUYVRCY0s5WldWS3Y1R0pVSGE4VXF4bmpzVFhzcFRTc0IrYUhqRHlrS0t5eHhXcjhFcGJTaXNGcGUyUHNtUnVuZnRGZFJrdFNXSHpyNUVDc0U1U1crSE9zU1ZDVXBmZkQ0UXpRZ1FXSFBtNWpaNnhGVzdkNERxdE9VN21YVitrdjhZQklhSDN0SUNVcEo5b1BBdk4wZmhETVBISC9JL2VWOVZVZFFObWEvSy93djhoek1zd2xVck9UWVlxMWhKbDI2R3FhcWtwMGNTU1lHK2hNVHlZbE9sbmt6bDY4dWVjV1Rickt4dWtwbmRCNGE0d3FoYnhPa3psTDNsbTNMVStNanBjdmYzZHZmMnBxMTFKdFVuWno5NFBLMnpkMmxvaUoxQ2JwNms2VnV2K2pBNHBidUVyUmVkRXh0WVhIUHdseG5WeVNjMTQvdDNydXllVm9OU0VJZjBWWDg2YTdPdVlVOTIrZE03U2JWRVBvRXFjUXFIbHVZN2V5cTVuS3l5YzBnamNUUkRuUzRjbmx2TWhvQjJRSnZCZTZCeUx5S01jaGltSyszRGxJWk9nYjlJaUVpSFVkVW9xYzBtTE1LWnVzbVFCWGF6YlJ6eTJ6NXhNWFdGa1ZlbUJ0Y1YrcUdvWlJxMmRHNncrK1Q0MG84d0paZXgzSTRPelRpZVRqV1kvbFo5bEhtM2VwcjBsSlBFUjducDFpRWNaYzhkOXhLNEpFcDRzWUJ4ZkVreHZtRXJJcExraUdHSldsT0RXK2VYcjlOd2lXTnlsc2xTOXdxVTYxSFduL1phT1dhMW5aRkd0dmZWNzRzYTJneGdVaWR4eWJuYjErVTVGejJqZmg2eFRTVlcxWDU5U0FyaUhBalE1eS9UbGJ2eTJadVdkQnM1U0pKdW9qNnRaR0x5eHRIeDJiNjlvMkpVaTV2bWUyaUxIWERVOHpkUEw5emJ0UHVodGlPRWpKaDVKVFJOblFZelZZMklCQittUUlXcEY5MG5DbmZrSEFNVUlzaWNGMC95MWQ3akVkSkVuR1ZlcnUxdFRVY2JRdmJQQmpRZGFUeUJQZnBwdFQzdVhvU3Y2RkNRM0svOHlUNkd4TE8wNTRrQUhVNFpUdlRaK012eS9LdUtkZXJhb3BIcnppZEk3dHRBZjd1R3FXMFZsVElmNjJidDRsZjhNK3YrLzlMdTM3ZnBvRW83TE45ZDQ1L0o3RWJPM2JhcG9tVHFpcWxhZU1XaWxTbExLR2dVcFlpS3FFQ3FqcEJxVUN0RUNBaFFFd1ZMQlZDL0FNc25VQmlvVUlNcUFJbVpnWUcyQkFybFZoSXlqc25hWk1Ld2NEaTk4NW5meGZKenZsNzlyM3ZVVnFxZ3NQSHF5WHBhNkdzSWcwcFlZR1FZRXdCVncwRGd0NFFVaS9IaC9vWVBnUTNrdzFab2ttV0pvTzNPcEdiYm4wRGtDVXBRdDRmSklFMjFUS0REcU5SeGdKQ0NpR00wcmdHejRUUFFqYlNaYWpBTlhpS3psWjZzMGsxeG1PSkcwUWFYVnZtZFcxamxqZlZQQ0ttQzFFa3FaNTZuamh6cmpLcklKaFpWMFErRHFRSmNZdEpPU0d3c29HTG5FWjFxdW5Mbk03ZUFsM21USlVRYzRsOXQ2RWFvcGVBZzZtbW9iYXh6WG5HTmxsT3V3K3dwOXRodVpYL1J1MzhuWDhIVkUyeS9FL0UrZmxLNmZoVVdFYmNrOGNQN3QrOGNXMWw0ZnlKNnRUTThabGpFK1ZLV0JrZTZpOWtQTnN5RFVVbW1KWGFqT3JtNXV5dWlEeU1oOWs5TDNlQUxPOUhZbEdDU1JBOW9TZFJRNWFpdlJHSjhiS3ZDNHliUUlUT2lHTnhUOHU0L1hFKzJoVXBuckYwWURiUldxeHBNYWJlNGdMQ3h3VmVjVHdINXM2M1RXZUJVQWtMTDdGRXB5WDg2d2RibWlCb1dLcjV1bVY1VnBKL3FDZkJXdlc3RkFkOW9vaGtwSkNnMy9HOW5tSEhHeXlLUk1JZXE4V2Q4VEFHYXEzZ25qNVhsVFA1MHNDaGdXWW4vOHJRWGNOd2RhTmxZNlFXWXlQeFAwbXNkakx5b3ZadFc1L1RrOEM4NW5TN3phMXRBb3BnOEJLR08xdUlvMFJQbDJMYWJwQWJrUkhGUGpzekJjUElBSklubU5kaVV0clc0c1BUWTZ4S1l5OTBSN0gzYm0zM2hYQkJVTGc4VjJJNVQ5MjJLb2lONHJad0c4QmNmVkZBa1RZcm1KWTRxNTJ5Zk11TjlDbktIV3VNLzV6cE54NXhSajZpai93OWVXbEpsa2ZsYnJCS3R6eWlLR0NWRWJrYkxPd2NsVDlkZi9mdHcxVnk2L1hPMXAwdk91dk5LSzJqd08xc1AxcmJYbDNkL3M0Misxcm02NXpPVGJEVmJrY1VtQ0s1QVFUYmFxc1EySUc4U1Vic1M0ZUxnWlVBOXFNanZTR2VDL05mbk1rT2hIRzRxOWo2bnlJclY0b2FML2xJVTJHRTVad1c5dklIR2dvalNIUnpscE5OV1RtMDQyZGNQK1ZabVpKdmU0NmYxa3paOVZKcDJ3dm1mTXRMZVduZkZ5RmdYOCtWRS9XanB1T1k2SDJpbkx0aUVJS0lLT21VRjNtV1ExQ3Z5eXI4VzBXQnlnNFZNYVVHN0VWd0ZQY2JqUGxrVXdBQUFIaWNZMkJrWUdBQTRrYjl0K2ZqK1cyK01uQXp2d0NLTUZ6V0xoS0MwZi8vL3M5aWZzY2NCT1J5TURDQlJBRmk4d3k5QUFCNG5HTmdaR0JnRHZxZkJTUmYvUC83L3hmek93YWdDQXJvQkFDMi9nZ2JBSGljWTM3QndNQk1OdjcvajN5OWVIQTJqZFJDM1B5ZkptNGVqamp5LzE4UURRRGhJb0l5QUFBQUFBQUFBRndBdWdFWUFkZ0NXQU1BQTJZRDdBUndCVG9GbGdZYUJ2b0hvZ2YrQ0ZRSWRnamFDU2dKL0FyT0M4NE1jQXplRFlZT1dnOENFQUlRVGhEMkVjQVNNQkxLRTFBVDNCVFdGV29XSUJac0ZzUVhFaGVPR0RvWXhoa3dHZWdhbGh2dUhQQWR2aDQwSHFJZk9oK1FJRElnaENEeUlVWWhwaUlXSXNBalBpUHNKR1FsS2lZYUpwd251aWdnS0pRcENpbHdLZ1lxYmlyc0s4b3NSQ3lPTFBJdGZpMzBMaHd1Ymk3b0wyb3ZqRENPTVVReGxESkNNMXcwQWpSME5QbzFPRFZ1TmlBMjNEZEdPSzQ1RkRvNE91ZzdqRHdzUElBOHRqejBQWTQrRWo2b1B5dy96a0NVUVFwQ0tFSzJRdXhES0VPdVJBQkVrRVVzUmJKR1JrYUVScXhIQmtlQVNHQkkwa2w4U2o1THZrd2tUSndBQVFBQUFJa0EwQUFOQUFBQUFBQUNBRTRBWGdCekFBQUEwUXR3QUFBQUFIaWNkWkROU3NOQUZJWFAyQisxQlJVRnQ4NUtLdEwwQjNRaEZBcVZkcU9iSXQxS0d2Tlgwa3labVJiNkdyNkREK05MK0N5ZXBsT1JpZ21UK2U2NTU5NjVHUURuK0lMQTlybmoyckxBRWFNdEgrQVFQY2NsNm8rT3krUW54eFhVOGVLNFN2M1ZjUTIzaUIzWGNZRjNkaERsWTBZemZEZ1dPQk9uamc5d0lxNGNsNmczSFpmSlBjY1ZYSXBueDFYcWdlTWFKc0k0cnVOYWZBN1VZcTNUT0xHeU1iaVIzWGJuWGs3WFVsRktjeitUL3RJbVNodlpsNUhLYlpobHlndlUzRVROTkZDNUdZZnhNdlAxTHR6dGsxQ2JWT1d5NDdWMzBpak1RKzNiOEczVDNhemlycldSakxTYXk2SHJLeGRhemNMQWVvbTFpNGRXNi9kNUdFQmhnVFUwVWw1VkFndUpCdFViN2wyMDBjRTlhVXFIcEhQclNwSERSMGJGeDVJVlNaRXhqUHRjRWFPY2FraEhSdllROER0blBrS1R0VUdSTnhqVEViTStZeGY5SjdzZlQramV1TklpbHB6TDQzVDdyaEZkZWVIMGl3bmVmbVkzV1BHMExsWExtczJVdXBoS1lyZzNyK1I5YkhJektnRjFyN2dWUy9VQkxiNy8vTjgzZ3JPQ1J3QjRuRzFUNTM4ak5SRDFTN2JZNlFjSEhMMTNBcGNFRG81MjlONTdON0kwNjFXOEt5bVMxbzVEN3h4L05TTW40WGNmMkEreWR6WHozcHMzTTcybDN2R3owdnYvNXpLV3NJd01PUXFVNkdPQUZheGlEZXZZd0NhMmNBWlg0V3FjeFRXNEZ0ZmhISzdIRGJnUk4rRm0zSUpiY1J0dXh4MjRFM2ZoYnR5RGUzRWY3c2NEZUJBUFlSc1A0eEdjeHc1MnNZZEg4Umd1NEhFOGdZdDRFay9oYVR5RFozRUp6K0Y1dklBWDhSSmV4aXQ0RmEvaGRieUJOL0VXM3NZN2VCZnY0WDE4Z0EveEVUN0dKL2dVbitGemZJRXY4UlcreGpjWTRsc0lqQ0NoUUtnd1JnMk5mVXpRb0lXQmhjTUJQQUlpT2t3eHd5SG1PTUozK0I0LzRFZjhoSi94QzM3RmIvZ2RmK0JQL0lXL2NSbi85UEk5WldOWUZrcmxzckdCQnM1clNTTnJKMWxOamVzYkc0L2Z2SjJGb25PTkZZdElPU25HM25ZdXJGcEhabGpaUnBIZjhucGN4NkZvOU5nTUl4M0cwbm1yT2huWER6b0tVVnNPSkZMbFRIaWp6VGpyQXZsOGtiUEdQTHJTVXFTZ3JMWXQ5YVUxMFFzWlM5YVdBalBoWE1pa2RmTmN0MkpNV1NMdUI0cVJvVUp4WkcyclRlRkpXcThHd3JOZVpXZG1XWFp4VXh2T2o2eW9kWTJJdEo0eVNaMklIZ1N0YU5qb0VNdUVZYnRZSEhSY2RWanpsS0xWNGk0Ykt5dkxZTFJ6RkRQSC9LdXlDOUcyd3lTclhQQjFyaEF4Q2xtWFNzeW5tbWFaTnBYZE9tVVg0MkdscVZHNUV5RlNGcXlQeTA1VkxObngzeXlLTU9rem1MZFQwYXdHSzdWb1FpMDhGWTZzYTZqUWtZMlZoYUtHT0gwazVHUjVKRXhPcmRCTk51SmEyRzFLdFBraWJhQkVxRWRXZUZYRVdwaEp5S05sWFN1bnZtN3ZsTUZwWTdnRnJyYlI1alFsRTh0UnA1TXJhL3RjbmE3bWl6YWVrWHhEL29yR1pxUjBMQm94Wjd2NlBETFc2empmQ2xFWXhZUkRPOW9uR1VPWnVKaXFmMnpWeGIxeUlUWXhkMUpTQ0tXbnlsT29OeHVxcnB5YkxMVXVsMXhHelBpTU9iRy9Qa3RScTU1YU8wME5NeE9HYVZ2aDUzM3VUZGV5eGtKNVVjV3dmdkpkVVdRNkp1RzJTOG9hUGFGK1FqNGU0cHJrWkpYUHFiY21JUmQwNkZoL2xwRHpsRFBQb3hnMWxDMW1kdUhPOXM1RzFBME5aU295amNWWjNwWTZLUjUxVFdxTFdzeEtPdnFWbUNaWGFPMkVZakhucDN4SlJWSHBobDNOVWprYnB6amFLT1laZFB6aldRajFFM25xZGNiUmxQRjMreCtuNmRvUitWTk9Yc21WWThUMFBqZ2g2aHh2S3dsZlZ0YnoycWtWUTdQaFRDY0JtNmM0M01ORVduUW1nZkJDcDNuc0RIYzBjemJFSlo3cndCQ3lYdWJrb3ZMMmlCZFAyalk1SHRMR0pjVzhrbHJPMkw5elNnZHBPNzVpQ2FwclNQTVVoTzN6dXh0U0dFbk50dFNlSmFtVG9kaTkwT3Y5Qzh4NjA3Z0FBSGljWS9EZXdYQWlLR0lqSTJOZjVBYkduUndNSEF6SkJSc1pXSjAyTVRBeWFJRVltN21ZR0RrZ0xENEdNSXZOYVJmVEFhQTBKNURON3JTTHdRSENabVp3MmFqQzJCRVlzY0doSTJJamM0ckxSalVRYnhkSEF3TWppME5IY2tnRVNFa2tFR3ptWVdMazBkckIrTDkxQTB2dlJpWUdGd0FNZGlQMEFBQT0nKSBmb3JtYXQoJ3dvZmYnKSxcbiAgdXJsKCdkYXRhOmFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTtiYXNlNjQsQUFFQUFBQVBBSUFBQXdCd1IxTlZRckQrcyswQUFBRDhBQUFBUWs5VEx6SStJRW43QUFBQlFBQUFBRlpqYldGdzdUZ0RzUUFBQVpnQUFBalNZM1owSUFiVi93UUFBSy9zQUFBQUlHWndaMjJLa1pCWkFBQ3dEQUFBQzNCbllYTndBQUFBRUFBQXIrUUFBQUFJWjJ4NVpsRVp5ZDRBQUFwc0FBQ1pPR2hsWVdRSllTZkZBQUNqcEFBQUFEWm9hR1ZoQjBBRDFnQUFvOXdBQUFBa2FHMTBlQldoLy9vQUFLUUFBQUFDSkd4dlkyRXhIbHBtQUFDbUpBQUFBUlJ0WVhod0Fpa01vQUFBcHpnQUFBQWdibUZ0WmI5YW90NEFBS2RZQUFBQ3pYQnZjM1JncU5NekFBQ3FLQUFBQmJwd2NtVnc1VUVydkFBQXUzd0FBQUNHQUFFQUFBQUtBQjRBTEFBQlJFWk1WQUFJQUFRQUFBQUFBQUFBQVFBQUFBRnNhV2RoQUFnQUFBQUJBQUFBQVFBRUFBUUFBQUFCQUFnQUFRQUdBQUFBQVFBQUFBQUFBUVBsQVpBQUJRQUFBbm9DdkFBQUFJd0NlZ0s4QUFBQjRBQXhBUUlBQUFJQUJRTUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBVUdaRlpBQkE2QURvaHdOUy8yb0FXZ05TQUpZQUFBQUJBQUFBQUFBQUFBQUFCUUFBQUFNQUFBQXNBQUFBQkFBQUFtSUFBUUFBQUFBQlhBQURBQUVBQUFBc0FBTUFDZ0FBQW1JQUJBRXdBQUFBQkFBRUFBRUFBT2lILy84QUFPZ0EvLzhBQUFBQkFBUUFBQUFCQUFJQUF3QUVBQVVBQmdBSEFBZ0FDUUFLQUFzQURBQU5BQTRBRHdBUUFCRUFFZ0FUQUJRQUZRQVdBQmNBR0FBWkFCb0FHd0FjQUIwQUhnQWZBQ0FBSVFBaUFDTUFKQUFsQUNZQUp3QW9BQ2tBS2dBckFDd0FMUUF1QUM4QU1BQXhBRElBTXdBMEFEVUFOZ0EzQURnQU9RQTZBRHNBUEFBOUFENEFQd0JBQUVFQVFnQkRBRVFBUlFCR0FFY0FTQUJKQUVvQVN3Qk1BRTBBVGdCUEFGQUFVUUJTQUZNQVZBQlZBRllBVndCWUFGa0FXZ0JiQUZ3QVhRQmVBRjhBWUFCaEFHSUFZd0JrQUdVQVpnQm5BR2dBYVFCcUFHc0FiQUJ0QUc0QWJ3QndBSEVBY2dCekFIUUFkUUIyQUhjQWVBQjVBSG9BZXdCOEFIMEFmZ0IvQUlBQWdRQ0NBSU1BaEFDRkFJWUFod0NJQUFBQkJnQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBTUFBQUFBQVp3QUFBQUFBQUFBSWdBQU9nQUFBRG9BQUFBQUFFQUFPZ0JBQURvQVFBQUFBSUFBT2dDQUFEb0FnQUFBQU1BQU9nREFBRG9Bd0FBQUFRQUFPZ0VBQURvQkFBQUFBVUFBT2dGQUFEb0JRQUFBQVlBQU9nR0FBRG9CZ0FBQUFjQUFPZ0hBQURvQndBQUFBZ0FBT2dJQUFEb0NBQUFBQWtBQU9nSkFBRG9DUUFBQUFvQUFPZ0tBQURvQ2dBQUFBc0FBT2dMQUFEb0N3QUFBQXdBQU9nTUFBRG9EQUFBQUEwQUFPZ05BQURvRFFBQUFBNEFBT2dPQUFEb0RnQUFBQThBQU9nUEFBRG9Ed0FBQUJBQUFPZ1FBQURvRUFBQUFCRUFBT2dSQUFEb0VRQUFBQklBQU9nU0FBRG9FZ0FBQUJNQUFPZ1RBQURvRXdBQUFCUUFBT2dVQUFEb0ZBQUFBQlVBQU9nVkFBRG9GUUFBQUJZQUFPZ1dBQURvRmdBQUFCY0FBT2dYQUFEb0Z3QUFBQmdBQU9nWUFBRG9HQUFBQUJrQUFPZ1pBQURvR1FBQUFCb0FBT2dhQUFEb0dnQUFBQnNBQU9nYkFBRG9Hd0FBQUJ3QUFPZ2NBQURvSEFBQUFCMEFBT2dkQUFEb0hRQUFBQjRBQU9nZUFBRG9IZ0FBQUI4QUFPZ2ZBQURvSHdBQUFDQUFBT2dnQUFEb0lBQUFBQ0VBQU9naEFBRG9JUUFBQUNJQUFPZ2lBQURvSWdBQUFDTUFBT2dqQUFEb0l3QUFBQ1FBQU9na0FBRG9KQUFBQUNVQUFPZ2xBQURvSlFBQUFDWUFBT2dtQUFEb0pnQUFBQ2NBQU9nbkFBRG9Kd0FBQUNnQUFPZ29BQURvS0FBQUFDa0FBT2dwQUFEb0tRQUFBQ29BQU9ncUFBRG9LZ0FBQUNzQUFPZ3JBQURvS3dBQUFDd0FBT2dzQUFEb0xBQUFBQzBBQU9ndEFBRG9MUUFBQUM0QUFPZ3VBQURvTGdBQUFDOEFBT2d2QUFEb0x3QUFBREFBQU9nd0FBRG9NQUFBQURFQUFPZ3hBQURvTVFBQUFESUFBT2d5QUFEb01nQUFBRE1BQU9nekFBRG9Nd0FBQURRQUFPZzBBQURvTkFBQUFEVUFBT2cxQUFEb05RQUFBRFlBQU9nMkFBRG9OZ0FBQURjQUFPZzNBQURvTndBQUFEZ0FBT2c0QUFEb09BQUFBRGtBQU9nNUFBRG9PUUFBQURvQUFPZzZBQURvT2dBQUFEc0FBT2c3QUFEb093QUFBRHdBQU9nOEFBRG9QQUFBQUQwQUFPZzlBQURvUFFBQUFENEFBT2crQUFEb1BnQUFBRDhBQU9nL0FBRG9Qd0FBQUVBQUFPaEFBQURvUUFBQUFFRUFBT2hCQUFEb1FRQUFBRUlBQU9oQ0FBRG9RZ0FBQUVNQUFPaERBQURvUXdBQUFFUUFBT2hFQUFEb1JBQUFBRVVBQU9oRkFBRG9SUUFBQUVZQUFPaEdBQURvUmdBQUFFY0FBT2hIQUFEb1J3QUFBRWdBQU9oSUFBRG9TQUFBQUVrQUFPaEpBQURvU1FBQUFFb0FBT2hLQUFEb1NnQUFBRXNBQU9oTEFBRG9Td0FBQUV3QUFPaE1BQURvVEFBQUFFMEFBT2hOQUFEb1RRQUFBRTRBQU9oT0FBRG9UZ0FBQUU4QUFPaFBBQURvVHdBQUFGQUFBT2hRQUFEb1VBQUFBRkVBQU9oUkFBRG9VUUFBQUZJQUFPaFNBQURvVWdBQUFGTUFBT2hUQUFEb1V3QUFBRlFBQU9oVUFBRG9WQUFBQUZVQUFPaFZBQURvVlFBQUFGWUFBT2hXQUFEb1ZnQUFBRmNBQU9oWEFBRG9Wd0FBQUZnQUFPaFlBQURvV0FBQUFGa0FBT2haQUFEb1dRQUFBRm9BQU9oYUFBRG9XZ0FBQUZzQUFPaGJBQURvV3dBQUFGd0FBT2hjQUFEb1hBQUFBRjBBQU9oZEFBRG9YUUFBQUY0QUFPaGVBQURvWGdBQUFGOEFBT2hmQUFEb1h3QUFBR0FBQU9oZ0FBRG9ZQUFBQUdFQUFPaGhBQURvWVFBQUFHSUFBT2hpQUFEb1lnQUFBR01BQU9oakFBRG9Zd0FBQUdRQUFPaGtBQURvWkFBQUFHVUFBT2hsQUFEb1pRQUFBR1lBQU9obUFBRG9aZ0FBQUdjQUFPaG5BQURvWndBQUFHZ0FBT2hvQUFEb2FBQUFBR2tBQU9ocEFBRG9hUUFBQUdvQUFPaHFBQURvYWdBQUFHc0FBT2hyQUFEb2F3QUFBR3dBQU9oc0FBRG9iQUFBQUcwQUFPaHRBQURvYlFBQUFHNEFBT2h1QUFEb2JnQUFBRzhBQU9odkFBRG9id0FBQUhBQUFPaHdBQURvY0FBQUFIRUFBT2h4QUFEb2NRQUFBSElBQU9oeUFBRG9jZ0FBQUhNQUFPaHpBQURvY3dBQUFIUUFBT2gwQUFEb2RBQUFBSFVBQU9oMUFBRG9kUUFBQUhZQUFPaDJBQURvZGdBQUFIY0FBT2gzQUFEb2R3QUFBSGdBQU9oNEFBRG9lQUFBQUhrQUFPaDVBQURvZVFBQUFIb0FBT2g2QUFEb2VnQUFBSHNBQU9oN0FBRG9ld0FBQUh3QUFPaDhBQURvZkFBQUFIMEFBT2g5QUFEb2ZRQUFBSDRBQU9oK0FBRG9mZ0FBQUg4QUFPaC9BQURvZndBQUFJQUFBT2lBQUFEb2dBQUFBSUVBQU9pQkFBRG9nUUFBQUlJQUFPaUNBQURvZ2dBQUFJTUFBT2lEQUFEb2d3QUFBSVFBQU9pRUFBRG9oQUFBQUlVQUFPaUZBQURvaFFBQUFJWUFBT2lHQUFEb2hnQUFBSWNBQU9pSEFBRG9od0FBQUlnQUFBQURBQUFBQUFQQ0FkSUFEQUFaQUNZQU9rQTNDQVFIQWdZRkFBRUJBRlFJQkFjQ0JnVUFBQUZZQlFNQ0FRQUJUQnNhRGcwQkFDRWdHaVliSmhRVERSa09HUWNHQUF3QkRBa0ZGQ3NUTWg0QkZBNEJJaTRCTkQ0QklUSWVBUlFPQVNJdUFUUStBU0V5SGdFVURnRWlMZ0UwUGdHYUh6VWZIelUrTlI4Zk5RRjVIelVmSHpVK05SOGZOUUY1SURVZkh6VS9OUjhmTlFIUkh6VStOUjhmTlQ0MUh4ODFQalVmSHpVK05SOGZOVDQxSHg4MVBqVWZBQUFBQVFBQS83Y0Rtd01GQUM4QU5FQXhBQUlCQW04QUJRQUZjQU1CQVFBQUFWUURBUUVCQUZnRUJnSUFBUUJNQWdBcUp5SWZHaGNTRHdvSEFDOENMd2NGRkNzQklUSTJQUUUwSmlNaElpWTFFVFFtS3dFaUJoVVJGQVlqSVNJR0hRRVVGak1oTWhZVkVSUVdPd0V5TmpVUk5EWUNRUUU5REJFUkRQN0RDUW9TQ3pvTEVnb0ovc01NRVJFTUFUMEpDaElMT2dzU0NnRWtFZ3M2Q3hJS0NRRTlEQkVSRFA3RENRb1NDem9MRWdvSi9zTU1FUkVNQVQwSkNnQUFBQUFCQUFELytRTlhBc0VBTHdBb1FDVUNBUUFCQUc4RkFRTUVBM0FBQVFRRUFWUUFBUUVFV0FBRUFRUk1FeE1mRXhNV0JnVWFLd0UzTmpRdkFTWWlEd0VHSWk4QkppSVBBUVlVSHdFV0ZBOEJCaFFmQVJZeVB3RTJNaDhCRmpJL0FUWTBMd0VtTkFKVStna0pKZ2tYQ2Z3RkVBWDhDUmNKS0FrSi9BVUYvZ2tKS0FrWENmd0ZFQWI3Q1JjSktBa0orZ1VCYXZ3SUZ3a29DUW44QlFYK0NRa29DUmNKK3dZUUJmNEpGd2tvQ1FuOEJnYjhDUWtvQ1JjSi9BVVFBQVVBQUFBQUF3d0NpZ0FuQURjQVJ3QlhBR2NBZEVCeFlGQkFNQVFEQ1ZoSU9DZ0VDQVFDUndBQkFBSUpBUUpnRUFFQUR3MExBd2tEQUFsZ0FBTUFCQWdEQkdBT0RBb0RDQVVIQ0ZRQUJRQUdCd1VHWUE0TUNnTUlDQWRZQUFjSUIwd0NBR1JpWEZwVVVreEtSRUk4T2pReUxDb2lIeHdhRnhVVUVnOE5EQW9IQlFBbkFpY1JCUlFyQVNFaUJoMEJJeUlHRkJZN0FSVWpJZ1lVRmpzQkZTTWlCaFFXT3dFVkZCWXpJVEkyTlJFMEpnRVVCaXNCSWlZOUFUUTJPd0V5RmhVWEZBWXJBU0ltUFFFME5qc0JNaFlWRnhRR0t3RWlKajBCTkRZN0FUSVdGUmNVQmlzQklpWTlBVFEyT3dFeUZoVUN6ZjZJR1NRVUVCZ1lFQlFVRUJnWUVCUVVFQmdZRUJRbEdBRjRHU1lsL3NjRkJTZ0VCZ1lFS0FVRlVBVUZGQVFHQmdRVUJRVmtCUVVvQkFZR0JDZ0ZCVkFGQlJRRUJnWUVGQVVGQW9vakZ4WVhJUmhrRnlFWVpCY2hHQklYSnlrWkFlQVlIdjVtQkFZR0JOd0ZCUVVGM0FRR0JnVGNCUVVGQmR3RUJnWUUzQVVGQlFYY0JBWUdCTndGQlFVRkFBSUFBUCtRQXlzREx3QXhBRUVBUGtBN0FBSUJBQUVDQUcwR0FRQUZBUUFGYXdBREFBRUNBd0ZnQUFVRUJBVlVBQVVGQkZnQUJBVUVUQUlBUHp3M05DTWhHaGNSRHdBeEFqRUhCUlFySlNNaUpqMEJORFkzTmpjMk56WXVBU2NtQmdjR0J3NEJLd0VpSmpjK0FUYytBUmNlQVJjV0Z4WU9BUWNPQVIwQkZBWVhGQVlyQVNJbVBRRTBOanNCTWhZVkFpSmdDeEJIT2lRYUlnWUZKMGNySHpzWUpnWUNEd3hnRFJFQkJqQW5Mbk5BVG9Zb0tRTURNVjQrRFJBVEV4RU1ZQXNTRWd0Z0RCRjNFQXNkUFdRVURSc3FMeXROTUFFQkZoVWpNZ2tNRWcwMllTY3JMUUVEVVVKRVQwSjVYQmNGRlF3ZERCSEtDeElTQzJFTEVSRUxBQUFFQUFEL2tBT2JBeXdBSndBM0FFY0FWd0JqUUdBT0FRQUFEUUlBRFdBQUFRQUNEQUVDWUFBTUFBc0VEQXRnQUFNQUJBb0RCR0FBQ2dBSkJRb0pZQWdCQlFBR0J3VUdZQWdCQlFVSFdBQUhCUWRNQWdCVlVreEtSRUk5T2pVeUxDb2lIeHdhRnhVVUVnOE5EQW9IQlFBbkFpY1BCUlFyQVNFaUJoMEJJeUlHRkJZN0FSVWpJZ1lVRmpzQkZTTWlCaFFXT3dFVkZCWXpJVEkyTlJFMEpnTVVCaU1oSWlZOUFUUTJNeUV5RmhVM0ZBWWpJU0ltUFFFME5qTWhNaFlWTnhRR0l5RWlKajBCTkRZeklUSVdGUU5PL2I4Zkxqa1pJU0VaT1RrWklTRVpPVGtaSVNFWk9TNGZBa0VnTFMybUN3bis4d2dMQ3dnQkRRa0xKZ3NJL3FZSkN3c0pBVm9JQ3ljTENmNVpDQXNMQ0FHbkNRc0RMQzBnT2lFeUlKb2hNaUdaSVRJaE9oOHVMU0FEQWlBdC9YSUpDZ29KSmdrS0NnbDBDUXNMQ1NZSkNnb0ptZ2tLQ2dsekNRc0xDUUFBQUFBREFBQUFBQU9iQXJnQUR3QWZBQzhBUVVBK0FBRUdBUUFEQVFCZ0FBTUhBUUlGQXdKZ0FBVUVCQVZVQUFVRkJGZ0lBUVFGQkV3aUlCSVFBZ0FxSnlBdklpOGFGeEFmRWg4S0J3QVBBZzhKQlJRckFTRWlKajBCTkRZeklUSVdIUUVVQmdNaElpWTlBVFEyTXlFeUZoMEJGQVlESVNJbVBRRTBOak1oTWhZZEFSUUdBMzc4N0F3UkVRd0RGQXdSRVF6ODdBd1JFUXdERkF3UkVRejg3QXdSRVF3REZBd1JFUUpGRVF3NURCRVJERGtNRWY3aEVnczZDaEVTQ3pvS0VmN2VFUXc1REJFUkREa01FUUFDQUFEL2tBUENBeTBBSHdCRUFFaEFSUUFFQmdSdkFBWUZCbThJQVFVQUJXOENDUUlBQndCdkFBY0JCMjhBQVFNREFWUUFBUUVEV0FBREFRTk1BZ0EvUGpZekxpMHFLU0loR2hjU0R3b0hBQjhDSHdvRkZDc2xJeUlHSFFFVUJpTWhJaVk5QVRRbUt3RWlCaFVSRkJZeklUSTJOUkUwSmdFbUlnY0JCaFFmQVJZeVB3RTJNaFlWRVJRV093RXlOalVSTkRZZkFSWXlQd0UyTkNjRHBUb0xFaEVNL1lZTUVSSUxPZ3NSTFI4REFpQXRFdjVYQ0JnSS92d0lDQ2tJR0Foc0JSRU1FQXM2Q3hRV0Ntd0pGd2tvQ0FqK0VndkFEQkVSRE1BTEVoSUwvdndnTFM0ZkFRUUxFZ0ltQ0FqKy9BZ1lDQ2dKQ1dzR0N3aithQXNTRXdvQmxnMEpDV3NKQ1NnSkZ3Z0FBd0FBLzVBRHdnTXNBQlFBS1FBL0FFUkFRUUFFQXdVREJBVnRBQVVDQXdVQ2F3WUJBQUFEQkFBRFlBY0JBZ0VCQWxRSEFRSUNBVmdBQVFJQlRCWVZBUUE2T1RJdklCOFZLUllwQ3dvQUZBRVVDQVVVS3dFaUJ3WUhCaFFYRmhjV01qYzJOelkwSnlZbkpnTWlKeVluSmpRM05qYzJNaGNXRnhZVUJ3WUhCZ01tUFFFMEppc0JJZ1lkQVJRZkFSWXlQd0UyTkNjQjlIMXJhVDAvUHoxcGEvcHNhRDQvUHo1b2JIMWRVVTR2THk4dlRsRzZVVTR2THk4dlRsRWNCeElMT2dzU0NJNEpGd2tvQ1FrRExEOCthR3o2YkdnK1B6OCthR3o2YkdnK1AvellMeTlPVWJwUlRpOHZMeTlPVWJwUlRpOHZBVllJRGJrTEVoSUw2UWtNamdrSktBa1hDUUFBQXdBQS8vSUQ2QUxMQUNnQVR3QjdBQzFBS2pvR0FnUUFBVWNDQVFBRUFHOEFCQUVFYndNQkFRVUJid0FGQldaMGNWNWRTa2MzTlI4ZEtRWUZGU3NCSmpVME56WTNKaWNtSXlJSERnRVZGQmNXRlJRSEJnY0dCd1lISGdFN0FUSTJOelkzTmpjK0FTVW1KeVkxTkRjMk5UUW1KeVlqSWdjR0J4WVhGaFVVQndZV0Z4WVhIZ0U3QVRJMk5UWW5KZ1VtSnlZMU5EYytBVFUwSmljbUlnY09BUlVVRmhjV0ZSUUhCZ2NHQndZSEZCWXpJVEkyTlNZbkppY21BVElwR2hrc0VCc2RKQ2tmSFNBckhBa05JVDBnS1FFQ0pSNUFCdzRFRlNrY0xnMEdBaW9oREFvY0t4OGRIeW9rSFJ3UkxCa2FLUWNIREdRa0JBNEhRQjRsQVNjZy90VWtEZ3doRnhraUlDTmFJeUFpR1JjaEN3NGxTQ0F2QVM0aEFaQWhMZ0VXRXlVWkFUZzlUVUUzTkNJYkR4RVZFMFFvUWlVZUdCRU1FUTRiSFNVcklTb0lCeVlmRmhnR0dqRVBEd3dTSEJvblFDaEVFeFVSRHhzaU5EZEJUVDBNR1FZd1F3Y0lLaUVySlIxeEVCRU9FaDBmRmpzaUxFb1ZGeGNWU2l3aU94WWpHUlFNRVJBZkdTUXZJekl5SXlBYUZ4WU9BQUFDQUFEL3R3UENBd1VBRndBbkFEeEFPUUFCQXdGdkJRRUFCQUlFQUFKdEFBSUNiZ1lCQXdRRUExUUdBUU1EQkZnQUJBTUVUQmtZQWdBaEhoZ25HU2NTRHdvSEFCY0NGd2NGRkNzQklTSW1Md0V1QVNzQklnWVZFUlFXTXlFeU5qVVJOQ1luSVNJR0h3RVdNeUV5RnhZMk5UUW1BM1grU3hRa0MwTUxKQldESUN3c0lBTUNJQzB0SVA0d0JRVURIZ1lNQWFjaUdRWU1MUUpGRlJGMEVoUXRJUDFNSUMwdElBSDBJQzJhQ1FVMEN3d0RDQWNnTFFBQUJBQUEvOG9EbXdMeUFBOEFId0F2QUQ4QVUwQlFDQUVBQUFFQ0FBRmdDUUVDQUFNR0FnTmdDd0VHQUFjRUJnZGdDZ0VFQlFVRVZBb0JCQVFGV0FBRkJBVk1NakFpSUJJUUFnQTZOekEvTWo4cUp5QXZJaThhRnhBZkVoOEtCd0FQQWc4TUJSUXJBU0VpQmgwQkZCWXpJVEkyUFFFMEpnY2hJZ1lkQVJRV015RXlOajBCTkNZRElTSUdIUUVVRmpNaE1qWTlBVFFtSnlFaUJoMEJGQll6SVRJMlBRRTBKZ04rL093TUVSRU1BeFFNRVJFTS9ZWU1FUkVNQW5vTUVSRU0vWVlNRVJFTUFub01FUkVNL093TUVSRU1BeFFNRVJFQzhoSUxPZ3NSRVFzNkN4TG5FUXc1REJFUkREa01FZjR6RWdzNkN4SVNDem9MRXVZUkN6b01FUkVNT2dzUkFBQUFCd0FBQUFBRElBS0tBQThBSHdBdkFEOEFUd0JmQUc4QWprQ0xiV1VDRFF4TVJEdzBMQ1FkRlEwRkNnQUJYVlVDQ3dvRFJ3Z0dCQThDQlFFTkFBMEJBRzBTQ1JFSEVBVUREZ2dBQ2cwQUNtc1VBUXdBRFFFTURXQVRBUW9MQ3dwVUV3RUtDZ3RZQUFzS0MweGhZRkZRUUVBd01DQWdFUkFCQUdsbllHOWhiMWxYVUY5UlgwQlBRRTVJUmpBL01ENDROaUF2SUM0b0poa1hFQjhSSHdrSEFBOEJEeFVGRkNzM016STJOUkUwSmlzQklnWVZFUlFXQVNNaUJoVVJGQlk3QVRJMk5SRTBKZ0V5TmpVUk5DWXJBU0lHRlJFVUZqc0JNalkxRVRRbUt3RWlCaFVSRkJZekl6STJOUkUwSmlzQklnWVZFUlFXTXdVaElnWWRBUlFXTXlFeU5qMEJOQ1lESVNJR0hRRVVGak1oTWpZOUFUUW0zRElJREF3SU1nZ01EQUk0TWdnTURBZ3lDQXdNL3Y0SURBd0lQQWdNREFpMENBd01DQlFJREF3SThBZ01EQWdVQ0F3TUNBR2EvZEFJREF3SUFqQUlEQXdJL2RBSURBd0lBakFJREF5K0RBZ0JOZ2dNREFqK3lnZ01BVjRNQ1A3S0NBd01DQUUyQ0F6K29nd0lBVFlJREF3SS9zb0lEQXdJQVRZSURBd0kvc29JREF3SUFUWUlEQXdJL3NvSUREd01DQlFJREF3SUZBZ01BZ2dNQ0JRSURBd0lGQWdNQUFBQUFBTUFBQUFBQXlFQ2R3QWNBQ3dBVmdCVlFGSXhBUVFHSlIwQ0FnTUNSd0FGQndZSEJRWnRBQVlFQndZRWF3Z0JBQUFIQlFBSFlBQUVBQU1DQkFOZ0FBSUJBUUpVQUFJQ0FWZ0FBUUlCVEFFQVVVOUpSa0ZBTlRNcEp5RWZGQklBSEFFY0NRVVVLd0VpQndZSEJoVVVGeFlQQVFZV1B3RTJGeFl6TWpjMk56WTBKaWNtQXhRR0t3RWlKajBCTkRZN0FUSVdGVGNPQVIwQkZBWXJBU0ltUFFFMFBnRTNOaTRDQndZSERnRXJBU0ltTnpZM1BnRVhIZ0lYRmdZQjlGSkdReWdwSmdVREhBUVNERmdKQ0VoV1VrWkRLQ2xTUTBZMERBZ1VDQXdNQ0JRSURBZ0RCUXdJRkFnTUd5b0hFQVVpTGhRTkF3SUtCeFVKREFFSUdoRXRHUjgxSUFFQ0xRSjJKaVZBUVV4SVFRZ0lXUXdSQkI4REJTb21KVUJCbUlFbEp2NCtDQXdNQ0JRSURBd0lhd0VGQkJBSURRMElFQllsRHdzVkxoOEJFZzBQQndrUENTWVpFUklCQVNBMUh5ZEFBQVAvL3YrM0Erc0RDUUFPQUJjQUp3QTRRRFVnQVFNRUFVY0FCQU1FYndBREFBSUJBd0pnQlFFQkFBQUJWQVVCQVFFQVdBQUFBUUJNRUE4a0loMGFGQk1QRnhBWE9RWUZGU3NsQVM0QkJnY0JCaDRCTXlFeVBnRWxJaVkwTmpJV0ZBWTNGQVlyQVNJbVBRRTBOanNCTWhZVkE5MytSd3NsSlF2K1NBMEdJQmNEY0JnaEJ2NEpHU0VoTWlFaElRc0lUUWtMQ3dsTkNBc2hBc2NURGc0VC9Ua1dNaUlpTWtZaE1pQWhNQ0t0Q1FvS0Nmb0lDd3NJQUFBQ0FBRC9rQVBDQXkwQUhRQXFBQ1JBSVFRQkFnTUNid0FEQVFOdkFBRUFBVzhBQUFCbUh4NGxKQjRxSHlvck13VUZGaXNsRlJRR0l5RWlKajBCTkRjMlB3RTJGeFl6TWpZM05oOEJGaGNXRnhZQk1oNEJGQTRCSWk0Qk5ENEJBOEkzSnYwZUpUZFFPWFFNRUExTVdTdFZKZzBQREUwdVFDQW4vakkrYWowOWFueHFQVDFxRnlvbE9EY21La3RBTFRNR0JRY3lHaGdIQlFZaEd5UW5Md0xnUkhXS2RVUkVkWXAxUkFBQUFRQUEvK3dDMndMTUFBd0FDcmNBQUFCbUV3RUZGU3NsRVRRK0FSY0JGaFFIQVFZbUFRME9GQWtCbHd3TS9ta09IUW9DcUFvT0FRZitzd2dmQ2Y2dkNnNEFBQUFDQUFEL2tBUENBekFBSXdBdkFEdEFPQUFCQUFGdkFnWUNBQUFEQkFBRFlBY0JCQVVGQkZRSEFRUUVCVmdBQlFRRlRDWWtBZ0FyS2lRdkppOGVHeFlUREFvQUl3SWpDQVVVS3lVaklpWTlBVFFuSmljbUJ3WUhEZ0VkQVJRR0t3RWlCaDBCRkJZeklUSTJQUUUwSmdVaklnWVhIZ0V5TmpjMkpnTjFDaHNvTEN4SlMxZFJSVUpOSnh3S0h5MFJDd05pQ3hJdC9yMjhDUXdDQjBCVVFBZ0JETmNvSE4xV1NVY29LUU1FTFN1UFU5VWNKaTRnSFFzUUVRd2RIeTNURHdnb05UWW5DUTRBQUFFQUFQK1FBOFFETEFBaUFDeEFLUUFGQUFWdkJBWUNBQUlBYndBQ0FRSnZBd0VCQVdZQkFCMGNGUlFRRGdzS0J3UUFJZ0VpQndVVUt3RWpFUlFHS3dFaUpqVVJJeEVVQmlzQklpWTFFU01pSmljbU53RTJNaGNCRmdjR0E2NWdDZ25BQ1F2bUN3bkFDQXRnQmdzQkJBZ0J1d1VTQkFHNkNBUURBVXYrV1FrTEN3a0JSLzY1Q1FzTENRR25CZ1VNQ2dHNkJnYitSZ2dPQ3dBQUFBUUFBUCtRQThJRExBQVZBQ3dBUXdCYUFKTkFFRkpKRGdVRUFBRTdNaVFiQkFNQ0FrZExzQWxRV0VBWkJnRUJBQUZ2QndnQ0FBSUFid1VKQWdJREFtOEVBUU1EWmh0THNBcFFXRUFkQUFZQkJtOEFBUUFCYndjSUFnQUNBRzhGQ1FJQ0F3SnZCQUVEQTJZYlFCa0dBUUVBQVc4SENBSUFBZ0J2QlFrQ0FnTUNid1FCQXdObVdWbEFHeGdXQWdCWlZreExRajgxTkNJaEZpd1lMQXdMQUJVQ0ZRb0ZGQ3NCSVRJMkx3RTNOalF2QVNZR0R3RW5KZ1lWRVJRV0J5RWlCaDhCQndZVUh3RVdNajhCRng0Qk5qVVJOQ1lYRVJRV1B3RVhGakkvQVRZbUx3RTNQZ0VtSXlFaUJpY1JOQ1lQQVNjbUlnOEJCaFFmQVFjT0FSWXpJVEkyQWprQktBOEdDMTZ0Q0FoSENCUUpyV0lMR1JTQS90Z1BCZ3RlclFjSFJ3Z1VDYTlpQmhFTUZXSVpDMkN2Q0JZSFJ3WUJCNjFlQ0FJS0NmN1hDaEpOR2d0Z3J3Y1dDRWNIQjY5ZUNBUUtDZ0VtQ2hjQmhSa0xZSzhJRmdkSEJnRUhyVjRNQnc3KzF3b1NUUm9MWUs4SEZnaEhCd2V2WGdnRUNnb0JKZ29YSC83WUR3WUxYcTBIQjBjSUZBbXRZZ2NTREJXQUFTZ1BCZ3RlclFnSVJ3Y1ZDYTlpQmhBTUZBQURBQUQvcEFQQUF4b0FMQUE1QUYwQWxrQU9IQUVIQ0RvQkJBYy9BUVVFQTBkTHNCRlFXRUF1QUFBQ0FHOEpBUWNJQkFnSFpRWUJCQVVGQkdNS0FRSUFDQWNDQ0dBQUJRRUJCVlFBQlFVQldRTUJBUVVCVFJ0QU1BQUFBZ0J2Q1FFSENBUUlCd1J0QmdFRUJRZ0VCV3NLQVFJQUNBY0NDR0FBQlFFQkJWUUFCUVVCV1FNQkFRVUJUVmxBR2k0dFcxbFdVMUJPU1VkRVFUNDhORE10T1M0NUtDVWRDd1VWS3lVME5qYzJOelkzTmpjK0FTNEJEZ0VIQmhjV0Z4WVhGZ2NHQndZSE5nY0dCd1lIQmg0Qk15RXlOaWN1QVFFaURnRVVIZ0V5UGdFMExnRVhGQVlyQVJVVUJpc0JJaVk5QVNNaUpqMEJORFk3QVRVME5qc0JNaFlkQVRNeUZoVUJwUmdVRGhRR0hCUUxKQTB0Wm9CaEZCZ05EVElaREE0S0JoRU5GUWNyU2ljNUN3Y1pPaVlCUndzTEJ5UW5BVFErYXo0K2EzeHJQajVyTnd3Sk9Bd0pKZ2tKT3drSkNRazdDUWttQ1F3NENReUxKbFFqR1JjSUhSWVFOWXQxUWdOSU8wUkVTUzhZR2lBY0VROExDd1FWSVI0dE95UkZLeFlJS21nQkhUNXFmR28vUG10OGFqNzZDQXM2Q0FzS0NUb0tDU2NKQ2pvSkNnc0lPZ3NJQUFBSkFBRC90d09iQXdVQUR3QWZBQzhBUHdCUEFGOEFid0IvQUk4QWlFQ0ZHQXdWQmhJRkFBMEhBZ0VFQUFGZ0doQVhDaFFGQkJFTEFnVUNCQVZnR1E0V0NCTUZBZ01EQWxRWkRoWUlFd1VDQWdOWUR3a0NBd0lEVElLQWNuQmlZRkpRUWtBeU1DSWdFaEFDQUlxSGdJK0NqM3AzY0g5eWYycG5ZRzlpYjFwWFVGOVNYMHBIUUU5Q1R6bzNNRDh5UHlvbklDOGlMeG9YRUI4U0h3b0hBQThDRHhzRkZDc1RJeUlHSFFFVUZqc0JNalk5QVRRbUF5TWlCaDBCRkJZN0FUSTJQUUUwSmdNaklnWWRBUlFXT3dFeU5qMEJOQ1lCSXlJR0hRRVVGanNCTWpZOUFUUW1BeU1pQmgwQkZCWTdBVEkyUFFFMEpnTWpJZ1lkQVJRV093RXlOajBCTkNZQkl5SUdIUUVVRmpzQk1qWTlBVFFtQXlNaUJoMEJGQlk3QVRJMlBRRTBKZ01qSWdZZEFSUVdPd0V5TmowQk5DYjZjeGtoSVJsekdTRWhHWE1aSVNFWmN4a2hJUmx6R1NFaEdYTVpJU0VCRzNRWUlTRVlkQmdoSVJoMEdDRWhHSFFZSVNFWWRCZ2hJUmgwR0NFaEFSdHpHU0VoR1hNWklTRVpjeGtoSVJsekdTRWhHWE1aSVNFWmN4a2hJUU1GSVJsekdTRWhHWE1aSWYyWklSbHpHU0VoR1hNWklRRXpJUmgwR0NFaEdIUVlJUUUwSVJsekdTRWhHWE1aSWYyWklSbHpHU0VoR1hNWklRRXpJUmgwR0NFaEdIUVlJUUUwSVJsekdTRWhHWE1aSWYyWklSbHpHU0VoR1hNWklRRXpJUmgwR0NFaEdIUVlJUUFBQUFVQUFQK1FBNXNETEFBUkFDRUFNUUJCQUZFQVlFQmRPaklDQWdnQlJ3QUNDQWNJQWdkdEN3RUFBQUVEQUFGZ0FBTUFCZ1VEQm1BQUJRQUtDUVVLWUFBSkFBZ0NDUWhnQUFjRUJBZFVBQWNIQkZnQUJBY0VUQUlBVDB4SFJEODhOelF2TENja0h4d1hGQXdLQndVQUVRSVJEQVVVS3dFaElnWWRBU0V5RmhVUk16STJOUkUwSmdNMEppTWhJZ1lWRVJRV015RXlOalVCRkFZckFTSW1QUUUwTmpzQk1oWVZFeFFHSXlFaUpqMEJORFl6SVRJV0ZUY1VCaU1oSWlZOUFUUTJNeUV5RmhVRFR2NE1IeTRCemlBdEppQXRMWk10SVA0TUlDMHVId0gwSUMzK3Bnc0ptUWtMQ3dtWkNRdWFDd24relFrTEN3a0JNd2tMVEFvSi9vQUpDd3NKQVlBSkNnTXNMU0FuTFNEOTVpMGdBa0VnTGY3eUlDMHRJUDIvSHk0dUh3RzdDUW9LQ1NZSkNnb0ovcVlJQ3dzSUp3Z0xDd2h6Q1FvS0NTWUpDd3NKQUFNQUFQL2RBOElDM3dBUEFDTUFMQUJMUUVnQUF3WUZCZ01GYlFnQkJRUUdCUVJyQUFRQ0JnUUNhd0FBQUFZREFBWmdCd0VDQVFFQ1ZBY0JBZ0lCV0FBQkFnRk1KU1FTRUNrb0pDd2xMQjhlRnhZUUl4SWpOVElKQlJZckFUUW1JeUVpQmhVUkZCWXpJVEkyTlNjaElpWTNFell5SHdFZUFUOEJOaklmQVJZR0F5SW1ORFl5RmhRR0E4SXRJUHorSHkwdEh3TUNJQzNJL2RJUkVRbXBCaFVHWmdVV0JWTUdGUWFZQ0ExQ0lDMHRRQzB0QXBJZ0xTMGcvWmdnTFM0ZlRSNFBBU1lLQ3E4SkFnbDNDUW55RGhrQldpMUFMUzFBTFFBQUFBQURBQUQva0FQQ0F5d0FBZ0F5QUZjQVhrQmJFQUVCQWdGSEFBWURDQU1HQ0cwQUNBY0RDQWRyQ2dFSEFnTUhBbXNBQ1FFSmNBc0JBQUFEQmdBRFlBUUJBZ0VCQWxRRUFRSUNBVmdGQVFFQ0FVd0ZBMWRXVGt0R1JVSkJPamt0S2lVaUhSb1ZFZzBLQXpJRk1nd0ZGQ3MzTlJVQklTSUdGUkVVRmpzQk1qWTlBVFFtS3dFaUpqVVJORFl6SVRJV0ZSRVVCaXNCSWdZZEFSUVdPd0V5TmpVUk5DWUROelkwTHdFbUlnOEJCaFFmQVJZeVB3RTJNaFlWRVJRV093RXlOalVSTkRZZkFSWXltZ0xiL1A0ZkxTMGY1d2tLQ2dtakRCRVJEQUo2REJFUkRLTUpDZ29KNXlBdExjUXBDQWp6Q0JnSThBa0pLQWdZQ0ZrRkVRd1FDem9MRkJZS1dRZ2FzUXdZQW9jdElQMUxJQzBMQ1UwSUN4RU1BZUFNRVJFTS9pQU1FUXNJVFFrTExoOEN0U0F0L1kwb0NSY0k4d2dJOFFnWENTZ0pDVmdHQ3dqK3B3c1NFZ3NCV1EwSkNWb0hBQUFEQUFEL2tnT2xBeW9BREFCWUFHVUFkRUJ4S1J3Q0NRSU9BUUVBVDBJQ0J3Z0RSd1FCQWdNSkF3SUpiUW9CQUFrQkNRQUJiUUFCQ0FrQkNHc0FCd2dGQ0FjRmJRQUZCZ2dGQm1zQUF3QUpBQU1KWUFzQkNBY0dDRlFMQVFnSUJsZ0FCZ2dHVEZwWkFRQmdYMWxsV21WVFVVcEhRRDR0S3lRaEdSZ0hCZ0FNQVF3TUJSUXJBU0lPQVJRZUFUSStBVFF1QVFFbk5qUW5OejRCTHdFdUFTTWlEd0VtTHdFdUFTc0JJZ1lQQVFZSEp5WWpJZ1lQQVFZV0h3RUdGQmNIRGdFZkFSNEJNekkvQVJZZkFSNEJPd0V5Tmo4Qk5qY1hGak15Tmo4Qk5pWUZJaTRCTkQ0Qk1oNEJGQTRCQWZZbFBpUWtQa28rSkNRK0FXOUhCUVZIRWdrTUh3Z2VFUVlQV1RJL0VBUWpHRDRZSXdRUU9qbFlFQVlSSGdnZkRBZ1RSd1VGUnhJSkRCOElIaEVOQ1ZneVB4QUZJaGcrRnlRRUVFUXpVdzRKRVI0SUhRMEkvbG82WVRrNVlYUmhPVGxoQWVNa1BrbzlKQ1E5U2o0ay93QThHazRhUEE4dUZEWU9FQU1oTFJSYkZob2FGbGtTTHlBRUVBNDJGQzhPUENNOEl6d1BMaFEyRGhBRElTMFVYUmNkSHhkZEZ6QWhCQkVPTWc4dFN6bGdkR0U1T1dGMFlEa0FBQUFBQXdBQS80OER3Z01zQUNNQVJBQlJBR2hBWlNVQkNRUTlBUWNKQWtjQUFRb0FDZ0VBYlFBRUF3a0RCQWx0QUFnSENIQUFCZ0FLQVFZS1lBSUxBZ0FGQVFNRUFBTmdEQUVKQndjSlZBd0JDUWtIV0FBSENRZE1Sa1VCQUV4TFJWRkdVVUEvT2pndkxoNGNHQllURVFzS0J3UUFJd0VqRFFVVUt3RWpOVFFtS3dFaUJoMEJJeUlHSFFFVUZqc0JGUlFXT3dFeU5qMEJNekkyUFFFMEpnRW5OamMyTlRRbkppY21JZ2NHQndZVUZ4WVhGak15TnpZM0Z4WXlQd0UrQVNVaUxnRTBQZ0V5SGdFVURnRUNWSE1MQ0UwSkMzTUlDd3NJY3dzSlRRZ0xjd2tLQ2dGZDNTUVRGRFV6VjFyUVdsY3pORFV6VjFsb1BqdzRNZDBKRndrb0NRSDk1VWw3U1VsN2tudEpTWHNCNVhNSkNnb0pjd3NKVEFrTGN3a0tDZ2x6Q3dsTUNRditDTnN5T0RzK2FGcFhNelUxTTFkYTBGcFhNelVVRXlUZENBZ29DUm04U1h1U2UwbEplNUo3U1FBQUNBQUFBQUFEREFLS0FBOEFMd0EvQUU4QVh3QnZBSDhBandDUVFJMGREUUlBQW9pQVdGQUVDZ3Q0Y0VoQUJBZ0phR0E0TUFRR0J3UkhCQk1DQWdFQUFRSUFiUUFCRWdFQUF3RUFZQUFERVFFTENnTUxZQkFCQ2c4QkNRZ0tDV0FPQVFnTkFRY0dDQWRnREFFR0JRVUdWQXdCQmdZRldBQUZCZ1ZNRVJBQkFJeUtoSUo4ZW5SeWJHcGtZbHhhVkZKTVNrUkNQRG8wTWlvbkloOGFGeEF2RVM4S0J3QVBBUThVQlJRckFUTXlOajBCTkNZckFTSUdIUUVVRmlVaklnWWRBUlFHS3dFaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1BUlFHS3dFaUpqMEJORFk3QVRJV0ZUVVVCaXNCSWlZOUFUUTJPd0V5RmhVMUZBWXJBU0ltUFFFME5qc0JNaFlWQlJRR0t3RWlKajBCTkRZN0FUSVdGVFVVQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVkFZYmNDQXdqR1l3Wkl3d0JVaFFFQmk4aDNDRXZCUVVVR1NNakdRRzRHU01qL3AwTUNCUUlEQXdJRkFnTURBZ1VDQXdNQ0JRSURBd0lGQWdNREFnVUNBd0JHQXdJeUFnTURBaklDQXdNQ01nSURBd0l5QWdNREFqSUNBd01DTWdJREFJU0RBZ29HU01qR1NnSURFWUZCU2doTHk4aEtBVUZJeG4rVWhrakl4a0JyaGtqL2xJSURBd0lGQWdNREFoUUNBd01DQlFJREF3SVVBZ01EQWdVQ0F3TUNOd0lEQXdJRkFnTURBaFFDQXdNQ0JRSURBd0lVQWdNREFnVUNBd01DQUFBQUFBQkFBRC9vd005QXhnQUpRQWhRQjRBQXdFRGJ3VUJBUUlCYndRQkFnQUNid0FBQUdZVEZUVVRGeFVHQlJvck53WVVGd0VXTWpjQk5qUXZBU1lpRHdFR0lpWTFFVFFtS3dFaUJoVVJGQVlpTHdFbUlnZTVEQXdCSUF3ZkN3RWlEQXcxREI4TFd3Y1VEeGNQVFJBWER4UUhXd3NmQy80TEhndis1UXNMQVJzTEhnczBDd3RaQnc0TEFnY1BGeGdPL2ZrTERnZFpDd3NBQUFRQUFQK2NBNlVETFFBeEFEb0FRd0JYQURsQU5pUWZEd01DQUFGSEFBVUFCVzhBQUFJQWJ3UUJBZ0VDYndjREJnTUJBV1k4T3pNeVJrVkFQenREUEVNM05qSTZNem9pSVFnRkZDc2xKZ2NCTGdFUEFRNEJGeE1XRkE4QkpnY09BUWNHRmhjV056NEJOelltSnpjMk1oOEJEZ0VYSGdFWEZqYytBU2N1QVFVaUpqUTJNaFlVQmlFaUpqUTJNaFlPQVFNV01qOEJOaVluTndjbUx3RW1CZzhCQmhRWEF3OHRMdjVYQkJFR0R4a0hFOHNHQm0wcU1UVk1Cd2MxTURNNU0wNExCd3dTVVFnZUNGRVNEQWNLVGpRNU16QTFCdzFPL2JZWklTRXlJU0VCMnhraElUSWhBU0twQmhNR21oQUNFQUlDQWc0TkJoQUZxUVlHOWdzUkFqUUdBd1VNRXo0YS92SUhGQWVSRUFvTFVEVTRZQmdhQ2doSk15TkJHV3dMQzJ3Y1FDRXpTUWdLR2hoZ09EZFAxeUV5SVNFeUlTRXlJU0V5SVFIU0J3ZktGVFFWQWdJRUN3b0VBZ2JoQnhRSUFBVUFBUCtRQThJRExBQWpBRG9BU2dCYUFHb0FlMEI0QUFZTkRBMEdERzBBQVF3SkRBRUpiUUFKQ0F3SkNHc0FCQU1FY0FBSEFBc0tCd3RnQUFvQUR3NEtEMkFBRGdBTkJnNE5ZQUFNQUFnQURBaGdBaEFDQUFNREFGUUNFQUlBQUFOWUJRRURBQU5NQVFCb1pWOWRXRlZQVFVkRlB6MDZPRFV6TGlzb0poNGNHUllURVF3S0J3UUFJd0VqRVFVVUt5VWpOVFFtS3dFaUJoMEJJeUlHSFFFVUZqc0JGUlFXT3dFeU5qMEJNekkyUFFFMEppVTBOanNCRVRRbUl5RWlCaFVSRkJZeklUVTBOanNCQVJRR0t3RWlKajBCTkRZN0FUSVdGUk1VQmlNaElpWTlBVFEyTXlFeUZoVTNGQVlqSVNJbVBRRTBOak1oTWhZVkE2VlhFUXc1REJGWEN4SVNDMWNSRERrTUVWY0xFaEwrM2hFTU1DMGcvZVVmTFMwZkFhZ1JDMWYrcGdzSWRBZ0xDd2gwQ0F2bkN3bitwZ2dMQ3dnQldna0xUQW9KL2xrSUN3c0lBYWNKQ25kWEN4SVNDMWNSRERrTUVWY0xFaElMVnhFTU9Rd1JwQXNTQWFjZ0xTMGcvZVVnTFRBTUVRRzdDUXNMQ1NZSkNnb0ovcVlKQ2dvSkpna0xDd2wwQ1FzTENTWUpDZ29KQUFBQUFnQUEvN2NEeUFNRkFCVUFKZ0JoUzdBS1VGaEFJd0FCQUFBQll3VUJBd0lFQWdNRWJRQUVCRzRBQUFJQ0FGUUFBQUFDVndBQ0FBSkxHMEFpQUFFQUFXOEZBUU1DQkFJREJHMEFCQVJ1QUFBQ0FnQlVBQUFBQWxjQUFnQUNTMWxBRGhnV0lSNFdKaGdtRXpreUJnVVhLd0UwSmlNaElpY21Md01tSnlZckFTSUdIUUVoRnlFaURnRVhFeDRCTXlFeU5qY1ROaVlEVGkwZy91WVFFUTBNQ2pBSUNnd1JGRWtnTFFLME9QemNFeDROQkc0R0lCUUNTaFVoQkc0RkpRSXlJQzBLQndzS09nb0xCd290SUsxTkZTSVMvbXdURnhjVEFaUWNMUUFBQUFBRkFBRC90d1BDQXdVQUR3QWZBQzhBUHdCUEFGNUFXd3NDQ2dNQUFBTUVBQU5nREFFRUFBVUdCQVZnRFFFR0FBY0lCZ2RnRGdFSUFRRUlWQTRCQ0FnQldBa0JBUWdCVEVKQU1qQWlJQklRQWdCS1IwQlBRazg2TnpBL01qOHFKeUF2SWk4YUZ4QWZFaDhLQndBUEFnOFBCUlFyQVNFaUJoVVJGQll6SVRJMk5SRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUhJeUlHSFFFVUZqc0JNalk5QVRRbUJ5TWlCaDBCRkJZN0FUSTJQUUUwSmdjaklnWWRBUlFXT3dFeU5qMEJOQ1lEcGYzNURCRVJEQUlIQ3hJUy9XZlVDeEVSQzlRTEVoSUwxQXNSRVF2VUN4SVNDOVFMRVJFTDFBc1NFZ3ZVQ3hFUkM5UUxFaElEQlJFTS9Pd01FUkVNQXhRTUVSRU1ZQXNTRWd0Z0RCSG5FUXRoQ3hFUkMyRUxFZVlTQzJBTUVSRU1ZQXNTNXhJTFlBd1JFUXhnQ3hJQUFBUUFBUCtQQThJRExBQUpBQk1BTkFCQkFFaEFSUlVCQndBdEFRVUhBa2NBQmdVR2NBQUVBQWdCQkFoZ0FnRUJBd0VBQndFQVlBa0JCd1VGQjFRSkFRY0hCVmdBQlFjRlREWTFQRHMxUVRaQkZTa2JKaEVsSUFvRkd5c0JNekkyUFFFMEppc0JNU01pQmgwQkZCWTdBUUVuTmpjMk5UUW5KaWNtSWdjR0J3WVVGeFlYRmpNeU56WTNGeFl5UHdFK0FTVWlMZ0UwUGdFeUhnRVVEZ0VCYmVjSkNnb0o1M01JQ3dzSWN3Sk4zU1FURkRVelYxclFXbGN6TkRVelYxbG9Qanc0TWQwSkZ3a29DUUg5NVVsN1NVbDdrbnRKU1hzQmNRc0pUQWtMQ3dsTUNRditldDB5T0RzK2FGcFhNelUxTTFkYTBGcFhNelVVRXlUZENBZ29DUm04U1h1U2UwbEplNUo3U1FBRUFBQUFBQU1OQW5nQUVnQWlBRElBT3dCYVFGY1BBUU1CUmdBRkJ3WUhCUVp0Q1FFR0F3Y0dBMnNBQXdRSEF3UnJBQVFDQndRQ2F3Z0JBQUFIQlFBSFlBQUNBUUVDVkFBQ0FnRllBQUVDQVV3ME13SUFPRGN6T3pRN0xpMG1KUjRkRmhVS0NRQVNBaElLQlJRckFTTW1Cd0VHRkI4QkZqSTNBVDRCSnpVMEpnTUhCaUl2QVNZMFB3RTJNaDhCRmhRM0J3WWlMd0VtTkQ4Qk5qSWZBUllVTnlJbU5EWXlGaFFHQXREYkV4SCs5QkVSMUJFeUVnRVBDQWdCSS9FT0JoQUdpQVlHRGdZUUJvZ0dTZzRHRUFhSUJnWU9CaEFHaUFZeUZSMGRLaDBkQW5ZQkVmN3pFVElTMUJFUkFSQUlGZ3JTR1NQK1NBNEdCb2dHRUFZT0JnYUlCaEJLRGdZR2lBWVFCZzRHQm9nR0VLUWRLaDBkS2gwQUNBQUFBQUFESUFLS0FCWUFKZ0EyQUVZQVZnQm1BSFlBaGdDVVFKRUZBUUVBUHpjdkp3UUZCbDlYVDBjRUNRb05BUUlPZDJjQ0RRSUZSMzl2QWdJQlJnQUNEZzBPQWcxdEVRRUFBQUVEQUFGZ0VnRURDQUVHQlFNR1lBY0JCUXdCQ2drRkNtQUxBUWtRQVE0Q0NRNWdEd0VOQkFRTlZBOEJEUTBFV0FBRURRUk1HQmNDQUlPQmUzbHpjV3RwWTJGYldWTlJTMGxEUVRzNU16RXJLU0FkRnlZWUpSRVBDZ2NBRmdJV0V3VVVLd0VoSWdZZEFSUVdNeUV5RmhVUkZCWXpNalkxRVRRbUJTSUdGUkVVRmpNaE1qWTFFVFFtSXdjVUJpc0JJaVk5QVRRMk93RXlGaFVYRkFZckFTSW1QUUUwTmpzQk1oWVZCeFFHS3dFaUpqMEJORFk3QVRJV0ZSY1VCaXNCSWlZOUFUUTJPd0V5RmhVSEZBWXJBU0ltUFFFME5qc0JNaFlWRnhRR0t3RWlKajBCTkRZN0FUSVdGUUxrL3NBWkl3WUVBU0laSXdZRUhTa2ovaHNaSXlNWkFVQVpJeU1aOEF3SUZBZ01EQWdVQ0F6Y0RBaU1DQXdNQ0l3SUROd01DQlFJREF3SUZBZ00zQXdJakFnTURBaU1DQXpjREFnVUNBd01DQlFJRE53TUNJd0lEQXdJakFnTUFvb2pHUW9FQmlNWi9zb0VCaWtkQVVvWkk0d2pHZjZzR1NNakdRRlVHU09NQ0F3TUNCUUlEQXdJRkFnTURBZ1VDQXdNQ0hnSURBd0lGQWdNREFnVUNBd01DQlFJREF3SWVBZ01EQWdVQ0F3TUNCUUlEQXdJRkFnTURBZ0FBQUFIQUFEL2FnTnJBMUlBRFFBUkFCVUFHUUFkQUM0QU53QjBRSEVuREFJTEFBRkhMd0VBUlF3T0Fnc0FDZ0FMQ20wQUNnSUFDZ0pyQUFJREFBSURhd0FEQUFRRkF3UmVBQVVBQmdjRkJsNEFCd0FJQ1FjSVhnMEJBQUFNU0FBSkNRRllBQUVCRFFGSkhoNEJBRGMxSGk0ZUxTQWZIUndiR2hrWUZ4WVZGQk1TRVJBUERna0dBQTBCRFE4RkZDc1RJZ1lWRVJRV015RXlOalVSQ1FFaEZTRVZJUlVoRlNFVklSVXpGU01CRlNNbkppY21KeVkzRnhZWEZoY1dNd01WRkJjV0Z4WTdBVkFoTHk4aEFzc2hMLzdaL2xvQlVmNnZBVkgrcndGUi9xL0F3QUxOeUJBU0VCVU1Ed0VDQXdnS0VoWWZYQWNLRXhja3lBTlNMeUg4dUNFdkx5RUNXd0U5L2JnaEtpRXFJU29oQWdzUEJBY0tEUklYSFE0UkRSUUxEZ0UvNUJFU0dBNFNBQVlBQVAvZEE4SUMzd0FQQUI4QUx3QS9BRThBWHdCcFFHWU5BZ3dEQUFBREJRQURZQUFGRGdRQ0FRWUZBV0FRQ0E4REJnQUpDZ1lKWUJFQkNnY0hDbFFSQVFvS0IxZ0xBUWNLQjB4U1VFSkFNakFpSUJJUUFnQmFWMUJmVWw5S1IwQlBRazg2TnpBL01qOHFKeUF2SWk4YUZ4QWZFaDhLQndBUEFnOFNCUlFyQVNNaUJoMEJGQlk3QVRJMlBRRTBKaWtCSWdZZEFSUVdNeUV5TmowQk5DWUJJVEkyUFFFMEppTWhJZ1lkQVJRV0J5TWlCaDBCRkJZN0FUSTJQUUUwSmlrQklnWWRBUlFXTXlFeU5qMEJOQ1lISVNJR0hRRVVGak1oTWpZOUFUUW1BUmZVQ3hFUkM5UUxFaElDZy8zNURCRVJEQUlIQ3hJUy9lNEJSZ3dSRVF6K3Vnd1JFWHZVQ3hFUkM5UUxFaElDZy8zNURCRVJEQUlIQ3hJU3pQNjZEQkVSREFGR0RCRVJBdDhTQy9vTUVSRU0rZ3NTRWdzNkN4SVNDem9MRXY3TUVRdzZDeEVSQ3pvTUVab1JEUG9MRWhJTCtnd1JFUXc1REJFUkREa01FY0FTQ3pvTEVoSUxPZ3NTQUFBQ0FBRC9rQU4xQXl3QUZ3QWxBQ2xBSmdNQkFRUUJid0FFQUFSdkJRRUFBZ0J2QUFJQ1pnSUFJaUFiR2hJUENnY0FGd0lYQmdVVUt3RWpJaVk5QVRRbUl5RWlCaFVSRkJZeklUSTJOUkUwSmpjbkppSUdIUUVVRmpzQk1qWTBBMWJYSmlzU0RmN0JKVGc0SlFKSUpqY1NETXdHRkE0bkdxUUlEUUhsS3lYWURSSTNKdjBlSlRnNEpRSFpEUkoxekFZTkNhTWFKdzRVQUFFQUFQK1FBOElETEFBckFCMUFHaU1CQWdBQlJ3QUJBQUZ2QUFBQ0FHOEFBZ0ptSFNvVkF3VVhLd0V1QVE4QkJpSXZBU1kwUHdFMkppY21JeUlHQndZWEZoY0JEZ0VXRng0Qk1qWTNBUllYRmpjK0FUVTBBN1lERUFpY0NCa0piZ2dJbmdZRUNDZ3FVWVlpSkFvSERQNllGUTRPRlJBcEtDa1FBV1liTGxKSVJsUUNad2tEQnB3SUNHNEpHUWljQmhBRkRGUkdTRklzSGY2YUZUZzNGQkFSRVJBQlpnd0hDaVFpaGxFckFBQUFBUUFBLzZRREtBTVpBQ1VBSVVBZUFBQUNBRzhFQVFJQkFtOEZBUUVEQVc4QUF3Tm1FeFUxRXhjVkJnVWFLd0UyTkNjQkppSUhBUVlVSHdFV01qOEJOaklXRlJFVUZqc0JNalkxRVRRMk1oOEJGakkzQXh3TURQN2dEQjhML3Q4TEN6WU1Id3RiQnhRUEZ3OU5EeGdQRkFkYURCOExBYjRNSFFzQkd3c0wvdVVMSFF3MEN3dFpCdzRML2ZrUEZ4a05BZ2NMRGdkWkN3c0FBQUFBQVFBQS80Y0R5d016QUVjQUVVQU9BQUVBQVc4QUFBQm1FeEVDQlJZckpSWTJQd0UrQVJZVUR3RU9BU1l2QVM0Qk5qY0JQZ0VXSHdFZUFRWVBBUTRCRnhZWEhnRTJQd0UrQVNZbkl5NEJCZ2NCRGdFV0h3RWVBVFkvQVQ0QkxnSUdEd0VHRkJjQlV3Z1hDY0FMSHhnTTdCcEZSaG9DR2hFUkdnR2lHVVpGR2dJYUVoSWFBZ2dDQmhJSkF4VVNDd2t3SWlJd0JEQ0NnakQrWHpBaUlqQURNWUNCTU84ZUZCYzlVbEFkdlFnSWtBZ0JCOEVLQVJjaURPa2FFUkVhQWhwR1JSb0JvUm9TRWhvQ0drVkdHUUlJRWdrZkpBd0dFUXdLTUlLQ01EQWlJakQrWURDQ2dURUVNQ0lpTU8wZVVsRTdFeGNmdkFrWkNBQURBQUQva0FPYkF5d0FId0F2QUVJQW03VTNBUWtLQVVkTHNBMVFXRUF6QXdFQkFBQUJZd0FKQ2dnS0NRaHRCQUlMQXdBQUJRWUFCV0VNQVFZQUNna0dDbUFBQ0FjSENGUUFDQWdIV0FBSENBZE1HMEF5QXdFQkFBRnZBQWtLQ0FvSkNHMEVBZ3NEQUFBRkJnQUZZUXdCQmdBS0NRWUtZQUFJQndjSVZBQUlDQWRZQUFjSUIweFpRQ0VpSUFFQVFEODZPVFF6S2ljZ0x5SXZHaGNTRUEwTUNRZ0ZCQUFmQVI4TkJSUXJBU00xTkNZaUJoMEJJVFUwSmlJR0hRRWpJZ1lkQVJRV015RXlOajBCTkNZWElTSUdGUkVVRmpNaE1qWTFFVFFtQVJVVUJpSW1QUUVIQmlJbU5EOEJOaklXRlFOT1lDSXZJdjd5SVRBaVlDQXRFUXdERkF3UkxSRDg3QXdSTGg4Q3RDQXRFZjZrR0I0WEhRZ1hFUXBMQ3lJWUFzc25HQ0lpR0NjbkdDSWlHQ2N0SHpFTEVSRUxNU0FzK2hFTC9pZ2ZMaTBnQWRnTEVmNVpBd3dYR0E3Qkh3Z1NGZ3BMREJjUUFBQUFBQU1BQVArUUE4SURMQUFVQUIwQVB3QmZRRnd5QVFZSE9pd0NCUVltSGdJRUJRTkhBQVFGQVFVRUFXMEFBUUZ1Q1FFQUNnRUNBd0FDWUFBREFBY0dBd2RnQUFZRkJRWlVBQVlHQlZnSUFRVUdCVXdXRlFFQVBUdzJOQzh1S1NnaUlCb1pGUjBXSFFzS0FCUUJGQXNGRkNzQklnY0dCd1lVRnhZWEZqSTNOamMyTkNjbUp5WUhNaFlVQmlJbU5EWVRGQVlyQVNJbVBRRTBOakkyUFFFMEppSW1QUUUwTmpzQk1oWWRBUlFXTWhZVkFmUithMms4UHo4OGFXdjhiR2c5UHo4OWFHeCtHU0VoTWlFaGVRb0ptZ2NNQ3hBTENoQU1Dd2gwQnd3S0VBd0RMRDg5YUd6OGJHZzlQejg5YUd6OGJHZzlQK2toTWlBaE1DTCtiQWdKQ1FnbkJ3NEpDRTBJRFFrSUp3Y09EUWlhQ0FrTkNBQUFBQUFEQUFBQUFBUG9BcFFBRkFBcEFEa0FDcmMwTENRWUN3SURMU3NCSnlZR0J3TUdGQmNUSGdFL0FUNEJMd0UzTmlZRkF5NEJEd0VPQVI4QkJ3WVdId0VXTmpjVE5qUUJKeVlHQndNR0ZoOEJGalkzRXpZbUFUb3RDaFlJM3dZRzRRY1hDaXdMQWdtMHRnWURBcDdoQnhnSkxBc0NDYmUzQndJSkxBb1dDT0VHL25nNkN4Y0Nqd01OQ3pvTUZnT09Bd3dDWnlVSEFnbis1d2NWQ1A3cENRTUlKUWNaQ09IaENSZndBUmNKQkFra0NCZ0o0ZUVJR1FjbEJ3TUlBUmtLRXdFYURnTU5DLzNlREJRRERnSU1EQUlpREJRQUFBVUFBUCtRQTVzRExBQVBBQzhBUHdCUEFGOEFiVUJxV0ZBQ0NndElRQUlJQ1FKSEJBMENBZ0VBQVFJQWJRQUJEQUVBQXdFQVlBQURBQXNLQXd0Z0FBb0FDUWdLQ1dBQUNBQUhCZ2dIWUFBR0JRVUdWQUFHQmdWWUFBVUdCVXdTRUFJQVhGcFZVa3hLUlVJOE9qVXlLaWNpSHhvWEVDOFNMd29IQUE4Q0R3NEZGQ3NCSVRJMlBRRTBKaXNCSWdZZEFSUVdKU01pQmgwQkZBWWpJU0ltUFFFMEppc0JJZ1lWRVJRV015RXlOalVSTkNZREZBWWpJU0ltUFFFME5qTWhNaFlWTlJRR0l5RWlKajBCTkRZeklUSVdGVFVVQmlNaElpWTlBVFEyTXlFeUZoVUJVUUZIQ3hFdElPWWdMUkVDQ1RBTEVpMGcvb0FnTFJJTE1COHVMaDhDdENBdExaTUxDUDVaQ1FzTENRR25DQXNMQ1A1WkNRc0xDUUduQ0FzTENQNVpDUXNMQ1FHbkNBc0NheElMVnlBdExTQlhDeEowRWd0WElDMHRJRmNMRWkwZy9Vc2ZMaTBnQXJVZ0xmMWZDUXNMQ1NZSkNnb0pjd2dMQ3dnbkNBc0xDSE1JQ3dzSUp3Z0xDd2dBQUFBQUFnQUEvNDhEd2dNdEFDTUFSd0NIUzdBS1VGaEFJd0FBQlFCdkFBVUJCVzhEQVFFR0FXOEFCZ1FHYndBRUFnUnZBQUlIQW04QUJ3ZG1HMHV3QzFCWVFCOEFBQVVBYndBRkFRVnZBd0VCQkFGdkJnRUVBZ1J2QUFJSEFtOEFCd2RtRzBBakFBQUZBRzhBQlFFRmJ3TUJBUVlCYndBR0JBWnZBQVFDQkc4QUFnY0Nid0FIQjJaWldVQUxGeGc0RkJnNEZ4VUlCUndyQVRZMEx3RW1JZzhCQmhRZkFSWXlQd0UyRmhVUkZCWTdBVEkyTlJFME5oOEJGakkzQVNjbUlnOEJCaVkxRVRRbUt3RWlCaFVSRkFZdkFTWWlEd0VHRkI4QkZqSS9BVFltQWhFSUNOc0pGd25kQ0FncENCY0pSUWtZRVF3NURCRVlDVVVKRndrQnp5Z0pGd2xGQ1JnUkREa01FUmdKUlFrWENDa0lDTjBKRnduZENBRUNIZ2tYQ2QwSUNOMEpGd2tvQ1FsRkNRa04vbWdMRWhNS0FaZ05DUWxGQ1FuK3FDWUpDVVVKQ1EwQm5Bc1NFd3IrYUEwSkNVVUpDU29KRnduZENBamRDUmtBQ0FBQS8yb0Rhd05TQUEwQUhnQW5BRGdBUUFCT0FGWUFid0YzUUJjWERBSURBRzFuUmpBRUNBZGhLZ0lHRFFOSEh3RUFSVXV3RDFCWVFGVUVGQUlEQUFJQUF3SnRBQUlIQUFJSGF4SUxBZ2NJQUFjSWF3QVFDUVVHRUdVVkFRVU5CZ1ZqQUE4SkNBOVNBQWtRQ0FsVUdRNFlEQllGQ0FBTkJnZ05ZQk1CQUFBTVNCRVhDZ01HQmdGWkFBRUJEUUZKRzB1d0VWQllRRllFRkFJREFBSUFBd0p0QUFJSEFBSUhheElMQWdjSUFBY0lhd0FRQ1FVSkVBVnRGUUVGRFFZRll3QVBDUWdQVWdBSkVBZ0pWQmtPR0F3V0JRZ0FEUVlJRFdBVEFRQUFERWdSRndvREJnWUJXUUFCQVEwQlNSdEFWd1FVQWdNQUFnQURBbTBBQWdjQUFnZHJFZ3NDQndnQUJ3aHJBQkFKQlFrUUJXMFZBUVVOQ1FVTmF3QVBDUWdQVWdBSkVBZ0pWQmtPR0F3V0JRZ0FEUVlJRFdBVEFRQUFERWdSRndvREJnWUJXUUFCQVEwQlNWbFpRRVZZVjFCUFFrRTZPU2tvRGc0QkFHeHBaR05nWGxwWlYyOVliMU5SVDFaUVZrdElRVTVDVGowN09VQTZRRFV5TFN3b09DazRKeVVPSGc0ZEVBOEpCZ0FOQVEwYUJSUXJFeUlHRlJFVUZqTWhNalkxRVFrQkZTTW5KaWNtSnlZM0Z4WVhGaGNXTXdNVkZCY1dGeFk3QVFFakZSUUdJaVk5QVRRMk93RXlGaFFHSnlNVk16STJOQ1lYSXlJbVBRRTBOanNCTWhZVUJpY2pGVE15UGdFbU15TVZNeklXRkFZckFSVVVCaUltUFFFME5qc0JNaFVXQmxBaEx5OGhBc3NoTC83WkFTZklEeE1QRlFzUEFRSURDQW9TRlI5ZEJ3b1RGeVRJL1g0MEJnb0hDZ2M2R3lBZ0hUSXlFUlVWa2k4SENnb0hMeXMyTlN3cEtTRW5BU2ZjV2xrRUJRVUVXUWNLQndzSFlBb0JCZ05TTHlIOHVDRXZMeUVDV3dFOS9zRVBCQWNLRFJJWEhRNFJEUlFMRGdFLzVCRVRGdzRTL2tGQUJRWUhCS0FIQ2lFd0lGMUlGQ0FVcUFzSG1RY0tObEEycUpJcVB5azlCZ2tHU3dVR0J3U2dCd29MQkFVQUFBVUFBQUFBQXd3Q2lnQVBBQzhBUHdCUEFGOEJDVUFXSFEwQ0FBSklBUXNKV0FFSEMxQkFPREFFQmdjRVIwdXdEbEJZUUR3RURRSUNBUUFCQWdCdEFBc0pCd2tMWlFBSEJna0hZd0FCREFFQUF3RUFZQUFEQUFrTEF3bGdDZ2dDQmdVRkJsUUtDQUlHQmdWWUFBVUdCVXdiUzdBZlVGaEFQUVFOQWdJQkFBRUNBRzBBQ3drSENRdGxBQWNHQ1FjR2F3QUJEQUVBQXdFQVlBQURBQWtMQXdsZ0NnZ0NCZ1VGQmxRS0NBSUdCZ1ZZQUFVR0JVd2JRRDRFRFFJQ0FRQUJBZ0J0QUFzSkJ3a0xCMjBBQndZSkJ3WnJBQUVNQVFBREFRQmdBQU1BQ1FzRENXQUtDQUlHQlFVR1ZBb0lBZ1lHQlZnQUJRWUZURmxaUUNNUkVBRUFYRnBVVWt4S1JFSThPalF5S2ljaUh4b1hFQzhSTHdvSEFBOEJEdzRGRkNzQk16STJQUUUwSmlzQklnWWRBUlFXSlNNaUJoMEJGQVlyQVNJbVBRRTBKaXNCSWdZVkVSUVdNeUV5TmpVUk5DWUJGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlJjVUJpc0JJaVk5QVRRMk93RXlGaFVCaHR3SURDTVpqQmtqREFGU0ZBUUdMeUhjSVM4RkJSUVpJeU1aQWJnWkl5UCt4UXdJRkFnTURBZ1VDQXhrREFnVUNBd01DQlFJREdRTUNCUUlEQXdJRkFnTUFoSU1DQ2daSXlNWktBZ01SZ1VGS0NFdkx5RW9CUVVqR2Y1U0dTTWpHUUd1R1NQK1pnZ01EQWhrQ0F3TUNHUUlEQXdJdmdnTURBaStDQXdNQ0pZSURBd0lBQVlBQUFBQUF4WUNmd0FVQUNRQU5BQkVBRlFBWkFDSFFJUWlHZ1VEQXdSQ09qSXFCQVVHWWxwU1NnUUpDZ05IQUFBQkFHOEFBUVFCYndBRUF3UnZBQUlEQmdNQ0JtMFJDeEFEQ1FvSmNBMEJBd2dCQmdVREJtQVBCdzREQlFvS0JWUVBCdzREQlFVS1dBd0JDZ1VLVEZaVlJrVTJOU1lsRmhWZVhGVmtWbVJPVEVWVVJsUStQRFZFTmtRdUxDVTBKalFlSEJVa0ZpUVhGQklTQlJjckFTY21JZzhCSnlZaUR3RUdGQjhCRmpJL0FUWTBCU0VpSmowQk5EWXpJVElXSFFFVUJnY2hJaVk5QVRRMk15RXlGaDBCRkFZaEl5SW1QUUUwTmpzQk1oWWRBUlFHQnlNaUpqMEJORFk3QVRJV0hRRVVCaWtCSWlZOUFUUTJNeUV5RmgwQkZBWUIwaFVFREFXRU5RUU1CUlVFQkVvSkdBbVpCQUVzL3Z3SURBd0lBUVFJREF3SS9zQUlEQXdJQVVBSURBeitRQ2dJREF3SUtBZ01EQWdvQ0F3TUNDZ0lEQXdCc1A3QUNBd01DQUZBQ0F3TUFtVVZCUVdFTlFVRkZRUU1CVW9KQ1prRURZc01DQ2dJREF3SUtBZ010QXdJS0FnTURBZ29DQXdNQ0NnSURBd0lLQWdNdEF3SUtBZ01EQWdvQ0F3TUNDZ0lEQXdJS0FnTUFBQUNBQUFBQUFNZ0FwQUFMQUE4QURwQU55SUJBZ0FCUndFRkFnQUFBZ01BQW1BR0FRTUVCQU5VQmdFREF3UllBQVFEQkV3dUxRSUFOelF0UEM0OEppUWZIQUFzQWl3SEJSUXJBU01pSmpVMk56WTNOamMyTnpZbUp5WU9BUlVVRng0QkZ4WVhGQVlyQVNJR0hRRVVGak1oTWpZOUFUUW1CeUVpQmgwQkZCWXpJVEkyUFFFMEpnTGtiaGtqQWdjR0NnNENDQUVETkN3bVJDa0hCQmdGQ0FJakdXNFpJd3dJQWpBSURDTVkvaDRJQ3lNWkFaRVpJZ3NCTmlNWkhoY1FFeFlHRUJNdFNBb0lIVHdsRmhJSktCQVlIeGtqSXhrb0NBd01DQ2daSTdRTENBRVpJeU1aQVFnTEFBQUFBQUVBQVArUUE4SURMZ0F0QUZCQVRSWUJBd0lYQVFFREJ3RUFBU0lEQWdRQUl3RUZCQVZIQ0FFREFVWUFBZ01DYndBREFRTnZBQUVBQVc4R0FRQUVBRzhBQkFVRWJ3QUZCV1lCQUNnbklSOGFHQklSREFvQUxRRXRCd1VVS3lVaUJnY2xOalVuSlI0Qk16SStBVFF1QVNJT0FSMEJCU1lqSWc0QkZCNEJNekkzQlJVVUhnRXlQZ0UwTGdFREV5VkJGLzduQWdJQkdSZERKUzlRTGk1UVhsQXYvdDQxUGk5UUxpNVFMMEV3QVNNdVQyQlBMaTVRNngwWmpBb1ZINHdhSGk1UVhsQXZMbEF3QzVJb0xsQmVVQzRxa0Ewd1VDNHVVR0JQTGdBQ0FBRC9rQVBDQXl3QUxBQmFBQ3BBSnhNQkFnQWlBUUVDQWtjQUFBSUFid0FDQVFKdkFBRURBVzhBQXdObVZGRTdPaVlqTGdRRkZTc0JKaWNtTlRRMk56NEJOVFFtSnlZaklnY0dCeFFYSGdFVkZBWUhCaFFYRmhjV0p4WTdBVEkyUFFFMEp5WUZKaWNtTlRRM1BnRTFOQ1luSmlJSERnRVZGQllYRmhVVUJ3WUhCZ2NHQndZZEFSUVdNeUV5TmowQk5DY21BeWdsRGdzVUR4Z2FKU0lrTDBFcUp3WUtOejRxSndNRENSVTdHUW9GNlNFdUx5TCt0UzBSRFNnZEh5c3BLM01yS0N3ZUhTa05FaTQ3SVM0WUhDMGhBaFVoTURZb0FhVU9FZzBURHg0TUZEb2lLMGdWRmlnbU93b0hJM1ZKTjE4akF3a0RCZ29kREFRdkhnd3VJeHJ1RXhNUEZpRWtHVVFvTTFVWUdob1lWVE1vUkJrakloWVBGUkVZRWhrYklDWVpJQzB1SHhzMktoOEFBQUFBQVFBQUFBQUMyd0tsQUMwQUowQWtBQUFGQVFFQ0FBRmdCQUVDQXdNQ1ZBUUJBZ0lEV0FBREFnTk1OU1UxTlNVekJnVWFLd0UxTkNZaklTSUdIUUVVRmpNeUZnY0REZ0VyQVNJR0hRRVVGak1oTWpZOUFUUW1JeUltTnhNK0FUc0JNallDMnhjUS92TVFGaFlRR1I4R1JRUWRFUzRRRnhjUUFRMFFGaFlRR1I4R1JRUWRFU0VXSGdKbUdSQVdGaEFuRUJZbkYvNnVFeGdXRUNjUUZoWVFKeEFXSnhjQlVoTVlIZ0FBQUFVQUFQK1FBNGdETEFBWkFDTUFNd0JEQUZNQVhrQmJURVE4TkFRSUNRRkhBQUVBQkFBQkJHQUZBZ3dEQUFBREJnQURZQTBCQmdzQkNRZ0dDV0FLQVFnSEJ3aFVDZ0VJQ0FkWUFBY0lCMHdtSkFFQVVVNUpSa0UrT1RZdUt5UXpKak1qSWg0Y0ZCRU1DZ2NFQUJrQkdRNEZGQ3NCSXpVMEppc0JJZ1lkQVNNaUJoMEJGQll6SVRJMlBRRTBKaVUwTmpzQk1oWWRBU01GSVNJR0ZSRVVGak1oTWpZMUVUUW1BUlFHS3dFaUpqVVJORFk3QVRJV0ZSTVVCaXNCSWlZMUVUUTJPd0V5RmhVRGEvQXRJSFFmTHZBTEVoSUxBdTRMRWhMK1JBc0pUUWdMZEFGay9hd0xFamdvQWM0b09CSCtrQW9KSmdrTEN3a21DUXJCQ3drbUNRb0tDU1lKQ3dLU1RTQXRMU0JORWdzNkN4SVNDem9MRWprSkN3c0pPY0VSQy80OEtUZzRLUUhFQ3hIK1dRZ0xDd2dCRGdnTEN3ais4Z2dMQ3dnQkRnZ0xDd2dBQUFFQUFQL3ZBOElDelFBakFDNUFLd0FCQUFGdkFBSURBbkFFQVFBREF3QlVCQUVBQUFOWUFBTUFBMHdDQUI0YkV4SUxDZ0FqQWlNRkJSUXJBU0VpSmo4Qk5qUXZBU1lpQndFR0ZCY0JGakkvQVRZMEx3RW1Oak1oTWpZOUFUUW1BNmY5Z1EwSkNiZ0pDU29JR0FqK3J3Z0lBVkVJR0Fnb0NRbTRDUWtOQW44TEVoQUJtQmdJdVFrWENDc0lDUDZ0Q0JnSS9xOElDQ2tJR0FpNUNoZ1FDem9NRXdBQUF3QUEvNUFEd2dNc0FCUUFJUUF1QURwQU55WWxIeDRFQXdJQlJ3UUJBQUFDQXdBQ1lBVUJBd0VCQTFRRkFRTURBVmdBQVFNQlRDTWlBUUFpTGlNdUhCb0xDZ0FVQVJRR0JSUXJBU0lIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtQVRRM05qYzJNeklXRndFdUFRRWlKaWNCSGdFVkZBY0dCd1lCOUgxcmFUMC9QejFwYS9wc2FENC9QejVvYlA0cEx5OU9VVjA0WlN2K0hSNGhBVm80WlNzQjR4NGhMeTlPVVFNc1B6NW9iUHBzYUQ0L1B6NW9iUHBzYUQ0Ly9qSmRVVTR2THlFZS9oMHJaZjdlSVI0QjR5dGxPRjFSVGk4dkFBQUFBQUlBQUFBQUE4SUN5d0FOQUNRQUtrQW5BQUVEQVc4QUF3QURid0FBQWdCdkFBSUVCQUpVQUFJQ0JGZ0FCQUlFVERjVEdUVVJCUVVaS3dFV01qY0JOaWNtSXdVaURnRVhCVFFtQndFR0lpY0JKaUlHRlNZZEFSUVdNeUV5TmpVQjN3Z1lDQUd6QndVR0ZmeWtDeElFQ0FPV0d3eityQ05mSlA2dUJ4TU5BUzBmQXdJZ0xRRVBDQWdCbEEwTkRnRU5Fd21jRHcwSy9zWWdIZ0U4QmcwTEJOemNJQzB1SHdBQUFBTUFBUC94QXhVQ3VBQVlBQ0FBS0FCQlFENFZBUU1FQVVjQUFBQUZCQUFGWUFjQkJBQURBZ1FEWUFZQkFnRUJBbFFHQVFJQ0FWZ0FBUUlCVENJaEdoa2xJeUVvSWlnZEd4a2dHaUExTXdnRkZpc0JOQzRCSXlFaUJoVVJGQll6SVRJK0FUVTBKeVluTmpjMkF5TTFNeklXRkFZREl6VXpNaFlVQmdNVk4xMDIvc0lRRmhZUUFUNDJYVGNQRHhvYUR3L0szdDRiS2lvYjN0NGJLaW9CNVRoaU9SWVEvWVVRRmpsaU9Da21KQjBlSkNiK3U1b3VQaTRCSVpvdlBDOEFBQVAvL3dBQUErNENwUUFXQUNNQU1BQkNRRDhIQVFRREJRTUVCVzBBQlFJREJRSnJBQUFBQXdRQUEyQUdBUUlCQVFKVUJnRUNBZ0ZZQUFFQ0FVd2xKQmdYS3lva01DVXdIaDBYSXhnakd4UUlCUllyQVM0Qkp5WWlCdzRCQndZVUZ4NEJGeFl5Tno0Qk56WUZJaTRCTkQ0Qk1oNEJGQTRCQXlJT0FSUWVBVEkrQVRRdUFRUGtMWmRmWXRaaVg1Y3RCQVF0bDE5aTFtSmZseTBKL2djNllEazVZSFJoT1RsaE9pVStKQ1ErU2o0a0pENEJiMXlNSmlnb0pveGNDQk1IWEl3bUtDZ21qRndSMHpsZ2RHRTVPV0YwWURrQldpUStTajRrSkQ1S1BpUUFBZ0FBLzVBRHd3TXRBQ2NBVmdCWlFGWUFDUU1KYndvQkFBSUlBZ0FJYlFBSUJnSUlCbXNBQmdFQ0JnRnJDd1VDQXdjQkFnQURBbUFBQVFRRUFWUUFBUUVFV0FBRUFRUk1LU2dDQUUxTVJVUThPVE13S0ZZcFZTSWZHaGNTRHdvSEFDY0NKd3dGRkNzQkl5SUdIUUVVQmlNaElpWTFFVFEyT3dFeU5qMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1BU0lIQmdjR0J3WVdPd0V5TmpjK0FUYzJPd0V5Rmc4QkJoUWZBUll5TndFMk5DY0JKaUlQQVE0Qkh3RVdCaU1EcFRvTEVoRU0vWVlNRVJFTVRRc1NFZ3VSSHkwdEh3TUNJQzBTL3Q1ZVYxUTJPQWdDRWcwNkN4QUNCbEErUVVrZkRRa0phUWtKS0FrWENBRUdDQWorL0FnWUNDZ0pBZ2xyQ1FrTkFSRVJETk1NRVJFTUFaUUxFUklMT2dzU0xTRDk1U0F0TGg4QkZ3d1JBVFEwTWxWWFl3d1REd3BIZVNNa0dBaHNDQmdJS1FnSUFRUUlHQWdCQkFnSUtBa1hDV3dJR0FBQUFBTUFBQUFBQXlBQ2lnQVVBQzBBUEFBOVFEb0ZBUU1DQkFJREJHMEdBUUFIQVFJREFBSmdBQVFCQVFSVUFBUUVBVmdBQVFRQlRCWVZBUUFvSmlJaEhCc1ZMUll0Q3dvQUZBRVVDQVVVS3dFaUJ3WUhCaFFYRmhjV01qYzJOelkwSnlZbkpnY3lIZ0VWRkFjaklnWUhEZ0VpSmljdUFTc0JKalUwUGdFVEZqNEJOelkzTmlZSEJnY09BUllCOUZGR1JDZ3BLU2hFUnFKR1JDZ3BLU2hFUmxFN1pqc0NXUWNMQWdZK1VqNEdBUXNJV1FJN1ppUVNLQk1ORFFjSUNCOGRIU0FUQ3dLS0tTaEVScUpHUkNncEtTaEVScUpHUkNncFVEdG1Pd29VQ1Fnbk5qWW5Cd29VQ2p0bU8vN2FDZzBqTUN3b0tnUWVIU01tSXljQUFBVUFBQUFBQXlBQ2lnQWtBRElBUUFCS0FGUUFaMEJrQ3dFRkFUSUJBQVVhQVFRQVNBRUpDQVJIQ3cwQ0NBUUpCQWdKYlFvQkNRbHVBZ0VCQndFRkFBRUZZQVlEREFNQUJBUUFWQVlEREFNQUFBUllBQVFBQkV4Q1FRRUFVbEZRVGtWRFFVcENTajA4TnpZdUxCNGNGeFVSRHdjRkFDUUJKQTRGRkNzQkl6WW1KeVlqSWdZSEJnY21KeTRCSXlJSERnRVhJeUlHSFFFVUZqTWhNalk5QVRRbUlTSW5MZ0kzTmpNeUZoY1dGVGNHQndZak5UUTNQZ0V5RnhZR0Z5TVJNekkyUFFFMEpnVVZGQlk3QVJFaklnWUM1RmNUQkJjYkpSTW1EZ1VGQkFZT0pSUWtHeGNFRTFnWkl3d0lBakFJRENQKzJSRVNGUmNDQ2dnTUVCY0dCb0FNRkJNUkJnWVpHZ2dLQW9QU3JCZ2lEUDRFSXhtcTBnZ01BZlFlUlJnYkVROEZDQWdGRUJBYkdFVWVJeGtvQ0F3TUNDZ1pJd1lIR1NFS0NCb1dFeEVWRFFjR0JoRVRGaG9JQ3lEYi92SWlHTUFJREJTK0dTTUJEZ3dBQUFNQUFBQUFBeUFDaWdBVUFDRUFOUUJMUUVnaklnSUZCQUZIQUFRREJRTUVCVzBBQlFJREJRSnJCZ0VBQUFNRUFBTmdCd0VDQVFFQ1ZBY0JBZ0lCV0FBQkFnRk1GaFVCQURBdkp5VWNHeFVoRmlFTENnQVVBUlFJQlJRckFTSUhCZ2NHRkJjV0Z4WXlOelkzTmpRbkppY21BeUl1QVRRK0FUSWVBUlFPQVNjMU5DWXJBU0lHSFFFVUh3RVdNajhCTmpRbkFmUlJSa1FvS1Nrb1JFYWlSa1FvS1Nrb1JFWlJRVzVCUVc2Q2JrRkJiaU1NQ0JRSURBbGdCaEFHRGdZR0Fvb3BLRVJHb2taRUtDa3BLRVJHb2taRUtDbjk1RUZ1Z201QlFXNkNia0g4Z0FnTURBaU1EUWhnQmdZT0JoQUdBQVVBQUFBQUF1NENpZ0FOQUNVQVNRQlpBR2tBWUVCZEV3RUFBa1E5TmdNQkFFQTVJd01IQVdKYUFnWUhVa29DQkFVRlJ3QUNBQUp2QUFBQkFHOElBUUVBQndZQkIyQUFCZ0FGQkFZRllBQUVBd01FVkFBRUJBTllBQU1FQTB3UURtWmtYbHhXVkU1TUlCMFlGUTRsRUNVb0NRVVZLd0VuSmlJR0hRRVVGanNCTWpZMEJ5TWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtSlQ4Qk1qVTNOaklmQVJZekZ4NEJEd0VHRlJjV0JpOEJKZzhCQmlZL0FUUXZBU1kyQVJRR0l5RWlKajBCTkRZeklUSVdGVGNVQmlNaElpWTlBVFEyTXlFeUZoVUM2b1FFREFnWUVHb0dDQlNNR1NNTUNNZ1pJeU1aQVh3Wkl3eitYakVDQVJZQ0JRRVdBZ0V4QWdJQ0pBRUlBUVVDTEFJQ0xBSUZBUWdCSkFFREFUZ01DUDc4Q0F3TUNBRUVDQXdvREFqKzFBZ01EQWdCTEFnTUFnS0VCQWdHYWhBWUNBeFFJeG1NQ0F3akdmNGdHU01qR1FFc0NBeGVCd0VCTFFJQ0xRSUhBUVVCSXdFRE1RSURBUmNDQWhjQkF3SXhBd0VqQWdUK3N3Z01EQWdVQ0F3TUNHUUlEQXdJRkFnTURBZ0FBQWdBQVArUUE4SURMQUFQQUI4QUx3QS9BRThBWHdCdkFIOEFja0J2RWdFT0JRNXZCZ0VGRHdWdkFBOEVEMjhIQVFRQUJHOElBUUlCQ2dFQ0NtMFFBUW9EQVFvRGF3a0JBd3NCQXd0ckFBc0xiaEVNQWdBQkFRQlVFUXdDQUFBQldBMEJBUUFCVEhKd1ltQlNVSHAzY0g5eWYycG5ZRzlpYjFwWFVGOVNYMHBKRnhjWEZ4Y1hFelV6RXdVZEt3RTFOQ1lyQVNJR0hRRVVGanNCTWpZWEppSVBBUVlVSHdFV01qOEJOalFuQVJZeVB3RTJOQzhCSmlJUEFRWVVGeVVtSWc4QkJoUWZBUll5UHdFMk5DY0JKaUlQQVFZVUh3RVdNajhCTmpRbkpTTWlCaDBCRkJZN0FUSTJQUUUwSmlVaklnWWRBUlFXT3dFeU5qMEJOQ1lCSXlJR0hRRVVGanNCTWpZOUFUUW1BVFFTQzlRTEVSRUwxQXNTSkFnWUNKWUpDU2dKRndtV0NBZ0JEd2dZQ0pZSkNTZ0pGd21XQ0FqK2hBa1hDU2dKQ1pZSUdBZ3BDQWdCT1FnWUNDc0lDSllKRndrb0NRbit3em9MRWhJTE9nc1NFZ0dKMUFzU0VndlVDeElTL21FNkN4SVNDem9MRWhJQlFUb0xFaElMT2dzU0Vrc0lDSllKRndrb0NRbVdDQmdJQVE4SUNKWUpGd2tvQ1FtVUNCZ0l2QWtKS0FrWENaWUlDQ2tJR0FqK3lRZ0lLUWdZQ0pZSkNTZ0pGd2xKRWd2VUN4SVNDOVFMRXZvU0N6b0xFaElMT2dzU0FaUVNDOVFMRWhJTDFBc1NBQUFBQUFNQUFQL2RBOElDM3dBTUFDc0FPQUJXUUZNRUNRSUNBd2NEQWdkdENBRUFCd0VIQUFGdEFBRUdCd0VHYXdBREFBY0FBd2RnQ2dFR0JRVUdWQW9CQmdZRldBQUZCZ1ZNTFN3UERRRUFNeklzT0MwNEppTWVHeFlURFNzUEt3Y0dBQXdCREFzRkZDc0JJZzRCRkI0Qk1qNEJOQzRCSlNNaUx3RXVBU3NCSWdZUEFRNEJLd0VpQmhVUkZCWXpJVEkyTlJFMEpnRWlMZ0UwUGdFeUhnRVVEZ0VCOUNwSEtTcEdWRWNwS1VjQlYyUW9HaXdLTEJ1OEdpME1MQW9qRkdNZkxTMGZBd0lnTFMzK1h6NXJQajVyZkdzK1Btc0IwU2xIVWtjcUtVZFVSaWwwSWtRWUhCd1lSQkFTTFNEK01pQXRMaDhCemlBdC9ndythM3hxUGo1cWZHcytBQUFBQ0FBQS81QURtd01zQUE4QUh3QXZBRDhBVHdCZkFHOEFqd0RLUUE1b1NDZ0RCQVZRTUJBREFnTUNSMHV3RFZCWVFEMFJBUThPRGc5akVoQVZBdzRBRXdBT0UyRVVBUUFOQ1FJRkJBQUZZQXdJQWdRTEJ3SURBZ1FEWUFvR0FnSUJBUUpVQ2dZQ0FnSUJXQUFCQWdGTUcwQThFUUVQRGc5dkVoQVZBdzRBRXdBT0UyRVVBUUFOQ1FJRkJBQUZZQXdJQWdRTEJ3SURBZ1FEWUFvR0FnSUJBUUpVQ2dZQ0FnSUJXQUFCQWdGTVdVQXpjWEFDQUlxSGdvQjlmSGw0ZFhSd2ozR1BiR3BsWWx4YVZWSk1Ta1ZDUERvMU1pMHFKQ0lkR2hRU0NnY0FEd0lQRmdVVUt3RWhJZ1lWRVJRV015RXlOalVSTkNZQkZBWXJBU0ltUFFFME5qc0JNaFlWTlJRR0t3RWlKajBCTkRZN0FUSVdGUk1VQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVkV4UUdLd0VpSmowQk5EWTdBVElXRlRVVUJpc0JJaVk5QVRRMk93RXlGaFVUSXpVMEppSUdIUUVoTlRRbUlnWWRBU01pQmgwQkZCWXpJVEkyUFFFMEpnTisvT3dNRVM0ZkFyUWdMUkg5NHdvSlRRZ0xDd2hOQ1FvS0NVMElDd3NJVFFrS3dRc0lUUWtMQ3dsTkNBc0xDRTBKQ3dzSlRRZ0x3QXNJVFFrS0NnbE5DQXNMQ0UwSkNnb0pUUWdMWUdBaUx5TCs4aUV3SW1BZ0xSRU1BeFFNRVMwQjBSRUwvaWdmTGkwZ0FkZ0xFZjVaQ0FzTENFMEpDd3NKZEFrTEN3bE5DQXNMQ1A3eUNBc0xDRTBKQ3dzSmRBa0xDd2xOQ0FzTENQN3lDQXNMQ0UwSkN3c0pkQWtMQ3dsTkNBc0xDQUdUSnhnaUloZ25KeGdpSWhnbkxSOHhDeEVSQ3pFZ0xBQURBQUQvdHdQQ0F3VUFEd0FmQUM4QVFFQTlCd0lHQXdBRkFRVUFBVzBEQVFFQmJnZ0JCQVVGQkZRSUFRUUVCVmdBQlFRRlRDSWdFaEFDQUNvbklDOGlMeG9YRUI4U0h3b0hBQThDRHdrRkZDc1RJeUlHRlJFVUZqc0JNalkxRVRRbUtRRWlCaFVSRkJZeklUSTJOUkUwSmljaElnWWRBUlFXTXlFeU5qMEJOQ2JkbWdzUkxDQnFEQkVSQXJ6OXZ3d1JFUXdDRVNBdEVqdjgvaUFzRVFzRFlnc1NMUUlMRVF6K0ZpQXRFUXdDR2d3UkVRejk1Z3dSTFNBQjZnd1IraTBnUXdzU0VndERJQzBBQUFBRUFBRC95Z09iQXZJQUR3QWZBQzhBUHdBMlFETUFBQUFCQWdBQllBQUNBQU1HQWdOZ0FBWUFCd1FHQjJBQUJBVUZCRlFBQkFRRldBQUZCQVZNTlRVMU5UVTFOVElJQlJ3ckFUUW1JeUVpQmgwQkZCWXpJVEkyTlJVMEppTWhJZ1lkQVJRV015RXlOalVSTkNZaklTSUdIUUVVRmpNaE1qWTFFVFFtSXlFaUJoMEJGQll6SVRJMk5RT2JFUXo4N0F3UkVRd0RGQXdSRVF6ODdBd1JFUXdERkF3UkVRejg3QXdSRVF3REZBd1JFUXo4N0F3UkVRd0RGQXdSQXRVTEVoSUxPZ3NSRVF1dERCRVJERGtNRVJFTS9td0xFaElMT2dzU0Vnc0JJUXNSRVFzNkRCRVJEQUFBQkFBQS84b0Rtd0x5QUE4QUh3QXZBRDhBTmtBekFBQUFBUUlBQVdBQUFnQURCZ0lEWUFBR0FBY0VCZ2RnQUFRRkJRUlVBQVFFQlZnQUJRUUZURFUxTlRVMU5UVXlDQVVjS3dFMEppTWhJZ1lkQVJRV015RXlOalVITkNZaklTSUdIUUVVRmpNaE1qWTFBelFtSXlFaUJoMEJGQll6SVRJMk5STTBKaU1oSWdZZEFSUVdNeUV5TmpVRG14RU0vT3dNRVJFTUF4UU1FWE1TQy8zU0N4SVNDd0l1Q3hJbkVReitJQXdSRVF3QjRBd1JtaEVNL093TUVSRU1BeFFNRVFMVkN4SVNDem9MRVJFTHJRd1JFUXc1REJFUkRQNXNDeElTQ3pvTEVoSUxBU0VMRVJFTE9nd1JFUXdBQUFBREFBRC9qd1BDQXl3QUR3QWZBREVBSTBBZ0FBTUJBMjhBQVFJQmJ3QUNCQUp2QUFRQUJHOEFBQUJtSGhjYUZ4SUZCUmtyTnhjV01qY0JOalF2QVNZaUJ3RUdGQUVHRkI4QkZqSS9BVFkwTHdFbUlnY0JCaFkvQVRZL0FUWTBMd0VtSWc4QkJnZTNxd1lQQmdHckJRV3BCaEFGL2xNR0FnVUZCYW9GRUFVeEZ4ZGJGejhYL1VVQ0ZRN1NDZ2NFQkFhdEJSQUVCQVlFMEtzR0JnR3NCaEFGcWdVRi9sTUdEZ0lQQlJBRnFnVUZNQlk5RjFzWEYveWVEaFlETWdNSEJBUVFCYTBHQkFRR0N3QUFBQUFGQUFEL2tBUENBeXdBRHdBVEFDTUFNd0JEQUdoQVpVRTVNU2tFQmdjQlJ3a0JCd1FHQkFjR2JRMElEQU1HQWdRR0Ftc0FBUUFEQlFFRFhnQUZDd0VFQndVRVlBQUNBQUFDVWdBQ0FnQllDZ0VBQWdCTU5UUWxKQlVVQWdBK096UkROVU11S3lRekpUTWVHeFFqRlNNVEVoRVFDZ2NBRHdJUERnVVVLd1VoSWlZMUVUUTJNeUV5RmhVUkZBWWxJUkVoQVNFaUpqMEJORFl6SVRJV0hRRVVCZ0VqSWlZOUFUUTJPd0V5RmgwQkZBWWhJeUltUFFFME5qc0JNaFlkQVJRR0E1djhzaEFXRmhBRFRoQVhGL3pJQXdMOC9nSjcvZ3dJQ3dzSUFmUUpDZ3IrZG5NSUN3c0ljd2tMQ3dGNDV3Z0xDd2puQ1FvS2NCY1FBMDRRRnhjUS9MSVFGMDBEQXY3eUN3bHpDUW9LQ1hNSkMvNkFDd2puQ0FzTENPY0lDd3NJNXdnTEN3am5DQXNBQUFBQ0FBRC9rQU91QXl3QUR3QThBQkZBRGdBQUFRQnZBQUVCWmpVeUFnVVdLeE0wSmlzQklnWVZFUlFXT3dFeU5qVUJCZ2NHSnlZbkxnRW5KaWNtQndZSERnRVZFUlFXTnpZM05oY1dGeFlYRmhjV0Z4WTNOamMrQVRVUk5DYXRFUXc1REJFUkREa01FUUxsTnk0cEpSNGhFMHdXSkNRck1UaENDQXNSQ0VJM01Dc2tKQk1wSlJVaElDVXJMem9IQ0JNRER3c1NFZ3Y4bmdzU0Vnc0RFUjBMQ1FVRUR3b3VDaEVIQ1FVR0Z3SVFDZjVBQ2dzRUZnUUVDUWdSQ2hrV0NnNERCQXdOSUFRT0J3Ry9DZ3NBQUFBQUF3QUEvNDhEaUFNdEFCY0FMd0EvQUM1QUt3QUVCUVJ2QUFVREJXOEFBd0FDQVFNQ1lBQUJBQUFCVkFBQkFRQllBQUFCQUV3WEh4c2JHeElHQlJvckpRVUdJaWNsSmpRL0FUWXlId0VXTWo4Qk5qSWZBUllVSndVR0lpY2xKalEvQVRZeUh3RVdNajhCTmpJZkFSWVVMUUVtTkRjbE5qSVhCUllVQndVR0lnTjUvcFlPSXc3K21Bc0xWUVFMQk5zZ1N4L2NCQXNFVlFzTC9wWU9JdzcrbUFzTFZRUUxCTnNnU2lEY0JBc0VWUXYrVC82WERBd0JhUThqRGdGcERBeitsdzRqWnM0SUNNNEdGd1l3QXdOOUVoSjlBd013QmhmaHpna0p6Z1VZQlRBREEzMFJFWDBEQXpBRkdCVE9CUmNHemdnSXpnWVhCYzRIQUFBQUJBQUFBQUFESUFJd0FBOEFNQUJBQUZBQTJrQVFTVUVDQmdjNU1RSUVCUzRCQWdRRFIwdXdHVkJZUURFQUJ3TUdBd2RsQUFRRkFnSUVaUWdCQUFBREJ3QURZQUFHQUFVRUJnVmdDUUVDQVFFQ1ZBa0JBZ0lCV1FBQkFnRk5HMHV3R2xCWVFESUFCd01HQXdkbEFBUUZBZ1VFQW0wSUFRQUFBd2NBQTJBQUJnQUZCQVlGWUFrQkFnRUJBbFFKQVFJQ0FWa0FBUUlCVFJ0QU13QUhBd1lEQndadEFBUUZBZ1VFQW0wSUFRQUFBd2NBQTJBQUJnQUZCQVlGWUFrQkFnRUJBbFFKQVFJQ0FWa0FBUUlCVFZsWlFCc1NFQUlBVFV0RlF6MDdOVE1pSVJBd0VqQUtCd0FQQWc4S0JSUXJBU0VpQmhVUkZCWXpJVEkyTlJFMEpnRWpJaVkxTmpjMk56WTNOalUwSnlZME5qSVdGUlFIQmhVVUZ4WVhGaGNXQmpjVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZBdVQrSUJrakl4a0I0QmtqSS83cHJBNFVBUlFPSGhBR0JBNFZJam9pRlE0RUJoQkFBUUlVM0F3SVdnZ01EQWhhQ0F3TUNKWUlEQXdJbGdnTUFqQWpHZjdlR1NNakdRRWlHU1ArckJrUUZCRU1EZ2NJQlFrT0RCTTlLQ2dlSUJJTURna0ZDQVliSlE4YVJnZ01EQWdlQ0F3TUNGQUlEQXdJSGdnTURBZ0FBd0FBQUFBREd3SjJBQ1VBTGdBM0FFcEFSd0FDQUFNQUFnTmdBQUVLQVFBRkFRQmdBQVVBQkFjRkJHQUpBUWNHQmdkVUNRRUhCd1pZQ0FFR0J3Wk1BUUEyTlRJeExTd3BLQ0FkR2hjVUVnOE1DUWNBSlFFbEN3VVVLd0VoTWpZL0FUWW1JeUVuTGdFckFTSU9BUlk3QVJNZUFUTWhNajRCSmlNaElpWW5OU1kyQnhRV01qWTBKaUlHRnhRV01qWTBKaUlHQWFnQkp3Y0xBVFlEREFyK09BZ0RFQW93REJNQ0VnMGNYZ01RQ2dGY0RCTUNFZzMremdvUUFnVVNIaDBxSFIwcUhmQWRLaDBkS2gwQlhnZ0h2Z29QSEFvTUVCa1Qvc0lLREJBWkV3d0pBUTRZNWhVZEhTb2RIUlVWSFIwcUhSMEFBQUlBQUFBQUF5SUNUQUFMQUNBQUpFQWhBQUVBQVc4QUFBSUFid0FDQXdNQ1ZBQUNBZ05ZQUFNQ0EwdzRHRFFSQkFVWUt3RVdNamNCTmlZakJTSUdGd1UwSmc4QkJpSXZBU1lHRlJFVUZqTWhNalkxSWdIbkJnOEdBUnNGQnc3OTBBd01DQUpURWdmY0ZqOFgzUWNTSXhrQjRCa2pBUUVzQlFVQkJna1JBUkVKYndvSUI4d1ZGY3dIQ0FyKy9Ca2pJeGtBQUFBQ0FBRC9rQVBDQXl3QUZBQXNBRFJBTVFZQkFBVUFid0FGQXdWdkFBTUVBMjhBQkFJRWJ3QUNBUUp2QUFFQlpnRUFLQ2NrSXlBZkdCY0xDZ0FVQVJRSEJSUXJBU0lIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtRXdFR0lpOEJKalEvQVRZeUh3RVdNajhCTmpJZkFSWVVBZlIrYTJrOFB6ODhhV3Y4YkdnOVB6ODlhR3lFL3RvSkdRbWhDUWtxQ1JrSVZRWVJCdGNKR1FnckNnTXNQejFvYlB4c2FEMC9QejFvYlB4c2FEMC8vcVgrMWdnSXBBZ2FDQ29KQ1ZZR0J0OEpDU29KR1FBQUFBRUFBUCsxQTUwREJRQkhBRU5BUUVVQkF3QUJSd1lCQUFNQWJ3QURCQU52QUFJRkFRVUNBVzBBQVFGdUFBUUZCUVJVQUFRRUJWZ0FCUVFGVEFJQVFqODZOekV2SVNBWkZ3QkhBa2NIQlJRckFTTWlCaDBCRkFZbkppY3VBUWNHQnc0QkJ3WVdGeDRCTXpJMk56NEJMd0V1QVFjT0FTY21KeTRDTnpZM1BnRXpNaFlYRmhjV0Jpc0JJZ1lkQVJRV015RXlOalVSTGdFRGZqa01FUTBLQ1F0SXdXaEtQRmhoQWdJN056cVdWRW1ITndvQkNTZ0lGZ2swaDBZa0pUWkdGZzhKRmlpRVREcHFLQXdMQkE4T2h3c1NFQXNCWUFvUEFoRURCUkVNaGc0SUNBd0hTVGtVRHlrNXNtVk9sVGc5UURJdUNSa0pLQWdCQnl3ZkVRa1dJV1o3UHlRbFJrd3NLQXNRQ3d3U0N6d0xFQThLQVY0TUVRQUVBQUQveWdPYkF2SUFEd0FmQUM4QVB3QTJRRE1BQUFBQkFnQUJZQUFDQUFNR0FnTmdBQVlBQndRR0IyQUFCQVVGQkZRQUJBUUZXQUFGQkFWTU5UVTFOVFUxTlRJSUJSd3JBVFFtSXlFaUJoMEJGQll6SVRJMk5RYzBKaU1oSWdZZEFSUVdNeUV5TmpVUk5DWWpJU0lHSFFFVUZqTWhNalkxRXpRbUl5RWlCaDBCRkJZeklUSTJOUU9iRVF6ODdBd1JFUXdERkF3Um1oRU0vWVlNRVJFTUFub01FUkVNL1lZTUVSRU1Bbm9NRVpvUkRQenNEQkVSREFNVURCRUMxUXNTRWdzNkN4RVJDNjBNRVJFTU9Rd1JFUXorYkFzU0VnczZDeElTQ3dFaEN4RVJDem9NRVJFTUFBQUFBQUVBQUFBQUEySUNSUUFNQUJoQUZRSUJBQUVBYndBQkFXWUNBQWdIQUF3Q0RBTUZGQ3NUSVRJZUFRY0JCaUluQVNZMm9BS29DZzRCQi82ekNCOEovcThLRGdKRkRoUUkvbWdNREFHWURSMEFBZ0FBLzRnRHF3TXRBQjRBTFFBSXRTMG9GQWdDTFNzQkJRWXVBVFVSTkNZSERnRUhCaGNlQVJjV0Z4WTNQZ0UzTmpVMEp5NEJCU1UrQVNjbUp5WW5KZ1lWRVJRV0EyditkZzBiRWhjTllKVWtKZ3NLWjFGU1lWNVlWSU1rSmdZQ0cvNmRBWHNSQ1F0Q1lHTnlGQ0FWQVpEWkJ3WVZEZ0hZRGhJRUdvWmRZR2hncERNMUNnb2RISGRSVTF3aklnNE1YOG9JSnhCYlBENFNCQnNVL2s0TkRBQUFBQUFFQUFEL3N3UENBd1VBSFFBbUFDOEFPQUJCUUQ0SUFRQURBRzhIQlFJREFnTnZDd1lLQkFrRkFnRUNid0FCQVdZeE1DZ25IeDRCQURVME1EZ3hPQ3dySnk4b0x5TWlIaVlmSmhRU0FCMEJIUXdGRkNzQklnY0dCd1lWRkJjV0R3RUdGajhCTmhjV016WTNOamMySmljbUp5WUJJaVkwTmpJV0ZBWXpJaVkwTmpJV0ZBWXpJaVkwTmpJV0ZBWUI5SDVyYUQwK09Bb0dQQVFSREtZTkZHK0JmR3RvUEQ4QlB6NW9hLzZjSHk0dVB5MHR4eDh1TGo4dExjY2ZMaTQvTFMwREJUazRYMkp6Wm1ZUEVxTU1FQU0vQmdvOUFUbzRYMkxvWTJBM092NE1Majh0TFVBdExqOHRMVDh1TGo4dExUOHVBQUFBQXdBQS81QUR3Z01zQUJRQUtRQTdBRUpBUHdZQkFBQURCQUFEWUFnQkJBQUZBZ1FGWUFjQkFnRUJBbFFIQVFJQ0FWZ0FBUUlCVEN3cUZoVUJBRFV5S2pzc095QWZGU2tXS1FzS0FCUUJGQWtGRkNzQklnY0dCd1lVRnhZWEZqSTNOamMyTkNjbUp5WURJaWNtSnlZME56WTNOaklYRmhjV0ZBY0dCd1lUSVNJR0J3WVhIZ0V6SVRJMk56WW5MZ0VCOUgxcmFUMC9QejFwYS9wc2FENC9QejVvYkgxZFVVNHZMeTh2VGxHNlVVNHZMeTh2VGxGci9uQUxFQUlEQXdFUkN3R1FDeEFDQXdNQ0VBTXNQejVvYlBwc2FENC9QejVvYlBwc2FENC8vTmd2TDA1UnVsRk9MeTh2TDA1UnVsRk9MeThCbEE4S0h5TUxEZzhLSUNJS0R3QUFBQUFCQUFELzhBTGJBdEFBREFBS3R3QUFBR1lUQVFVVkt3RVJGQTRCSndFbU5EY0JOaFlDMnc0VUNQNW9EQXdCbUEwZEFyTDlXQW9PQVFjQlRRa2ZDQUZSQ2c0QUFBTUFBUCtPQThJRE5BQTNBRzRBa2dBOFFEbUtnWGdEQlFBQlJ3QUNBd0p2QUFNRUEyOEFCQUVFYndBQkFBRnZBQUFGQUc4QUJRWUZid0FHQm1hTmpJaUhlM3AyZFVoR0l4QUhCUllySlNJbkppY21CZzhCRGdFbUp5NEJOajhCTmpjMkZoY1dGeFlYSGdFL0FUWXZBU1luSmljdUFRWUhCZzhCRGdFV0Z4NEJOajhCTmlZQlBnRW1KeTRCQmc4QkJoWVhGaGNXTmo4QlBnRVdGeDRCQmc4QkJnY0dKeVluSmljdUFROEJEZ0VmQVJZWEZoY1dGeFkyTnpZM0Z6YzJOQzhCSmlJUEFTY21JZzhCQmhRZkFRY0dGQjhCRmpJL0FSY1dNajhCTmpRbkFjNFJFZzRYQlFzREJ4aEFRaGtjRlJFYWZ4Z2lGQ2tUR1JJSUNRVVRCekFLQ0F3SEJBMGNKbEJSSlJrYmV5d2lHaW9zZW5zdUtnZ0tBVEF0SHlNdkxYZDFMQ1lKQ0F3b0h3WUxBd2NZUUVJWkhCVVJHbjhWSlNvbUdCTUlCd1VUQnk0R0FRVUxCZ1lTRmlJdEoxSWxIaGJWV1FZR05nWVBCbFpUQmc4R05nWUdVMUVHQmpZR0R3WlJWZ1lQQmpZR0JwSUdBZ2dCQWdNSUdCTUxGaGxGUmhsL0dBa0ZBd2dKRkFvTkNRSUhNQXdORGdjR0RSUVhEdzBVQ3h0N0xIWjJMUzhqSGk0cUNCWUJFQzU3ZWl3cUdpSXNKZ2tXQWdNS0FRSURCeGdUQ3hZWlJVWVpmaFlMREJJSUZBZ09DQUlITGdVT0JnMElCaEVQRmdrSURSUVFGdVpZQmc4R05nWUdXMU1HQmpZRkVBWlNVUVlQQmpZR0JsRlhCUVUyQmc4R0FBQUFBQVVBQVArUUE4SURMQUFQQUI4QUx3QkhBRjhBYWtCbkRBRUFBQUVDQUFGZ0NnMENBZ0FEQ1FJRFlCQUJDUUFMQkFrTFlBY09BZ1FBQlFZRUJXQVBBUVlJQ0FaVUR3RUdCZ2hZQUFnR0NFeEtTREl3SWlBU0VBSUFXbGRTVDBoZlNsOUNQem8zTUVjeVJ5b25JQzhpTHhvWEVCOFNId29IQUE4Q0R4RUZGQ3NCSVNJR0hRRVVGak1oTWpZOUFUUW1CeUVpQmgwQkZCWXpJVEkyUFFFMEpnTWhJZ1lkQVJRV015RXlOajBCTkNZSElTSW1QUUUwSmlzQklnWWRBUlFXTXlFeU5qMEJOQ1lESVNJbVBRRTBKaXNCSWdZZEFSUVdNeUV5TmowQk5DWURwZnllQ3hFUkN3TmlDeElTQy8xZkRCRVJEQUtoQ3hJU0MvMWZEQkVSREFLaEN4SVNDLzBTREJFU0N6b0xFUkVMQTJJTEVoSUwvUklNRVJJTE9nc1JFUXNEWWdzU0VnTXNFZ3RnREJFUkRHQUxFdWNTQ3pvTEVoSUxPZ3NTL244UkREa01FUkVNT1F3UndCRU1oZ3dSRVF6NkN4SVNDem9MRWdHQkVRdUhDeElTQy9vTEVoSUxPZ3NTQUFBQ0FBQUFBQUx1QW9vQUZ3QWxBREJBTFFVQkF3RVZBUUlBQWtjQUFRTUJid0FEQUFOdkJBRUFBZ0J2QUFJQ1pnSUFJaUFTRHdvSEFCY0NGd1VGRkNzQkl5SW1QUUUwSmlzQklnWVZFUlFXTXlFeU5qVVJOQ1kzSnlZaUJoMEJGQlk3QVRJMk5BTGFqQmtqREFqSUdTTWpHUUY4R1NNTUNJUUVEQWdZRUdvR0NBR3VJeG1NQ0F3akdmNGdHU01qR1FFc0NBeFVoQVFJQm1vUUdBZ01BQUFBQlFBQUFBQURGZ0tLQUJjQUp3QTNBRWNBVndCd1FHMEZBUUVBTUNnQ0JnVlFTQUlKQ2cwQkFnbEFPQUlIQWdWSEN3RUFBQUVEQUFGZ0RBRURBQVVHQXdWZ0FBWUFDZ2tHQ21BQUNRZ0JBZ2NKQW1BQUJ3UUVCMVFBQndjRVdBQUVCd1JNR2hnQ0FGUlNURXBFUWp3Nk5ESXNLaUlmR0NjYUp4SVBDZ2NBRndJWERRVVVLd0VoSWdZZEFSUVdNeUV5RmhVUkZCWTdBVEkyTlJFMEpnY2hJZ1lWRVJRV015RXlOalVSTkNZRk5EWTdBVElXSFFFVUJpc0JJaVkxRnhRR0t3RWlKajBCTkRZN0FUSVdGVGNVQmlzQklpWTlBVFEyT3dFeUZoVUMydjdBR1NNR0JBRWlHU01HQkFvWkl5T2wvc0FaSXlNWkFVQVpJeVArdXd3SXlBZ01EQWpJQ0F6d0RBaklDQXdNQ01nSURDZ01DUEFJREF3SThBZ01Bb29qR1FvRUJpTVovc29FQmlNWkFWUVpJNHdqR2Y2c0dTTWpHUUZVR1NOa0NBd01DQlFJREF3SThBZ01EQWdVQ0F3TUNHUUlEQXdJRkFnTURBZ0FDUUFBLzVBRHdnTXNBQThBSHdBdkFEOEFUd0JmQUc4QWh3Q2ZBSlpBa3hRQkFBQUJBZ0FCWUJJWEJoWUVGUVlDQndVQ0F4RUNBMkFjQVJFQUV3Z1JFMkFQR2d3WkNoZ0dDQTBMQWdrT0NBbGdHd0VPRUJBT1ZCc0JEZzRRV0FBUURoQk1pb2h5Y0dKZ1VsQkNRREl3SWlBU0VBSUFtcGVTajRpZmlwK0NmM3AzY0lkeWgycG5ZRzlpYjFwWFVGOVNYMHBIUUU5Q1R6bzNNRDh5UHlvbklDOGlMeG9YRUI4U0h3b0hBQThDRHgwRkZDc0JJU0lHSFFFVUZqTWhNalk5QVRRbUJTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1loSXlJR0hRRVVGanNCTWpZOUFUUW1BU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZaEl5SUdIUUVVRmpzQk1qWTlBVFFtQnlFaUpqMEJOQ1lyQVNJR0hRRVVGak1oTWpZOUFUUW1BeUVpSmowQk5DWXJBU0lHSFFFVUZqTWhNalk5QVRRbUE2WDhuZ3NSRVFzRFlnc1NFdjNhaGd3UkVReUdEQkVSQVFLSEN4SVNDNGNMRVJFQkFvY0xFaElMaHdzU0V2M2FoZ3dSRVF5R0RCRVJBUUtIQ3hJU0M0Y0xFUkVCQW9jTEVoSUxod3NTRWd2OUVnd1JFZ3M2Q3hFUkN3TmlDeElTQy8wU0RCRVNDem9MRVJFTEEySUxFaElETEJJTFlBd1JFUXhnQ3hMbkVnczZDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1MvbjhSRERrTUVSRU1PUXdSRVF3NURCRVJERGtNRVJFTU9Rd1JFUXc1REJIQUVReUdEQkVSRFBvTEVoSUxPZ3NTQVlFUkM0Y0xFaElMK2dzU0VnczZDeElBQUFBQUJBQUEvNUFEeVFNc0FBOEFKd0EvQUU4QWFFQmxBQXdHREc4QURRVUhCUTBIYlFBSEFnVUhBbXNFQVFJSUJRSUlhd3NCQ0FNRkNBTnJBQU1BQlFNQWF3QUFDUVVBQ1dzQUFRb0JjQUFHQUFVTkJnVmdBQWtLQ2dsVUFBa0pDbGdBQ2drS1RFMUtSVUk5T3pZMU5ETWtGUkVVSkJRak5USU9CUjBySlRRbUl5RWlCaDBCRkJZeklUSTJOUU1qSWdZZkFSWXlQd0UySmlzQk5EWTNOak0xSWdjT0FRVW1JZzhCQmhZN0FSUU9BU01WTWpjMk56WTFNekkySnhNMEppTWhJZ1lkQVJRV015RXlOalVCZ1JJTC90OExFUkVMQVNFTEV1VmVEd3NJbWdZUEJwb0lDdzViTnlzdUwxVkhSVkVDaUFZUEJwb0lDdzVkTVZnNVZVaEdLQ3BlRHdzSUFoSUwvdDhMRWhJTEFTRUxFb0VMRWhJTDFBc1NFZ3NCL2hNSW9BUUVvQWtTTDFrY0hIUXBLWTAwQkFTZ0NCTTVWekIwS1NsRlNGVVRDQUhqQ3hJU0M5UUxFaElMQUFBQ0FBRC90d09iQXdVQUR3QTZBRHhBT1FBREFBTnZCd0VBQWdCdkJBZ0NBZ1VDYndBRkFRVnZBQUVHQVc4QUJnWm1FaEFDQURJd0tpZ2pJUm9YRURvU09nb0hBQThDRHdrRkZDc1RJeUlHRlJFVUZqc0JNalkxRVRRbUJTTWlKajBCTkNZckFTSUdIUUVVQmdjR0l5SUdGUkVVRmpNV0Z4WVhGaGNXTXpJM05qYzJQUUUwSnNwZ0RCRVJEREFnTFJJQ2VYTWZMaTBnTUFzU0xDUW1MUXdSRHd3cktSWXZLeHNxTGxjeFF5SW9MUUcrRVF6K1Jnc1NMaDhCaWd3UkV5NGZ3Q0F0RVF4ek0xMGNIaEVNL29BTUVRSUtCUTROQmdnS0RpVXJUL0FnTFFBQUFBQUNBQUQva0FQQ0F5d0FId0JEQUVkQVJEQUJCUVlCUndBR0JRWnZCd0VGQUFWdkFnZ0NBQVFBYndBRUFRUnZBQUVEQXdGVUFBRUJBMWdBQXdFRFRBSUFQajAxTWlvcElpRWFGeElQQ2djQUh3SWZDUVVVS3lVaklnWWRBUlFHSXlFaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1CUll5TndFMk5DOEJKaUlQQVFZbU5SRXVBU3NCSWdZVkVSUUdMd0VtSWc4QkJoUVhBNlU2Q3hJUkRQMkdEQkVTQ3pvTEVTMGZBd0lnTFJMK01RZ1lDQUVFQ0FncENCY0piQWdZQVJRS09nc1NHQWhzQ1JjSUtRZ0kvaElMd0F3UkVRekFDeElTQy83OElDMHVId0VFQ3hKL0NRa0JCQWdYQ1NnSkNXc0pDUTBCbWdzU0VndithQTBKQ1dzSkNTb0pGd2dBQUFBQUFRQUFBQUFEd3dLa0FCY0FKRUFoQUFJQUFtOEFBQUVBYndBQkF3TUJWQUFCQVFOWUFBTUJBMHdYRXhNV0JBVVlLeVVCSmpRL0FUWXlId0VXTWpjQk5qSWZBUllVQndFR0lnRnYvc01JQ0NvSkdRbnVCaEVHQWRNSkdRa3FDQWo5NEFrWklRRS9DUmtJS3dnSThRVUZBZGNKQ1NvSUdnajkyZ29BQUFFQUFQKzFBdThEQlFBWEFCRkFEZ0FBQVFCdkFBRUJaaDhXQWdVV0t3VUJKalEzQVRZeUh3RVdGQWNCQmhRWEFSWVVEd0VHSWdLUy9uQUpDUUdRQ0JvSUtna0ovc01JQ0FFNkNBZ3JCeGREQVlvSkdRZ0Jpd2dJS3dnYUNQN0tDQmtKL3NvSUdnZ3FCd0FBQUFRQUFQK1FBOElETEFBVkFDd0FRZ0JZQUU5QVRGRklEZ1VFQVFBN01pVWNCQUlFQWtjSENBSUFBUUJ2QUFFR0FXOEFCZ01HYndBREJBTnZBQVFDQkc4RkNRSUNBbVlZRmdJQVYxUkxTa0UrTlRRakloWXNHQ3dNQ3dBVkFoVUtCUlFyQVNFaUJoOEJCd1lVSHdFV01qOEJGeFkyTlJFMEpnRWhNalltTHdFM05qUXZBU1lpRHdFbkpnWVZFUlFXSlJFMEpnOEJKeVlpRHdFR0ZCOEJCd1lXTXlFeU5nRVJGQlkvQVJjV01qOEJOalF2QVRjMkppTWhJZ1lEcS83VkRnY01YcTBIQjBjSUZBbXZYZ3NXRHZ5UEFTa0pDZ0lJWHEwSUNFY0hGUW10WUEwWEVnT0pGZ3RlclFjVkNVY0hCNjllREFjT0FTZ0pEZnhsR1F0Z3J3Z1dCMGNJQ0sxZUN3WVAvdGdLRkFNc0ZndGVyUWNWQ1VjSEI2OWVEQWNPQVNnSkRmeGtEQklIWUs4SUZnZEhDQWl0WGdzR0QvN1lDaFVYQVNzT0J3eGVyUWdJUndjVkNhOWVDeFlPQTNIKzJBOEdDMTZ0QndkSENCUUpyV0FOR0JNQUFBQUFBZ0FBLzRZRHl3TXhBRHNBY1FBUFFBd2pBUUJGQUFBQVppUUJCUlVySlM4QkppY21CZzhCRGdFbUp5NEJOajhCTmpjMkZ4WVhGaGNlQVQ4Qk5pY21KeVlYSmljbUp5WUdCd1lQQVE0QkZ4WVhGaGNXTmo4Qk5qUW1BU1luSmdZUEFRWVdGeFlYRmo4QlBnRVdGeDRCQmc4QkJnY0dKeVluSmljdUFROEJEZ0VYRmhjV0Z4NEJOamMyUHdFMk56WW1BZ3NvRHhFSkJRNEVDUnhKU3h3Z0dCTWRraHNuTHkwZ0Vnb0pCaFlITmdzSkJRaGhVeDBSSmpVdFhpZ2pHSTB5Snc4UE1ESkhSSXcwTUFZTUFWbzBSVU9HTVN3S0NnMHBLQTRKQ2h0S1Nod2dHUk1la2hvbk1DMGNGZ29KQmhZSE5RWUJCUWdURWh3cFhGMHBJeG1TTlJFU0tEQUdCQVFEQWdNRUNod1dEaGtiVGxBZWtoa09DeEVQRWdvUENnSUlOZ3dSQndsc1hSc0pHUW9JRFJZVUdJMHloMEpGTXpjVUZDTTBNUVFRRFFLME1BOFBLRElxQ2hzQ0F3d0RDUWtjRmcwWkcwOVFIcElhREF3U0RCUUxEZ3NDQ1RZRkVBZ05FUlFSR2hFT0ZSUVpralJIUllzQUFBRUFBUC9iQTNVQzNnQXZBRGxBTmlzQkF3RUJSd0FBQkFCdkFBRUNBd0lCQTIwQUF3TnVCUUVFQWdJRVZBVUJCQVFDV0FBQ0JBSk1BQUFBTHdBdk54a1hIQVlGR0NzQkppY21KeVkvQVRZMEx3RW1JZ2NCQmhRWEFSWXlQd0UyTkM4QkpqWTNGaGNXRnhZWEZCWTdBVEkySnk0Qkp5WUJjUUlEQlFJQ0JXc0pDU2dKRndqKy9Ba0pBUVFJRndrb0NRbHBDUWdLYWxwWU5qZ0dFZ3M2RFE0Q0I0aHdkUUgyQXdNSEJna0Zhd2tYQ1NvSkNmNzhDQmNKL3Z3SUNDa0lHQWhzQ0JZREJEWTFXRnRyQ3hBU0RZcmxRMFVBRFFBQS81QURtd01zQUE4QUh3QXZBRDhBVHdCZkFHOEFmd0NQQUo4QXJ3Qy9BTThBd0VDOUdnRUFBQUVDQUFGZ0hRWWNCQnNGQWdjRkFnTUlBZ05nSUF3ZkNoNEZDQTBMQWdrT0NBbGdJeElpRUNFRkRoTVJBZzhVRGc5Z0poZ2xGaVFGRkJVVkZGUW1HQ1VXSkFVVUZCVllHUmNDRlJRVlRNTEFzckNpb0pLUWdvQnljR0pnVWxCQ1FESXdJaUFTRUFJQXlzZkF6OExQdXJld3Y3Sy9xcWVncjZLdm1wZVFuNUtmaW9lQWo0S1BlbmR3ZjNKL2FtZGdiMkp2V2xkUVgxSmZTa2RBVDBKUE9qY3dQekkvS2ljZ0x5SXZHaGNRSHhJZkNnY0FEd0lQSndVVUt3RWhJZ1lkQVJRV015RXlOajBCTkNZRkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUZJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZRkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWURmdnpzREJFUkRBTVVEQkVSL1kydERCRVJESzBMRWhJQkthME1FUkVNclFzUkVRRW9yUXNTRWd1dERCRVIvWTJ0REJFUkRLMExFaElCS2EwTUVSRU1yUXNSRVFFb3JRc1NFZ3V0REJFUi9ZMnREQkVSREswTEVoSUJLYTBNRVJFTXJRc1JFUUVvclFzU0VndXREQkVSL1kydERCRVJESzBMRWhJQkthME1FUkVNclFzUkVRRW9yUXNTRWd1dERCRVJBeXdTQzJBTUVSRU1ZQXNTNXhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMT2dzU0VnczZDeElTQ3pvTEVzQVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMT2dzU0VnczZDeExCRVF3NURCRVJERGtNRVJFTU9Rd1JFUXc1REJFUkREa01FUkVNT1F3UndCSUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFZ0FBQVFBQUFBQUROQUpQQURBQU9VQTJKUTRDQUFFWkFRUUFBa2N0QlFJQlJRVUJCQUFFY0FJQkFRQUFBVlFDQVFFQkFGZ0RBUUFCQUV3QUFBQXdBREEySGlZb0JnVVlLeVVpSnlZbkF3Y09BU3NCSWlZOUFUUTJPd0UzUGdFZUFSY1ROejRCSGdFZkFUTXlGaDBCRkFZckFTSW1Md0VIRGdFQjZnY0hEQVJPUVFNUENWb0lEQXdJUmx3RUVCUVBBazlvQkJBU0RnUTBXZ2dNREFodUNROEVJWEFFRG9JRUJoQUJPSlVKQ2d3SUZBZ00xQWtLQWd3Sy9zVG5DUW9DQ3doNERBZ1VDQXdLQ0UzM0NBb0FDQUFBQUFBRERBS0tBQThBSHdBdkFEOEFUd0JmQUc4QWp3RFlRQnlGQVJNT0RRRUZBR2hnU0VBb0lBWUVCVmhRT0RBWUVBWUNBd1JIUzdBVlVGaEFQUkVCRHc0T0QyTVNFQlVERGdBVEFBNFRZUlFCQUEwSkFnVUVBQVZnREFnQ0JBc0hBZ01DQkFOZ0NnWUNBZ0VCQWxRS0JnSUNBZ0ZZQUFFQ0FVd2JRRHdSQVE4T0QyOFNFQlVERGdBVEFBNFRZUlFCQUEwSkFnVUVBQVZnREFnQ0JBc0hBZ01DQkFOZ0NnWUNBZ0VCQWxRS0JnSUNBZ0ZZQUFFQ0FVeFpRRE54Y0FFQWlZZUNnSDE4ZVhoMWRIQ1BjWTlzYW1SaVhGcFVVa3hLUkVJOE9qUXlMQ29rSWh3YUZCSUtCd0FQQVE4V0JSUXJBU0VpQmhVUkZCWXpJVEkyTlJFMEpnRVVCaXNCSWlZOUFUUTJPd0V5RmhVMUZBWXJBU0ltUFFFME5qc0JNaFlWRnhRR0t3RWlKajBCTkRZN0FUSVdGVFVVQmlzQklpWTlBVFEyT3dFeUZoVVhGQVlyQVNJbVBRRTBOanNCTWhZVk5SUUdLd0VpSmowQk5EWTdBVElXRlJNak5UUW1JZ1lkQVNNMU5DWWlCaDBCSXlJR0hRRVVGak1oTWpZOUFUUW1Bdmo5K0FnTUl4a0J1QmtqRFA2UURBZ29DQXdNQ0NnSURBd0lLQWdNREFnb0NBeU1EQWdvQ0F3TUNDZ0lEQXdJS0FnTURBZ29DQXlNREFnb0NBd01DQ2dJREF3SUtBZ01EQWdvQ0F3b01oY2hHTFFYSVJneUdTTU1DQUlJQ0F3akFhNE1DUDdVR1NNakdRRXNDQXorNkFnTURBZ29DQXdNQ0dRSURBd0lLQWdNREFpMENBd01DQ2dJREF3SVpBZ01EQWdvQ0F3TUNMUUlEQXdJS0FnTURBaGtDQXdNQ0NnSURBd0lBUVFVRVJjWEVSUVVFUmNYRVJRakdSUUlEQXdJRkJrakFBQUdBQUQvdHdPYkF3VUFEd0FmQUM4QVB3QlBBRjhBVjBCVURnUU5BZ3dGQUFFQWJ3VURBZ0VHQVc4UkNoQUlEd1VHQndadkN3a0NCd2RtVWxCQ1FESXdJaUFTRUFJQVdsZFFYMUpmU2tkQVQwSlBPamN3UHpJL0tpY2dMeUl2R2hjUUh4SWZDZ2NBRHdJUEVnVVVLd0VqSWdZVkVSUVdPd0V5TmpVUk5DWWhJeUlHRlJFVUZqc0JNalkxRVRRbUlTTWlCaFVSRkJZN0FUSTJOUkUwSmdFaklnWVZFUlFXT3dFeU5qVVJOQ1loSXlJR0ZSRVVGanNCTWpZMUVUUW1JU01pQmhVUkZCWTdBVEkyTlJFMEpnRVhyUXdSRVF5dEN4SVNBU210REJFUkRLMExFUkVCS0swTEVoSUxyUXdSRWYyTnJRd1JFUXl0Q3hJU0FTbXREQkVSREswTEVSRUJLSzBMRWhJTHJRd1JFUU1GRVF6K3VRc1JFUXNCUnd3UkVReit1UXNSRVFzQlJ3d1JFUXordVFzUkVRc0JSd3dSL2pNU0MvNjVEQkVSREFGSEN4SVNDLzY1REJFUkRBRkhDeElTQy82NURCRVJEQUZIQ3hJQUFBQUFCZ0FBQUFBRHdnS2xBQThBSHdBdkFEOEFUd0JmQUVSQVFRQUNBUUp2Q3dFSkNBbHdBQUVBQUFNQkFHQUFBd1lCQkFVREJHQUhBUVVJQ0FWVUJ3RUZCUWhZQ2dFSUJRaE1YVnBWVWsxS05UVTFOVFUxTlRVeURBVWRLeE1VQmlzQklpWTlBVFEyT3dFeUZoVWhOQ1lqSVNJR0hRRVVGak1oTWpZMUJUUW1Ld0VpQmgwQkZCWTdBVEkyTlNVMEppTWhJZ1lkQVJRV015RXlOalVGTkNZckFTSUdIUUVVRmpzQk1qWTFKVFFtSXlFaUJoMEJGQll6SVRJMk5ab1NDem9MRVJFTE9nc1NBeWdTQy8xZkRCRVJEQUtoQ3hMODJCSUxPZ3NSRVFzNkN4SUMyeElML2F3TUVSRU1BbFFMRXYwbEVnczZDeEVSQ3pvTEVnTW9FZ3Y5WHd3UkVRd0NvUXNTQWs0TEVSRUxPZ3dSRVF3TUVSRU1PZ3NSRVF2VEN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0M5TUxFaElMT2dzU0VnczZDeElTQ3pvTEVoSUxBQUFBQUFZQUFBQUFBOElDcFFBUEFCOEFMd0EvQUU4QVh3QThRRGtDQVFBREFRRUVBQUZnQmdFRUJ3RUZDQVFGWUFvQkNBa0pDRlFLQVFnSUNWZ0xBUWtJQ1V4ZFdsVlNUVW8xTlRVMU5UVTFOVElNQlIwckV6UW1Ld0VpQmgwQkZCWTdBVEkyTlNVMEppTWhJZ1lkQVJRV015RXlOalVGTkNZckFTSUdIUUVVRmpzQk1qWTFKVFFtSXlFaUJoMEJGQll6SVRJMk5RVTBKaXNCSWdZZEFSUVdPd0V5TmpVbE5DWWpJU0lHSFFFVUZqTWhNalkxbWhJTE9nc1JFUXM2Q3hJREtCSUwvVjhNRVJFTUFxRUxFdnpZRWdzNkN4RVJDem9MRWdMYkVndjlyQXdSRVF3Q1ZBc1MvU1VTQ3pvTEVSRUxPZ3NTQXlnU0MvMWZEQkVSREFLaEN4SUNpQXdSRVF3NkN4RVJDem9NRVJFTU9nc1JFUXZUQ3hJU0N6b0xFaElMT2dzU0VnczZDeElTQzlNTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTEFBQUFBUUFBLzZBRHdnTWJBQ3NBRTBBUUFnRUFBUUJ2QUFFQlpqNGVNd01GRnlzQkV4NEJNeUV5RmdZUEFRNEJGeE1XRGdFdkFTWWlEd0VHTGdFM0V6WW1Md0V1QVRZeklUSTNFejRCRmdJUFdBTVBDUUVoRGhBQ0Mrb0lCUU5jQkEwWUMra0hFd2pyQ3hrTkJWZ0RCUWZyQ3dJUkRRRWhGZ1ZhQkJjWEF3UCs4d2dKRlJzSXJRWVNDZjdyRFJZR0NLb0ZCYW9JQmhZTkFSVUpFZ2F0Q0JzVkVRRVBEUWtMQUFBQUFRQUEvN1lDN3dNRkFCY0FFVUFPQUFFQUFXOEFBQUJtSHhZQ0JSWXJDUUVXRkFjQkJpSXZBU1kwTndFMk5DY0JKalEvQVRZeUFWZ0JqZ2tKL25JSUdRa3FDUWtCT1FrSi9za0pDU29JR0FMOS9uWUlHZ2orZGdrSktnZ2FDQUUyQ0JvSUFUWUlHZ2dxQ0FBQUFRQUFBQUFEbXdKWkFCY0FJRUFkQXdFQkFnRnZBQUlBQUFKVUFBSUNBRmdBQUFJQVRCTVRGeElFQlJnckNRRUdJaWNCSmpRL0FUWXlGd0VXTWpjQk5qSWZBUllVQTVQK2RnZ2FDUDUyQ1FrcUNSa0lBVFlJR2dnQk5nZ2FDQ29JQWZ6K2Nna0pBWTRJR2dncUNRbit4d2tKQVRjSkNTb0lHQUFBQUFRQUFQKzJBOVVDdUFBa0FEUUFSQUJVQUVwQVJ3TUJBQWdKQ0FBSmJRQUNDUW9KQWdwdEFBUUtCSEFBQlFBR0FRVUdZQWNCQVFBSUFBRUlZQUFKQWdvSlZBQUpDUXBZQUFvSkNreFNUMHBITlRVMU9CY1RGVGdSQ3dVZEt5VW1JZzhCQmlZOUFUUW1Ld0VpQmgwQkZBWWlMd0VtSWc4QkJoUWZBUll5UHdFMk5DY0JOQ1lqSVNJR0hRRVVGak1oTWpZMUZUUW1JeUVpQmgwQkZCWXpJVEkyTlJVMEppTWhJZ1lkQVJRV015RXlOalVCMVFnWUNFVUpHQkVNT2dzUkRCQUZSUWtYQ1NvSkNkMEpGd25mQ0FnQjFSSUwvVGdMRVJFTEFzZ0xFaElML2ZrTUVSRU1BZ2NMRWhJTC9ya0xFaElMQVVjTEV1OElDRVlJQ1EzK0N4RVJDLzRKQ2dWR0NBZ3JDQmdJM1FrSjN3Z1lDQUhWREJFUkREa01FUkVNclFzUkVRczZDeElTQzYwTEVoSUxPZ3NTRWdzQUFRQUEvNUVEd2dNckFFa0FQRUE1QUFJQkFtOERBUUVBQVc4SUFRWUZCd1VHQjIwQUJ3ZHVCQUVBQlFVQVZBUUJBQUFGV0FrQkJRQUZURUUvSkJRakxTTWtGU01sQ2dVZEt3RW5KZ1lkQVNNaUpqMEJNekkrQVM4QkppSVBBUVlXT3dFVkZBWXJBVFUwSmc4QkJoUWZBUlkyUFFFek1oWWRBU01pQmg4QkZqSS9BVFltS3dFMU5EWTdBUlVVSGdFL0FUWTBBN3lnQ0JQQUNRcHhDUTBCQmE0RkVBV3VDQXdPYlFvSndCTUlvQVFFb0FnVHdBa0tjUTRNQ2EwRkVBYXRDQXNQYlFvSndBb05CS0FHQVd5dENBc1Bid29Kd0FvTkJLQUZCYUFJRThBSkNuRU9EQWl1QlJBRnJnZ01EbTBLQ2NBVENLQUVCS0FJRThBSkNuRUpEUUVHclFjUUFBQUFCUUFBLzdjRDZBTUZBQThBSHdBdkFEOEFWUUE5UURvQUJnQUdid0FIQXdkd0FBQUFBUVFBQVdBSUFRUUpBUVVDQkFWZ0FBSURBd0pVQUFJQ0ExZ0FBd0lEVEUxTEp6VTFOVFUxTlRVeUNnVWRLd0UwSmlNaElnWWRBUlFXTXlFeU5qVUROQ1lyQVNJR0hRRVVGanNCTWpZMUV6UW1JeUVpQmgwQkZCWXpJVEkyTlFFMEppc0JJZ1lWRVJRV093RXlOalVCSmdZZEFTTWlCaDBCRkJZN0FSVVVGajhCTmpRbkErZ1JEUDY1Q3hJU0N3RkhEQkZORVF6NkN4SVNDL29NRVUwUkRQNjVDeElTQ3dGSERCSCtNeElMT2dzU0VnczZDeEwrbWdrU2ZRc1NFZ3Q5RXdpZkJRVUNkUXNTRWdzNkN4SVNDLzVzREJFUkREa01FUkVNQVNBTUVSRU1PZ3NSRVFzQmxBd1JFUXo4N0F3UkVRd0NXQWdMRG5BUkREb0xFWElPREFtdEJnOEdBQUFBQWdBQS83Y0RkUUs0QUE4QU5BQnNTN0FSVUZoQUpBVUJBd1FEYndBRUFnUnZCd0VDQUFBQ1l3WUJBQUVCQUZRR0FRQUFBVmtBQVFBQlRSdEFJd1VCQXdRRGJ3QUVBZ1J2QndFQ0FBSnZCZ0VBQVFFQVZBWUJBQUFCV1FBQkFBRk5XVUFYRVJBQ0FDd3BJeUViR0JBMEVUUUtCd0FQQWc4SUJSUXJKU0VpQmgwQkZCWXpJVEkyUFFFMEppVW1KeTRCTlJFME5qc0JNaFlWRVJRZUFSY1dQZ0UxRVRRMk93RXlGaFVSRkFjR0J3WURXUDA0Q3hJU0N3TElDeElTL29SSFBEbEVGaEFuRUJZbVFpZ3RTeXdXRUNjUUZpY21RRUlxRVFzNkRCRVJERG9MRVUwRUp5WjlSd0VHRUJZV0VQNzRLVWN0QWdNb1NTd0JEUkFXRmhEKzgweEFQaU1rQUFBQUJRQUFBQUFETkFKaUFCa0FNUUE2QUVNQVRBQmJRRmdMQVFFQUVRRUNBd0pIQUFBQkFHOEpBUUVJQmdJRUF3RUVZQXdIQ3dVS0JRTUNBZ05VREFjTEJRb0ZBd01DV0FBQ0F3Sk1SVVE4T3pNeUd4cEpTRVJNUlV4QVB6dERQRU0zTmpJNk16b3NLaG94R3pFbkRRVVZLd0VtTnpZMU5DNEJJeUlHQng0Q0ZSUUhOamMySHdFV05pY0JJZzRCRlJRWEZnOEJCaFkvQVRZWEZqTXlQZ0UwTGdFSElpWTBOaklXRkFZeklpWTBOaklXRkFZeklpWTBOaklXRkFZREZ3SUVHenRsUENaSEhUNWpPUlVlR3djRlFBZ05BdjVsUEdVN0hBTUJGUU1OQ1VBSUJEVS9QR1U3TzJXMEVCZ1lJUmNYWnhBWUdDRVhGMmNRR0JnaEZ4Y0JIUWdFTVRZNVlEa1pGZzFOYmo4M0x3Z1FCQU1YQXcwSkFTTTVZRGszTUFjRlF3a05BeGNDQXg4NVlISmdPZm9ZSVJjWElSZ1lJUmNYSVJnWUlSY1hJUmdBQUFBQUJnQUFBQUFEQWdLVUFCSUFLZ0E2QUVvQVdnQm9BSFZBY2hnQkJnUXpLd0lEQUNnQkN3TlRTd0lLQzBNN0FnZ0pCVWNBQUFZREJnQURiUUFFREFFR0FBUUdZQWNOQWdNQUN3b0RDMkFBQ2dBSkNBb0pZQUFJQUFVQ0NBVmdBQUlCQVFKVUFBSUNBVmdBQVFJQlRCVVRaV05YVlU5TlIwVS9QVGMxTHkwbEloMGFFeW9WS2lJMUVRNEZGeXNsRVNJR0ZSRVVGak1oTWpZMUl5SW5KaWNtQVNNaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZOUFUUW1KVFEyT3dFeUZoMEJGQVlyQVNJbU5SY1VCaXNCSWlZOUFUUTJPd0V5RmhVM0ZBWXJBU0ltUFFFME5qc0JNaFlWTnljbUlnWWRBUlFXT3dFeU5qUUJJaGtqSXhrQkxCa2o4Q3NSSGc0UUFjeGtHU01NQ0tBWkl5TVpBU3daSXd6K3VBd0lQQWdNREFnOENBemNEQWkwQ0F3TUNMUUlEQ2dNQ053SURBd0kzQWdNVEZ3RURBZ1lFRUlHQ053QlFDTVovb1FaSXlNWkJBZ1lIQUU4SXhsa0NBd2pHZjZFR1NNakdmQUlEQ2dJREF3SUZBZ01EQWp3Q0F3TUNCUUlEQXdJWkFnTURBZ1VDQXdNQ0tSY0JBZ0dRaEFZQ0F3QUFRQUEvN1VEbndNRkFFRUFKa0FqQXdFQUFRQnZBQUVDQWdGVUFBRUJBbGdBQWdFQ1RBSUFQRGswTVFCQkFrRUVCUlFyRXpNeUZoMEJGQlkzTmpjK0FSY1dGeDRCRnhZR0J3NEJCeTRCUFFFME5qYytBVGMyTnpZdUFTY21KeVlHQndZSEJoWTdBVElXSFFFVUJpTWhJaVkxRVRRMmFqb0xFUTBLQ1F0SXdXaEpQbGRoQWdJNk56U0dTZzhVRHd4RmRTVVdDUThXUnpjcElFMlNOZ3dMQkE4T2h3c1FEZ3YrbmdvUEVRTUZFUXlHRGdnSURBZEpPUlFQS1RteVpVNlZPRGRBQmdJU0RUa01Ed0lHU1Q0bEpEOTdaaUVYQ0JNb05nc1FDd3dTQ3p3TEVBOEtBVjRNRVFBQUFBQUdBQUQvdHdQQ0F3VUFEd0FmQUM4QVB3QlVBSGdBL2t1d0VWQllRRndBQVFvSUNnRUliUUFBQ0FNREFHVUFDUUlMQWdrTGJRQUtGQUVJQUFvSVlBQURFUUVDQ1FNQ1lSVUJDd0FNQlFzTVlCSUJCQUFGRFFRRllBQU5BQkFHRFJCZ0FBOEhEZzlVRXdFR0FBY09CZ2RnQUE4UERsZ0FEZzhPVEJ0QVhRQUJDZ2dLQVFodEFBQUlBd2dBQTIwQUNRSUxBZ2tMYlFBS0ZBRUlBQW9JWUFBREVRRUNDUU1DWVJVQkN3QU1CUXNNWUJJQkJBQUZEUVFGWUFBTkFCQUdEUkJnQUE4SERnOVVFd0VHQUFjT0JnZGdBQThQRGxnQURnOE9URmxBTjFkVlFVQXlNQ0lnRWhCemNYQnVhV1poWDE1Y1ZYaFhlRTlNUjBSQVZFRlVPamN3UHpJL0tpY2dMeUl2R2hjUUh4SWZOVE1XQlJZckFSVVVCaU1oSWlZOUFUUTJNeUV5RmdFaE1qWTlBVFFtSXlFaUJoMEJGQllGSVNJR0hRRVVGak1oTWpZOUFUUW1CeUVpQmgwQkZCWXpJVEkyUFFFMEpnRXpGUlFXT3dFeU5qVVJOQ1lyQVNJR0hRRVVGaE1qSWdZZEFSUVdPd0VWSXlJR0hRRVVGanNCTWpZOUFUUW1Ld0UxTXpJMlBRRTBKZ1BDRWd2OStRd1JFUXdDQndzUy9kd0JXZ3NTRWd2K3Bnd1JFUUlUL2ZrTUVSRU1BZ2NMRWhLNC9xWU1FUkVNQVZvTEVoTDlRREFTQ3hRTEVSWVFWd3NSRWEra0N4RVJDMzF6RUJZV0VLTU1FUkVNZlhRUUZoWUMxVG9MRVJFTE9nc1NFdjdlRWdzNkN4SVNDem9MRXEwUkREa01FUkVNT1F3UndCSUxPZ3NTRWdzNkN4SUNaL0FNRVJFTUFSY1FGaEVNRXdzUy9vQVNDeE1NRVUwWEVKb1FGaEVNRXdzU1RSWVFtaEFYQUFRQUFQK1FBM1VETUFBZ0FDSUFNZ0JHQUV4QVNSNEJBQUZHT3dJR0JBSkhBZ2NDQUFFRUFRQUViUUFFQmdFRUJtc0FBd0FCQUFNQllBQUdCUVVHVkFBR0JnVllBQVVHQlV3Q0FEZzFNQzBvSlJvWUVRNEpDQUFnQWlBSUJSUXJFek15UFFFMFBnRVhIZ0lWTlJRN0FUSTlBVFFuSmljbUJ3WUhEZ0VISGdFbkZRVTBKaU1oSWdZVkVSUVdNeUV5TmpVbEZnWXJBU0ltUHdFdUFUNENIZ0VWRkFZSDFFMFRPRjgzTWxFdkZFMFRMQ3hKUzFkUVJFRk9BZ0lMRFFLMUxTRDltQjh1TGg4Q2FDQXQvdGdDREFxTUNnc0NJaFlXQ2lnN05TQVZFd0hsRVFJMld6TUVBemhhTXdZUkVRSldTVWNvS1FNRUxDcUxVUWdKRVFpaklDMHRJUDZTSHk0dUgwQUpFQTRMY3c4eE9DZ0xGaTBkRnlnTUFBQUFBUUFBLzdjRHd3TUZBQmNBR0VBVkFnRUFBUUJ2QUFFQlpnSUFEZ3NBRndJWEF3VVVLd0VoSWc0QkZ3RVdGUkVVRmpzQk1qWTFFVFEzQVRZdUFRT2gvS29PRWdFSUFYVVJFd3c2Q3hBVkFYa0lBUklEQlJJYUN2NU1GQjcrNnd3UkVRd0JGUnNYQWJRS0doSUFBUUFBQUFBRG5BSlhBQmNBSUVBZEF3RUJBZ0Z3QUFBQ0FnQlVBQUFBQWxnQUFnQUNUQk1URnhJRUJSZ3JOd0UyTWhjQkZoUVBBUVlpSndFbUlnY0JCaUl2QVNZMFZRR0tDQm9JQVlvSkNTb0lHZ2oreWdnYUNQN0tDQmtKS2dmQUFZNEpDZjV5Q0JrSktna0pBVHNKQ2Y3SENRa3FDUmNBQWdBQS81QUR3Z01zQUJRQVJBQTZRRGNJQVFBRkFHOEhBUVVHQlc4QUJnTUdid0FEQWdOdkJBRUNBUUp2QUFFQlpnRUFQRHM0TnpRekpDTWdIeHdiQ3dvQUZBRVVDUVVVS3dFaUJ3WUhCaFFYRmhjV01qYzJOelkwSnlZbkpnTVhGaFFQQVFZaUx3RW1JZzhCQmlJdkFTWTBQd0UyTkM4QkpqUS9BVFl5SHdFV01qOEJOaklmQVJZVUR3RUdGQUgwZm10cFBEOC9QR2xyL0d4b1BUOC9QV2hzSUpZR0JqWUZFQVdXQmhBRmxnWVFCVFlHQnBZR0JwZ0dCallGRUFhWUJSQUdsZ1VRQlRZR0JwWUVBeXcvUFdocy9HeG9QVDgvUFdocy9HeG9QVC8rSTVZR0VBVTJCZ2FXQmdhV0JnWTJCUkFHbGdVUUJwZ0ZFQVUyQmdhWUJRV1dCZ1kxQmhBRmxnWVFBQUVBQVAvdkE4RUN6UUFqQUMxQUtnQUNBd0p2QUFFQUFYQUFBd0FBQTFRQUF3TUFXQVFCQUFNQVRBSUFIaHNURWdzS0FDTUNJd1VGRkNzVElUSVdEd0VHRkI4QkZqSTNBVFkwSndFbUlnOEJCaFFmQVJZR0l5RWlCaDBCRkJaQkFuOE5DUW00Q1FrcUNSY0lBVkVKQ2Y2dkNCY0pLQWtKdUFrSkRmMkJDeEVQQVNRWUNMa0lHQWdyQ0FnQlV3Z1lDQUZSQ0FncENCY0p1UW9ZRUFzNkRCTUFBQUFBQWdBQS81QUR3Z01zQUNNQVNnQktRRWNBQXdVQ0JRTUNiUUFDQkFVQ0JHc0lBUUFBQVFZQUFXQUFCZ0FGQXdZRllBQUVCd2NFVkFBRUJBZFlBQWNFQjB3Q0FFVkNQVG8xTWkwcUhoc1RFZ29IQUNNQ0l3a0ZGQ3NCSVNJR0hRRVVGanNCTWhZSEFRWVVId0VXTWpjQk5oWWRBUlFXT3dFeU5qVVJOQ1lEQndZZEFSUUdJeUVpSmpVUk5EWTdBVEkyUHdFMkppTWhJZ1lWRVJRV015RXlOalVSTkNZRHFmNlFEQklTREpnT0Nncit1UWtKS0FrWENRRkdDUllVQ3pnTEVnNzZRUklSQy81c0RCRVJETjBNRlFkQ0NBa04vb01mTFMwZkFoc2dMUmdETEE0TE9nd1ZGZ24rdWdrWENTZ0pDUUZIQ0FrTm1Bc1ZGQXdCYmcwTy9qeEVFQmpiREJFUkRBR1VDeEVKQ1VFSkdDMGcvZVVnTFM0ZkFYME5DUUFBQlFBQS83Y0Q2QU1GQUJVQUpRQTFBRVVBVlFCTFFFZ0FDQUlJYndBSkJRbHdBQUlBQXdBQ0EyQUdDZ0lBQndFQkJBQUJZQUFFQlFVRVZBQUVCQVZZQUFVRUJVd0JBRk5RUzBoRFFEczRNekFyS0NNZ0d4Z1FEZ0FWQVJVTEJSUXJBU00xTkNZUEFRWVVId0VXTmowQk16STJQUUUwSmlVMEppTWhJZ1lkQVJRV015RXlOalVETkNZckFTSUdIUUVVRmpzQk1qWTFFelFtSXlFaUJoMEJGQll6SVRJMk5RRTBKaXNCSWdZVkVSUVdPd0V5TmpVQk8zc1RDSjhFQko4SkVuc01FeE1Db1JFTS9ya0xFaElMQVVjTUVVMFJEUG9MRWhJTCtnd1JUUkVNL3JrTEVoSUxBVWNNRWY0ekVnczZDeElTQ3pvTEVnR3JjUThMQ0swR0VBV3RDUXdPYmhFTE9nd1J5Z3NTRWdzNkN4SVNDLzVzREJFUkREa01FUkVNQVNBTUVSRU1PZ3NSRVFzQmxBd1JFUXo4N0F3UkVRd0FBd0FBLzVBRGRRTXdBQUVBTEFCQUFFaEFSVUExQWdZQUFVY0FBZ0VBQVFJQWJRUUhBZ0FHQVFBR2F3QURBQUVDQXdGZ0FBWUZCUVpVQUFZR0JWZ0FCUVlGVEFNQ01pOG5KQjhlR1JjUURna0hBaXdETEFnRkZDc1RGUVVoTlRRK0FUYzJIZ0VYSGdFN0FUSTJKeTRCSnlZSEJnY09BUWNWSWdZVkVSUVdNeUV5TmpVUk5DWURGZ1lyQVNJbVB3RXVBVDRDSGdFVkZBWUh3QUpvL2d3dlVqSXVVVHNNQWdvSFR3Z01BUTljUWtSTVVFUkJUZ0lmTGk0ZkFtZ2dMUzM3QWd3S2pBc0xBeUlYRlF3b096VWdGUk1COWdoV1dqTllPQU1ESWtFcUJnb1BDRWx6SHg4REJDd3FqRkJlTFNEK2toOHVMaDhCYmlBdC9vVUpFQThLY3hBeE55Z0xGaTBkRnlnTUFBSUFBQUFBQXpRQ2dBQVBBRWdBVkVCUk1SWUNCd0lCUndBRUFnUnZCZ3NDQWdrQkJ3TUNCMkFGQVFNQUNBQURDR0FLQVFBQkFRQlVDZ0VBQUFGWUFBRUFBVXdSRUFFQVJVUkFQanM2TnpZdkxTUWpHaGdRU0JGSUNnY0FEd0VQREFVVUt5VWhJZ1lkQVJRV015RXlOajBCTkNZVElnWVZGQllYRGdFbkxnRW5ORGMrQVRVMEppSUdGUlFXRnhZVkRnRUhCaVluUGdFMU5DWWlCaFFXTXhjZUFUTWhNalkvQVRJMk5DWUN4LzVhQnd3akdRRlVHU01MS1JrakN3b05OeUlvT1FJQ0VSVWpNaU1WRVFJQ09TZ2lPQXdLQ3lNeUl5TVpIQUVMQndHcUJ3b0NIQmtqSTZBTENBRVpJeU1aQVFnTEFab2pHUTBaQ0I0akFRSTVLQkVJQng0VEdTTWpHUklmQndnUktEa0NBaVFlQ0JrTkdTTWpNaVBXQndrSkI5WWpNaU1BQUFBQUFRQUFBQUFER1FKNkFCd0FHRUFWQWdFQUFRQnZBQUVCWmdFQUZCSUFIQUVjQXdVVUt3RWlCd1lIQmhVVUZ4WVBBUVlXUHdFMkZ4WXpNamMyTnpZdUFTY21BZXhTUmtNb0tTWUZBeHdFRWd4WUNRaElWbEpHUXlncEFWRkVSZ0o1SmlWQVFVeElRUWdJV1F3UkJCOERCU29tSlVCQm1JRWxKZ0FBQUFFQUFBQUFBMllDUlFBTUFCaEFGUUFCQUFGdkFnRUFBR1lDQUFnSEFBd0NEQU1GRkNzbElTSXVBVGNCTmpJWEFSWUdBMGo5V0FvT0FRY0JUUWtmQ0FGUkNnNTNEaFFKQVpjTURQNXBEaDBBQWdBQS80OER3Z016QUIwQUtnQWtRQ0VCQVFJQkZnRUFBZ0pIQUFFQ0FXOEFBZ0FDYndBQUFHWW9KeUloR1JnREJSUXJCUUUyTnpZbkxnTUhEZ0VIQmg0Q0Z4WTNOamNCRmpJL0FUNEJBVFErQVRJZUFSUU9BU0l1QVFPNi92NG9FUk1LQzF1TnBVNUxjUndjRUZhSlVVaEZRamdCQUFrWENTZ0pBZnpZUTNLR2NrTkRjb1p5UXhVQkFEaENSVWhTaVZVUUhCeHlTazZtakZ3TENoSVJLUDhBQ0Fnb0NSa0Iza055UTBOeWhuSkRRbklBQWdBQS8zOEQwUU03QUJRQVJBQTFRREkxQVFNRUxRRUFBeDBCQVFBRFJ3QUVBd1J2QlFFREFBTnZBZ0VBQVFCdkFBRUJaa0UvT1RjeUx5b25JaDhaRndZRkZDc0JKaWNtQnc0QkJ3WVhIZ0VYRmpjK0FUYzJKeVlERkFZckFTSUdIUUVVQmlzQklpWTlBVFFtS3dFaUpqMEJORFk3QVRJMlBRRTBOanNCTWhZZEFSUVdPd0V5RmhVRE8xbDVkWFY1c1I4Zkh4K3hlWFYxZUxFZ0h4OGZhd3NJMUFjTURBZE5DUXNLQ2RNSkN3MEgwd2tLRFFkTkJ3d0tDZFFIREFLbFdCOGZIeCt4ZVhWMWViSWdIaDRnc25sMWRYbis3QWtMQ3dqVEJ3MExDZE1KQ2dzSlRRY01DZ25VQnd3TENOUUpDZ3dIQUFFQUFQK1NBOElETEFCekFJVkFnaDRWQWdFREp3d0NBQUZoUmdJS0NWaFBBZ3dLQkVjQUJBTUVid1VCQXdFRGJ3Y0JBUUFCYnhBQkNna01DUW9NYlE0QkRBMEpEQTFyQUEwTmJnZ0dBaElFQUFrSkFGUUlCZ0lTQkFBQUNWZ1JEd3NEQ1FBSlRBRUFibXhtWldOaVcxcFZVazFNUlVSQ1FUczVORElzS3lrb0lTQWJHQk1TQ3dvSUJ3QnpBWE1UQlJRckFTTTNOalF2QVNZaUR3RWpOVGMyTkM4QkppSVBBVFUwSmlzQklnWWRBU2NtSWc4QkJoUWZBUlVqSnlZaUR3RUdGQjhCSXlJR0hRRVVGanNCQndZVUh3RVdNajhCTXhVSEJoUWZBUll5UHdFVkZCWTdBVEkyUFFFWEZqSS9BVFkwTHdFMU14Y1dNajhCTmpRdkFUTXlOajBCTkNZRHBZdFZDQWdoQnhJR2xHMlVCd2NoQnhJR1ZCSUxPZ3NTVkFjU0JpRUhCNVJ0bEFjU0JpRUhCMVdMQ3hFUkM0dFZCd2NmQ0JFR2xHK1VCd2NmQ0JNR1ZCQUxPZ3NVVkFnUkJoOElDSkp0bEFnU0JSOElDRk9MQ3hJU0FaaFVDQkVHSVFjSGxHMlVDQklGSVFnSVZZc0xFaElMaTFVSUNDRUhFZ2FVYlpRSEJ5RUhFZ1pVRWdzNkN4SlVCeElHSHdjSGxHdVVCeE1GSHdjSFZZc01GUllMaTFVSEJ4OEhFZ2FRYlpRSEJ4OElFUVpXRWdzNkN4SUFBQUFDQUFELzJnUEZBdDBBSFFBN0FDaEFKUTRCQVFBVkFRSUJBa2NBQUFFQWJ3TUJBUUlCYndBQ0FtWWZIakl3SGpzZk95a0VCUlVySlNZM05qVTBKeVluSmlNaUJ3WUhIZ0VYRmhVVUJ6WTNOaDhCRmpZbkFTSUhCZ2NHRlJRWEZnOEJCaFkvQVRZWEZqTXlOelkzTmpRbkppY21BNWNEQlNrdEswcE5XRDQ2TnkxaW9pNHdHeHNqRGdsMUNRc0MvYXRZVFVrckxTZ0hCU29EQ3dsMURnbE9XMWxNU2lzdExTdEtUUDROQ2toTVUwaEdLU29XRlNZTGExSlZZRWsvQ1JJRkF5OENDd2tCdkNvcFJraFRUa1lOQ25VSkRBTXZBd1V0S2lsR1NLVklSU2txQUFBREFBQUFBQU1SQW5ZQUJRQVpBRThBWlVCaUxoOFhGZ0FGQkFGTEN3SUNBQUpIQ1FFQkJ3UUhBUVJ0QmdFRUFBY0VBR3NBQWdBRkFBSUZiUUFJQlFod0NnRURBQWNCQXdkZ0FBQUNCUUJTQUFBQUJWZ0FCUUFGVEJzYUJ3WklSak14TFNzbkppSWdHazhiVHhBUEJoa0hHUklMQlJVckFRWVZJelEzSlNNaUJoMEJGQjhCRmpJL0FUWTBMd0UxTkNZbklnY09BUThCSXlJR0h3RVdNajhCTmlZckFUVStBak15RmhjV0J3NENCd1ltSnlZUEFRWVdGeDRCTno0Q056WW5MZ0VCR1FFOEFRRW1IZ1lKQkZRRkRBUVZCUVZHQ1JWSlB6MU5CUUV0Q2dnR1N3VU9CRXNHQ0Fvc0JUMWhPRUJxR3gwSEJUbFhMelZoSXd3S0dBTUNCU2xyUEVkN1RBVUdKU09GQVhJSERRMEhlQWtHZ3dVR1ZBUUVGUVVNQkVkeEJnbU1JeUozU0FvUkIxc0ZCVnNJRUFvM1hEVkRPRGxCTDFZNUJBVWxKZzROSFFRR0JTc3VBUUZHZGtkUVJrUlNBQUFBQlFBQS81QUR3Z010QUEwQUhRQTFBRTBBWlFCRlFFSUFCUUlGYndBRUFnQUNCQUJ0QUFBREFnQURhd0FHQXdjREJnZHRBQWNCQXdjQmF3QUJBVzRBQWdRREFsUUFBZ0lEV0FBREFnTk1HeHNiRlJjY0ZSRUlCUndyQVNZaUJ3RUdGQll5TndFMk5DYy9BVFkwTHdFbUlnOEJCaFFmQVJZeUpSNEJGeFl5Tno0Qk56WTBKeTRCSnlZaUJ3NEJCd1lVQVM0Qkp5WWlCdzRCQndZVUZ4NEJGeFl5Tno0Qk56WTBBeDRCRnhZeU56NEJOelkwSnk0Qkp5WWlCdzRCQndZVUFoNEZFQWIrTlJFaUx4RUJ5d1lHVVQ0SUNDa0lHQWcrQlFVMkJnLytLVGRTRVFNUkF4RlJPQWdJTjFJUkF4RURFVkU0QndMNU1VY1JBaEFERUVjeEJ3Y3hSeEFERUFJUlJ6RUk0U1kwREFFTkFRczFKZ1lHSlRZTEFRMEJERFVsQmdHK0JnYitOQkV1SWhFQnl3WVFCVFkrQ0JnSUtRZ0lQZ1lQQmpZRnVoRlJPQWdJTjFJUkF4RURFVkU0Q0FnM1VoRURFZjZTRUVjeENBZ3hSeEFERUFNUVJ6RUhCekZIRUFNU0Fhb01OQ1lHQmlVMURBRU5BUXMySlFZR0pqVUxBUTBBQUFVQUFQK2xBOXdESVFBakFETUFRQUJOQUpnQlZrQWdJUk1NQ1FJRkNBQXNBUTBIZFcwQ0RnMlNUd0lRRENRQkJoQVpBUVVHQmtkTHNCSlFXRUJQQ3dFSkFBbHZCQUlSQXdBSUFRQmpFd29TQXdnQkFRaGpBQTBIRGdjTkRtMEFEZzhIRGc5ckFCQU1CZ1lRWlFNQkFRQUhEUUVIWVFBUEFBd1FEd3hnQUFZRkJRWlVBQVlHQlZrQUJRWUZUUnRMc0J4UVdFQk9Dd0VKQUFsdkJBSVJBd0FJQUc4VENoSURDQUVCQ0dNQURRY09CdzBPYlFBT0R3Y09EMnNBRUF3R0JoQmxBd0VCQUFjTkFRZGhBQThBREJBUERHQUFCZ1VGQmxRQUJnWUZXUUFGQmdWTkcwQlBDd0VKQUFsdkJBSVJBd0FJQUc4VENoSURDQUVCQ0dNQURRY09CdzBPYlFBT0R3Y09EMnNBRUF3R0RCQUdiUU1CQVFBSERRRUhZUUFQQUF3UUR3eGdBQVlGQlFaVUFBWUdCVmtBQlFZRlRWbFpRREZDUVRVMEFRQ1dsSVNDZVhkeGIxNWNTRWRCVFVKTk96bzBRRFZBTUM0b0poMGJGUlFRRHdzS0JnVUFJd0VqRkFVVUt3RWpGUllPQVNJdUFUYzFJUlVXRGdFaUxnRTNOU01pQmhVUkZCWXpJVEkyTlJFMEpnTVVCaU1oSWlZMUVUUTJNeUV5RmhVbElpWTlBVFErQVJZZEFSUUdJU0ltUFFFMFBnRVdIUUVVQmdFMU5DWWpKaWN1QVQ4QlBnRVhGaGN5TmpRbUp5WW5KalUwTmpjK0FUMEJORFk3QVRJV0hRRVVGak1XRng0QkR3RU9BU2NtSXlJSEJoUVdGeDRCRkFZSERnRWRBUlFHS3dFaUpnUE9YZ0lMR0JzWUN3TDl3Z0lMR0JzWUN3SmVCZ2NJQlFPMEJRZ0hTUWdGL1BNRkNBZ0ZBdzBGQ1AwY0RoUVVHeFFUQW93T0V4UWJGQlQrZ0FjRkpTSUVCQUVLQVFzR0pTZ1lIQnNmTUJnYkxDY0VCZ2dGR3dVSUJ3VWRHd1VGQWdrQkN3VWZJaGtNQ2gwa01Tb3RLZ1FHQ0FVYkJRZ0N1UThPR1E4UEdRNFBEdzRaRHc4WkRnOEpCdjBKQlFnSUJRTDNCZ245U2dVSUNBVUNDUVVJQ0FWN0ZRNVZEaE1CRkE1VkRoVVZEbFVPRXdFVURsVU9GZjJxR3dVSUF3OENDQVVtQmdZREVRRVNIeFlMRUJVWkpTTXlDZ0VIQlJ3RkNBZ0ZGd1VJQWdvQ0NRVWtCZ1VDRFFrSUdoVU5FVEJKTmdrQkJ3VWdCUWdJQUFBQUFBTC8vZit4QTE4REN3QWtBREVBTUVBdEhoVU1Bd1FDQUFGSEFBVUJBUUFDQlFCZ0F3RUNCQVFDVkFNQkFnSUVXQUFFQWdSTUZSY1VIQlFaQmdVYUt5VTBMd0UzTmpRdkFTWWlEd0VuSmlJUEFRWVVId0VIQmhRZkFSWXlQd0VYRmpJL0FUWTNGQTRCSWk0Q1BnRXlIZ0VDZ1FwbFpRb0tNd29lQ21WbEN4NEtNZ3NMWldVTEN6SUtIZ3RsWlFvZUNqTUsySExHNk1odUJucTg5THArNEE0TFpXVUxIUXN5Q3d0bFpRc0xNZ3NkQzJWbEN4MExNZ3NMWldVTEN6SUxqWFhFZEhURTZzUjBkTVFBQUFJQUFBQUFBeUFDaWdBT0FEb0FPVUEyT0FzRUF3SUFLZ0VFQXdKSEJRRUFBZ0J2QUFJREFtOEFBd1FEYndBRUFRUnZBQUVCWmdFQU1TOG5KUlFTQ0FjQURnRU9CZ1VVS3dFaUJoUVhFUlFXTWpZMUVUWTBKZ1VHQndZbklpY21Md0VtSnlZSEJnY0dGUkVVRmpjMk56SVhGaGNtRnhZWEZqTXlOelkzUGdFMUVUUW1BUVFaSXhRWUlSY1VJd0gwSEIwWkhCY2JGQjB4SEJVYkdCd2FEUkFLR1JzWEdoVWJKVlVjRkJzWEd4b2NIQVFHQ2dLS0l6UVMvamtRR0JnUUFjY1NOQ05zRHdZR0FRWUVDQTRIQWdRQ0Fnb0ZEdjcrQ2d3RENBRUVBd2NLR0FjRUJRY0hEd0lLQlFFUEJnWUFBQUVBQUFBQkFBQ0JMKzNQWHc4ODlRQUxBK2dBQUFBQTB5dHlFZ0FBQUFEVEszSVMvLzMvYWdQdUExSUFBQUFJQUFJQUFBQUFBQUFBQVFBQUExTC9hZ0FBQStqLy9mLzZBKzRBQVFBQUFBQUFBQUFBQUFBQUFBQUFBSWtENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2UC8rQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUEyc0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRGF3QUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2UC8vQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFEV2YvOUErZ0FBQUFBQUFBQVhBQzZBUmdCMkFKWUF3QURaZ1BzQkhBRk9nV1dCaG9HK2dlaUIvNElWQWgyQ05vSktBbjhDczRMemd4d0RONE5oZzVhRHdJUUFoQk9FUFlSd0JJd0Vzb1RVQlBjRk5ZVmFoWWdGbXdXeEJjU0Y0NFlPaGpHR1RBWjZCcVdHKzRjOEIyK0hqUWVvaDg2SDVBZ01pQ0VJUEloUmlHbUloWWl3Q00rSSt3a1pDVXFKaG9tbkNlNktDQW9sQ2tLS1hBcUJpcHVLdXdyeWl4RUxJNHM4aTErTGZRdUhDNXVMdWd2YWkrTU1JNHhSREdVTWtJelhEUUNOSFEwK2pVNE5XNDJJRGJjTjBZNHJqa1VPamc2NkR1TVBDdzhnRHkyUFBROWpqNFNQcWcvTEQvT1FKUkJDa0lvUXJaQzdFTW9RNjVFQUVTUVJTeEZza1pHUm9SR3JFY0dSNEJJWUVqU1NYeEtQa3UrVENSTW5BQUJBQUFBaVFEUUFBMEFBQUFBQUFJQVRnQmVBSE1BQUFEUkMzQUFBQUFBQUFBQUVnRGVBQUVBQUFBQUFBQUFOUUFBQUFFQUFBQUFBQUVBQ0FBMUFBRUFBQUFBQUFJQUJ3QTlBQUVBQUFBQUFBTUFDQUJFQUFFQUFBQUFBQVFBQ0FCTUFBRUFBQUFBQUFVQUN3QlVBQUVBQUFBQUFBWUFDQUJmQUFFQUFBQUFBQW9BS3dCbkFBRUFBQUFBQUFzQUV3Q1NBQU1BQVFRSkFBQUFhZ0NsQUFNQUFRUUpBQUVBRUFFUEFBTUFBUVFKQUFJQURnRWZBQU1BQVFRSkFBTUFFQUV0QUFNQUFRUUpBQVFBRUFFOUFBTUFBUVFKQUFVQUZnRk5BQU1BQVFRSkFBWUFFQUZqQUFNQUFRUUpBQW9BVmdGekFBTUFBUVFKQUFzQUpnSEpRMjl3ZVhKcFoyaDBJQ2hES1NBeU1ERTJJR0o1SUc5eWFXZHBibUZzSUdGMWRHaHZjbk1nUUNCbWIyNTBaV3hzYnk1amIyMXpaaTFwWTI5dWMxSmxaM1ZzWVhKelppMXBZMjl1YzNObUxXbGpiMjV6Vm1WeWMybHZiaUF4TGpCelppMXBZMjl1YzBkbGJtVnlZWFJsWkNCaWVTQnpkbWN5ZEhSbUlHWnliMjBnUm05dWRHVnNiRzhnY0hKdmFtVmpkQzVvZEhSd09pOHZabTl1ZEdWc2JHOHVZMjl0QUVNQWJ3QndBSGtBY2dCcEFHY0FhQUIwQUNBQUtBQkRBQ2tBSUFBeUFEQUFNUUEyQUNBQVlnQjVBQ0FBYndCeUFHa0Fad0JwQUc0QVlRQnNBQ0FBWVFCMUFIUUFhQUJ2QUhJQWN3QWdBRUFBSUFCbUFHOEFiZ0IwQUdVQWJBQnNBRzhBTGdCakFHOEFiUUJ6QUdZQUxRQnBBR01BYndCdUFITUFVZ0JsQUdjQWRRQnNBR0VBY2dCekFHWUFMUUJwQUdNQWJ3QnVBSE1BY3dCbUFDMEFhUUJqQUc4QWJnQnpBRllBWlFCeUFITUFhUUJ2QUc0QUlBQXhBQzRBTUFCekFHWUFMUUJwQUdNQWJ3QnVBSE1BUndCbEFHNEFaUUJ5QUdFQWRBQmxBR1FBSUFCaUFIa0FJQUJ6QUhZQVp3QXlBSFFBZEFCbUFDQUFaZ0J5QUc4QWJRQWdBRVlBYndCdUFIUUFaUUJzQUd3QWJ3QWdBSEFBY2dCdkFHb0FaUUJqQUhRQUxnQm9BSFFBZEFCd0FEb0FMd0F2QUdZQWJ3QnVBSFFBWlFCc0FHd0Fid0F1QUdNQWJ3QnRBQUFBQUFJQUFBQUFBQUFBQ2dBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFpUUVDQVFNQkJBRUZBUVlCQndFSUFRa0JDZ0VMQVF3QkRRRU9BUThCRUFFUkFSSUJFd0VVQVJVQkZnRVhBUmdCR1FFYUFSc0JIQUVkQVI0Qkh3RWdBU0VCSWdFakFTUUJKUUVtQVNjQktBRXBBU29CS3dFc0FTMEJMZ0V2QVRBQk1RRXlBVE1CTkFFMUFUWUJOd0U0QVRrQk9nRTdBVHdCUFFFK0FUOEJRQUZCQVVJQlF3RkVBVVVCUmdGSEFVZ0JTUUZLQVVzQlRBRk5BVTRCVHdGUUFWRUJVZ0ZUQVZRQlZRRldBVmNCV0FGWkFWb0JXd0ZjQVYwQlhnRmZBV0FCWVFGaUFXTUJaQUZsQVdZQlp3Rm9BV2tCYWdGckFXd0JiUUZ1QVc4QmNBRnhBWElCY3dGMEFYVUJkZ0YzQVhnQmVRRjZBWHNCZkFGOUFYNEJmd0dBQVlFQmdnR0RBWVFCaFFHR0FZY0JpQUdKQVlvQUJUTmtiM1J6QTJGa1pBVmpiRzl6WlFsd2NtbGpaV0p2YjJzRWFHVnNjQWh1YjNSbFltOXZhd1J5YjNkekJuVndiRzloWkFWamJHOWphd1puY205MWNITUxiM0JsYmw5bWIyeGtaWElRY21sbmFIUmZZV3hwWjI1ZmRHVjRkQWR3Y205a2RXTjBEWEYxWlhOMGFXOXVYMlpsWldRSGQyRnlibWx1WndSMWMyVnlCWEpwWjJoMERHNXZkR2xtYVdOaGRHbHZiZ1JvYjIxbENHTnZiblJ5WVdOMEIyRmtaSFZ6WlhJRVlYQndjd1JqYjNCNUJXbHRZV2RsQkc5d1pXNEljMlYwZEdsdVozTUdlbTl2YldsdUJuSmxZMjl5WkFsaGNuSnZkMlJ2ZDI0RFkzVjBEMmx1YzJWeWRGOTBaVzF3YkdGMFpRMXZjR1Z1WldSZlptOXNaR1Z5Q1hOcFpHVmZiR2x6ZEFkNmIyOXRiM1YwQm5GMWIzUmxjd3h5Wld4aGRHVmtYMnhwYzNRRVoyUnZZd2R6Ym1sd2NHVjBCSEJoWjJVTFkzVnpkRzl0WDJGd2NITUhZWEp5YjNkMWNBWmhkSFJoWTJnSFpHRjVkbWxsZHdScGJtWnZFR2x1YzJWeWRGOTBZV2RmWm1sbGJHUUZjR0Z6ZEdVRWMyOXlkQU53WkdZR2NtVndiM0owQkhSaGMyc0lZWEJ3Y205MllXd0xjMjlqYVdGc2MyaGhjbVVHY0dWdmNHeGxCbWwwWVd4cFl3WmtaV3hsZEdVRVltRmphd05pWVc0RlpXMWhhV3dFWW05c1pBZHdjbVYyYVdWM0JYTm9ZWEpsQ1dSaGMyaGliMkZ5WkFaMGFHRnVhM01GZEc5a1lYa0tZMjl1ZEhKaFkzUXRNUWR6Y0dsdWJtVnlCWEJvYjNSdkJXVjJaVzUwQjJKMWFXeGtaWElNYW5WemRHbG1lVjkwWlhoMEVXTmxiblJsY2w5aGJHbG5ibDkwWlhoMEJHVmthWFFHYkdGNWIzVjBDSEJ5YVc5eWFYUjVFSE4wWVc1a1lYSmtYMjlpYW1WamRITUhZMjl1ZEdGamRBaGpkWE4wYjIwNU13ZGxiV0ZwYkMweEIzTjFZMk5sYzNNSGNtVm1jbVZ6YUE5c1pXWjBYMkZzYVdkdVgzUmxlSFFFWkc5M2JnVmphR0Z5ZEFSamFHRjBCV1Z5Y205eUJHeGxablFMY21WdGIzWmxYMnhwYm1zSGMzVnRiV0Z5ZVFoa2IyTjFiV1Z1ZEFaa2NtRm1kSE1OYzNWdGJXRnllV1JsZEdGcGJBZHlaWEJzWVdObEJHeHBhMlVJWkc5M2JteHZZV1FGWTJobFkyc0xZMmhsZG5KdmJteGxablFHWlhod1lXNWtCR3hwYm1zRmNtVndiSGtGZEdGaWJHVUVabVZsWkFkbGRtVnVkQzB4RG5ScGJHVmZZMkZ5WkY5c2FYTjBGSEpwWTJoMFpYaDBZblZzYkdWMFpXUnNhWE4wQkd4cGMzUUlabUYyYjNKcGRHVU1ZMmhsZG5KdmJuSnBaMmgwQzJOb1pYWnliMjVrYjNkdUJtWnBiSFJsY2dSdGIzWmxEbkpwWTJoMFpYaDBhVzVrWlc1MENYVnVaR1Z5YkdsdVpRaG1aV1ZrWW1GamF3Um1hV3hsQkhWdVpHOFVjbWxqYUhSbGVIUnVkVzFpWlhKbFpHeHBjM1FFYkc5amF3cG1hV3gwWlhKc2FYTjBDV05vWlhaeWIyNTFjQVZqYkdWaGNnZG1iM0ozWVhKa0NtNWxkMTkzYVc1a2IzY1BjbWxqYUhSbGVIUnZkWFJrWlc1MEJuVnViRzlqYXd0dmNIQnZjblIxYm1sMGVRUndiM04wQW5Wd0JuTmxZWEpqYUFOdVpYY0dabkp2ZW1WdUNHTnZiVzFsYm5SekJuSmxZMlZ1ZEFsdFlXZHBZM2RoYm1RWVpHbHpZMjkxYm5SelkyaGxaSFZzWldsamIyNXpMVEF5RG1OaGJtTmxiQzFqYVhKamJHVmtDR04xYzNSdmJUSTJBQUFBQUFBQkFBSC8vd0FQQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFZQUJnQUdBQVlBMUwvYWdOUy8ycXdBQ3dnc0FCVldFVlpJQ0JMdUFBT1VVdXdCbE5hV0xBMEc3QW9XV0JtSUlwVldMQUNKV0c1Q0FBSUFHTmpJMkliSVNHd0FGbXdBRU1qUkxJQUFRQkRZRUl0c0FFc3NDQmdaaTJ3QWl3Z1pDQ3d3RkN3QkNaYXNpZ0JDa05GWTBWU1cxZ2hJeUViaWxnZ3NGQlFXQ0d3UUZrYklMQTRVRmdoc0RoWldTQ3hBUXBEUldORllXU3dLRkJZSWJFQkNrTkZZMFVnc0RCUVdDR3dNRmtiSUxEQVVGZ2daaUNLaW1FZ3NBcFFXR0FiSUxBZ1VGZ2hzQXBnR3lDd05sQllJYkEyWUJ0Z1dWbFpHN0FCSzFsWkk3QUFVRmhsV1ZrdHNBTXNJRVVnc0FRbFlXUWdzQVZEVUZpd0JTTkNzQVlqUWhzaElWbXdBV0F0c0FRc0l5RWpJU0Jrc1FWaVFpQ3dCaU5Dc1FFS1EwVmpzUUVLUTdBQllFVmpzQU1xSVNDd0JrTWdpaUNLc0FFcnNUQUZKYkFFSmxGWVlGQWJZVkpaV0NOWklTQ3dRRk5Zc0FFckd5R3dRRmtqc0FCUVdHVlpMYkFGTExBSFF5dXlBQUlBUTJCQ0xiQUdMTEFISTBJaklMQUFJMEpoc0FKaVpyQUJZN0FCWUxBRktpMndCeXdnSUVVZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZRVN3QVdBdHNBZ3NzZ2NMQUVORlFpb2hzZ0FCQUVOZ1FpMndDU3l3QUVNalJMSUFBUUJEWUVJdHNBb3NJQ0JGSUxBQkt5T3dBRU93QkNWZ0lFV0tJMkVnWkNDd0lGQllJYkFBRzdBd1VGaXdJQnV3UUZsWkk3QUFVRmhsV2JBREpTTmhSRVN3QVdBdHNBc3NJQ0JGSUxBQkt5T3dBRU93QkNWZ0lFV0tJMkVnWkxBa1VGaXdBQnV3UUZranNBQlFXR1Zac0FNbEkyRkVSTEFCWUMyd0RDd2dzQUFqUXJJTENnTkZXQ0ViSXlGWktpRXRzQTBzc1FJQ1JiQmtZVVF0c0E0c3NBRmdJQ0N3REVOS3NBQlFXQ0N3RENOQ1diQU5RMHF3QUZKWUlMQU5JMEpaTGJBUExDQ3dFR0ptc0FGaklMZ0VBR09LSTJHd0RrTmdJSXBnSUxBT0kwSWpMYkFRTEV0VVdMRUVaRVJaSkxBTlpTTjRMYkFSTEV0UldFdFRXTEVFWkVSWkd5RlpKTEFUWlNONExiQVNMTEVBRDBOVldMRVBEME93QVdGQ3NBOHJXYkFBUTdBQ0pVS3hEQUlsUXJFTkFpVkNzQUVXSXlDd0F5VlFXTEVCQUVOZ3NBUWxRb3FLSUlvalliQU9LaUVqc0FGaElJb2pZYkFPS2lFYnNRRUFRMkN3QWlWQ3NBSWxZYkFPS2lGWnNBeERSN0FOUTBkZ3NBSmlJTEFBVUZpd1FHQlpackFCWXlDd0MwTmp1QVFBWWlDd0FGQllzRUJnV1dhd0FXTmdzUUFBRXlORXNBRkRzQUErc2dFQkFVTmdRaTJ3RXl3QXNRQUNSVlJZc0E4alFpQkZzQXNqUXJBS0k3QUJZRUlnWUxBQlliVVFFQUVBRGdCQ1FvcGdzUklHSzdCeUt4c2lXUzJ3RkN5eEFCTXJMYkFWTExFQkV5c3RzQllzc1FJVEt5MndGeXl4QXhNckxiQVlMTEVFRXlzdHNCa3NzUVVUS3kyd0dpeXhCaE1yTGJBYkxMRUhFeXN0c0J3c3NRZ1RLeTJ3SFN5eENSTXJMYkFlTEFDd0RTdXhBQUpGVkZpd0R5TkNJRVd3Q3lOQ3NBb2pzQUZnUWlCZ3NBRmh0UkFRQVFBT0FFSkNpbUN4RWdZcnNISXJHeUpaTGJBZkxMRUFIaXN0c0NBc3NRRWVLeTJ3SVN5eEFoNHJMYkFpTExFREhpc3RzQ01zc1FRZUt5MndKQ3l4QlI0ckxiQWxMTEVHSGlzdHNDWXNzUWNlS3kyd0p5eXhDQjRyTGJBb0xMRUpIaXN0c0Nrc0lEeXdBV0F0c0Nvc0lHQ3dFR0FnUXlPd0FXQkRzQUlsWWJBQllMQXBLaUV0c0Nzc3NDb3JzQ29xTGJBc0xDQWdSeUFnc0F0RFk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGallDTmhPQ01naWxWWUlFY2dJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJBallUZ2JJVmt0c0Mwc0FMRUFBa1ZVV0xBQkZyQXNLckFCRlRBYklsa3RzQzRzQUxBTks3RUFBa1ZVV0xBQkZyQXNLckFCRlRBYklsa3RzQzhzSURXd0FXQXRzREFzQUxBQlJXTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlk3QUJLN0FMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTdBQks3QUFGclFBQUFBQUFFUStJeml4THdFVktpMndNU3dnUENCSElMQUxRMk80QkFCaUlMQUFVRml3UUdCWlpyQUJZMkN3QUVOaE9DMndNaXd1Rnp3dHNETXNJRHdnUnlDd0MwTmp1QVFBWWlDd0FGQllzRUJnV1dhd0FXTmdzQUJEWWJBQlEyTTRMYkEwTExFQ0FCWWxJQzRnUjdBQUkwS3dBaVZKaW9wSEkwY2pZU0JZWWhzaFdiQUJJMEt5TXdFQkZSUXFMYkExTExBQUZyQUVKYkFFSlVjalJ5TmhzQWxESzJXS0xpTWdJRHlLT0Myd05peXdBQmF3QkNXd0JDVWdMa2NqUnlOaElMQUVJMEt3Q1VNcklMQmdVRmdnc0VCUldMTUNJQU1nRzdNQ0pnTWFXVUpDSXlDd0NFTWdpaU5ISTBjallTTkdZTEFFUTdBQ1lpQ3dBRkJZc0VCZ1dXYXdBV05nSUxBQkt5Q0tpbUVnc0FKRFlHUWpzQU5EWVdSUVdMQUNRMkVic0FORFlGbXdBeVd3QW1JZ3NBQlFXTEJBWUZsbXNBRmpZU01nSUxBRUppTkdZVGdiSTdBSVEwYXdBaVd3Q0VOSEkwY2pZV0Fnc0FSRHNBSmlJTEFBVUZpd1FHQlpackFCWTJBaklMQUJLeU93QkVOZ3NBRXJzQVVsWWJBRkpiQUNZaUN3QUZCWXNFQmdXV2F3QVdPd0JDWmhJTEFFSldCa0k3QURKV0JrVUZnaEd5TWhXU01nSUxBRUppTkdZVGhaTGJBM0xMQUFGaUFnSUxBRkppQXVSeU5ISTJFalBEZ3RzRGdzc0FBV0lMQUlJMElnSUNCR0kwZXdBU3NqWVRndHNEa3NzQUFXc0FNbHNBSWxSeU5ISTJHd0FGUllMaUE4SXlFYnNBSWxzQUlsUnlOSEkyRWdzQVVsc0FRbFJ5TkhJMkd3QmlXd0JTVkpzQUlsWWJrSUFBZ0FZMk1qSUZoaUd5RlpZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZQ011SXlBZ1BJbzRJeUZaTGJBNkxMQUFGaUN3Q0VNZ0xrY2pSeU5oSUdDd0lHQm1zQUppSUxBQVVGaXdRR0JaWnJBQll5TWdJRHlLT0Myd095d2pJQzVHc0FJbFJsSllJRHhaTHJFckFSUXJMYkE4TENNZ0xrYXdBaVZHVUZnZ1BGa3VzU3NCRkNzdHNEMHNJeUF1UnJBQ0pVWlNXQ0E4V1NNZ0xrYXdBaVZHVUZnZ1BGa3VzU3NCRkNzdHNENHNzRFVySXlBdVJyQUNKVVpTV0NBOFdTNnhLd0VVS3kyd1B5eXdOaXVLSUNBOHNBUWpRb280SXlBdVJyQUNKVVpTV0NBOFdTNnhLd0VVSzdBRVF5NndLeXN0c0VBc3NBQVdzQVFsc0FRbUlDNUhJMGNqWWJBSlF5c2pJRHdnTGlNNHNTc0JGQ3N0c0VFc3NRZ0VKVUt3QUJhd0JDV3dCQ1VnTGtjalJ5TmhJTEFFSTBLd0NVTXJJTEJnVUZnZ3NFQlJXTE1DSUFNZ0c3TUNKZ01hV1VKQ0l5QkhzQVJEc0FKaUlMQUFVRml3UUdCWlpyQUJZMkFnc0FFcklJcUtZU0N3QWtOZ1pDT3dBME5oWkZCWXNBSkRZUnV3QTBOZ1diQURKYkFDWWlDd0FGQllzRUJnV1dhd0FXTmhzQUlsUm1FNEl5QThJemdiSVNBZ1JpTkhzQUVySTJFNElWbXhLd0VVS3kyd1FpeXdOU3N1c1NzQkZDc3RzRU1zc0RZcklTTWdJRHl3QkNOQ0l6aXhLd0VVSzdBRVF5NndLeXN0c0VRc3NBQVZJRWV3QUNOQ3NnQUJBUlVVRXk2d01Tb3RzRVVzc0FBVklFZXdBQ05Dc2dBQkFSVVVFeTZ3TVNvdHNFWXNzUUFCRkJPd01pb3RzRWNzc0RRcUxiQklMTEFBRmtVaklDNGdSb29qWVRpeEt3RVVLeTJ3U1N5d0NDTkNzRWdyTGJCS0xMSUFBRUVyTGJCTExMSUFBVUVyTGJCTUxMSUJBRUVyTGJCTkxMSUJBVUVyTGJCT0xMSUFBRUlyTGJCUExMSUFBVUlyTGJCUUxMSUJBRUlyTGJCUkxMSUJBVUlyTGJCU0xMSUFBRDRyTGJCVExMSUFBVDRyTGJCVUxMSUJBRDRyTGJCVkxMSUJBVDRyTGJCV0xMSUFBRUFyTGJCWExMSUFBVUFyTGJCWUxMSUJBRUFyTGJCWkxMSUJBVUFyTGJCYUxMSUFBRU1yTGJCYkxMSUFBVU1yTGJCY0xMSUJBRU1yTGJCZExMSUJBVU1yTGJCZUxMSUFBRDhyTGJCZkxMSUFBVDhyTGJCZ0xMSUJBRDhyTGJCaExMSUJBVDhyTGJCaUxMQTNLeTZ4S3dFVUt5MndZeXl3Tnl1d095c3RzR1Fzc0RjcnNEd3JMYkJsTExBQUZyQTNLN0E5S3kyd1ppeXdPQ3N1c1NzQkZDc3RzR2Nzc0RncnNEc3JMYkJvTExBNEs3QThLeTJ3YVN5d09DdXdQU3N0c0dvc3NEa3JMckVyQVJRckxiQnJMTEE1SzdBN0t5MndiQ3l3T1N1d1BDc3RzRzBzc0RrcnNEMHJMYkJ1TExBNkt5NnhLd0VVS3kyd2J5eXdPaXV3T3lzdHNIQXNzRG9yc0R3ckxiQnhMTEE2SzdBOUt5MndjaXl6Q1FRQ0EwVllJUnNqSVZsQ0s3QUlaYkFESkZCNHNBRVZNQzBBUzdnQXlGSllzUUVCamxtd0Fia0lBQWdBWTNDeEFBVkNzZ0FCQUNxeEFBVkNzd29DQVFncXNRQUZRck1PQUFFSUtyRUFCa0s2QXNBQUFRQUpLckVBQjBLNkFFQUFBUUFKS3JFREFFU3hKQUdJVVZpd1FJaFlzUU5rUkxFbUFZaFJXTG9JZ0FBQkJFQ0lZMVJZc1FNQVJGbFpXVm16REFJQkRDcTRBZitGc0FTTnNRSUFSQUFBJykgZm9ybWF0KCd0cnVldHlwZScpO1xufVxuLyogQ2hyb21lIGhhY2s6IFNWRyBpcyByZW5kZXJlZCBtb3JlIHNtb290aCBpbiBXaW5kb3p6ZS4gMTAwJSBtYWdpYywgdW5jb21tZW50IGlmIHlvdSBuZWVkIGl0LiAqL1xuLyogTm90ZSwgdGhhdCB3aWxsIGJyZWFrIGhpbnRpbmchIEluIG90aGVyIE9TLWVzIGZvbnQgd2lsbCBiZSBub3QgYXMgc2hhcnAgYXMgaXQgY291bGQgYmUgKi9cbi8qXG5AbWVkaWEgc2NyZWVuIGFuZCAoLXdlYmtpdC1taW4tZGV2aWNlLXBpeGVsLXJhdGlvOjApIHtcbiAgQGZvbnQtZmFjZSB7XG4gICAgZm9udC1mYW1pbHk6ICdzZi1pY29ucyc7XG4gICAgc3JjOiB1cmwoJy4uL2ZvbnQvc2YtaWNvbnMuc3ZnPzEzMDY3Njc2I3NmLWljb25zJykgZm9ybWF0KCdzdmcnKTtcbiAgfVxufVxuKi9cblxuIFtjbGFzc149XCJzZi1pY29uLVwiXTpiZWZvcmUsIFtjbGFzcyo9XCIgc2YtaWNvbi1cIl06YmVmb3JlIHtcbiAgZm9udC1mYW1pbHk6IFwic2YtaWNvbnNcIjtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXdlaWdodDogbm9ybWFsO1xuICBzcGVhazogbm9uZTtcblxuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIHRleHQtZGVjb3JhdGlvbjogaW5oZXJpdDtcbiAgd2lkdGg6IDFlbTtcbiAgbWFyZ2luLXJpZ2h0OiAuMmVtO1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIC8qIG9wYWNpdHk6IC44OyAqL1xuXG4gIC8qIEZvciBzYWZldHkgLSByZXNldCBwYXJlbnQgc3R5bGVzLCB0aGF0IGNhbiBicmVhayBnbHlwaCBjb2RlcyovXG4gIGZvbnQtdmFyaWFudDogbm9ybWFsO1xuICB0ZXh0LXRyYW5zZm9ybTogbm9uZTtcblxuICAvKiBmaXggYnV0dG9ucyBoZWlnaHQsIGZvciB0d2l0dGVyIGJvb3RzdHJhcCAqL1xuICBsaW5lLWhlaWdodDogMWVtO1xuXG4gIC8qIEFuaW1hdGlvbiBjZW50ZXIgY29tcGVuc2F0aW9uIC0gbWFyZ2lucyBzaG91bGQgYmUgc3ltbWV0cmljICovXG4gIC8qIHJlbW92ZSBpZiBub3QgbmVlZGVkICovXG4gIG1hcmdpbi1sZWZ0OiAuMmVtO1xuXG4gIC8qIHlvdSBjYW4gYmUgbW9yZSBjb21mb3J0YWJsZSB3aXRoIGluY3JlYXNlZCBpY29ucyBzaXplICovXG4gIC8qIGZvbnQtc2l6ZTogMTIwJTsgKi9cblxuICAvKiBVbmNvbW1lbnQgZm9yIDNEIGVmZmVjdCAqL1xuICAvKiB0ZXh0LXNoYWRvdzogMXB4IDFweCAxcHggcmdiYSgxMjcsIDEyNywgMTI3LCAwLjMpOyAqL1xufVxuLnNmLWljb24tM2RvdHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMCc7IH0gLyogJ+6ggCcgKi9cbi5zZi1pY29uLWFkZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAxJzsgfSAvKiAn7qCBJyAqL1xuLnNmLWljb24tY2xvc2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMic7IH0gLyogJ+6ggicgKi9cbi5zZi1pY29uLXByaWNlYm9vazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAzJzsgfSAvKiAn7qCDJyAqL1xuLnNmLWljb24taGVscDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA0JzsgfSAvKiAn7qCEJyAqL1xuLnNmLWljb24tbm90ZWJvb2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNSc7IH0gLyogJ+6ghScgKi9cbi5zZi1pY29uLXJvd3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNic7IH0gLyogJ+6ghicgKi9cbi5zZi1pY29uLXVwbG9hZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA3JzsgfSAvKiAn7qCHJyAqL1xuLnNmLWljb24tY2xvY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwOCc7IH0gLyogJ+6giCcgKi9cbi5zZi1pY29uLWdyb3VwczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA5JzsgfSAvKiAn7qCJJyAqL1xuLnNmLWljb24tb3Blbl9mb2xkZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYSc7IH0gLyogJ+6giicgKi9cbi5zZi1pY29uLXJpZ2h0X2FsaWduX3RleHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYic7IH0gLyogJ+6giycgKi9cbi5zZi1pY29uLXByb2R1Y3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYyc7IH0gLyogJ+6gjCcgKi9cbi5zZi1pY29uLXF1ZXN0aW9uX2ZlZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZCc7IH0gLyogJ+6gjScgKi9cbi5zZi1pY29uLXdhcm5pbmc6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZSc7IH0gLyogJ+6gjicgKi9cbi5zZi1pY29uLXVzZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZic7IH0gLyogJ+6gjycgKi9cbi5zZi1pY29uLXJpZ2h0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTAnOyB9IC8qICfuoJAnICovXG4uc2YtaWNvbi1ub3RpZmljYXRpb246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMSc7IH0gLyogJ+6gkScgKi9cbi5zZi1pY29uLWhvbWU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMic7IH0gLyogJ+6gkicgKi9cbi5zZi1pY29uLWNvbnRyYWN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTMnOyB9IC8qICfuoJMnICovXG4uc2YtaWNvbi1hZGR1c2VyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTQnOyB9IC8qICfuoJQnICovXG4uc2YtaWNvbi1hcHBzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTUnOyB9IC8qICfuoJUnICovXG4uc2YtaWNvbi1jb3B5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTYnOyB9IC8qICfuoJYnICovXG4uc2YtaWNvbi1pbWFnZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE3JzsgfSAvKiAn7qCXJyAqL1xuLnNmLWljb24tb3BlbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE4JzsgfSAvKiAn7qCYJyAqL1xuLnNmLWljb24tc2V0dGluZ3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxOSc7IH0gLyogJ+6gmScgKi9cbi5zZi1pY29uLXpvb21pbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFhJzsgfSAvKiAn7qCaJyAqL1xuLnNmLWljb24tcmVjb3JkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWInOyB9IC8qICfuoJsnICovXG4uc2YtaWNvbi1hcnJvd2Rvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYyc7IH0gLyogJ+6gnCcgKi9cbi5zZi1pY29uLWN1dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFkJzsgfSAvKiAn7qCdJyAqL1xuLnNmLWljb24taW5zZXJ0X3RlbXBsYXRlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWUnOyB9IC8qICfuoJ4nICovXG4uc2YtaWNvbi1vcGVuZWRfZm9sZGVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWYnOyB9IC8qICfuoJ8nICovXG4uc2YtaWNvbi1zaWRlX2xpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMCc7IH0gLyogJ+6goCcgKi9cbi5zZi1pY29uLXpvb21vdXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMSc7IH0gLyogJ+6goScgKi9cbi5zZi1pY29uLXF1b3RlczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIyJzsgfSAvKiAn7qCiJyAqL1xuLnNmLWljb24tcmVsYXRlZF9saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjMnOyB9IC8qICfuoKMnICovXG4uc2YtaWNvbi1nZG9jOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjQnOyB9IC8qICfuoKQnICovXG4uc2YtaWNvbi1zbmlwcGV0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjUnOyB9IC8qICfuoKUnICovXG4uc2YtaWNvbi1wYWdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjYnOyB9IC8qICfuoKYnICovXG4uc2YtaWNvbi1jdXN0b21fYXBwczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI3JzsgfSAvKiAn7qCnJyAqL1xuLnNmLWljb24tYXJyb3d1cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI4JzsgfSAvKiAn7qCoJyAqL1xuLnNmLWljb24tYXR0YWNoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjknOyB9IC8qICfuoKknICovXG4uc2YtaWNvbi1kYXl2aWV3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmEnOyB9IC8qICfuoKonICovXG4uc2YtaWNvbi1pbmZvOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmInOyB9IC8qICfuoKsnICovXG4uc2YtaWNvbi1pbnNlcnRfdGFnX2ZpZWxkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmMnOyB9IC8qICfuoKwnICovXG4uc2YtaWNvbi1wYXN0ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJkJzsgfSAvKiAn7qCtJyAqL1xuLnNmLWljb24tc29ydDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJlJzsgfSAvKiAn7qCuJyAqL1xuLnNmLWljb24tcGRmOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmYnOyB9IC8qICfuoK8nICovXG4uc2YtaWNvbi1yZXBvcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzMCc7IH0gLyogJ+6gsCcgKi9cbi5zZi1pY29uLXRhc2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzMSc7IH0gLyogJ+6gsScgKi9cbi5zZi1pY29uLWFwcHJvdmFsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzInOyB9IC8qICfuoLInICovXG4uc2YtaWNvbi1zb2NpYWxzaGFyZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODMzJzsgfSAvKiAn7qCzJyAqL1xuLnNmLWljb24tcGVvcGxlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzQnOyB9IC8qICfuoLQnICovXG4uc2YtaWNvbi1pdGFsaWM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzNSc7IH0gLyogJ+6gtScgKi9cbi5zZi1pY29uLWRlbGV0ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM2JzsgfSAvKiAn7qC2JyAqL1xuLnNmLWljb24tYmFjazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM3JzsgfSAvKiAn7qC3JyAqL1xuLnNmLWljb24tYmFuOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzgnOyB9IC8qICfuoLgnICovXG4uc2YtaWNvbi1lbWFpbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM5JzsgfSAvKiAn7qC5JyAqL1xuLnNmLWljb24tYm9sZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNhJzsgfSAvKiAn7qC6JyAqL1xuLnNmLWljb24tcHJldmlldzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNiJzsgfSAvKiAn7qC7JyAqL1xuLnNmLWljb24tc2hhcmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzYyc7IH0gLyogJ+6gvCcgKi9cbi5zZi1pY29uLWRhc2hib2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNkJzsgfSAvKiAn7qC9JyAqL1xuLnNmLWljb24tdGhhbmtzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2UnOyB9IC8qICfuoL4nICovXG4uc2YtaWNvbi10b2RheTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNmJzsgfSAvKiAn7qC/JyAqL1xuLnNmLWljb24tY29udHJhY3QtMTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQwJzsgfSAvKiAn7qGAJyAqL1xuLnNmLWljb24tc3Bpbm5lcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQxJzsgfSAvKiAn7qGBJyAqL1xuLnNmLWljb24tcGhvdG86YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Mic7IH0gLyogJ+6hgicgKi9cbi5zZi1pY29uLWV2ZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDMnOyB9IC8qICfuoYMnICovXG4uc2YtaWNvbi1idWlsZGVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDQnOyB9IC8qICfuoYQnICovXG4uc2YtaWNvbi1qdXN0aWZ5X3RleHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0NSc7IH0gLyogJ+6hhScgKi9cbi5zZi1pY29uLWNlbnRlcl9hbGlnbl90ZXh0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDYnOyB9IC8qICfuoYYnICovXG4uc2YtaWNvbi1lZGl0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDcnOyB9IC8qICfuoYcnICovXG4uc2YtaWNvbi1sYXlvdXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0OCc7IH0gLyogJ+6hiCcgKi9cbi5zZi1pY29uLXByaW9yaXR5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDknOyB9IC8qICfuoYknICovXG4uc2YtaWNvbi1zdGFuZGFyZF9vYmplY3RzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGEnOyB9IC8qICfuoYonICovXG4uc2YtaWNvbi1jb250YWN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGInOyB9IC8qICfuoYsnICovXG4uc2YtaWNvbi1jdXN0b205MzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRjJzsgfSAvKiAn7qGMJyAqL1xuLnNmLWljb24tZW1haWwtMTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRkJzsgfSAvKiAn7qGNJyAqL1xuLnNmLWljb24tc3VjY2VzczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRlJzsgfSAvKiAn7qGOJyAqL1xuLnNmLWljb24tcmVmcmVzaDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRmJzsgfSAvKiAn7qGPJyAqL1xuLnNmLWljb24tbGVmdF9hbGlnbl90ZXh0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTAnOyB9IC8qICfuoZAnICovXG4uc2YtaWNvbi1kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTEnOyB9IC8qICfuoZEnICovXG4uc2YtaWNvbi1jaGFydDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODUyJzsgfSAvKiAn7qGSJyAqL1xuLnNmLWljb24tY2hhdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODUzJzsgfSAvKiAn7qGTJyAqL1xuLnNmLWljb24tZXJyb3I6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1NCc7IH0gLyogJ+6hlCcgKi9cbi5zZi1pY29uLWxlZnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1NSc7IH0gLyogJ+6hlScgKi9cbi5zZi1pY29uLXJlbW92ZV9saW5rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTYnOyB9IC8qICfuoZYnICovXG4uc2YtaWNvbi1zdW1tYXJ5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTcnOyB9IC8qICfuoZcnICovXG4uc2YtaWNvbi1kb2N1bWVudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU4JzsgfSAvKiAn7qGYJyAqL1xuLnNmLWljb24tZHJhZnRzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTknOyB9IC8qICfuoZknICovXG4uc2YtaWNvbi1zdW1tYXJ5ZGV0YWlsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWEnOyB9IC8qICfuoZonICovXG4uc2YtaWNvbi1yZXBsYWNlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWInOyB9IC8qICfuoZsnICovXG4uc2YtaWNvbi1saWtlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWMnOyB9IC8qICfuoZwnICovXG4uc2YtaWNvbi1kb3dubG9hZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVkJzsgfSAvKiAn7qGdJyAqL1xuLnNmLWljb24tY2hlY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1ZSc7IH0gLyogJ+6hnicgKi9cbi5zZi1pY29uLWNoZXZyb25sZWZ0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWYnOyB9IC8qICfuoZ8nICovXG4uc2YtaWNvbi1leHBhbmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2MCc7IH0gLyogJ+6hoCcgKi9cbi5zZi1pY29uLWxpbms6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2MSc7IH0gLyogJ+6hoScgKi9cbi5zZi1pY29uLXJlcGx5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjInOyB9IC8qICfuoaInICovXG4uc2YtaWNvbi10YWJsZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODYzJzsgfSAvKiAn7qGjJyAqL1xuLnNmLWljb24tZmVlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY0JzsgfSAvKiAn7qGkJyAqL1xuLnNmLWljb24tZXZlbnQtMTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY1JzsgfSAvKiAn7qGlJyAqL1xuLnNmLWljb24tdGlsZV9jYXJkX2xpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Nic7IH0gLyogJ+6hpicgKi9cbi5zZi1pY29uLXJpY2h0ZXh0YnVsbGV0ZWRsaXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjcnOyB9IC8qICfuoacnICovXG4uc2YtaWNvbi1saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjgnOyB9IC8qICfuoagnICovXG4uc2YtaWNvbi1mYXZvcml0ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY5JzsgfSAvKiAn7qGpJyAqL1xuLnNmLWljb24tY2hldnJvbnJpZ2h0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmEnOyB9IC8qICfuoaonICovXG4uc2YtaWNvbi1jaGV2cm9uZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZiJzsgfSAvKiAn7qGrJyAqL1xuLnNmLWljb24tZmlsdGVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmMnOyB9IC8qICfuoawnICovXG4uc2YtaWNvbi1tb3ZlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmQnOyB9IC8qICfuoa0nICovXG4uc2YtaWNvbi1yaWNodGV4dGluZGVudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZlJzsgfSAvKiAn7qGuJyAqL1xuLnNmLWljb24tdW5kZXJsaW5lOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmYnOyB9IC8qICfuoa8nICovXG4uc2YtaWNvbi1mZWVkYmFjazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODcwJzsgfSAvKiAn7qGwJyAqL1xuLnNmLWljb24tZmlsZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODcxJzsgfSAvKiAn7qGxJyAqL1xuLnNmLWljb24tdW5kbzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODcyJzsgfSAvKiAn7qGyJyAqL1xuLnNmLWljb24tcmljaHRleHRudW1iZXJlZGxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Myc7IH0gLyogJ+6hsycgKi9cbi5zZi1pY29uLWxvY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3NCc7IH0gLyogJ+6htCcgKi9cbi5zZi1pY29uLWZpbHRlcmxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3NSc7IH0gLyogJ+6htScgKi9cbi5zZi1pY29uLWNoZXZyb251cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc2JzsgfSAvKiAn7qG2JyAqL1xuLnNmLWljb24tY2xlYXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Nyc7IH0gLyogJ+6htycgKi9cbi5zZi1pY29uLWZvcndhcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3OCc7IH0gLyogJ+6huCcgKi9cbi5zZi1pY29uLW5ld193aW5kb3c6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3OSc7IH0gLyogJ+6huScgKi9cbi5zZi1pY29uLXJpY2h0ZXh0b3V0ZGVudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdhJzsgfSAvKiAn7qG6JyAqL1xuLnNmLWljb24tdW5sb2NrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2InOyB9IC8qICfuobsnICovXG4uc2YtaWNvbi1vcHBvcnR1bml0eTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdjJzsgfSAvKiAn7qG8JyAqL1xuLnNmLWljb24tcG9zdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdkJzsgfSAvKiAn7qG9JyAqL1xuLnNmLWljb24tdXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3ZSc7IH0gLyogJ+6hvicgKi9cbi5zZi1pY29uLXNlYXJjaDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdmJzsgfSAvKiAn7qG/JyAqL1xuLnNmLWljb24tbmV3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODAnOyB9IC8qICfuooAnICovXG4uc2YtaWNvbi1mcm96ZW46YmVmb3JlIHsgY29udGVudDogJ1xcZTg4MSc7IH0gLyogJ+6igScgKi9cbi5zZi1pY29uLWNvbW1lbnRzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODInOyB9IC8qICfuooInICovXG4uc2YtaWNvbi1yZWNlbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Myc7IH0gLyogJ+6igycgKi9cbi5zZi1pY29uLW1hZ2ljd2FuZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg0JzsgfSAvKiAn7qKEJyAqL1xuLnNmLWljb24tZGlzY291bnRzY2hlZHVsZWljb25zLTAyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODUnOyB9IC8qICfuooUnICovXG4uc2YtaWNvbi1jYW5jZWwtY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg2JzsgfSAvKiAn7qKGJyAqL1xuLnNmLWljb24tY3VzdG9tMjY6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Nyc7IH0gLyogJ+6ihycgKi9cblxuLyogVGhlIGZvbGxvd2luZyBpcyBjb3BpZWQgZnJvbSBpY29ucy9jc3Mvc2ItZW1iZWRkZWQuY3NzIGFzIGxlc3MtcGx1Z2luLWNsZWFuLWNzcyBjb3VsZCBoYW5kbGUgYSBAaW1wb3J0ICovXG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6ICdzYic7XG4gIHNyYzogdXJsKCcuLi9mb250L3NiLmVvdD80OTM0MDI0OCcpO1xuICBzcmM6IHVybCgnLi4vZm9udC9zYi5lb3Q/NDkzNDAyNDgjaWVmaXgnKSBmb3JtYXQoJ2VtYmVkZGVkLW9wZW50eXBlJyksXG4gICAgICAgdXJsKCcuLi9mb250L3NiLnN2Zz80OTM0MDI0OCNzYicpIGZvcm1hdCgnc3ZnJyk7XG4gIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogJ3NiJztcbiAgc3JjOiB1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxkMDlHUmdBQkFBQUFBQlgwQUE0QUFBQUFKQmdBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQlBVeTh5QUFBQlJBQUFBRVFBQUFCV1BpbEpFbU50WVhBQUFBR0lBQUFBT2dBQUFVclFOaG0zWTNaMElBQUFBY1FBQUFBS0FBQUFDZ0FBQUFCbWNHZHRBQUFCMEFBQUJaUUFBQXR3aUpDUVdXZGhjM0FBQUFka0FBQUFDQUFBQUFnQUFBQVFaMng1WmdBQUIyd0FBQXFDQUFBUDNNNDQrTzFvWldGa0FBQVI4QUFBQURVQUFBQTJDQnVzQkdob1pXRUFBQklvQUFBQUhnQUFBQ1FIbHdOeGFHMTBlQUFBRWtnQUFBQS9BQUFBbklOSEFBQnNiMk5oQUFBU2lBQUFBRkFBQUFCUVNaUk5sbTFoZUhBQUFCTFlBQUFBSUFBQUFDQUF6QXZTYm1GdFpRQUFFdmdBQUFGekFBQUNoZi9Fakc1d2IzTjBBQUFVYkFBQUFTQUFBQUc2QVJpMmwzQnlaWEFBQUJXTUFBQUFaUUFBQUh2ZGF3T0ZlSnhqWUdTT1k1ekF3TXJBd1ZURnRJZUJnYUVIUWpNK1lEQmtaR0pnWUdKZ1pXYkFDZ0xTWEZNWUhGNHd2RkJsRHZxZnhSREZITVF3SFNqTUNKSURBT0xRQzdsNG5HTmdZR0JtZ0dBWkJrWUdFSEFCOGhqQmZCWUdEU0ROQnFRWkdaZ1lHRjZvL3Y4UFV2Q0NBVVJMTUVMVkF3RWpHOE9JQndDTStBYlRBQUFBQUFBQUFBQUFBQUFBQUFCNG5LMVdhWE1UUnhDZDFXSExOajZDRHhJMmdWbkdjb3gyVnBqTENCREc3RW9XNEJ6eWxleENqbDFMZHU2TFQvd0cvWnBla1ZTUmIveTB2QjRkMkdBblZWUW9TdjJtOSsxTTkrdWVYcFBRa3NSZVdJK2szSHdwcHJZMmFXVG5TVWczYkZxTzRrUFoyUXNwVTB6K0xvaUNhTFhVdnUwNEpDSVNnYXAxaFNXQzJQZkkwaVRqUTQ4eVdyWWx2V3BTYnVsSmQ5a2FEK3F0K3ZiVDBGR08zUWtsTlp1aFErdVJMYW5DcUJKRk11MlJrall0dzlWZlNWcmg1eXZNZk5VTUpZTG9KSkxHbTJFTWorUm40NHhXR2EzR2RoeEZrVTJXRzBXS1JETThpQ0tQc2xwaW4xd3hRVUQ1b0JsU1h2azBvbnlFSDVFVmU1VFRDbkhKZHByZjl5VS82UjNPdnlUaWVvdXlKUWYrUUhaa0IzdW5LL2tpMHRvSzQ2YWRiRWVoaXZCMGZTZkVJNXVUNnAvc1VWN1RhT0IyUmFZbnpRaVd5bGVRV1BrSlpmWVB5V3JoZk1xWFBCclZrb09jQ0ZvdmMySmY4ZzYwSGtkTWlXc215SUx1ams2SW9PNlhuS0hZWS9xNCtPTzlYU3dYSVFUSU9KYjFqa3E0RUVZcFliT2FKRzBFT1lpU3NrV1YxSHBIVEp6eU9pM2lMV0cvVHUzb1MyZTBTYWc3TVo2dGg0NnRuS2prZURTcDAweW1UdTJrNXRHVUJsRktPaE04NXRjQmxCL1JKSysyc1pyRXlxTnBiRE5qSkpGUW9JVnphU3FJWlNlV05BWFJQSnJSbTd0aG1tdlhva1dhUEZEUFBYcFBiMjZGbXpzOXArM0FQMnY4WjNVcXBvTzlNSjJlRHNoS2ZKcDJ1VW5SdW41NmhuOG04VVBXQWlxUkxUYkRsTVZEdG40SDVlVmpTNDdDYXdOczk1N3pLK2g5OWtUSXBJSDRHL0FlTDlVcEJVeUZtRlZRQzkyMDFyVXN5OVJxVm90VVpPcTdJVTByWDlacEFrMDVEbjFqWDhZNC9xK1pHVXRNQ2QvdnhPblpFWmVldWZZbHlEU0gzR1pkaitaMWFyRmRnTTVzeitrMHkvWjluZWJZZnFEVFBOdnpPaDFoYSt0MGxPMkhPaTJ3L1Vpblkyd3ZhRUdUN2pzRWNoR0JYTUFHRW9Hd2RSQUkyMHNJaEsxQ0lHd1hFUWpiSWdKaHU0UkEySDZNUU5ndUl4QzJsN1dzbW40cWFSdzdFOHNBUllnRG96bnV5R1Z1S2xkVHlhVVNyb3RHcHpia0tYS3JwS0o0VnYwckEvM2lrVGVzZ2JWQXVrVFcvSXBKcm54VWxlT1BybWg1MDhTNUFvNVZmM3R6WEo4VEQyVy9XUGhUOEwvYW1xcWtWNng1WkhJVmVTUFFrK05FMXlZVmo2N3A4cm1xUjlmL2k0b09hNEYrQTZVUUMwVlpsZzIrbVpEd1VhZlRVQTFjNVJBekd6TVAxL1c2WmMzUDRmeWJHQ0VMNkg3OE54UWFDOXlEVGxsSldlMWdyOVhYajJXNXR3ZmxzQ2RZa21LK3pPdGI0WXVNekVyN1JXWXBlejd5ZWNBVk1DcVZZYXNOWEszZ3pYc1M4NURwVGZKTUVMY1ZaWU9ramNlWklMR0JZeDR3Yjc2VElDUk1YYldCMmltY3NJRzhZTXdwMk8rRVExUnZsT1Z3ZTZGOUhvMlVmMnRYN01nWkZVMFErRzMyUnRqcnMxRHlXNnlCaENlLzFOZEFWU0ZOeGJpcGdFc2o1WVpxOEdGY3JkdEdNazZncjZqWURjdXlpZzhmUjl4M1NvNWxJUGxJRWF0SFJ6K3R2VUtkMUxuOXlpaHUzenY5Q0lKQmFXTCs5cjZaNHFDVWQ3V1NaVlp0QTFPM0dwVlQxNXJEeGFzTzNjMmo3bnZIMlNkeTFqVGRkRS9jOUw2bVZiZURnN2xaRU8zYkhKU2xUQzZvNjhNT0c2akx6YVhRNm1WY2t0NTJEekFzTUtEZm9SVWIvMWYzY2ZnOFY2b0tvK05Jdloyb0g2UFBZZ3p5RHpoL1IvVUY2T2N4VExtR2xPZDdseE9mYnR6RDJUSmR4VjJzbitMZndLeTE1bWJwR25CRDB3MlloNnhhSGJyS0RYeW5Cam85MHR5TzlCRHdzZTRLOFFCZ0U4Qmk4SW51V3NiektZRHhmTVljSCtCejVqQm9Nb2ZCRm5NWWJETm5EV0NIT1F4Mm1jTmdqemtNdm1ET09zQ1h6R0VRTW9kQnhCd0dUNWdUQUR4bERvT3ZtTVBnYStZdytJWTU5d0crWlE2RG1Ea01FdVl3Mk5kMGF5aHppeGQwRjZodFVCWG93UFFURnZld09OUlVHYksvNDRWaGYyOFFzMzh3aUtrL2FybzlwUDdFQzBQOTJTQ20vbUlRVTMvVmRHZEkvWTBYaHZxN1FVejl3eUNtUHRNdnhuS1p3VjlHdmt1RkE4b3VOcC96OThUN0I4SWFRTFlBQVFBQi8vOEFEM2ljaFZkN2NGVGxGYi9udTYvZG0rVHUzbjNjbTJ5U1RYWTMyWnRIQ2JoUG1zUVFZd1NHQnBxSkdZVGdBR1dzMFBBd09qd3NiOE1VWDJsQ0hidWlSbFNHSm96VmpPVWhqdVBJMUZxMUNFNTFLdGdPRnRveWFjSWZOQ1BZT3BUOTB2UGR6VUlRTXQza252MWU5M3puZDk3TEFjZU5kL0lqZkJzbmN0SmhnWU5wMVZvQU5GSGpSK2dBUGNtM0lWMTNqZlJ5K0JHdW4rVTVtY3ZoSEZ4ZW81S1hhN2VKQW5EQ3RHcXZGdEFBSC9mRU43eEY1OEZiMitBby9RRWNUYkVaaWJKSit0U05NZU5ydjRXdm16TzRRcTZFQzNGR295ZFFXbHhVa08vMWFNN3NYWGE4S3g3MThoT1BlNHJ4VmZiWk5vbW1ybDZGVFprbjdicjltTWtqM1ZZZXJWR2RMSVAwWFJrQ1hwaDRyTHQrVG42VWZqbnpUSEV0Y3VmR0grYi95cmR3Qk85MGM4b3hweUloYXg1WnU0RzM4dzJrQkhTVlRJZHdNN2hPd1FEd2RBazRTRzJyYjFlQlJRdjc0RDc2TDJpQ0FYcU5kcEN2elhwUzJPMXJyU1VGdXdvNTdvWnRjOUMyZGg1dEc3ZEQwZzZHSFdRN2dFRkh2d0lEaksvb3FFWG82SnlicDEreEk3Zm5nK2JOL3NGSzhNRksrandkL2l3N29NL0RTZzVSWmQ4enVSbWM3V2hObFY4aDZGL3haQ0pwSm8zRUxJZ2F1cEUwWkwwRXZMSWtHN0lwT1NCa2hrM1pUSWJOcEVlUEpHSmhGVkpxL3ZLMUd5cW5PL3VkMDZvM3JGMmVyNll5UzlYVGNHbDZwYlYwcW4xek8vN0R4S0ZsQmp0a0xMdjVVQ3JMYW1sOWUvdWpDMG1iNWRPREtLTStsVStqUGNzblBmekl0ZndieitMKy9ySCsvcStSdnZSU1JrL3ZJaS9tUWRKaGtlbEpTNkpDd2R3L0FOY09wSmZ2QjJIL0FhQTRPc0Q4TEtPZlBhZ2ZCNWVQK3RHZE1rZFlHRVhEeVFaSVJuUkRMNGFvQm9GNERaaGhTWDZhRkpvdjNMKzB2OXlYU2g4Q2pzeE54bWFMS2RJMGNOZWlCMkhOdlhXejFxYmZJMDFkc2JtRXpLM044T2M0dm8rOGdmTGtJZjljUlNESXZ6emdOWlBlQUtLSkczS2M3MHV2T0hlTzdMdTJpK3c3ZDI3SFF3Y0h1ODUxUFRSdzhLRU1ucC93ZC9BdXpvdDQzRGFHSjVhSWxBQ2p1bGRMSXZXZ0k0WExZczRyWlpHeXk2NUltWXR1cGo5MVFXRkJtZXN5NlM0b0t5dEliNy9zS291NDZXYlk3Y253WEkwOFBSYlBQRXRITVhSSjNTTUZwNE9HTkp6VVpLUXVlQngyNDR1dXkyWFJNcmlDckdHRnp3Vzc2V1pYTE9TNm5ON09lSlB1eTY0UXg0K254My9ETCtPWjlaSmNNOGJSWFhYVjdod2U0Nmc4SGd0WFExQXFCbzllQjVHRU8xWURvYUFzWVZ4Rkk2aGtoT0dSWkJVTWIyWS9oazdad0JzZUZZSTFCTGY5QUZjVTIycWJZcEcraHZ2dmVHS09QVytlSU5sRmYvbk1LcjB3VkEvV1ZyNnJTUEY3Y3M4ODh1SEl4K3VremU5ZWVXZDdXL1kxQlhiYzBWNnpTVldTZ2h3dTlMdTh2bHhuWTlpREc2NWdqbFB5RlZXMGJmaGcvZm9QTGpMQ1RIWWRqNStyNGVvUXo4eElWZEJudTQ1SG13ektHN29Cai84T1hIRVNFRktueUFuRmRvZ0pGWTh6ZWxWVzV0d0FCeitlTFB0aVhQQ3pIUndjdHFnQzF4WlBMQ2puYjVJM1V4ZGVSajlXdUNEWHdDMWdNZFRTR0NrcmNJZ3NoaUNLR1N3ZWNvQWtnd2NwR2pxY3FHTmVWTWNNb0VVanV1Z054TjJvKzNoSXFrWkVMTkF3RlhpVGVDTHV4bm5VRE1sUjl1Mk91c256S3lva1FnaUFRUDhpSFJKVitaRE5scmZhQXNGd2ZFN2YrVlFXSlp1a2ROOE5kMzRxMkNTYm1QUDBobGVyZkUvNHFsNHhkM1k4UnRadDl0bEpqcUpJNmRtU2ZFZ1VEOXU5UE1mQXBUbGxYbmNFVEVVU2dUVHVqTkF2QlVVR0lFM3dUWDE5YTJ0OVBUeE0rN2hiTUVlNEh6TE16YkVaV2N6bE56Q0xVMksrR1JlZjFZRXNtZGUxa0ZYQy93Rk5oRW53Y2pJS0VIaVlVRUd1cFlGb0JyUmQzbkVMNWwvVTFiVzIxdFhCSTdTWGRIZEhFYjhvNGxVWkZmelpJZUd3eVlwZEpDZEptTldydzhCNkJjZ0JPRGs4VE1LMEMvWlkyN2VlaVJmQzhIQUs5dEF1cHJmeDhmSEgrVi96U2M3R2FWd3BWbmpVV3loUTROWlV3ZktWb09UVVN4UE9zQm5oWEtobEZ5Y21kSmxITFlZd003Z1RTVDVwd2hmUG5UNE5OYWRQUC9jK3VBaTlTSGZTaXdSYzBLM3FmSWVnMGhOU3Jrdm9FUEtxLzN1RWZIS2FmbTRkWGtVdllXb2FFeUFmdG9QdlcwSEhjNnJRNGNtRGhNclRMK2NjeWNxK2h6UmJzaE9yRjhvREpqaHBIaDcrN240R3YxYWUyYWV4WWV5Z3N2V3VCSDJpbkl0eTlaeWpNVGNlbTE1UkZncVVHcktJTDJCV3h5d25CNEpoTTg2SVpxVWNZRjVoZUJOUkIwUkJqaHJKZUFnVGt4blNBdkZZQXJTSkNYL0k4RU9wbmg3Rkwvb1pFdDE1d1pIUVIzQVVEc3daSEtRdkRnNnVmZk8wM3hnRnYwN0NaL3pHQ05tSzV6dXMxMTRwMVdHVG5uQmNRQVhyeDR4Tmc3QnQ4UDAzUjBmMVVxQXY5dWtKdW9Ec0dtR1RGMWp0dUo2RGNya0NxelpKckRaQlVDVitpRFJBRFlISlNmS05lM3RhU2ZzVHIrMWVLQ3pvaFNXVE1nbnBiZXM1ME5ObUVmckhLZktjRGF0QkVQTmNTWUhETGhITWM0Q0ZvQWF3dnBpM3Y1RFV0VDNhUmhhdVg3aG55b3RoYVYxNys4YjI5bSttdk4rcWoyUVI2Y2E2NzBHTXpseEZaQml4cUlsU09JNldNY29qWHMwVHhDSDBxeXBONlVWRk9weWRsNEtOaWsrNW9McDg4STdQcFZiVTBwcmFXdmk4OWlhZXVSWlBsMm9Ya0tjN2xpeFBZTmlqR2N2RFppekRkVWlGTlo2aUlnOTlWaDFLcFdDcGFyR2tzNUhsQmVYZnRSWlg3bm9kN3lKYlVVNkQyVUs3UlU1NTBwaGZnYUwyNkg2LzNvYUR2WjdTVWcvS1cyVDdWblVXd2QrTG5PcTNreWMzOFord3RXYkpyRTJXdVh6eVJJV05qQ3Q5U29VUFZWaGxqZmVxREFCalMvM3NEcHQ2MDh3S25YR0s5bDZNOXA2QjhWTVpZUEdEam8xT0ZaNEY0UkN6TkIrTkpMQXNsNEFmc0NyTHpOeTRoRTFpUXVjWGU1eFhEYmMydjYycnRyTmxobERSdnFLaGFXT2xvRWt0SXBIcWg1YmQ5MHJYWEtIeDBiMUwydmJlT2RjNWpmenVxcXBQYzg2Zlg5UFN1YjZ6cGFZMkxvRTRYMUNsZWEzUXZIN2YwTDcxelEzZm4rdHlUOFExR1NGUFdmMnRJcUJjeVNEcU1xcFpIZElEVmJVOXNHWnM3T1A2Q2xoS1Q2VE9uazB4M3gwZi96My9TL0lmekdKZWpIZmxXS0h1ZHFraXE5RTZFejJBUFZzc0NhekZNR1JreGVPYW4zVVlZZjdKWElCb09JMGRHT1JCVjI1RnBESzM3MmROcFZVQVZZMVZsZk4xb3lLQ0IweERKOXU4K2ZuZVg5RXZvSnIyUVdXd3RMTHlycXBzM0N5MllyTUlPd1RsV0ZXZ0FPT1R4UTNHUmpaTTNCUE5nSXk5allGNk5kMHhreTNJa3RlZGFRL2dqZlVmUHBJTm1kOHFNcXVldWZKcVdRR3NmN1l0TmxGU0ZQdEttOExuVEFRTmt2VGNUbFkwT3RuUmo2QkQ1a1dSbCttQVpMTmh6aGpIL1BjcWo3MG1GMEEvS3NpUmVPYW4ySE5KZnRRRVdEMmVGR0xTQ1g1aWVHU0V1T3Zaa3ltaDkwODlFUHhlcmVmNEExdGFuMW5WU09yWDlCN282WnJKMzNQY0M5MHJueUdwRTN1bEh2cENjWlgzK0QwTm5YdjI5NjZyRlpvZVRNM2Y4c0J4YjZhbmZKMS9uWnpINkpqNERZdGFkK0pGWmhMYlBDd21xSVNvYkVZYmdIaGV1M1RwdGQ1MXM5dFhiRDl5NU9vUjB2djIyMXZKR0RrL1JsOGZXelN2L2dod1I0YTJuanc1Y0RGVHk4WjNZRDYvRTMraFNvY2x3dXFCV0lnMmM1ZUxidGl5YlFOc29aK3NvNmZvaVUxd2hzQXErcXp0TEgzbWIyZGdWYWEzMzJtOXEyRm1zeDB0TFZDc21JcUs3cVRoUmhiR2RIQkEwbTJXRUFmTUFzT2NCZE94MkMrRjR1WEZ4WXNZNDdhaWxuK09MQ2p1K01mREJ6MjJwamUxOSs1MkRaM1JiWTJ6YmV3eXRlTitPb2JYWFZveTgrRCtlQWVvUTdiSFZPOG5XM0tlT3E5dUU0ajNEeDk1L3dlNm90QkVBQUI0bkdOZ1pHQmdBT0pEVHJZTjhmdzJYeG00bVY4QVJSZ3VkWi8wZ3REenBmNy8vWi9KL0lJNUNNamxZR0FDaVFJQWJDb05qUUFBQUhpY1kyQmtZR0FPK3AvRkVNWDhnb0hoLzNjZ0NSUkJBZW9Ba01ZR0RnQUFlSnhqZnNIQXdJeU83MklSQStFSlFMd0FpQTJoT0JLS0YwQXc0eGtJWmw0RnBDZEFNRmdmVkIxVEJBUXpGMEF4U0F3a1B3WEpuRFVJK3dDUFpSbXlBQUFBQUFBQUZnQkNBSW9BdmdEdUFSSUJMZ0dBQWFZQnZnSHVBZzRDT0FKaUFzb0RJZ09jQkJZRUtBUTRCSVlFbGdTbUJRd0ZQZ1YrQmFnRjBnWUNCallHZ2dhY0J0b0hKZ2RpQjQ0SHJBZnVBQUVBQUFBbkFGQUFDUUFBQUFBQUFnQUFBQkFBY3dBQUFDZ0xjQUFBQUFCNG5IV1F5MHJEUUJpRlQzcFIycUtnZ3V0L3BTMkY5QUpGY0NIRlFyc1NvWXZ1a3paTlV0Sk1tWmtLZGVjRCtJcStoZ3MzbnFTRGlHRENKTjg1LzIxbUFGemlBeDZPejRqcnlCNHFWRWV1NEJSM2pxdFVENDVyNUxIak9scDRkSHhDLzhseEUxMDhPMjdoQ3EvczROVWFWQnU4Ty9iWTZkTnhCZWY0Y2x4RnpXczRycEhQSE5keDdWMDRQcUYvNjdpSmhkZDEzTUtOOXpaUnU0Tk80OFJLZTlLUllYOHdrdkFnaWxhYUI1a0VlNXNvYldRc2E1WGJLTXVVdjFSYkU4NmplSjhGMm9RbVhFVGFwQ3FYZ2Q4MzRTektJeDNZYUZWME1TL3gwTnExckxYYXl0VFZ5MDZyVGJTMGZtTHQ3cjdYKzkwWEV5anNjSUJHaWhnSkxBUnR1aDMraCtoandBc1hoTXdRWmg2elV1UUlrTkVKc0dkRlVrWU05WmhyVFpYVGpaaVJrWDBzK2QweUhtSk9OMlpOeGtwZE9zVmEwQzFVV2xZS1ovcWNYRVJtak9SbE5DZzdybjcyWXZEQ1RrTzZsaE9McWJxY0lwaittUzg4WHhIYjBGblM5OHRUV3JyMzZQSDlaNy9meG5kdmR3QjRuRzFPMlhMQ01CQ0xRaHBDQ0xUMHZ1K1dKMytVNnppSmk3RTk5cWFVdnkrR0tYMnBIclRTenF5MFNacnNVQ2IvWTU0a1NERkFoZ1BrR0tMQUNDWEdxRERCRkljNHdnekhPTUVwem5DT0MxemlDdGU0d1MzdWNJOEhQT0lKejNqQks5N3dqbm5lS0UzU0Y5UXh6WDByVStxR1VhdEF1Wk5HS0owTGJvVFVtZE45R0FqYlRyaFdyV0dmZlNEVnJGTzd5TFFWaTBKK2k0NmJWbWExWFptMGQxVW50V05DZWFGbFhTblQyTDBKMWhNemZDbFo3NlovSmg0V2tWaXRmTjY3T0liQ0xoMFBZZVJWMjFIY0ZGbzJXN0VwRXFIYVpUSzVkTFFlMTVaK1MzS3lUSnE2Mkl4QTNGUFY4RUNzc1g3RmZUM1ptZzh1RnRHbFlsVnErU1gxOW9NUko1S0dsRFd6dmRxSEJzbTk2QVpDckxLWVdrYmFkU2ZKRDJZSWVReDRuR1B3M3NGd0lpaGlJeU5qWCtRR3hwMGNEQndNeVFVYkdWaWROakl3YUVGb0RoUjZKd01EQXljeWk1bkJaYU1LWTBkZ3hBYUhqb2lOekNrdUc5VkF2RjBjRFF5TUxBNGR5U0VSSUNXUlFMQ1JnVWRyQitQLzFnMHN2UnVaR0Z3QUI5TWl1QUFBQUE9PScpIGZvcm1hdCgnd29mZicpLFxuICAgICAgIHVybCgnZGF0YTphcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07YmFzZTY0LEFBRUFBQUFPQUlBQUF3QmdUMU12TWo0cFNSSUFBQURzQUFBQVZtTnRZWERRTmhtM0FBQUJSQUFBQVVwamRuUWdBQUFBQUFBQUdDQUFBQUFLWm5CbmJZaVFrRmtBQUJnc0FBQUxjR2RoYzNBQUFBQVFBQUFZR0FBQUFBaG5iSGxtempqNDdRQUFBcEFBQUEvY2FHVmhaQWdickFRQUFCSnNBQUFBTm1ob1pXRUhsd054QUFBU3BBQUFBQ1JvYlhSNGcwY0FBQUFBRXNnQUFBQ2NiRzlqWVVtVVRaWUFBQk5rQUFBQVVHMWhlSEFBekF2U0FBQVR0QUFBQUNCdVlXMWwvOFNNYmdBQUU5UUFBQUtGY0c5emRBRVl0cGNBQUJaY0FBQUJ1bkJ5WlhEZGF3T0ZBQUFqbkFBQUFIc0FBUU5lQVpBQUJRQUlBbm9DdkFBQUFJd0NlZ0s4QUFBQjRBQXhBUUlBQUFJQUJRTUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBVUdaRlpBQkE2QURvSlFOUy8yb0FXZ05TQUpjQUFBQUJBQUFBQUFBQUFBQUFBd0FBQUFNQUFBQWNBQUVBQUFBQUFFUUFBd0FCQUFBQUhBQUVBQ2dBQUFBR0FBUUFBUUFDQUFEb0pmLy9BQUFBQU9nQS8vOEFBQmdCQUFFQUFBQUFBQUFBQUFFR0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUEvMm9ENkFOU0FBVUFCck1FQUFFdEt4RWhBUkVGRVFQby9xYit6QU5TL3FiK2J2d0NqZ0FBQUFBRUFBRC9hZ1BvQTFJQUF3QUhBQXNBRHdBTlFBb05EQWtJQlFRQkFBUXRLeFVSSVJFQkVTRVJFeEVoRVFFUklSRUJ0djVLQWJaOUFiWCtTd0cxbGdHMi9rb0NNd0cxL2t2OXpRRzIva29DTXdHMS9rc0FBQUFBQ1FBQS8yb0Q2QU5TQUFNQUJ3QUxBQThBRXdBWEFCc0FId0FqQUJkQUZDRWdIUndaR0JVVUVSQU5EQWtJQlFRQkFBa3RLeFUxTXhVRE5UTVZBelV6RlJNMU14VUROVE1WQXpVekZSTTFNeFVETlRNVkF6VXpGZnI2K3ZyNmZmcjYrdnI2ZmZyNit2cjZsdnI2QVhmNitnRjMrdnI5RXZyNkFYZjYrZ0YzK3ZyOUV2cjZBWGY2K2dGMyt2b0FBQUFBQmdBQS8yb0Q2QU5TQUFNQUJ3QUxBQThBRXdBWEFCRkFEaFVVRVJBTkRBa0lCUVFCQUFZdEt4VTFNeFVETlRNVkF6VXpGUk0xSVJVQk5TRVZBVFVoRmZyNit2cjZqUUpoL1o4Q1lmMmZBbUdXK3ZvQmQvcjZBWGY2K3YwUyt2b0JkL3I2QVhmNitnQURBQUQvY1FQZUEwd0FBZ0FHQUJNQUNyY1FDZ1lFQVFBRExTc1ZFd0VEQ1FNK0FoOEJGZzRDTHdFbVJBRVN6UUdtQVFQK1d3RVBBanBRR29NWkFqcFFHb01iandGWC91OEJRZ0dtL3Z6K1dnTHlKendDRzRJYVVEb0NHWU1iQUFBQkFBRC9hZ1BvQTFJQUN3QUdzd2tEQVMwck5Ra0JOd2tCRndrQkJ3a0JBUmYrNmQwQkZ3RVgzZjdwQVJmZC91bis2VWNCRndFWDNmN3BBUmZkL3VuKzZkMEJGLzdwQUFBQkFBRC9hZ1BvQTFJQUN3QUdzd2tEQVMwck5SRWhFU0VSSVJFaEVTRVJBV2NCR2dGbi9wbis1dEVCR2dGbi9wbis1djZaQVdjQUFBSUFBUDlxQStnRFVnQW5BREFBQ0xVdUtoNEtBaTByRVRVM05qY25OeGMyUHdFekZ4WVhOeGNIRmg4QkZRY0dCeGNISndZUEFTTW5KaWNISnpjbUp6Y1VGakkyTkNZT0FaWU9HR0J0ZFNrdkVKd1FMU3QxYldBWURwYVdEaGhnYlhVckxSQ2NFQzhwZFcxZ0dBN05WSHBVVkhwVUFSQ2NFQzByZFcxZkZ3NldsZzRYWDIxMUt5MFFuQkF2S1hWdFlCZ09scFlPR0dCdGRTa3ZYanhVVkhoV0FsSUFCQUFBLzZjRDZBTVdBQU1BQndBTEFBOEFEVUFLRFF3SkNBVUVBUUFFTFNzVk5TRVZKVFVoRlNVMUlSVWxOU0VWQStqOEdBUG8vQmdENlB3WUEraFpuSnp3bkp6eW5KenduWjBBQUFFQUFQKzhBK2dEQUFBR0FBYXpCUU1CTFNzUk54Y0JGd0Vub3FZQi9LVDlZS0lCQktLa0FmNmsvV0NrQUFBQUFBSUFBUDlxQTVBRFVnQVBBQmdBQ0xVV0VBY0FBaTByRlJFekpqYytBVGN5RmhjV0hRRXpFUUVoTlM0Qkp5WUdCNHNDR3llYVhGNmNKUnFXL2JJQkFBSklOelJHQlpZQ1FxWkJXR1lCYkZNN1AyMzl2Z0pDY0RSSUFnSklPZ0FBQUFJQUFBQUFBNDhDclFBR0FBMEFDTFVNQ2dRQ0FpMHJKU0VWSnpjVklTVTFJVFVYQnpVRGovMWkzOThDbnZ5REFwN2YzMzl2cUtkdzMzQnZwcWh2QUFBQkFBRC9hUU14QXhJQUZRQUdzeE1JQVMwckVUUTJNaDhCRVRRMk1oWVZFVGMyTWhZVUJ3a0JKaVEwRVBRa01pVHpFaklrRXY1Ni9ua1NBUnNaSkJMekFvSVpKQ1FaL1g3ekVpUXlFLzU2QVlZVUFBQUJBQUQvYXdNeEF4UUFGUUFHc3cwREFTMHJFVFEzQ1FFV0ZBWWlMd0VSRkFZaUpqY1JCd1lpSmhJQmh3R0dFaVF5RXZNa015UUI5Qkl5SkFGaUdoSUJodjU2RWpRakV2UDlmaGtrSkJrQ2d2TVNJd0FELy8zL3NRTmZBd3NBRHdBM0FFUUFDcmRCT3lzVEN3TURMU3NsTlRRbUt3RWlCaDBCRkJZN0FUSTJFelF1QVNNaUJ3WWZBUll6TWpjK0FUSVdGUlFHQnc0QkZ4VVVGanNCTWpZME5qOEJQZ01YRkE0QklpNENQZ0V5SGdFQjlBb0lhd2dLQ2dockNBcVBQbHd4aUVjSkRVb0VCZ2tGSGlVNEtoWWJJendCQ2dockNBb1lFaHdLSGhRTTEzTEc2TWh1Qm5xODlMcCtVbXNJQ2dvSWF3Z0tDZ0YvTVZRdWR3NEtOd1FISmhzZUVoVWFEQkJBSmhRSUNnb1NJZ3NRQmhvY0tGSjF4SFIweE9yRWRIVEVBQUFBQS8vOS83RURYd01MQUI0QUxnQTdBQXEzT0RJcUlob0lBeTBySlRVMEppc0JFVFFtS3dFaUJoMEJGQlk3QVJVaklnWWRBUlFXT3dFeU5nTTFOQ1lyQVNJR0hRRVVGanNCTWpZRkZBNEJJaTRDUGdFeUhnRUNPd29ITmdvSXNnZ0tDZ2cxTlFnS0NnajZCd3BIQ2dockNBb0tDR3NJQ2dGbGNzYm95RzRHZXJ6MHVuNVNXUWdLQVI0SUNnb0lXUWdLc3dvSVdRZ0tDZ0g4V1FnS0NnaFpDQW9LNEhYRWRIVEU2c1IwZE1RQUFBQUVBQUQvYWdPZkExSUFDZ0FpQUQ0QVRnQU5RQXBNUURJa0dROEZBQVF0S3dFekx3RW1OU01QQVFZSEFSUVBBUVlpTHdFbU5qc0JFVFEyT3dFeUZoVVJNeklXQlJVaE5STTJQd0UxSXdZckFSVWpOU0VWQXdZUEFSVTNOanNCTlJNVkl6VXpKeU1ITXhVak5UTVRNeE1DbVdJb0JnSUNBZ0VCQlA3YUJySUZEZ2V5Q0FnTmF3b0lhd2dLYXdnS0FkTCt1czRIQlFZSUJncUNRd0U5emdRSUJnZ0ZDNHQxb1NvYWlCb3FvQ2VBV29FQ2Jub2FDUUlMQ2dvRy9VWUdCN0lGQmJNSkZRTUFDQW9LQ1AwQUNrcUNNZ0VuQ2dZRkFRSkFnREwrMkFRS0J3RUJBa0lCOVR3OFVGQThQQUZ4L284QUFBQUFCQUFBLzJvRG53TlNBQW9BSWdBeUFFOEFEVUFLUkRRd0pCa1BCUUFFTFNzbE15OEJKalVqRHdFR0J3VVVEd0VHSWk4QkpqWTdBUkUwTmpzQk1oWVZFVE15RmdVVkl6VXpKeU1ITXhVak5UTVRNeE1ERlNFMUV6WS9BVFVIQmljR0t3RVZJelVoRlFNUEFSVTNOanNCTlFLWllpZ0dBZ0lDQVFFRS90b0dzZ1VPQjdJSUNBMXJDZ2hyQ0FwckNBb0NCS0VxR29nYUtxQW5nRnFCQy82NnpnY0ZCZ1FEQVFZS2drTUJQYzRNQmdnRkM0c3plaG9KQWdzS0NRZC9CZ2V5QlFXekNSVURBQWdLQ2dqOUFBcVJPenRRVURzN0FYTCtqZ0tDZ2pNQkp3b0ZCUUlCQVFFQ1FJQXkvdGtQQmdFQkFVSUFBQUVBQUFBQUFjd0NKZ0FDQUFhekFRQUJMU3NCQ3dFQnpPYm1BaWIrY0FHUUFBQUFBQUVBQUFBQUFjd0NKZ0FDQUFhekFRQUJMU3MxR3dIbTVwWUJrUDV3QUFBQUJQLy8vNGNEcXdNM0FBZ0FFUUFnQUNNQURVQUtJeUVaRXhFT0JBQUVMU3NCSWdZUUZpQTJFQ1luTWdBU0FBUUFFZ0FGTmhZSEF3WUhCU01pSmpjVE5qY0ROeWNCMVpmVzFnRXUxdGFYd2dFU0F2N3Evb0QrNmdJQkVnR0NEaFlEV2dRTy9zb0dEQklFV2dRTksvdTBBc3ZXL3RMVzFnRXUxbWorN3Y1Ni92QUVBUmdCZmdFYStBUVdEdjdLRGdSYUZBMEJOZzREL3RoSHRBQUFBUUFBQUFBQmtBSkVBQUlBQnJNQ0FBRXRLeEVOQVFHUS9uQUNST2JtQUFBQkFBQUFBQUdRQWtRQUFnQUdzd0VBQVMwckFSRWxBWkQrY0FKRS9qVG1BQVVBQVA5cUErZ0RVZ0FmQUNJQUpRQXpBRHdBRDBBTU5UUXZLQ1FqSVNBWEJ3VXRLd0V5RmhjUkZBWUhJU0ltSnpVaElpWW5FVFEyUHdFK0FUc0JNaFlYRlRZekR3RXpBUWN6RnpjMUl4VVVCaWNqRVNFMU5EWUJFU01WRkFZbkl4RURzaGNlQVNBVy9la1hIZ0grMFJjZUFSWVE1QTgyRnVnWEhnRW1JVWVucC82YnA2ZHRzTlllRitrQkhoWUNKdGNlRitnQ2ZDQVcvVm9YSGdFZ0ZxQWdGZ0YzRmpZUDVCQVdJQmEzRjNlbkFYMm53ckRwNlJZZ0FmNmJqeFkyL2s0Q2crZ1dJQUgrbWdBQUFBTC8vZit4QTE4REN3QU1BQmtBQ0xVV0VBWUFBaTByQVNJT0FoNEJNajRCTGdJQkZBNEJJaTRDUGdFeUhnRUJyVk9NVUFKVWlLcUdWZ1JPamdGYmNzYm95RzRHZXJ6MHVuNENqbEtNcEl4U1VveWtqRkwrMEhYRWRIVEU2c1IwZE1RQUFBQUQvLzMvc1FOZkF3c0FDQUFWQUNJQUNyY2ZHUThKQmdJRExTc0JGQVlpTGdFMk1oWW5JZzRDSGdFeVBnRXVBZ0VVRGdFaUxnSStBVEllQVFJN1VuaFNBbFowVnBCVGpGQUNWSWlxaGxZRVRvNEJXM0xHNk1odUJucTg5THArQVY0N1ZGUjJWRlQxVW95a2pGSlNqS1NNVXY3UWRjUjBkTVRxeEhSMHhBQUFBQUlBQUFBQUFsZ0NnZ0FMQUJRQUNMVVFEQW9GQWkwckFSWVVCd1VHSmpVUk5EWVhKVElWRVJRaU5SRTBBWndPRHY2V0Zod2NGZ0hjU3BZQmRnb2FDdVFPRWhvQnVob1NEaWc2L2k0Nk9nSFNPZ0FBQUFJQUFBQUFBbGdDZ2dBTUFCUUFDTFVTRGdrRUFpMHJFelEzSlRZV0ZSRVVCaWNsSmljME1oVVJGQ0kxcmc0QmJCUWNIQlQrbEE2dWxwWUJYZzRLNUE0U0d2NUdHaElPNUFyMk9qcitMam82QUFBQUFBSUFBQUFBQTNBQ2ZBQUxBQmNBQ0xVV0VRb0ZBaTByQVJZVUJ3VUdKalVSTkRZWEJ4WVVCd1VHSmpVUk5EWVhBMklPRHY2TUZoNGVGbElPRHY2WUZDQWdGQUYyQ2h3SStBNFFIQUhpSEJBTytBb2NDUGdPRUJ3QjRod1FEZ0FBQUFJQUFBQUFBM0FDZkFBTUFCa0FDTFVXRVFrRUFpMHJFVFEzSlRZV0ZSRVVCaWNsSmlVME55VTJGaFVSRkFZbkpTWU9BWFlVSUNBVS9vb09BY1lPQVdnVUlDQVUvcGdPQVY0T0N2Z09FQnorSGh3UUR2Z0lEZzRLK0E0UUhQNGVIQkFPK0FnQUFBQUFBZi8rLzdFRFdRTUxBREFBQnJNcElRRXRLd0VWRkFZckFTSW1Qd0VtSXlJT0FoNERNekkyTno0Qkh3RWVBUWNPQVFjaUxnSStBek15RmhjM05oWURXUlFRK2hjVEVVMVNjRHBxVERBRUtGUmlQa0oyS1FRUkJrd0ZBZ1k4cmw5WG9IQklCRUI0bUZ0U21EMUlFQzBDdy9vT0ZpMFFUVTB1VEdwMGFrd3VPalVHQVFWTkJBNEdTbEFCUkhTZXJwNTBSRDQ1U0JJVEFBQUJBQUFBQUFMb0Fvb0FDd0FHc3dvRUFTMHJOeUltTlJFekVTRTFGd2MxWkNvNmpBRnM4UERJUENnQlh2N0tsdHpjbGdBQUEvLy8vOFVEbFFMM0FCRUFGUUFmQUFxM0d4WVRFZzRGQXkwckpSWUhEZ0VISVM0Qkp6UTNBVDRCTWhZWEJ4RXpFUU1PQVFjZUFUSTJOQ1lEaVF3QkFUTW0vU0VsTlFFTkFYQU1LRElwREkrRlFpQXFBUUVxUUNvcFRSWVhLRElCQVRNbkZ4WUNmUlVZR0JXbC90VUJLLzZQQVNraUlDa3BRU29BQUFQLy9mK3hBMWtEQ3dBTUFCd0FMZ0FLdHlvaEdSQUdBQU10S3dFeUhnRVVEZ0VpTGdJK0FSTTFOQ1lyQVNJR0J4VVVGaGN6TWpZbkV6UW5KaXNCSWdjR0ZSTVVGanNCTWpZQnJYVEdjbkxHNk1odUJucTh3UW9IYXdnS0FRd0hhd2NLQVFvR0JRaDdDQVVHQ2dvSlp3Z0tBd3QweE9yRWRIVEU2c1IwL1VocUNBb0tDR29JQ2dFTXh3RmFCd01GQlFNSC9xWUdDQWdBQXYvLy8yb0RvUU1OQUFnQUlRQUl0UmtMQmdNQ0xTc0JOQzRCQmg0QlBnRUJGQVlpTHdFR0l5SXVBajRFSGdJWEZBY1hGZ0tEbE15V0JJN1VqQUVpTERvVXYyUjdVSkpvUUFJOGJJNmtqSEE0QTBXL0ZRR0NaNUlDbHNxWUJveittaDBxRmI5RlBtcVFvbzV1T2dSQ1pwWk5lMlMvRlFBQUFRQUEvNndEckFMZ0FCY0FCck1FQUFFdEt3RXlGaEFHSXlJbk54WXpNallRSmlJR0J6TUhKek0rQVFJVXF1N3VxbzV1UmxSaWZyUzArclFDanJpNGZBTHdBdUR3L3F6d1dFbzh0QUVBdEs1OHpNeW02Z0FBQUFFQUFQOS9BK2dEUFFBSkFBYXpCZ0lCTFNzUkJSc0JEUUVUSlFVVEFYdDlkUUY3L3N0dS9zMyt5bmNCMXdJQmFQNlVDTnora3VIWEFXZ0FBQUlBQVArQUErZ0RQUUFSQUNJQUNMVWdHUW9FQWkwckVUTUZFemNYRXcwQkV4Y3ZBUThCTnhNbkh3SVBBVDhCRnljL0FTOEREd0ZlQVIxZ0hSMVlBWHYreTFJY1RPZm9UaDFhNDNHb0ZBaENzQkcrUXhLdTF4WUlRRVlJQWRjQ0FRNWFYUDd3Q056KzdsczRxS0kxV2dFT3JnaUJEaFhMZXd1SzRBNTlCQUlWeWNjVkFBRUFBQUFCQUFEQ1FqMkFYdzg4OVFBTEErZ0FBQUFBMG92SlNnQUFBQURTaTU4YS8vMy9hUVBvQTFJQUFBQUlBQUlBQUFBQUFBQUFBUUFBQTFML2FnQmFBK2dBQVAvM0ErZ0FBUUFBQUFBQUFBQUFBQUFBQUFBQUFDY0Q2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBkQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBT1FBQUFEb0FBQUF6RUFBQU14QUFBRFdRQUFBMWtBQUFPZ0FBQURvQUFBQWN3QUFBSE1BQUFEcWdBQUFaQUFBQUdRQUFBRDZBQUFBMWtBQUFOWkFBQUNXQUFBQWxnQUFBTndBQUFEY0FBQUExa0FBQUxvQUFBRGxBQUFBMWtBQUFPZ0FBQURyQUFBQStnQUFBUG9BQUFBQUFBQUFCWUFRZ0NLQUw0QTdnRVNBUzRCZ0FHbUFiNEI3Z0lPQWpnQ1lnTEtBeUlEbkFRV0JDZ0VPQVNHQkpZRXBnVU1CVDRGZmdXb0JkSUdBZ1kyQm9JR25BYmFCeVlIWWdlT0I2d0g3Z0FCQUFBQUp3QlFBQWtBQUFBQUFBSUFBQUFRQUhNQUFBQW9DM0FBQUFBQUFBQUFFZ0RlQUFFQUFBQUFBQUFBTlFBQUFBRUFBQUFBQUFFQUFnQTFBQUVBQUFBQUFBSUFCd0EzQUFFQUFBQUFBQU1BQWdBK0FBRUFBQUFBQUFRQUFnQkFBQUVBQUFBQUFBVUFDd0JDQUFFQUFBQUFBQVlBQWdCTkFBRUFBQUFBQUFvQUt3QlBBQUVBQUFBQUFBc0FFd0I2QUFNQUFRUUpBQUFBYWdDTkFBTUFBUVFKQUFFQUJBRDNBQU1BQVFRSkFBSUFEZ0Q3QUFNQUFRUUpBQU1BQkFFSkFBTUFBUVFKQUFRQUJBRU5BQU1BQVFRSkFBVUFGZ0VSQUFNQUFRUUpBQVlBQkFFbkFBTUFBUVFKQUFvQVZnRXJBQU1BQVFRSkFBc0FKZ0dCUTI5d2VYSnBaMmgwSUNoREtTQXlNREUxSUdKNUlHOXlhV2RwYm1Gc0lHRjFkR2h2Y25NZ1FDQm1iMjUwWld4c2J5NWpiMjF6WWxKbFozVnNZWEp6WW5OaVZtVnljMmx2YmlBeExqQnpZa2RsYm1WeVlYUmxaQ0JpZVNCemRtY3lkSFJtSUdaeWIyMGdSbTl1ZEdWc2JHOGdjSEp2YW1WamRDNW9kSFJ3T2k4dlptOXVkR1ZzYkc4dVkyOXRBRU1BYndCd0FIa0FjZ0JwQUdjQWFBQjBBQ0FBS0FCREFDa0FJQUF5QURBQU1RQTFBQ0FBWWdCNUFDQUFid0J5QUdrQVp3QnBBRzRBWVFCc0FDQUFZUUIxQUhRQWFBQnZBSElBY3dBZ0FFQUFJQUJtQUc4QWJnQjBBR1VBYkFCc0FHOEFMZ0JqQUc4QWJRQnpBR0lBVWdCbEFHY0FkUUJzQUdFQWNnQnpBR0lBY3dCaUFGWUFaUUJ5QUhNQWFRQnZBRzRBSUFBeEFDNEFNQUJ6QUdJQVJ3QmxBRzRBWlFCeUFHRUFkQUJsQUdRQUlBQmlBSGtBSUFCekFIWUFad0F5QUhRQWRBQm1BQ0FBWmdCeUFHOEFiUUFnQUVZQWJ3QnVBSFFBWlFCc0FHd0Fid0FnQUhBQWNnQnZBR29BWlFCakFIUUFMZ0JvQUhRQWRBQndBRG9BTHdBdkFHWUFid0J1QUhRQVpRQnNBR3dBYndBdUFHTUFid0J0QUFBQUFBSUFBQUFBQUFBQUNnQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBSndBQUFRSUJBd0VFQVFVQkJnRUhBUWdCQ1FFS0FRc0JEQUVOQVE0QkR3RVFBUkVCRWdFVEFSUUJGUUVXQVJjQkdBRVpBUm9CR3dFY0FSMEJIZ0VmQVNBQklRRWlBU01CSkFFbEFTWUJKd1ptYVd4MFpYSUlkR2d0YkdGeVoyVUNkR2dIZEdndGJHbHpkQVp3Wlc1amFXd0dZMkZ1WTJWc0JIQnNkWE1EWTI5bkRXRnNhV2R1TFdwMWMzUnBabmtDYjJzRWJHOWphd2hsZUdOb1lXNW5aUVJrYjNkdUFuVndER2hsYkhBdFkybHlZMnhsWkF4cGJtWnZMV05wY21Oc1pXUU1jMjl5ZEMxdVlXMWxMWFZ3RG5OdmNuUXRibUZ0WlMxa2IzZHVDR1J2ZDI0dFpHbHlCblZ3TFdScGNnZGpiMjF3WVhOekNYSnBaMmgwTFdScGNnaHNaV1owTFdScGNnUmtiMk56REdOcGNtTnNaUzFsYlhCMGVRdGtiM1F0WTJseVkyeGxaQVowYnkxbGJtUUlkRzh0YzNSaGNuUU1abUZ6ZEMxbWIzSjNZWEprRFdaaGMzUXRZbUZqYTNkaGNtUUNZM2NLYkdWMlpXd3RaRzkzYmdsaGRIUmxiblJwYjI0UllYUjBaVzUwYVc5dUxXTnBjbU5zWldRR2MyVmhjbU5vQTJOamR3UnpkR0Z5Q25OMFlYSXRaVzF3ZEhrQUFBQUFBQUVBQWYvL0FBOEFBQUFBQUFBQUFBQUFBQUN3QUN3Z3NBQlZXRVZaSUNCTHVBQU9VVXV3QmxOYVdMQTBHN0FvV1dCbUlJcFZXTEFDSldHNUNBQUlBR05qSTJJYklTR3dBRm13QUVNalJMSUFBUUJEWUVJdHNBRXNzQ0JnWmkyd0Fpd2daQ0N3d0ZDd0JDWmFzaWdCQ2tORlkwVlNXMWdoSXlFYmlsZ2dzRkJRV0NHd1FGa2JJTEE0VUZnaHNEaFpXU0N4QVFwRFJXTkZZV1N3S0ZCWUliRUJDa05GWTBVZ3NEQlFXQ0d3TUZrYklMREFVRmdnWmlDS2ltRWdzQXBRV0dBYklMQWdVRmdoc0FwZ0d5Q3dObEJZSWJBMllCdGdXVmxaRzdBQksxbFpJN0FBVUZobFdWa3RzQU1zSUVVZ3NBUWxZV1Fnc0FWRFVGaXdCU05Dc0FZalFoc2hJVm13QVdBdHNBUXNJeUVqSVNCa3NRVmlRaUN3QmlOQ3NRRUtRMFZqc1FFS1E3QUFZRVZqc0FNcUlTQ3dCa01naWlDS3NBRXJzVEFGSmJBRUpsRllZRkFiWVZKWldDTlpJU0N3UUZOWXNBRXJHeUd3UUZranNBQlFXR1ZaTGJBRkxMQUhReXV5QUFJQVEyQkNMYkFHTExBSEkwSWpJTEFBSTBKaHNBSmlackFCWTdBQllMQUZLaTJ3Qnl3Z0lFVWdzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUVTd0FXQXRzQWdzc2djTEFFTkZRaW9oc2dBQkFFTmdRaTJ3Q1N5d0FFTWpSTElBQVFCRFlFSXRzQW9zSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pDQ3dJRkJZSWJBQUc3QXdVRml3SUJ1d1FGbFpJN0FBVUZobFdiQURKU05oUkVTd0FXQXRzQXNzSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pMQWtVRml3QUJ1d1FGa2pzQUJRV0dWWnNBTWxJMkZFUkxBQllDMndEQ3dnc0FBalFySUxDZ05GV0NFYkl5RlpLaUV0c0Ewc3NRSUNSYkJrWVVRdHNBNHNzQUZnSUNDd0RFTktzQUJRV0NDd0RDTkNXYkFOUTBxd0FGSllJTEFOSTBKWkxiQVBMQ0N3RUdKbXNBRmpJTGdFQUdPS0kyR3dEa05nSUlwZ0lMQU9JMElqTGJBUUxFdFVXTEVFWkVSWkpMQU5aU040TGJBUkxFdFJXRXRUV0xFRVpFUlpHeUZaSkxBVFpTTjRMYkFTTExFQUQwTlZXTEVQRDBPd0FXRkNzQThyV2JBQVE3QUNKVUt4REFJbFFyRU5BaVZDc0FFV0l5Q3dBeVZRV0xFQkFFTmdzQVFsUW9xS0lJb2pZYkFPS2lFanNBRmhJSW9qWWJBT0tpRWJzUUVBUTJDd0FpVkNzQUlsWWJBT0tpRlpzQXhEUjdBTlEwZGdzQUppSUxBQVVGaXdRR0JaWnJBQll5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc1FBQUV5TkVzQUZEc0FBK3NnRUJBVU5nUWkyd0V5d0FzUUFDUlZSWXNBOGpRaUJGc0FzalFyQUtJN0FBWUVJZ1lMQUJZYlVRRUFFQURnQkNRb3Bnc1JJR0s3QnlLeHNpV1Myd0ZDeXhBQk1yTGJBVkxMRUJFeXN0c0JZc3NRSVRLeTJ3Rnl5eEF4TXJMYkFZTExFRUV5c3RzQmtzc1FVVEt5MndHaXl4QmhNckxiQWJMTEVIRXlzdHNCd3NzUWdUS3kyd0hTeXhDUk1yTGJBZUxBQ3dEU3V4QUFKRlZGaXdEeU5DSUVXd0N5TkNzQW9qc0FCZ1FpQmdzQUZodFJBUUFRQU9BRUpDaW1DeEVnWXJzSElyR3lKWkxiQWZMTEVBSGlzdHNDQXNzUUVlS3kyd0lTeXhBaDRyTGJBaUxMRURIaXN0c0NNc3NRUWVLeTJ3SkN5eEJSNHJMYkFsTExFR0hpc3RzQ1lzc1FjZUt5MndKeXl4Q0I0ckxiQW9MTEVKSGlzdHNDa3NJRHl3QVdBdHNDb3NJR0N3RUdBZ1F5T3dBV0JEc0FJbFliQUJZTEFwS2lFdHNDc3NzQ29yc0NvcUxiQXNMQ0FnUnlBZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZQ05oT0NNZ2lsVllJRWNnSUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQWpZVGdiSVZrdHNDMHNBTEVBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M0c0FMQU5LN0VBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M4c0lEV3dBV0F0c0RBc0FMQUJSV080QkFCaUlMQUFVRml3UUdCWlpyQUJZN0FCSzdBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlk3QUJLN0FBRnJRQUFBQUFBRVErSXppeEx3RVZLaTJ3TVN3Z1BDQkhJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJDd0FFTmhPQzJ3TWl3dUZ6d3RzRE1zSUR3Z1J5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc0FCRFliQUJRMk00TGJBMExMRUNBQllsSUM0Z1I3QUFJMEt3QWlWSmlvcEhJMGNqWVNCWVloc2hXYkFCSTBLeU13RUJGUlFxTGJBMUxMQUFGckFFSmJBRUpVY2pSeU5oc0FsREsyV0tMaU1nSUR5S09DMndOaXl3QUJhd0JDV3dCQ1VnTGtjalJ5TmhJTEFFSTBLd0NVTXJJTEJnVUZnZ3NFQlJXTE1DSUFNZ0c3TUNKZ01hV1VKQ0l5Q3dDRU1naWlOSEkwY2pZU05HWUxBRVE3QUNZaUN3QUZCWXNFQmdXV2F3QVdOZ0lMQUJLeUNLaW1FZ3NBSkRZR1Fqc0FORFlXUlFXTEFDUTJFYnNBTkRZRm13QXlXd0FtSWdzQUJRV0xCQVlGbG1zQUZqWVNNZ0lMQUVKaU5HWVRnYkk3QUlRMGF3QWlXd0NFTkhJMGNqWVdBZ3NBUkRzQUppSUxBQVVGaXdRR0JaWnJBQlkyQWpJTEFCS3lPd0JFTmdzQUVyc0FVbFliQUZKYkFDWWlDd0FGQllzRUJnV1dhd0FXT3dCQ1poSUxBRUpXQmtJN0FESldCa1VGZ2hHeU1oV1NNZ0lMQUVKaU5HWVRoWkxiQTNMTEFBRmlBZ0lMQUZKaUF1UnlOSEkyRWpQRGd0c0Rnc3NBQVdJTEFJSTBJZ0lDQkdJMGV3QVNzallUZ3RzRGtzc0FBV3NBTWxzQUlsUnlOSEkyR3dBRlJZTGlBOEl5RWJzQUlsc0FJbFJ5TkhJMkVnc0FVbHNBUWxSeU5ISTJHd0JpV3dCU1ZKc0FJbFlia0lBQWdBWTJNaklGaGlHeUZaWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUNNdUl5QWdQSW80SXlGWkxiQTZMTEFBRmlDd0NFTWdMa2NqUnlOaElHQ3dJR0Jtc0FKaUlMQUFVRml3UUdCWlpyQUJZeU1nSUR5S09DMndPeXdqSUM1R3NBSWxSbEpZSUR4WkxyRXJBUlFyTGJBOExDTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDBzSXlBdVJyQUNKVVpTV0NBOFdTTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDRzc0RVckl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUt5MndQeXl3Tml1S0lDQThzQVFqUW9vNEl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUs3QUVReTZ3S3lzdHNFQXNzQUFXc0FRbHNBUW1JQzVISTBjalliQUpReXNqSUR3Z0xpTTRzU3NCRkNzdHNFRXNzUWdFSlVLd0FCYXdCQ1d3QkNVZ0xrY2pSeU5oSUxBRUkwS3dDVU1ySUxCZ1VGZ2dzRUJSV0xNQ0lBTWdHN01DSmdNYVdVSkNJeUJIc0FSRHNBSmlJTEFBVUZpd1FHQlpackFCWTJBZ3NBRXJJSXFLWVNDd0FrTmdaQ093QTBOaFpGQllzQUpEWVJ1d0EwTmdXYkFESmJBQ1lpQ3dBRkJZc0VCZ1dXYXdBV05oc0FJbFJtRTRJeUE4SXpnYklTQWdSaU5Ic0FFckkyRTRJVm14S3dFVUt5MndRaXl3TlNzdXNTc0JGQ3N0c0VNc3NEWXJJU01nSUR5d0JDTkNJeml4S3dFVUs3QUVReTZ3S3lzdHNFUXNzQUFWSUVld0FDTkNzZ0FCQVJVVUV5NndNU290c0VVc3NBQVZJRWV3QUNOQ3NnQUJBUlVVRXk2d01Tb3RzRVlzc1FBQkZCT3dNaW90c0Vjc3NEUXFMYkJJTExBQUZrVWpJQzRnUm9vallUaXhLd0VVS3kyd1NTeXdDQ05Dc0VnckxiQktMTElBQUVFckxiQkxMTElBQVVFckxiQk1MTElCQUVFckxiQk5MTElCQVVFckxiQk9MTElBQUVJckxiQlBMTElBQVVJckxiQlFMTElCQUVJckxiQlJMTElCQVVJckxiQlNMTElBQUQ0ckxiQlRMTElBQVQ0ckxiQlVMTElCQUQ0ckxiQlZMTElCQVQ0ckxiQldMTElBQUVBckxiQlhMTElBQVVBckxiQllMTElCQUVBckxiQlpMTElCQVVBckxiQmFMTElBQUVNckxiQmJMTElBQVVNckxiQmNMTElCQUVNckxiQmRMTElCQVVNckxiQmVMTElBQUQ4ckxiQmZMTElBQVQ4ckxiQmdMTElCQUQ4ckxiQmhMTElCQVQ4ckxiQmlMTEEzS3k2eEt3RVVLeTJ3WXl5d055dXdPeXN0c0dRc3NEY3JzRHdyTGJCbExMQUFGckEzSzdBOUt5MndaaXl3T0NzdXNTc0JGQ3N0c0djc3NEZ3JzRHNyTGJCb0xMQTRLN0E4S3kyd2FTeXdPQ3V3UFNzdHNHb3NzRGtyTHJFckFSUXJMYkJyTExBNUs3QTdLeTJ3YkN5d09TdXdQQ3N0c0cwc3NEa3JzRDByTGJCdUxMQTZLeTZ4S3dFVUt5MndieXl3T2l1d095c3RzSEFzc0RvcnNEd3JMYkJ4TExBNks3QTlLeTJ3Y2l5ekNRUUNBMFZZSVJzaklWbENLN0FJWmJBREpGQjRzQUVWTUMwQVM3Z0F5RkpZc1FFQmpsbXdBYmtJQUFnQVkzQ3hBQVZDc1FBQUtyRUFCVUt4QUFncXNRQUZRckVBQ0NxeEFBVkN1UUFBQUFrcXNRQUZRcmtBQUFBSktyRURBRVN4SkFHSVVWaXdRSWhZc1FOa1JMRW1BWWhSV0xvSWdBQUJCRUNJWTFSWXNRTUFSRmxaV1ZteEFBd3F1QUgvaGJBRWpiRUNBRVFBJykgZm9ybWF0KCd0cnVldHlwZScpO1xufVxuLyogQ2hyb21lIGhhY2s6IFNWRyBpcyByZW5kZXJlZCBtb3JlIHNtb290aCBpbiBXaW5kb3p6ZS4gMTAwJSBtYWdpYywgdW5jb21tZW50IGlmIHlvdSBuZWVkIGl0LiAqL1xuLyogTm90ZSwgdGhhdCB3aWxsIGJyZWFrIGhpbnRpbmchIEluIG90aGVyIE9TLWVzIGZvbnQgd2lsbCBiZSBub3QgYXMgc2hhcnAgYXMgaXQgY291bGQgYmUgKi9cbi8qXG5AbWVkaWEgc2NyZWVuIGFuZCAoLXdlYmtpdC1taW4tZGV2aWNlLXBpeGVsLXJhdGlvOjApIHtcbiAgQGZvbnQtZmFjZSB7XG4gICAgZm9udC1mYW1pbHk6ICdzYic7XG4gICAgc3JjOiB1cmwoJy4uL2ZvbnQvc2Iuc3ZnPzQ5MzQwMjQ4I3NiJykgZm9ybWF0KCdzdmcnKTtcbiAgfVxufVxuKi9cbiBcbiBbY2xhc3NePVwic2ItaWNvbi1cIl06YmVmb3JlLCBbY2xhc3MqPVwiIHNiLWljb24tXCJdOmJlZm9yZSB7XG4gIGZvbnQtZmFtaWx5OiBcInNiXCI7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgc3BlYWs6IG5vbmU7XG4gXG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgdGV4dC1kZWNvcmF0aW9uOiBpbmhlcml0O1xuICB3aWR0aDogMWVtO1xuICBtYXJnaW4tcmlnaHQ6IC4yZW07XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgLyogb3BhY2l0eTogLjg7ICovXG4gXG4gIC8qIEZvciBzYWZldHkgLSByZXNldCBwYXJlbnQgc3R5bGVzLCB0aGF0IGNhbiBicmVhayBnbHlwaCBjb2RlcyovXG4gIGZvbnQtdmFyaWFudDogbm9ybWFsO1xuICB0ZXh0LXRyYW5zZm9ybTogbm9uZTtcbiAgICAgXG4gIC8qIGZpeCBidXR0b25zIGhlaWdodCwgZm9yIHR3aXR0ZXIgYm9vdHN0cmFwICovXG4gIGxpbmUtaGVpZ2h0OiAxZW07XG4gXG4gIC8qIEFuaW1hdGlvbiBjZW50ZXIgY29tcGVuc2F0aW9uIC0gbWFyZ2lucyBzaG91bGQgYmUgc3ltbWV0cmljICovXG4gIC8qIHJlbW92ZSBpZiBub3QgbmVlZGVkICovXG4gIG1hcmdpbi1sZWZ0OiAuMmVtO1xuIFxuICAvKiB5b3UgY2FuIGJlIG1vcmUgY29tZm9ydGFibGUgd2l0aCBpbmNyZWFzZWQgaWNvbnMgc2l6ZSAqL1xuICAvKiBmb250LXNpemU6IDEyMCU7ICovXG4gXG4gIC8qIFVuY29tbWVudCBmb3IgM0QgZWZmZWN0ICovXG4gIC8qIHRleHQtc2hhZG93OiAxcHggMXB4IDFweCByZ2JhKDEyNywgMTI3LCAxMjcsIDAuMyk7ICovXG59XG4uc2ItaWNvbi1maWx0ZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMCc7IH0gLyogJ+6ggCcgKi9cbi5zYi1pY29uLXRoLWxhcmdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDEnOyB9IC8qICfuoIEnICovXG4uc2ItaWNvbi10aDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAyJzsgfSAvKiAn7qCCJyAqL1xuLnNiLWljb24tdGgtbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAzJzsgfSAvKiAn7qCDJyAqL1xuLnNiLWljb24tcGVuY2lsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDQnOyB9IC8qICfuoIQnICovXG4uc2ItaWNvbi1jYW5jZWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNSc7IH0gLyogJ+6ghScgKi9cbi5zYi1pY29uLXBsdXM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNic7IH0gLyogJ+6ghicgKi9cbi5zYi1pY29uLWNvZzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA3JzsgfSAvKiAn7qCHJyAqL1xuLnNiLWljb24tYWxpZ24tanVzdGlmeTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA4JzsgfSAvKiAn7qCIJyAqL1xuLnNiLWljb24tb2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwOSc7IH0gLyogJ+6giScgKi9cbi5zYi1pY29uLWxvY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYSc7IH0gLyogJ+6giicgKi9cbi5zYi1pY29uLWV4Y2hhbmdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGInOyB9IC8qICfuoIsnICovXG4uc2ItaWNvbi1kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGMnOyB9IC8qICfuoIwnICovXG4uc2ItaWNvbi11cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBkJzsgfSAvKiAn7qCNJyAqL1xuLnNiLWljb24taGVscC1jaXJjbGVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGUnOyB9IC8qICfuoI4nICovXG4uc2ItaWNvbi1pbmZvLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZic7IH0gLyogJ+6gjycgKi9cbi5zYi1pY29uLXNvcnQtbmFtZS11cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEwJzsgfSAvKiAn7qCQJyAqL1xuLnNiLWljb24tc29ydC1uYW1lLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMSc7IH0gLyogJ+6gkScgKi9cbi5zYi1pY29uLWRvd24tZGlyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTInOyB9IC8qICfuoJInICovXG4uc2ItaWNvbi11cC1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMyc7IH0gLyogJ+6gkycgKi9cbi5zYi1pY29uLWNvbXBhc3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNCc7IH0gLyogJ+6glCcgKi9cbi5zYi1pY29uLXJpZ2h0LWRpcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE1JzsgfSAvKiAn7qCVJyAqL1xuLnNiLWljb24tbGVmdC1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNic7IH0gLyogJ+6glicgKi9cbi5zYi1pY29uLWRvY3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNyc7IH0gLyogJ+6glycgKi9cbi5zYi1pY29uLWNpcmNsZS1lbXB0eTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE4JzsgfSAvKiAn7qCYJyAqL1xuLnNiLWljb24tZG90LWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxOSc7IH0gLyogJ+6gmScgKi9cbi5zYi1pY29uLXRvLWVuZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFhJzsgfSAvKiAn7qCaJyAqL1xuLnNiLWljb24tdG8tc3RhcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYic7IH0gLyogJ+6gmycgKi9cbi5zYi1pY29uLWZhc3QtZm9yd2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFjJzsgfSAvKiAn7qCcJyAqL1xuLnNiLWljb24tZmFzdC1iYWNrd2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFkJzsgfSAvKiAn7qCdJyAqL1xuLnNiLWljb24tY3c6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZSc7IH0gLyogJ+6gnicgKi9cbi5zYi1pY29uLWxldmVsLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZic7IH0gLyogJ+6gnycgKi9cbi5zYi1pY29uLWF0dGVudGlvbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIwJzsgfSAvKiAn7qCgJyAqL1xuLnNiLWljb24tYXR0ZW50aW9uLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMSc7IH0gLyogJ+6goScgKi9cbi5zYi1pY29uLXNlYXJjaDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIyJzsgfSAvKiAn7qCiJyAqL1xuLnNiLWljb24tY2N3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjMnOyB9IC8qICfuoKMnICovXG4uc2ItaWNvbi1zdGFyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjQnOyB9IC8qICfuoKQnICovXG4uc2ItaWNvbi1zdGFyLWVtcHR5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjUnOyB9IC8qICfuoKUnICovXG4vKiBlbmQgb2YgaW1wb3J0IGZyb20gc2ItZW1iZWRkZWQuY3NzICovXG5cblxuLnNiICpbY2xhc3NePVwic2ItaWNvbi1cIl06YmVmb3JlLCAuc2IgKltjbGFzcyo9XCIgc2ItaWNvbi1cIl06YmVmb3JlIHtcbiAgZm9udC1mYW1pbHk6ICdzYic7XG4gIGNvbG9yOiBpbmhlcml0O1xuICAvKiBCZXR0ZXIgRm9udCBSZW5kZXJpbmcgPT09PT09PT09PT0gKi9cbiAgLXdlYmtpdC1mb250LXNtb290aGluZzogYW50aWFsaWFzZWQ7XG4gIC1tb3otb3N4LWZvbnQtc21vb3RoaW5nOiBncmF5c2NhbGU7XG59XG5cbi8vIGZpeCBmb3IgaWNvbiBmb250IHRoYXQgZGlkbid0IGhhdmUgdmVydGljYWwgc29ydCBhcnJvd3Ncbi5zYi1pY29uLWV4Y2hhbmdlOmJlZm9yZSB7XG4gIC5yb3RhdGUoOTBkZWcpO1xufVxuXG4vLyBUaGUgbG9hZGluZyBzcGlubmVyLiAgVGhpcyBpcyBhbiBhbmltYXRlZCBnaWYsIGZvdW5kIGF0IFwiaWNvbnMvbG9hZGVyLmdpZlwiXG4uc2ItaWNvbi1sb2FkaW5nIHtcbiAgd2lkdGg6IDE0OHB4O1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG59XG5cbi5zYi1pY29uLWxvYWRpbmcgPiBkaXYge1xuICB3aWR0aDogMzZweDtcbiAgaGVpZ2h0OiAxOHB4O1xuICBtYXJnaW46IDJweDtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiSGlnaGxpZ2h0Q29sb3I7XG5cbiAgYm9yZGVyLXJhZGl1czogMTAlO1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIC13ZWJraXQtYW5pbWF0aW9uOiBib3VuY2VkZWxheSAxLjRzIGluZmluaXRlIGVhc2UtaW4tb3V0O1xuICBhbmltYXRpb246IGJvdW5jZWRlbGF5IDEuNHMgaW5maW5pdGUgZWFzZS1pbi1vdXQ7XG4gIC8qIFByZXZlbnQgZmlyc3QgZnJhbWUgZnJvbSBmbGlja2VyaW5nIHdoZW4gYW5pbWF0aW9uIHN0YXJ0cyAqL1xuICAtd2Via2l0LWFuaW1hdGlvbi1maWxsLW1vZGU6IGJvdGg7XG4gIGFuaW1hdGlvbi1maWxsLW1vZGU6IGJvdGg7XG59XG5cbi5zYi1pY29uLWxvYWRpbmcgLnNiLWljb24tYm91bmNlMSB7XG4gIC13ZWJraXQtYW5pbWF0aW9uLWRlbGF5OiAtMC4zMnM7XG4gIGFuaW1hdGlvbi1kZWxheTogLTAuMzJzO1xufVxuXG4uc2ItaWNvbi1sb2FkaW5nIC5zYi1pY29uLWJvdW5jZTIge1xuICAtd2Via2l0LWFuaW1hdGlvbi1kZWxheTogLTAuMTZzO1xuICBhbmltYXRpb24tZGVsYXk6IC0wLjE2cztcbn1cblxuLy8gSGVhZGVyIGljb24gYmFja2dyb3VuZCBjb2xvcnNcbi5zYlBhZ2VUaXRsZSB7XG5cdC5zZi1pY29uLWN1c3RvbTkzIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjOTA0RDRDO1xuXHR9XG5cdC5zZi1pY29uLXByb2R1Y3Qge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNCNzgxRDM7XG5cdH1cdFxuXHQuc2YtaWNvbi1zZXR0aW5ncyB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogI0VEQjU2Njtcblx0fVxuXHQuc2YtaWNvbi1kb3dubG9hZCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzU0Njk4RDtcblx0fVxuXHQuc2YtaWNvbi1jb250cmFjdC0xIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkVDMDZFO1xuXHR9XG5cdC5zZi1pY29uLWFwcHJvdmFsIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjMDBDNkI3O1xuXHR9XG4gICAgLnNmLWljb24tcG9zdCB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6ICM2NUNBRTQ7XG4gICAgfVxuXHQuc2YtaWNvbi1nZG9jIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNTQ2OThEO1xuXHR9XG5cdC5zZi1pY29uLXJlY2VudCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzZDQTFFOTtcblx0fVxuXHQuc2YtaWNvbi1jb3B5IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkNBMEU5O1xuXHR9XG5cdC5zZi1pY29uLWZhdm9yaXRlIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjRkY3Qjg0O1xuXHR9XG5cdC5zZi1pY29uLXJlZnJlc2gge1xuXHRcdCYucmVzaXplIHtcblx0XHRcdGJhY2tncm91bmQtY29sb3I6ICM2Q0EwRTk7XG5cdFx0fVxuXHR9XG5cblx0LnNmLWljb24tcmVwbGFjZSB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzU0Njk4RDtcblx0fVxufVxuXG5ALXdlYmtpdC1rZXlmcmFtZXMgYm91bmNlZGVsYXkge1xuICAwJSwgODAlLCAxMDAlIHsgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDAuMCkgfVxuICA0MCUgeyAtd2Via2l0LXRyYW5zZm9ybTogc2NhbGUoMS4wKSB9XG59XG5cbkBrZXlmcmFtZXMgYm91bmNlZGVsYXkge1xuICAwJSwgODAlLCAxMDAlIHtcbiAgICB0cmFuc2Zvcm06IHNjYWxlKDAuMCk7XG4gICAgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDAuMCk7XG4gIH0gNDAlIHtcbiAgICAgIHRyYW5zZm9ybTogc2NhbGUoMS4wKTtcbiAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSgxLjApO1xuICAgIH1cbn1cbiIsIi8vIEdsb2JhbCBWYXJpYWJsZXNcbi8vXG4vLyBBbGwgZ2xvYmFsIExFU1MgdmFyaWFibGVzXG4vL1xuLy8gU3R5bGVndWlkZSB2YXJpYWJsZXNcbkBpbXBvcnQgXCJ2YXJpYWJsZXMubGVzc1wiO1xuXG4vL1NGREMgRm9udHNcbkBpbXBvcnQgXCJmb250cy5sZXNzXCI7XG4vLyBNaXhpbnNcbi8vXG4vLyBBbGwgZ2xvYmFsIExFU1MgbWl4aW5zIChmdW5jdGlvbnMpXG4vL1xuLy8gU3R5bGVndWlkZSBNaXhpbnNcbkBpbXBvcnQgXCJtaXhpbnMubGVzc1wiO1xuXG4vLyBUeXBvZ3JhcGh5XG4vL1xuLy8gQWxsIHRleHQgcmVsYXRlZCBjb250ZW50IGluY2x1ZGluZyBoZWFkaW5ncywgbGlua3MsIGFuZCBwbGFpbiB0ZXh0XG4vL1xuLy8gU3R5bGVndWlkZSBUeXBvZ3JhcGh5XG5AaW1wb3J0IFwidHlwb2dyYXBoeS5sZXNzXCI7XG5cbi8vIEJ1dHRvbnMgYW5kIFRvb2xiYXJzXG4vL1xuLy8gQnV0dG9ucywgYnV0dG9uIGJhcnMsIHRvb2xiYXJzXG4vL1xuLy8gU3R5bGVndWlkZSBCdXR0b25zXG5AaW1wb3J0IFwiYnV0dG9ucy5sZXNzXCI7XG5cbi8vIERpYWxvZ3Ncbi8vXG4vLyBEaWFsb2cgd2luZG93cywgcG9wdXBzLCBhbmQgdGhlaXIgbW9kYWwgbWFza3Ncbi8vXG4vLyBTdHlsZWd1aWRlIERpYWxvZ3NcbkBpbXBvcnQgXCJkaWFsb2dzLmxlc3NcIjtcblxuLy8gTGF5b3V0XG4vL1xuLy8gTGF5b3V0IGFuZCBwYWdlIHBhdHRlcm5zXG4vL1xuLy8gU3R5bGVndWlkZSBMYXlvdXRcbkBpbXBvcnQgXCJsYXlvdXQubGVzc1wiO1xuXG4vLyBGb3Jtc1xuLy9cbi8vIEZvcm1zIGFuZCBpbnB1dCByZWxhdGVkIGNvbnRyb2xzXG4vL1xuLy8gU3R5bGVndWlkZSBGb3Jtc1xuQGltcG9ydCBcImZvcm1zLmxlc3NcIjtcbkBpbXBvcnQgXCJkYXRlUGlja2VyLmxlc3NcIjtcblxuLy8gVGFibGVzXG4vL1xuLy8gVGFidWxhciBkaXNwbGF5IG9mIGRhdGFcbi8vXG4vLyBTdHlsZWd1aWRlIFRhYmxlc1xuQGltcG9ydCBcInRhYmxlcy5sZXNzXCI7XG5cbi8vIERyb3AgRG93bnNcbi8vXG4vLyBEcm9wIGRvd25zIC8gbWVudXNcbi8vXG4vLyBTdHlsZWd1aWRlIERyb3Bkb3duc1xuQGltcG9ydCBcImRyb3Bkb3ducy5sZXNzXCI7XG5cbi8vIEljb25zXG4vL1xuLy8gVGhlIGljb25zIGFuZCBpY29uIGZvbnRzXG4vL1xuLy8gU3R5bGVndWlkZSBJY29uc1xuQGltcG9ydCBcImljb25zLmxlc3NcIjtcblxuQGltcG9ydCBcInNmZGMubGVzc1wiO1xuXG5cbi8vIE91ciB0b3AtbW9zdCBzZWxlY3RvciwgcmVzZXQgYnJvd3NlciBpbmNvbnNpc3RlbmNpZXNcbi5zYiB7XG4gIGZvbnQtc2l6ZTogMTBweDsgIC8vIGlkZWFsbHkgdGhpcyB3b3VsZCBiZSA2Mi41JSBvbiBodG1sIHNvIHdlIGNvdWxkIHVzZSByZW0gYnV0IFNGREMgbGltaXRzIHVzIGhlcmVcbiAgZm9udC1mYW1pbHk6IEBzYkZvbnQgIWltcG9ydGFudDsgIC8vIG11c3QgYmUgaW1wb3J0YW50IGFzIFNGREMgYWxzbyBzZXRzXG59XG5cbi8vIFJlc2V0IGJyb3dzZXIgaW5jb25zaXN0ZW5jaWVzXG4uc2IgKiB7XG4gIGJveC1zaXppbmc6IGJvcmRlci1ib3g7XG59XG5cbi8vIEhpZGluZyAtIGEgY29tbW9uIHN0YXRlIG1vZGlmaWVyIGNsYXNzIHRoYXQgY2FuIGJlIGFwcGxpZWQgYW55d2hlcmVcbi5zYiAqLmhpZGRlbiB7XG4gIGRpc3BsYXk6IG5vbmU7XG59XG5cbi8vIENsZWFyIGZsb2F0aW5nIGNoaWxkcmVuLCB0eXBpY2FsbHkgYnkgcHV0dGluZyB0aGlzIG9uIHBhcmVudFNlbGVjdG9yOmFmdGVyLlxuLnNiQ2xlYXIge1xuICBjb250ZW50OiBcIlwiO1xuICBkaXNwbGF5OiB0YWJsZTtcbiAgY2xlYXI6IGJvdGg7XG59XG5cbi5zYkxpbmsge1xuICBjb2xvcjogQHNiTGlua0NvbG9yO1xufSIsIi8vIFRoZSBwYWdlIGJhY2tncm91bmQgY29sb3JcbkBzYlBhZ2VCZ0NvbG9yOiAjZmZmO1xuXG4vLyBUaGUgZGVmYXVsdC9zdGFuZGFyZCBmb250IGNvbG9yXG5Ac2JGb250Q29sb3I6ICMxNjMyNUM7XG5cbi8vIFRoZSBjb2xvciBvZiBjb250ZW50IHNlY3Rpb25zIHN1Y2ggYXMgcGFnZSB0aXRsZSwgZGV0YWlscywgZXRjXG5Ac2JDb250ZW50QmdDb2xvcjogI0Y0RjZGOTtcblxuLy8gVGhlIGZvbnQgY29sb3Igb2YgY29udGVudCBzZWN0aW9ucyBzdWNoIGFzIHBhZ2UgdGl0bGUsIGRldGFpbHMsIGV0Y1xuQHNiQ29udGVudEZvbnRDb2xvcjogIzU0Njk4RDtcblxuLy8gVGhlIHN0YW5kYXJkIGZvbnQgZmFtaWx5XG5Ac2JGb250OiAnU2FsZXNmb3JjZSBTYW5zJywgJ09wZW4gU2FucycsIEFyaWFsLCBzYW5zLXNlcmlmO1xuXG4vLyBCYXNlIGZvbnQgc2l6ZSB0byBiZSB1c2VkIGZvciBhbGwgb3RoZXIgZm9udCBzaXplIGNhbGN1bGF0aW9uc1xuQHNiRm9udFNpemU6IDEwcHg7XG5cbi8vIEJhc2UgZm9udCBzaXplIGZvciByZWd1bGFyIGNvbnRlbnRcbkBzYkNvbnRlbnRGb250U2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG5cbi8vIERlZmF1bHQgYm9yZGVyIGNvbG9yIGZvciBhIHZhcmlldHkgb2YgZWxlbWVudHNcbkBzYkJvcmRlckNvbG9yOiAjRDhEREU2O1xuXG4vLyAvLyBEZWZhdWx0IGJvcmRlciBjb2xvciBmb3IgdGFibGUgcm93c1xuLy8gQHNiVGFibGVCb3JkZXJDb2xvcjogI0Y0RjZGOTtcblxuLy8gQm9yZGVyIG9mIGNvbnRlbnQgc2VjdGlvbnNcbkBzYkNvbnRlbnRCb3JkZXI6IDFweCBzb2xpZCAjZDBkMGQwO1xuXG4vLyBJY29uIGNvbG9yIGZvciBzZWNvbmRhcnkgaWNvbnMgKHByaW1hcnkgc2hvdWxkIGJlIHNhbWUgYXMgQHNiRm9udENvbG9yKVxuQHNiSWNvbkNvbG9yOiAjODg4O1xuXG4vLyBDb2xvciBmb3IgaGlnaGxpZ2h0cyAoc3BsYXNoIG9mIGNvbG9yKVxuQHNiSGlnaGxpZ2h0Q29sb3I6ICMwMDcwZDI7XG5cbi8vIEZvbnQgY29sb3JzIG9mIGh5cGVybGlua3NcbkBzYkxpbmtDb2xvcjogIzAwNzBEMjtcbkBzYkxpbmtDb2xvckFjdGl2ZTogcmdiKDAsIDU3LCAxMDcpO1xuQHNiTGlua0NvbG9yRGlzYWJsZWQ6IHJnYigyMiwgNTAsIDkyKTtcbkBzYkxpbmtDb2xvckhvdmVyOiByZ2IoMCwgOTUsIDE3OCk7XG5cbi8vIFBhZ2UgSGVhZGVyIGxlZnQgKGFuZCB1c3VhbGx5IHJpZ2h0KSBtYXJnaW5cbkBzYlBhZ2VIZWFkZXJMZWZ0OiAxNXB4O1xuXG4vLyBQYWdlIEhlYWRlciB0b3AgKGFuZCB1c3VhbGx5IGJvdHRvbSkgbWFyZ2luXG5Ac2JQYWdlSGVhZGVyVG9wOiAxNXB4O1xuXG4vLyBNYXNrIGNvbG9yXG5Ac2JNYXNrQ29sb3I6ICNBOEI3Qzc7XG5cbi8vIFBhZ2UgSGVhZGVyXG5Ac2JIZWFkZXJCZ0NvbG9yOiAjZjRmNmY5O1xuQHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjogI2Y0ZjZmOTtcbkBzYkhlYWRlckJvcmRlckNvbG9yOiAjZDBkMGQwO1xuQHNiSGVhZGVyRm9udENvbG9yOiAjMTYzMjVjO1xuQHNiSGVhZGVyU3VwcG9ydEZvbnRDb2xvcjogIzU0Njk4ZDtcblxuQHNiQmdDb2xvcjogI2ZmZmZmZjtcbkBzYkRldGFpbEJnQ29sb3I6I2Y0ZjZmOTtcbkBzYlNlY29uZGFyeUZvbnRDb2xvcjogIzY5Njk2OTtcblxuLy8gVGFibGVzXG5Ac2JUYWJsZUhlYWRlckZvbnRDb2xvcjogIzU0Njk4ZDtcbkBzYlRhYmxlUm93SG92ZXJDb2xvcjogI2Y0ZjZmOTtcblxuLy8gQnV0dG9uc1xuQHNiR3JvdXBCdG5CZ0NvbG9yOiAjZmZmZmZmO1xuQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjogI2Q4ZGRlNjtcbkBzYkdyb3VwQnRuRm9udENvbG9yOiAjMDA3MGQyO1xuQHNiR3JvdXBCdG5Ib3ZlckJnQ29sb3I6ICNmNGY2Zjk7XG5Ac2JHcm91cEJ0bkhvdmVyRm9udENvbG9yOiAjMDA3MGQyO1xuQHNiR3JvdXBCdG5EaXNhYmxlZEZvbnRDb2xvcjogI2JlYmViZTtcbkBzYlByaW1hcnlCdG5CZ0NvbG9yOiAjMDA3MGQyO1xuQHNiUHJpbWFyeUJ0bkZvbnRDb2xvcjogI2ZmZmZmZjtcbkBzYlByaW1hcnlCdG5Ib3ZlckJnQ29sb3I6ICMwMDVmYjI7XG5cbi8vIEljb25zXG5Ac2JBY2NlbnRJY29uQ29sb3I6ICMwMDcwZDI7XG5Ac2JBY2NlbnRJY29uSG92ZXJDb2xvcjogIzE2MzI1YztcbkBzYkFjY2VudEljb25EaXNhYmxlZENvbG9yOiAjODg4ODg4O1xuXG4vLyBUYWJzXG5Ac2JUYWJTZWxlY3RlZENvbG9yOiAjMTY2YmJmO1xuXG4vLyBCcmVha3BvaW50cyBmb3IgTWVkaWEgUXVlcmllc1xuQHNiQnBTbWFsbDogMDtcbkBzYkJwTWVkaXVtOiA3NjdweDtcbkBzYkJwTGFyZ2U6IDEwMjRweDtcbkBzYkJwWExhcmdlOiAxMjAwcHg7XG4iLCIvLyBBcHBsaWNhdGlvbiBTZXR0aW5ncyBwYWdlXG4vL1xuLy8gbWFueSBvZiB0aGUgc3R5bGVzIGhlcmUganVzdCBvdmVycmlkZSB0aGUgU0Ygc3R5bGVzIGFzIHRoaXMgcGFnZSBpcyBoZWF2eSBWRiBtYXJrdXBcbiNzYkNwcVNldHRpbmdzIHtcblxuICBwYWRkaW5nOiBAc2JQYWdlSGVhZGVyTGVmdDtcblxuICAuYlBhZ2VCbG9jayB7XG4gICAgYm9yZGVyOiAwICFpbXBvcnRhbnQ7XG4gICAgYmFja2dyb3VuZDogbm9uZSAhaW1wb3J0YW50O1xuICB9XG5cbiAgLnNiVGFicyB7XG4gICAgZm9udC1mYW1pbHk6IGluaGVyaXQ7XG5cbiAgICA+IHRib2R5ID4gdHI6bnRoLWNoaWxkKDEpID4gLnJpY2gtdGFiLWJvdHRvbS1saW5lIHtcbiAgICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcblxuICAgICAgLnJpY2gtdGFiaGRyLWNlbGwtYWN0aXZlIHtcbiAgICAgICAgYm9yZGVyLWJvdHRvbTogNHB4IHNvbGlkIEBzYlRhYlNlbGVjdGVkQ29sb3I7XG4gICAgICB9XG5cbiAgICAgIC5yaWNoLXRhYmhkci1zaWRlLWJvcmRlciB7XG4gICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICB9XG5cbiAgICAgIC5yaWNoLXRhYmhkci1zaWRlLWNlbGwge1xuICAgICAgICBib3JkZXI6IDA7XG4gICAgICB9XG5cbiAgICAgIC5yaWNoLXRhYi1hY3RpdmUsIC5yaWNoLXRhYi1pbmFjdGl2ZSB7XG4gICAgICAgIGJhY2tncm91bmQ6IG5vbmUgIWltcG9ydGFudDtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemUgIWltcG9ydGFudDtcbiAgICAgICAgcGFkZGluZzogMCAxNnB4IDZweCAxNnB4O1xuICAgICAgfVxuICAgIH1cblxuICAgIC5yaWNoLXRhYi1oZWFkZXIsIC5yaWNoLXRhYnBhbmVsLWNvbnRlbnQge1xuICAgICAgZm9udC1mYW1pbHk6IGluaGVyaXQgIWltcG9ydGFudDtcbiAgICAgIGZvbnQtc2l6ZTogaW5oZXJpdCAhaW1wb3J0YW50O1xuICAgIH1cblxuICAgIC5yaWNoLXRhYnBhbmVsLWNvbnRlbnQge1xuICAgICAgYmFja2dyb3VuZDogbm9uZSAhaW1wb3J0YW50O1xuICAgICAgYm9yZGVyOiAwICFpbXBvcnRhbnQ7XG4gICAgfVxuXG4gICAgLmxhYmVsQ29sLCAuZGF0YUNvbCB7XG4gICAgICBwYWRkaW5nLXRvcDogOHB4O1xuICAgICAgcGFkZGluZy1ib3R0b206IDhweDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgfVxuXG4gICAgLmxhYmVsQ29sLCAuZGF0YTJDb2wge1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgIH1cblxuICAgIGlucHV0Om5vdChbdHlwZT1zdWJtaXRdKTpub3QoW3R5cGU9Y2hlY2tib3hdKSwgc2VsZWN0IHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgd2lkdGg6IDIyMHB4ICFpbXBvcnRhbnQ7XG4gICAgfVxuXG4gICAgLnNiQnRuIHtcbiAgICAgIGZvbnQtc2l6ZTogaW5oZXJpdDtcbiAgICB9XG4gIH1cbn1cbiIsIi8vc2V0VmFyaWFibGUgc2FtcGxlIHN3YXRjaGVzIGl0IHdpbGwgcmVhZCBkZWZhdWx0cyBmcm9tIG9uIFRoZW1lLnBhZ2Vcbi50aGVtZVBhZ2V7XG4gIC5zYkhlYWRlckJnQ29sb3J7Y29sb3I6QHNiSGVhZGVyQmdDb2xvcjt9XG4gIC5zYkhlYWRlclNlY29uZGFyeUJnQ29sb3J7Y29sb3I6QHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjt9XG4gIC5zYkhlYWRlckJvcmRlckNvbG9ye2NvbG9yOkBzYkhlYWRlckJvcmRlckNvbG9yO31cbiAgLnNiSGVhZGVyRm9udENvbG9ye2NvbG9yOkBzYkhlYWRlckZvbnRDb2xvcjt9XG4gIC5zYkhlYWRlclN1cHBvcnRGb250Q29sb3J7Y29sb3I6QHNiSGVhZGVyU3VwcG9ydEZvbnRDb2xvcjt9XG4gIC5zYkJnQ29sb3J7Y29sb3I6QHNiQmdDb2xvcjt9XG4gIC5zYkRldGFpbEJnQ29sb3J7Y29sb3I6QHNiRGV0YWlsQmdDb2xvcn07XG4gIC5zYkZvbnRDb2xvcntjb2xvcjpAc2JGb250Q29sb3I7fVxuICAuc2JTZWNvbmRhcnlGb250Q29sb3J7Y29sb3I6QHNiU2Vjb25kYXJ5Rm9udENvbG9yO31cbiAgLnNiQm9yZGVyQ29sb3J7Y29sb3I6QHNiQm9yZGVyQ29sb3I7fVxuICAuc2JUYWJsZUhlYWRlckZvbnRDb2xvcntjb2xvcjpAc2JUYWJsZUhlYWRlckZvbnRDb2xvcjt9XG4gIC5zYlRhYmxlUm93SG92ZXJDb2xvcntjb2xvcjpAc2JUYWJsZVJvd0hvdmVyQ29sb3I7fVxuICAuc2JHcm91cEJ0bkJnQ29sb3J7Y29sb3I6QHNiR3JvdXBCdG5CZ0NvbG9yO31cbiAgLnNiR3JvdXBCdG5Cb3JkZXJDb2xvcntjb2xvcjpAc2JHcm91cEJ0bkJvcmRlckNvbG9yO31cbiAgLnNiR3JvdXBCdG5Gb250Q29sb3J7Y29sb3I6QHNiR3JvdXBCdG5Gb250Q29sb3I7fVxuICAuc2JHcm91cEJ0bkhvdmVyQmdDb2xvcntjb2xvcjpAc2JHcm91cEJ0bkhvdmVyQmdDb2xvcjt9XG4gIC5zYkdyb3VwQnRuSG92ZXJGb250Q29sb3J7Y29sb3I6QHNiR3JvdXBCdG5Ib3ZlckZvbnRDb2xvcjt9XG4gIC5zYkdyb3VwQnRuRGlzYWJsZWRGb250Q29sb3J7Y29sb3I6QHNiR3JvdXBCdG5EaXNhYmxlZEZvbnRDb2xvcjt9XG4gIC5zYlByaW1hcnlCdG5CZ0NvbG9ye2NvbG9yOkBzYlByaW1hcnlCdG5CZ0NvbG9yO31cbiAgLnNiUHJpbWFyeUJ0bkZvbnRDb2xvcntjb2xvcjpAc2JQcmltYXJ5QnRuRm9udENvbG9yO31cbiAgLnNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcntjb2xvcjpAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO31cbiAgLnNiQWNjZW50SWNvbkNvbG9ye2NvbG9yOkBzYkFjY2VudEljb25Db2xvcjt9XG4gIC5zYkFjY2VudEljb25Ib3ZlckNvbG9ye2NvbG9yOkBzYkFjY2VudEljb25Ib3ZlckNvbG9yO31cbiAgLnNiQWNjZW50SWNvbkRpc2FibGVkQ29sb3J7Y29sb3I6QHNiQWNjZW50SWNvbkRpc2FibGVkQ29sb3I7fVxuICAuc2JJY29uQ29sb3J7Y29sb3I6QHNiSWNvbkNvbG9yO31cbiAgLnNiVGFiU2VsZWN0ZWRDb2xvcntjb2xvcjpAc2JUYWJTZWxlY3RlZENvbG9yO31cbn1cbi8vc3RhcnQgVGhlbWUucGFnZSBzdHlsaW5nIGhlcmVcbi50aGVtZVBhZ2V7XG4gIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG4gIC5zYlRpdGxlcyBoMntcbiAgICBjb2xvcjogQHNiSGVhZGVyU3VwcG9ydEZvbnRDb2xvcjtcbiAgfVxuICAuc2JCdG4ge1xuICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgICBjb2xvcjogQHNiR3JvdXBCdG5Gb250Q29sb3I7XG4gICAgYm9yZGVyLWNvbG9yOiBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICY6aG92ZXIge1xuICAgICAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5Ib3ZlckJnQ29sb3I7XG4gICAgICBjb2xvcjogQHNiR3JvdXBCdG5Ib3ZlckZvbnRDb2xvclxuICAgIH1cbiAgICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICAgIGJvcmRlci1jb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgICBjb2xvcjogQHNiUHJpbWFyeUJ0bkZvbnRDb2xvcjtcbiAgICAgICY6aG92ZXIge1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO1xuICAgICAgfVxuICAgIH1cbiAgfVxuICAubm9ybWFsLnNmLWljb24tY29weTpiZWZvcmV7XG4gICAgY29sb3I6IEBzYkljb25Db2xvclxuICB9XG4gIC5hY2NlbnQuc2YtaWNvbi1jb3B5OmJlZm9yZXtcbiAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICB9XG4gIC5hY2NlbnQuc2YtaWNvbi1jb3B5OmhvdmVyOjpiZWZvcmUge1xuICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgfVxuICAuZGlzYWJsZWQuc2YtaWNvbi1jb3B5OmJlZm9yZXtcbiAgIGNvbG9yOiBAc2JBY2NlbnRJY29uRGlzYWJsZWRDb2xvcjtcbiAgfVxuXHQuc2YtaWNvbi1jb3B5e1xuXHRcdGZvbnQtc2l6ZTogMjRweDtcblx0XHRwYWRkaW5nLXJpZ2h0OjQwcHg7XG5cdH1cblx0LnNiVGFibGU+dGJvZHk+dHI+dGQge1xuXHQgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG5cdH1cblx0LmRlbW9JdGVtcyB7XG5cdCAgICBib3JkZXI6IDFweCBzb2xpZCAjMDAwMDAwO1xuXHQgICAgcGFkZGluZzogMHB4O1xuXHQgICAgbWFyZ2luLWxlZnQ6NjBweDtcblx0ICAgIG1hcmdpbi1yaWdodDo2MHB4O1xuXHQgICAgcGFkZGluZy10b3A6MjBweDtcblx0ICAgIHBhZGRpbmctYm90dG9tOjIwcHg7XG5cdCAgICBwYWRkaW5nLWxlZnQ6MjBweDtcblx0ICAgIHBhZGRpbmctcmlnaHQ6MjBweDtcblx0ICAgIG1hcmdpbi10b3A6NDBweDtcblx0ICAgIGJvcmRlci1jb2xvcjogQHNiQm9yZGVyQ29sb3IgIWltcG9ydGFudDtcblx0fVxuXHQuYm90dG9tUGFkZGluZ3tcblx0XHRwYWRkaW5nLWJvdHRvbTo0MHB4O1xuXHR9XG5cdC50aGVtZUhlYWRlcntcblx0XHRwYWRkaW5nLXRvcDo0MHB4O1xuXHRcdHBhZGRpbmctbGVmdDo2MHB4O1xuXHRcdHBhZGRpbmctYm90dG9tOjEwcHg7XG4gICAgYm9yZGVyLWJvdHRvbS1zdHlsZTogc29saWQgIWltcG9ydGFudDtcbiAgICBib3JkZXItYm90dG9tLXdpZHRoOiAxcHggIWltcG9ydGFudDtcbiAgICBib3JkZXItYm90dG9tLWNvbG9yOiBAc2JCb3JkZXJDb2xvciAhaW1wb3J0YW50O1xuICAgIGgze1xuICAgICAgY29sb3I6IEBzYkZvbnRDb2xvciAhaW1wb3J0YW50O1xuICAgIH1cblx0fVxuXHQuY29sb3JQaWNrV3JhcHBlcntcblx0XHR3aWR0aDozMDBweDtcblx0XHRkaXNwbGF5OmlubGluZS1ibG9jaztcblx0XHRtYXJnaW4tbGVmdDo1NXB4O1xuXHRcdG1hcmdpbi1yaWdodDo1NXB4O1xuXHRcdG1hcmdpbi10b3A6NDBweDtcblx0fVxuXHQuY29sb3JQaWNrV3JhcHBlciBzcGFue1xuXHRcdHBvc2l0aW9uOnJlbGF0aXZlO1xuXHRcdHRvcDoxMXB4O1xuXHR9XG5cdC5iYWNrZ3JvdW5kSGlkZXtcblx0XHRkaXNwbGF5Om5vbmU7XG5cdH1cblx0LnNwLXJlcGxhY2VyLnNwLWxpZ2h0LmZ1bGwtc3BlY3RydW0ge1xuXHQgICAgZmxvYXQ6IHJpZ2h0O1xuXHQgICAgbWFyZ2luLXJpZ2h0OjEwcHg7XG5cdH1cblx0LmNvbnRlbnR7XG5cdFx0ICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS40O1xuXHR9XG5cdC5zYkJ1dHRvbnN7XG5cdFx0bWFyZ2luLWxlZnQ6MTBweDtcblx0fVxuXHQuc3AtcmVwbGFjZXIge1xuXHQgIGJvcmRlci1jb2xvcjogI2Q4ZGRlNiAhaW1wb3J0YW50O1xuXHQgIHBhZGRpbmc6IDAgIWltcG9ydGFudDtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiBpbmhlcml0ICFpbXBvcnRhbnQ7XG5cdFx0Ym9yZGVyLXJhZGl1czo1cHg7XG5cdH1cblx0LnNwLWRkIHtcblx0ICBsaW5lLWhlaWdodDo0MHB4ICFpbXBvcnRhbnQ7XG5cdCAgaGVpZ2h0OjQwcHghaW1wb3J0YW50O1xuXHR9XG5cdC5zcC1wcmV2aWV3e1xuXHQgIG1hcmdpbi1yaWdodDowcHggIWltcG9ydGFudDtcblx0ICB3aWR0aDo0MHB4ICFpbXBvcnRhbnQ7XG5cdCAgaGVpZ2h0OjQwcHggIWltcG9ydGFudDtcblx0ICBib3JkZXItd2lkdGg6MHB4ICFpbXBvcnRhbnQ7XG5cdH1cblx0LnNwLWNvbnRhaW5lcntcblx0ICBiYWNrZ3JvdW5kLWNvbG9yOiNmZmZmZmYgIWltcG9ydGFudDtcblx0ICBib3JkZXI6IDFweCBzb2xpZCAjZDhkZGU2ICFpbXBvcnRhbnQ7XG5cdCAgYm9yZGVyLXJhZGl1czo1cHghaW1wb3J0YW50O1xuXHR9XG59XG4iLCIjc2JUcmFuc2xhdGUge1xuXG4gIC5zYkRlc2NyaXB0aW9uIHtcbiAgICB3aWR0aDogOTAlO1xuICB9XG5cbiAgLnNiTG9uZ1RleHRBcmVhIHtcbiAgICB3aWR0aDogOTAlO1xuICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgfVxuICBcbiAgLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICBib3JkZXI6IG5vbmU7XG5cbiAgICBzZWxlY3Qge1xuICAgICAgbWluLXdpZHRoOiAyMDBweDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cblxuICAgID4gc3BhbiB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIHBhZGRpbmc6IDAgMjBweCAwIDQwcHg7XG4gICAgfVxuICB9XG5cblxuICAuc2JGaWVsZHNUYWJsZSB7XG4gICAgbWFyZ2luLXRvcDogMDtcbiAgICBwYWRkaW5nLXRvcDogMDtcblxuICAgID4gLnNiVGFibGUge1xuICAgICAgPiB0Ym9keSA+IHRyID4gdGQge1xuXG4gICAgICAgIGhlaWdodDogQHNiVGFibGVDZWxsSGVpZ2h0O1xuICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG5cbiAgICAgICAgJjpudGgtY2hpbGQoMSksICY6bnRoLWNoaWxkKDIpIHtcbiAgICAgICAgICB3aWR0aDogMjAlO1xuICAgICAgICB9XG5cbiAgICAgICAgJjpudGgtY2hpbGQoMykge1xuICAgICAgICAgIHdpZHRoOiA2MCU7XG4gICAgICAgIH1cblxuICAgICAgICA+IGlucHV0LCB0ZXh0YXJlYSB7XG4gICAgICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICAgIH1cblxuICAgICAgICA+IHRleHRhcmVhIHtcbiAgICAgICAgICBib3JkZXI6IEBzYlRleHRib3hCb3JkZXI7XG4gICAgICAgICAgYm9yZGVyLXJhZGl1czogQHNiVGV4dGJveFJhZGl1cztcbiAgICAgICAgICBwYWRkaW5nOiAwIDVweDtcbiAgICAgICAgICBtaW4taGVpZ2h0OiAzNXB4O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiVXNlckRlZmluZWRGaWVsZHNUYWJsZSB7XG4gICAgPiAuc2JUYWJsZSB7XG4gICAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgICY6bnRoLWNoaWxkKDEpIHtcbiAgICAgICAgICB3aWR0aDogMTUlO1xuICAgICAgICB9XG5cbiAgICAgICAgJjpudGgtY2hpbGQoMikge1xuICAgICAgICAgIHdpZHRoOiAzMCU7XG4gICAgICAgIH1cblxuICAgICAgICAmOm50aC1jaGlsZCgzKSB7XG4gICAgICAgICAgd2lkdGg6IDU1JTtcbiAgICAgICAgfVxuXG4gICAgICAgID4gaW5wdXQsIHRleHRhcmVhIHtcbiAgICAgICAgICB3aWR0aDogMTAwJTtcbiAgICAgICAgfVxuXG4gICAgICAgID4gdGV4dGFyZWEge1xuICAgICAgICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgICAgICAgICBib3JkZXItcmFkaXVzOiBAc2JUZXh0Ym94UmFkaXVzO1xuICAgICAgICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgICAgICAgIG1pbi1oZWlnaHQ6IDM1cHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cbiAgLnNiVGFibGUge1xuICAgIC5zYkJ1dHRvbnMge1xuICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICAgIC5zYkJ0biB7XG4gICAgICAgIHdpZHRoOiAzNXB4O1xuICAgICAgICBoZWlnaHQ6IDQwcHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLmNrZV90ZXh0YXJlYV9pbmxpbmUge1xuICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgICBib3JkZXItcmFkaXVzOiBAc2JUZXh0Ym94UmFkaXVzO1xuICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgIG1pbi1oZWlnaHQ6IDcwcHg7XG4gIH1cbn1cbiIsIi8vIFNlYXJjaCByZXN1bHRzIGRpc3BsYXllZFxuI3NiQXNzZXRTZWFyY2gge1xuICAuc2JTZWFyY2hSZXN1bHRzO1xuXG4gIC5zYlBhZ2VUaXRsZSB7XG5cbiAgICAmLnNxdWVlemVkIHtcbiAgICAgIC5zYlRvb2xzIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICBwYWRkaW5nOiA3cHggMDtcbiAgICAgIC8vIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIC8vIGJhY2tncm91bmQ6IEBzYkJ0bkJnQ29sb3I7XG4gICAgICAgIHBhZGRpbmc6IDhweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICAgIGJhY2tncm91bmQ6IG5vbmU7XG4gICAgICBib3JkZXI6IG5vbmU7XG5cbiAgICBoZWFkZXIge1xuICAgICAgbWFyZ2luLWJvdHRvbTogMTBweDtcbiAgICB9XG4gIH1cblxuICB0YWJsZS5zYlRhYmxle1xuICAgIG1hcmdpbi1ib3R0b206NTBweDtcbiAgfVxuXG4gIC5wYWdpbmF0aW9uQ29udHJvbHNXcmFwcGVye1xuICAgIHBvc2l0aW9uOiBmaXhlZDtcbiAgICBsZWZ0OiAwO1xuICAgIHJpZ2h0OiAwO1xuICAgIGJvdHRvbTowO1xuICAgIHBvaW50ZXItZXZlbnRzOiBub25lO1xuICB9XG4gIC5wYWdpbmF0aW9uQ29udHJvbHMge1xuICAgIHBhZGRpbmc6IDRweDtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICBtYXJnaW4tbGVmdDphdXRvO1xuICAgIG1hcmdpbi1yaWdodDphdXRvO1xuICAgIHdpZHRoOjI1MHB4O1xuICAgIHBvaW50ZXItZXZlbnRzOiBhdXRvO1xuICAgIGJhY2tncm91bmQtY29sb3I6QHNiQmdDb2xvcjtcbiAgICAtd2Via2l0LWJvcmRlci10b3AtbGVmdC1yYWRpdXM6IDRweDtcbiAgICAtd2Via2l0LWJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiA0cHg7XG4gICAgLW1vei1ib3JkZXItcmFkaXVzLXRvcGxlZnQ6IDRweDtcbiAgICAtbW96LWJvcmRlci1yYWRpdXMtdG9wcmlnaHQ6IDRweDtcbiAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiA0cHg7XG4gICAgYm9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IDRweDtcbiAgICAtd2Via2l0LWJveC1zaGFkb3c6IDNweCAwcHggNXB4IDBweCByZ2JhKDE3MCwxNzAsMTcwLDEpO1xuICAgIC1tb3otYm94LXNoYWRvdzogM3B4IDBweCA1cHggMHB4IHJnYmEoMTcwLDE3MCwxNzAsMSk7XG4gICAgYm94LXNoYWRvdzogM3B4IDBweCA1cHggMHB4IHJnYmEoMTcwLDE3MCwxNzAsMSk7XG5cbiAgICBzcGFuIHtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgfVxuXG4gICAgaW5wdXQge1xuICAgICAgaGVpZ2h0OiBhdXRvO1xuICAgICAgd2lkdGg6IDMwcHg7XG4gICAgICBtYXJnaW46IDAgNXB4O1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAgIHBhZGRpbmc6IDJweDtcbiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICB9XG5cbiAgICBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAyO1xuICAgICAgbWFyZ2luLXJpZ2h0OiAtNXB4O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgJi5kaXNhYmxlZCB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uRGlzYWJsZWRDb2xvcjtcbiAgICAgIH1cblxuICAgICAgJjpub3QoLmRpc2FibGVkKSB7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2ItaWNvbi1sZWZ0LWRpcixcbiAgICAuc2ItaWNvbi1yaWdodC1kaXIge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDI7XG4gICAgfVxuICB9XG59XG5cbi8vIFNpZGUgUGFuZWxcbi5zYkFzc2V0RmlsdGVyIHtcbiAgLnNiUGFuZWw7XG4gIHRvcDogMTEzcHg7XG5cbiAgaW5wdXQge1xuICAgIGRpc3BsYXk6IGlubGluZTtcbiAgfVxuXG4gIGRpdiB7XG4gICAgPiBhIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgZGlzcGxheTogZmxleDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cbiAgfVxufVxuIiwiLy8gU2VhcmNoIHJlc3VsdHMgZGlzcGxheWVkXG4jc2JTZWxlY3RDb250cmFjdCB7XG4gIC5zYlNlYXJjaFJlc3VsdHM7XG5cbiAgLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gIFx0YmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgXHRib3JkZXI6IG5vbmU7XG4gIH1cbn0iLCIvLyBTZWFyY2ggcmVzdWx0cyBkaXNwbGF5ZWRcbiNzYkFtZW5kQ29udHJhY3Qge1xuICAuc2JTZWFyY2hSZXN1bHRzO1xuXG4gIC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICBcdGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gIFx0Ym9yZGVyOiBub25lO1xuICB9XG5cbiAgLnNiUGFnZVRpdGxlPi5zYlBhZ2VUaXRsZVRhYmxlPi5zYlBhZ2VUaXRsZUxlZnQgW2NsYXNzXj1zZi1pY29uXTpiZWZvcmUge1xuICBcdHRvcDogMHB4O1xuICB9XG4gIC5zYkxvYWRpbmdNYXNrIHtcbiAgXHR2aXNpYmlsaXR5OiBoaWRkZW47XG4gIH1cbn1cblxuQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXG4gICNzYkFtZW5kQ29udHJhY3Qge1xuICAgIC5zYlBhZ2VUaXRsZVJpZ2h0IHtcblxuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgICAgIC5zYkJ1dHRvbnMge1xuICAgICAgICBmbG9hdDogbm9uZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxufSIsIi8qXG5Eb2N1bWVudCBHZW5lcmF0aW9uIFByZXZpZXcgcGFnZVxuXG5QcmV2aWV3cyBhIGRvY3VtZW50IGluIHRoZSBicm93c2VyIHdpdGggY2hvc2VuIHRlbXBsYXRlLCBhZGRpdGlvbmFsIGRvY3MsIGV0Yy5cbiovXG4jc2JEb2NHZW5QcmV2aWV3IHtcblx0LnNiUGFnZUJsb2NrU2VjdGlvbiB7XG5cdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdHBhZGRpbmc6IDA7XG5cdFx0YmFja2dyb3VuZDogbm9uZTtcblx0XHRib3JkZXI6IG5vbmU7XG5cdFx0bWFyZ2luLXJpZ2h0OiA0NHB4O1xuXG5cdFx0JjpsYXN0LW9mLXR5cGUge1xuXHRcdFx0bWFyZ2luLXJpZ2h0OiBpbmhlcml0O1xuXHRcdH1cblx0fVxuXG5cdC5zYkR1YWxMaXN0Qm94IHNlbGVjdCB7XG5cdFx0d2lkdGg6IDMyMHB4O1xuXHR9XG59XG5cbi8qXG5Eb2N1bWVudCBHZW5lcmF0aW9uIG9wdGlvbnNcblxuQ2hvaWNlcyBmb3IgZG9jdW1lbnQgZ2VuZXJhdGlvbiBzdWNoIGFzIHRlbXBsYXRlLCBvdXRwdXQgZm9ybWF0LCBldGMuXG4qL1xuI3NiRG9jR2VuT3B0aW9ucyB7XG5cdG1hcmdpbjogMCAwIDAgNDBweDtcblx0bGFiZWwge1xuXHRcdGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXHR9XG5cblx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0cGFkZGluZy1ib3R0b206IDhweDtcblx0fVxuXG5cdD4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuXHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXG5cdFx0PiBbY2xhc3NePXNiLWljb25dIHtcblx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjU7XG5cdFx0XHRjb2xvcjogQHNiSWNvbkNvbG9yO1xuXHRcdH1cblx0fVxuXG5cdGlucHV0LCBzZWxlY3Qge1xuXHRcdHdpZHRoOiAyMjBweDtcblx0fVxuXG5cdC5zYkR1YWxMaXN0Qm94IHNlbGVjdCB7XG5cdFx0d2lkdGg6IDMyMHB4O1xuXHR9XG59XG4iLCIjc2JJbXBvcnRMaW5lc3tcblxuXHQjc2JJbXBvcnRPcHRpb25ze1xuXHRcdG1hcmdpbjogMCAwIDAgNDBweDtcblxuXHRcdGZpZWxkc2V0IHtcblx0XHRcdGJvcmRlcjogMDtcblx0XHRcdHBhZGRpbmc6IDVweDtcblxuXHRcdFx0PiBsYWJlbCB7XG5cdFx0XHRcdG1hcmdpbi1yaWdodDogMTBweDtcblx0XHRcdFx0Zm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0d2lkdGg6IDE3NXB4O1xuXHRcdFx0XHR0ZXh0LWFsaWduOiByaWdodDtcblx0XHRcdH1cblxuXHRcdFx0PiBpbnB1dCwgc2VsZWN0IHtcblx0XHQgICAgXHR3aWR0aDogMjAwcHg7XG5cdFx0ICBcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JQYWdlQmxvY2tTZWN0aW9uIHtcblx0ICAgIGJhY2tncm91bmQ6IG5vbmU7XG5cdCAgICBib3JkZXI6IG5vbmU7XG5cblx0XHRoZWFkZXIge1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogMTBweDtcblx0XHR9XG4gIFx0fVxufVxuIiwiLy8gTGluZSBFZGl0b3JcbiNzYkxpbmVFZGl0b3Ige1xuXG4gIC8vIHRvb2wgYmFycyBpbiB0aGUgcGFnZSB0aXRsZVxuICAuc2JQYWdlVGl0bGUge1xuXG4gICAgLnNiUGFnZVRpdGxlUmlnaHQge1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgfVxuXG4gICAgJi5zcXVlZXplZCB7XG4gICAgICAuc2JUb29scyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiVG9vbHMge1xuICAgICAgbWFyZ2luLWxlZnQ6IDE2cHg7XG4gICAgICBwYWRkaW5nOiA3cHggMDtcbiAgICAgIHRyYW5zaXRpb246IGFsbCAuMjVzIGVhc2UtaW47XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIHBhZGRpbmc6IDhweCAxMnB4O1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgICAgICAmLmljb24ge1xuICAgICAgICAgIHBhZGRpbmc6IDhweCA3cHg7XG4gICAgICAgIH1cblxuICAgICAgICAmLnNmLWljb24tZG93biB7XG4gICAgICAgICAgcGFkZGluZy10b3A6IDhweDtcbiAgICAgICAgfVxuXG4gICAgICAgIC5zZi1pY29uLXJlZnJlc2g6YmVmb3JlIHtcbiAgICAgICAgICBmb250LXNpemU6IDEuMWVtO1xuICAgICAgICAgIG1hcmdpbi10b3A6IDAuM2VtO1xuICAgICAgICAgIG1hcmdpbi1ib3R0b206IDAuM2VtO1xuICAgICAgICB9XG5cbiAgICAgICAgPiBtZW51IC5zZXBhcmF0b3Ige1xuICAgICAgICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgICAgICAgICBtYXJnaW4tYm90dG9tOiA2cHg7XG4gICAgICAgIH1cblxuICAgICAgICA+IFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgICB9XG5cbiAgICAgIH1cblxuXG4gICAgICA+IC5zYlRvb2xTZXBhcmF0b3Ige1xuICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgIGhlaWdodDogMXB4O1xuICAgICAgICB3aWR0aDogMTBweDtcbiAgICAgICAgZmxvYXQ6IGxlZnQ7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiUXVvdGVBY3Rpb25zLFxuICAuc2JHcm91cEFjdGlvbnMge1xuICAgIC5yZW5ld1N1YnNjcmlwdGlvbnNCdG4sXG4gICAgLnVwZ3JhZGVBc3NldHNCdG4sXG4gICAgLnJlc2V0RGlzY0J0bixcbiAgICAub3B0aW9uYWxBbGxCdG4sXG4gICAgLm9wdGlvbmFsTm9uZUJ0bixcbiAgICAuZGVsZXRlTGluZXNCdG4sXG4gICAgLmFkZEdyb3VwQnRuLFxuICAgIC51bmdyb3VwQnRuIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuXG4gICAgLnNiVG9vbCB7XG5cblxuICAgICAgJi5maXJzdCB7XG4gICAgICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IDNweDtcbiAgICAgICAgYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogM3B4O1xuICAgICAgfVxuXG4gICAgICAmLmVuZCxcbiAgICAgICYubGFzdCB7XG4gICAgICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiAzcHg7XG4gICAgICAgIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiAzcHg7XG4gICAgICB9XG5cbiAgICAgICYuc2JUb29sU2VwYXJhdG9yIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBpbmhlcml0O1xuXG4gICAgICAgICsgLnNiVG9vbCB7XG4gICAgICAgICAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IDNweDtcbiAgICAgICAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiAzcHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IC5zYlRvb2xzID4gLnNiVG9vbCB7XG4gICAgICBwYWRkaW5nOiAwO1xuXG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgICAgIH1cblxuICAgICAgPiBzcGFuLCBpIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG4gICAgICAgICY6aG92ZXIge1xuICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkNvbnRlbnRCZ0NvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgID4gc3Bhbi5sYWJlbCxcbiAgICAgID4gaSB7XG4gICAgICAgIHBhZGRpbmc6IDhweCAxMnB4O1xuICAgICAgfVxuXG4gICAgICA+IHNwYW4uc2YtaWNvbi1kb3duIHtcbiAgICAgICAgcGFkZGluZzogOHB4IDRweDtcbiAgICAgICAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gICYudXBncmFkYWJsZSBsaS51cGdyYWRlQXNzZXRzQnRuIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuICAmLnJlbmV3YWJsZSBsaS5yZW5ld1N1YnNjcmlwdGlvbnNCdG4ge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICB9XG4gICYuZGlzY291bnRhYmxlIGxpLnJlc2V0RGlzY0J0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi5vcHRpb25hbDpub3QoLmFsbFNlbGVjdGVkKSAuc2JRdW90ZUFjdGlvbnMgbGkub3B0aW9uYWxBbGxCdG4sXG4gICYub3B0aW9uYWwuYWxsU2VsZWN0ZWQgLnNiUXVvdGVBY3Rpb25zIGxpLm9wdGlvbmFsTm9uZUJ0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi5vcHRpb25hbCAuc2JHcm91cEFjdGlvbnMgbGkub3B0aW9uYWxBbGxCdG4sXG4gICYub3B0aW9uYWwgLnNiR3JvdXBBY3Rpb25zIGxpLm9wdGlvbmFsTm9uZUJ0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi5tdWx0aURlbGV0ZSAuc2JRdW90ZUFjdGlvbnMgLmRlbGV0ZUxpbmVzQnRuIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuICAmLmdyb3VwYWJsZSBsaS5hZGRHcm91cEJ0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi51bmdyb3VwYWJsZSBsaSB7XG5cbiAgICAmLmFkZEdyb3VwQnRuIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuXG4gICAgJi5hZGRHcm91cEJ0bixcbiAgICAmLnVuZ3JvdXBCdG4ge1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgfVxuICB9XG5cbiAgLy8gY3VzdG9tIGFjdGlvbnMgb24gdGhlIGxpbmUgZWRpdG9yXG4gIC5zYlF1b3RlQWN0aW9ucyxcbiAgLnNiR3JvdXBBY3Rpb25zIHtcbiAgICB1bCB7XG4gICAgICBsaXN0LXN0eWxlLXR5cGU6IG5vbmU7XG5cbiAgICAgICYuc2JUb29scyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICAgIG1hcmdpbjogMDtcbiAgICAgIH1cblxuICAgICAgbGkge1xuICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgICAgICBjb2xvcjogQHNiTGlua0NvbG9yO1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgICAgICAmLmFjdGlvbiA+IC5sYWJlbDpob3ZlciB7XG4gICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gICAgICAgIH1cblxuICAgICAgICBzcGFuLnNmLWljb24tcmlnaHQsXG4gICAgICAgIHNwYW4uc2YtaWNvbi1kb3duIHtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG5cbiAgICAgICAgICAmLm9wZW4gKyB1bCB7XG4gICAgICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgdWwge1xuICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgICAgIHRvcDogMTAwJTtcbiAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICAgIHotaW5kZXg6IDQ7XG4gICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG5cbiAgICAgICAgbGkge1xuICAgICAgICAgIHBhZGRpbmc6IDVweCAxMHB4O1xuICAgICAgICB9XG5cbiAgICAgICAgdWwge1xuICAgICAgICAgIHRvcDogLTFweDtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgID4gdWwge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgY3Vyc29yOiBhdXRvO1xuXG4gICAgICA+IGxpIHtcbiAgICAgICAgPiB1bCB7XG4gICAgICAgICAgcmlnaHQ6IC0xcHg7XG4gICAgICAgIH1cblxuICAgICAgICAmLmFjdGlvbiA+IC5sYWJlbDpob3ZlciB7XG4gICAgICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiUXVvdGVBY3Rpb25zIHtcbiAgICB1bCBsaSB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG5cbiAgICA+IHVsID4gbGkge1xuICAgICAgbWFyZ2luLWJvdHRvbTogMTBweDtcblxuICAgICAgJi5sYXN0IHVsIHVsIHtcbiAgICAgICAgcmlnaHQ6IDEwMCU7XG4gICAgICB9XG5cbiAgICAgICY6bm90KC5sYXN0KSB1bCB1bCB7XG4gICAgICAgIGxlZnQ6IDEwMCU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gVGhlIFF1b3RlIEZpZWxkcyBzZWN0aW9uLCBpZiBzaG93blxuICAuc2JRdW90ZUZpZWxkcyB7XG5cbiAgICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJUb3AgQHNiUGFnZUhlYWRlckxlZnQ7XG5cbiAgICBoZWFkZXIge1xuICAgICAgbWFyZ2luLWJvdHRvbTogMTBweDtcbiAgICB9XG5cbiAgICB0YWJsZSA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICBwYWRkaW5nOiA1cHggMDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cbiAgICAgIGlucHV0LCBzZWxlY3Qge1xuICAgICAgICBmb250LXNpemU6IGluaGVyaXQ7XG4gICAgICAgIHdpZHRoOiAxNDBweDtcbiAgICAgIH1cblxuICAgICAgW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gICAgICAgIGNvbG9yOiBAc2JJY29uQ29sb3I7XG4gICAgICB9XG5cbiAgICAgIFtjbGFzcz1zYi1pY29uLXNlYXJjaF0ge1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICBtYXJnaW4tbGVmdDogM3B4O1xuICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG4gICAgICAgICY6aG92ZXIge1xuICAgICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAmLnNiTGFiZWwge1xuICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgICAgcGFkZGluZy1yaWdodDogMTJweDtcbiAgICAgICAgd2lkdGg6IDE1JTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBBIHRhYmxlIG9mIHF1b3RlIGxpbmVzIGluIHRoZSBlZGl0b3IgKGNhbiBoYXZlIG11bHRpcGxlLCBlLmcuIGdyb3VwZWQgcXVvdGUpXG4gIC5zYlRhYmxlIHtcbiAgICBAcm93SGVpZ2h0OiBAc2JUYWJsZUNlbGxIZWlnaHQ7XG4gICAgQGluZGVudDogMTBweCArIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gICAgLy8gZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICBpbnB1dCwgc2VsZWN0IHtcbiAgICAgIGZvbnQtc2l6ZTogaW5oZXJpdDtcblxuICAgICAgJi5zYlNtYWxsIHtcbiAgICAgICAgbWF4LXdpZHRoOiA4MHB4O1xuICAgICAgfVxuXG4gICAgICAmOmRpc2FibGVkIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiSGVhZGVyQmdDb2xvcjtcbiAgICAgIH1cblxuICAgICAgJi5oYXNEYXRlcGlja2VyIHtcbiAgICAgICAgbWluLXdpZHRoOiA5NXB4O1xuICAgICAgICB3aWR0aDogODUlO1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIHBhZGRpbmcgZm9yIGZpcnN0IGFuZCBsYXN0IGNvbHVtbnNcbiAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB9XG4gICAgPiB0aGVhZCA+IHRyID4gdGg6bGFzdC1vZi10eXBlLFxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmxhc3Qtb2YtdHlwZSB7XG4gICAgICBwYWRkaW5nLXJpZ2h0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB9XG5cbiAgICBzZWxlY3QgeyAgLy8gZG9lcyB0aGlzIG5lZWQgdG8gYmUgbW9yZSBzcGVjaWZpYz8gIGl0IGlzIGp1c3QgZm9yIEFkZGl0aW9uYWwgRGlzYyBjb2x1bW5cbiAgICAgIG1pbi13aWR0aDogMjBweDtcbiAgICAgIG1hcmdpbi1sZWZ0OiA0cHg7XG4gICAgfVxuXG4gICAgLy8gdGFibGUgY2VsbHNcbiAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAvLyBoZWlnaHQ6IEByb3dIZWlnaHQ7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG4gICAgICAmLnJpZ2h0IGlucHV0IHtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICB9XG5cbiAgICAgIGEgPiBzcGFuW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICAgIGNvbG9yOiBAc2JJY29uQ29sb3I7XG5cbiAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICB2aXNpYmlsaXR5OiBoaWRkZW47XG4gICAgICAgICYuc2JNRFFpY29uIHtcbiAgICAgICAgICBtYXJnaW4tcmlnaHQ6IC0xMWVtO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC8vIEFjdGlvbnMgY29sdW1uXG4gICAgICAmLnNiQWN0aW9ucyB7XG4gICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgICAgIHdpZHRoOiAxJTtcbiAgICAgICAgcGFkZGluZy1sZWZ0OiAxNXB4O1xuXG4gICAgICAgIC5hY3Rpb24sXG4gICAgICAgIC51cmwge1xuICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgID4gdWwge1xuICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICBjdXJzb3I6IGF1dG87XG5cbiAgICAgICAgICA+IGxpLm1lbnUge1xuICAgICAgICAgICAgcGFkZGluZzogNXB4O1xuICAgICAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgICAgICAgICAgIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICAgICAgICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgdWwge1xuICAgICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICAgICAgbWFyZ2luOiAwO1xuICAgICAgICAgIGxpc3Qtc3R5bGUtdHlwZTogbm9uZTtcblxuICAgICAgICAgIGxpIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICAgICAgICAgIGNvbG9yOiBAc2JMaW5rQ29sb3I7XG5cbiAgICAgICAgICAgICYuYWN0aW9uID4gLmxhYmVsOmhvdmVyIHtcbiAgICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgICAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICBzcGFuLnNmLWljb24tcmlnaHQge1xuICAgICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG5cbiAgICAgICAgICAgICAgJi5vcGVuICsgdWwge1xuICAgICAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICB1bCBsaSB7XG4gICAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cblxuICAgICAgICAgIHVsIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICAgICAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgICAgICAgICB0b3A6IC0xcHg7XG4gICAgICAgICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICAgICAgYm9yZGVyLXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgICAgICAgICAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICAgICAgICAgIHotaW5kZXg6IDQ7XG4gICAgICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuXG4gICAgICAgICAgICBsaSB7XG4gICAgICAgICAgICAgIHBhZGRpbmc6IDVweCAxMHB4O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIGluaXRpYWxseSBoaWRlIGFsbCBjdXN0b20gYWN0aW9ucyB0aGF0IGRvZXMgaGF2ZSBhbiBhY3Rpb24gc2VsZWN0ZWQgKG1lbnUgdHlwZSBvciB1cmwgY3VzdG9tIGFjdGlvbnMgc2hvdWxkIGJlIGRpc3BsYXllZCBhdCBhbGwgdGltZXMpXG4gICAgICAgIC5zYkFjdGlvbiB7XG4gICAgICAgICAgcGFkZGluZzogMnB4O1xuXG4gICAgICAgICAgJi5hY3Rpb24ge1xuICAgICAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAmOm5vdCgucmVtb3ZhYmxlKSB7XG4gICAgICAgICAgLnNiLWljb24taW5mby1jaXJjbGVkIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuICAgICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICAgIGN1cnNvcjogYXV0bztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAvLyBJZiBsaW5lIGlzIGRlbGV0YWJsZSBmcm9tIHRoZSBxdW90ZSwgZGlzcGxheSBBZGQgVG8gRmF2b3JpdGVzLCBSZW1vdmUgRnJvbSBGYXZvcml0ZXMsIGFuZCBEZWxldGUgYWN0aW9uc1xuICAgICAgICAmLnJlbW92YWJsZSB7XG4gICAgICAgICAgLmFkZFRvRmF2QnRuLFxuICAgICAgICAgIC5yZW1vdmVGcm9tRmF2QnRuLFxuICAgICAgICAgIC5kZWxldGVCdG4ge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIC8vIGFzIGEgbGlzdCBpdGVtIHdpdGhpbiBhIG1lbnVcbiAgICAgICAgICB1bCB1bCB7XG4gICAgICAgICAgICAuYWRkVG9GYXZCdG4sXG4gICAgICAgICAgICAucmVtb3ZlRnJvbUZhdkJ0bixcbiAgICAgICAgICAgIC5kZWxldGVCdG4ge1xuICAgICAgICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG5cblxuICAgICAgICAgICYuZmF2b3JpdGUgLmFkZFRvRmF2QnRuLFxuICAgICAgICAgICY6bm90KC5mYXZvcml0ZSkgLnJlbW92ZUZyb21GYXZCdG4ge1xuICAgICAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAvLyBhcyBhIGxpc3QgaXRlbSB3aXRoaW4gYSBtZW51XG4gICAgICAgICAgJi5mYXZvcml0ZSB1bCB1bCAuYWRkVG9GYXZCdG4sXG4gICAgICAgICAgJjpub3QoLmZhdm9yaXRlKSB1bCB1bCAucmVtb3ZlRnJvbUZhdkJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIElmIHRoZSBsaW5lIGlzIGEgc3RhbmRhbG9uZSBsaW5lLCBkaXNwbGF5IENMb25lIGljb24gKGJvdGggZm9yIGV4aXN0aW5nIGFuZCBuZXcgbGluZXMpXG4gICAgICAgICY6bm90KC5jb21wb25lbnQpIHtcbiAgICAgICAgICAuY2xvbmVCdG4ge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIC8vIGFzIGEgbGlzdCBpdGVtIHdpdGhpbiBhIG1lbnVcbiAgICAgICAgICB1bCB1bCB7XG4gICAgICAgICAgICAuY2xvbmVCdG4ge1xuICAgICAgICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAvLyBJZiBsaW5lIGlzIGJ1bmRsZSBwYXJlbnQsIGRpc3BsYXkgdGhlIFJlY29uZmlndXJlIExpbmUgYWN0aW9uXG4gICAgICAgICYuY29uZmlndXJhYmxlIHtcbiAgICAgICAgICAucmVjb25maWd1cmVCdG4ge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIC8vIGFzIGEgbGlzdCBpdGVtIHdpdGhpbiBhIG1lbnVcbiAgICAgICAgICB1bCB1bCB7XG4gICAgICAgICAgICAucmVjb25maWd1cmVCdG4ge1xuICAgICAgICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAvLyBJZiBsaW5lIGNhbiBiZSBkaXNwbGF5ZWQgaW4gZWl0aGVyIHRhYmxlLCBkaXNwbGF5IERlc2VnbWVudCBvciBSZXNlZ21lbnQgTGluZSBhY3Rpb25zXG4gICAgICAgICYuY29udmVydGFibGUge1xuICAgICAgICAgIC5kZXNlZ21lbnRCdG4sXG4gICAgICAgICAgLnJlc2VnbWVudEJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLy8gYXMgYSBsaXN0IGl0ZW0gd2l0aGluIGEgbWVudVxuICAgICAgICAgIHVsIHVsIHtcbiAgICAgICAgICAgIC5kZXNlZ21lbnRCdG4sXG4gICAgICAgICAgICAucmVzZWdtZW50QnRuIHtcbiAgICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLy8gRGlzcGxheSBlaXRoZXIgRGVzZWdtZW50IG9yIFJlc2VnbWVudCBkZXBlbmRpbmcgb24gd2hldGhlciB0aGUgbGluZSBpcyBhIHN0YW5kYXJkIG9yIHNlZ21lbnRlZCBsaW5lIGl0ZW1cbiAgICAgICAgICAmLnNlZ21lbnRlZCAucmVzZWdtZW50QnRuLFxuICAgICAgICAgICY6bm90KC5zZWdtZW50ZWQpIC5kZXNlZ21lbnRCdG4ge1xuICAgICAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAvLyBJZiBsaW5lIGhhcyBhIGRpc2NvdW50IHNjaGVkdWxlLCBkaXNwbGF5IEVkaXQgRGlzY291bnQgU2NoZWR1bGUgYnV0dG9uXG4gICAgICAgICYuZHNFZGl0YWJsZSB7XG4gICAgICAgICAgLnZpZXdEU0J0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLy8gYXMgYSBsaXN0IGl0ZW0gd2l0aGluIGEgbWVudVxuICAgICAgICAgIHVsIHVsIHtcbiAgICAgICAgICAgIC52aWV3RFNCdG4ge1xuICAgICAgICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLy8gTXVsdGkgRGVsZXRlIGNvbHVtblxuICAgICAgJi5zYkRlbGV0ZUNoZWNrYm94IHtcbiAgICAgICAgd2lkdGg6IDElO1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIGV4cGFuZCBsaW5lIGFjdGlvbiBtZW51cyB0byB0aGUgcmlnaHRcbiAgICB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICAmLnNiQWN0aW9ucyB1bCB1bHtcbiAgICAgICAgbGVmdDogMTAwJTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyBleHBhbmQgbGluZSBhY3Rpb24gbWVudXMgdG8gdGhlIGxlZnRcbiAgICB0Ym9keSA+IHRyID4gdGQ6bGFzdC1vZi10eXBlIHtcbiAgICAgICYuc2JBY3Rpb25zIHVsIHVse1xuICAgICAgICByaWdodDogMTAwJTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IHRib2R5ID4gdHIgPiB0ZDpob3ZlciB7XG4gICAgICAuc2YtaWNvbi1lZGl0IHtcbiAgICAgICAgdmlzaWJpbGl0eTogdmlzaWJsZTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IHRmb290ID4gdHIge1xuXG4gICAgICAmLnNiVG90YWxSb3cgdGQge1xuICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgICAgICAmOmxhc3Qtb2YtdHlwZSB7XG4gICAgICAgICAgcGFkZGluZy1yaWdodDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgPiB0ZCB7XG4gICAgICAgIC8vIGhlaWdodDogQHJvd0hlaWdodDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyBDbGFzc2VzIGZvciBwcm9kdWN0IGhpZXJhcmNoeSB2aXN1YWxpemF0aW9uXG4gICAgLnNiQnVuZGxlT3B0aW9uIHtcbiAgICAgIGNvbG9yOiBAc2JTZWNvbmRhcnlGb250Q29sb3I7XG4gICAgfVxuICAgIC5zYkluZGVudDIge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogMTtcbiAgICB9XG4gICAgLnNiSW5kZW50MyB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiAyO1xuICAgIH1cbiAgICAuc2JJbmRlbnQ0IHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDM7XG4gICAgfVxuICAgIC5zYkluZGVudDUge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogNDtcbiAgICB9XG4gICAgLnNiSW5kZW50NiB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiA1O1xuICAgIH1cbiAgICAuc2JJbmRlbnQ3IHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDY7XG4gICAgfVxuICAgIC5zYkluZGVudDgge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogNztcbiAgICB9XG4gICAgLnNiSW5kZW50OSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiA4O1xuICAgIH1cbiAgICAuc2JJbmRlbnQxMCB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiA5O1xuICAgIH1cblxuXG4gICAgLy8gRGVzY3JpcHRpb24gZmllbGRcbiAgICAuc2JEZXNjcmlwdGlvbkZpZWxkIHtcbiAgICAgIHNwYW4ge1xuICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgfVxuXG4gICAgICAuc2ItaWNvbi1wZW5jaWwge1xuICAgICAgICB2aXNpYmlsaXR5OiBoaWRkZW47XG4gICAgICB9XG5cbiAgICAgICY6aG92ZXIge1xuICAgICAgICAuc2ItaWNvbi1wZW5jaWwge1xuICAgICAgICAgIHZpc2liaWxpdHk6IHZpc2libGU7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBRdW90ZSBUb3RhbCBhbW91bnQgaW4gbG93ZXIgcmlnaHQgY29ybmVyXG4gIC5zYlF1b3RlVG90YWwge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIGZsb2F0OiByaWdodDtcbiAgICBtYXJnaW46IDEycHggMjJweCAyNnB4IDA7XG5cbiAgICA+IHNwYW4ge1xuICAgICAgbWFyZ2luLWxlZnQ6IDEwcHg7XG4gICAgfVxuICB9XG5cbiAgLy8gR3JvdXAgdGFicy9saW5rc1xuICAuc2JHcm91cHMsIC5zYkRpbWVuc2lvblRhYnMge1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIG1hcmdpbjogMThweCBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcblxuICAgID4gYSB7XG4gICAgICBjdXJzb3I6IG1vdmU7XG4gICAgICBjb2xvcjogaW5oZXJpdDtcbiAgICAgIHBhZGRpbmc6IDZweCAxNnB4IDZweDtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuICAgICAgPiAuc2YtaWNvbi1lZGl0IHtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcbiAgICAgICAgdmlzaWJpbGl0eTogaGlkZGVuO1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICAgICAgcmlnaHQ6IC02cHg7XG4gICAgICAgIHRvcDogNnB4O1xuICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkhvdmVyQ29sb3I7XG4gICAgICAgIH1cblxuICAgICAgICAmLnZpc2libGUge1xuICAgICAgICAgIHZpc2liaWxpdHk6IHZpc2libGU7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgPiBhLnNlbGVjdGVkIHtcbiAgICAgIGJvcmRlci1ib3R0b206IDJweCBzb2xpZCBAc2JUYWJTZWxlY3RlZENvbG9yO1xuICAgIH1cbiAgICA+IGE6aG92ZXIge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMnB4IHNvbGlkIEBzYlRhYlNlbGVjdGVkQ29sb3I7XG4gICAgICA+IC5zZi1pY29uLWVkaXQge1xuICAgICAgICB2aXNpYmlsaXR5OiB2aXNpYmxlO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIEEgR3JvdXAgb24gdGhlIHF1b3RlLiAgVGhlc2Ugc3R5bGVzIGFyZSBmb3IgbXVsdGlwbGUgZ3JvdXBzIHdpdGggb3ZlcnJpZGVzIGxhdGVyIG9uIGZvciBhIHNpbmdsZSBncm91cC5cbiAgLnNiR3JvdXAge1xuICAgIC8vIEdyb3VwIG5hbWUgLSBkaXNwbGF5ZWQgb25seSB3aGVuIHRoZSBxdW90ZSBpcyBncm91cGVkXG4gICAgPiBoZWFkZXIge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG5cbiAgICAvLyBHcm91cHNcbiAgICAmLnNiR3JvdXBlZCB7XG4gICAgICBiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICAgICAgbWFyZ2luOiBAc2JQYWdlSGVhZGVyVG9wIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgYm9yZGVyOiBAc2JDb250ZW50Qm9yZGVyO1xuICAgICAgYm9yZGVyLXJhZGl1czogNHB4O1xuXG4gICAgICA+IGhlYWRlciB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6QHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjtcbiAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgIG1hcmdpbjogMDtcbiAgICAgICAgYm9yZGVyOiAwO1xuICAgICAgICBwYWRkaW5nOiBAc2JQYWdlSGVhZGVyVG9wIC0gNXB4IEBzYlBhZ2VIZWFkZXJMZWZ0IEBzYlBhZ2VIZWFkZXJUb3AgLSAxMHB4O1xuICAgICAgICBib3JkZXItYm90dG9tOiBAc2JDb250ZW50Qm9yZGVyO1xuXG4gICAgICAgICYuc2JIaWRkZW5IZWFkZXJ7XG4gICAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgICAgfVxuXG4gICAgICAgID4gLnNiR3JvdXBFZGl0b3IgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgICAgIHdpZHRoOiA1MCU7XG4gICAgICAgICAgbWFyZ2luOiAxMHB4O1xuICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cbiAgICAgICAgICAmOmZpcnN0LW9mLXR5cGUge1xuICAgICAgICAgICAgYm9yZGVyLXJpZ2h0OiAxcHggc29saWQgQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG5cbiAgICAgICAgICAgID4gdGFibGUgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICA+IHRhYmxlID4gdGJvZHkgPiB0cjpmaXJzdC1vZi10eXBlID4gdGQ6bGFzdC1vZi10eXBlIHtcbiAgICAgICAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICAgICAgICAgIHBhZGRpbmctcmlnaHQ6IDEwcHg7XG4gICAgICAgICAgICAgIG1pbi13aWR0aDogMjA1cHg7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLnNiRmF2b3JpdGUge1xuICAgICAgICAgICAgd2lkdGg6IDUlO1xuXG4gICAgICAgICAgICA+IGkge1xuICAgICAgICAgICAgICBmb250LXNpemU6IDJlbTtcbiAgICAgICAgICAgICAgZGlzcGxheTppbmxpbmUtYmxvY2s7XG4gICAgICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBzdXBlcjtcblxuICAgICAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAuc2YtaWNvbi1lZGl0IHtcbiAgICAgICAgICB2aXNpYmlsaXR5OmhpZGRlbjtcbiAgICAgICAgfVxuXG4gICAgICAgIC5zYkdyb3VwSGVhZGVyIHtcbiAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cbiAgICAgICAgICA+IGlucHV0IHtcbiAgICAgICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC5zYkdyb3VwSGVhZGVyOmhvdmVyIHtcbiAgICAgICAgICAuc2YtaWNvbi1lZGl0IHtcbiAgICAgICAgICAgIHZpc2liaWxpdHk6dmlzaWJsZTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICBoMiB7XG4gICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgICAgICY6bm90KC5zYkdyb3VwRHJhZ0hhbmRsZSkge1xuICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgIH1cblxuICAgICAgICAgID4gW2NsYXNzPXNiLWljb24tcGVuY2lsXSB7XG4gICAgICAgICAgICB2aXNpYmlsaXR5OiBoaWRkZW47XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgJjpob3ZlciA+IFtjbGFzcz1zYi1pY29uLXBlbmNpbF0ge1xuICAgICAgICAgICAgdmlzaWJpbGl0eTogdmlzaWJsZTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAuc2JHcm91cE5hbWUge1xuICAgICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICAgICAgbWFyZ2luLXJpZ2h0OiAxNXB4O1xuICAgICAgICAgIGhlaWdodDpAc2JUZXh0Ym94SGVpZ2h0O1xuICAgICAgICB9XG5cbiAgICAgICAgLy8gR3JvdXAgQWN0aW9ucyAoaS5lLiBBZGQgUHJvZHVjdHMsIEFkZCBGYXZvcml0ZXMsIFJlc2V0IERpc2NvdW50cywgT3B0aW9uYWwsIENsb25lLCBEZWxldGUpXG4gICAgICAgIC5zYkdyb3VwQWN0aW9ucyB7XG4gICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG4gICAgICAgICAgbWVudSB7XG4gICAgICAgICAgICBtYXgtaGVpZ2h0OiAxMjVweDtcbiAgICAgICAgICAgIG92ZXJmbG93LXk6IGF1dG87XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgdWwgdWwgdWwge1xuICAgICAgICAgICAgbGVmdDogMTAwJTtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICA+IHVsLnNiVG9vbHMgPiBsaS5zYlRvb2wge1xuICAgICAgICAgICAgbWFyZ2luLWJvdHRvbTogNXB4O1xuXG4gICAgICAgICAgICA+IHNwYW4sXG4gICAgICAgICAgICA+IGkge1xuICAgICAgICAgICAgICBwYWRkaW5nOiA2cHggOHB4O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIEdyb3VwIGxldmVsIGN1c3RvbSBhY3Rpb25zXG4gICAgICAgIC5zYlRvb2xzIHtcbiAgICAgICAgICA+IC5zYlRvb2wge1xuICAgICAgICAgICAgaGVpZ2h0OiAyOXB4O1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIEdyb3VwIGRlc2NyaXB0aW9uLCBpZiBpbmNsdWRlZCBpbiB0aGUgUXVvdGUgTGluZSBHcm91cCBmaWVsZCBzZXRcbiAgICAgICAgLnNiRGVzY3JpcHRpb24ge1xuICAgICAgICAgIG1hcmdpbi10b3A6IDEwcHg7XG4gICAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgZGlzcGxheTogdGFibGU7XG5cbiAgICAgICAgICA+IGRpdixcbiAgICAgICAgICA+IGRpdiA+IHAge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgICAgICAgIH1cblxuICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgY29sb3I6IGluaGVyaXQ7XG4gICAgICAgICAgICBbY2xhc3M9c2YtaWNvbi1lZGl0XSB7XG4gICAgICAgICAgICAgIHZpc2liaWxpdHk6IHZpc2libGU7XG4gICAgICAgICAgICAgIHBhZGRpbmctbGVmdDogNXB4O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAuc2JUYWJsZSB7XG4gICAgICAgIG1hcmdpbi10b3A6IDEwcHg7XG4gICAgICB9XG4gICAgfVxuXG5cbiAgICAvLyBHcm91cC1sZXZlbCBmaWVsZHMgKGUuZy4gT3B0aW9uYWwsIFN1YnNjcmlwdGlvbiBUZXJtLCBBZGQgRGlzYylcbiAgICAuc2JHcm91cEZpZWxkcyB7XG4gICAgICBwYWRkaW5nOiAwIDEwcHg7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgICAgPiB0YWJsZSA+IHRib2R5ID4gdHIge1xuXG4gICAgICAgIC5zYkxhYmVsIHtcbiAgICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiA1cHg7XG4gICAgICAgIH1cblxuICAgICAgICA+IHRkIHtcblxuICAgICAgICAgIHBhZGRpbmctYm90dG9tOiAxMHB4O1xuICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgY29sb3I6IEBzYkZvbnRDb2xvcjtcblxuICAgICAgICAgIC5zYkZpZWxkUm93IHtcbiAgICAgICAgICAgIHBhZGRpbmctYm90dG9tOiAxMHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGxhYmVsIHtcbiAgICAgICAgICAgIG1hcmdpbi1yaWdodDogNHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGlucHV0Om5vdChbdHlwZT1jaGVja2JveF0pIHtcbiAgICAgICAgICAgIGhlaWdodDogMmVtO1xuICAgICAgICAgICAgd2lkdGg6IDEwMHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gR3JvdXAgdG90YWwgLSBkaXNwbGF5cyBvbmx5IHdoZW4gdGhlcmUgYXJlIGJvdGggTURRIGFuZCBzdGFuZGFyZCBwcm9kdWN0cyBvbiBhIGdyb3VwXG4gICAgLnNiR3JvdXBUb3RhbCB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgIG1hcmdpbjogMTVweCAyMnB4IDIwcHggMDtcbiAgICB9XG4gIH1cblxuICAvLyBFbXB0eSBncm91cCBvciBxdW90ZSBtZXNhZ2VzXG4gIC5zYkVtcHR5R3JvdXBNc2csXG4gIC5zYkVtcHR5UXVvdGVNc2csXG4gIC5lbXB0eU1TVGFibGVNZXNzYWdlLFxuICAuZW1wdHlTdGFuZGFyZFRhYmxlTWVzc2FnZSB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgcGFkZGluZzogQHNiUGFnZUhlYWRlckxlZnQ7XG4gIH1cblxuICAuZW1wdHlNU1RhYmxlTWVzc2FnZSB7XG4gICAgY2xlYXI6IGJvdGg7XG4gIH1cblxuICAuZW1wdHlNU1RhYmxlTWVzc2FnZSxcbiAgLmVtcHR5U3RhbmRhcmRUYWJsZU1lc3NhZ2Uge1xuICAgIHBhZGRpbmc6IEBzYlBhZ2VIZWFkZXJMZWZ0IDAgMCBAc2JQYWdlSGVhZGVyTGVmdCAqIDI7XG4gIH1cblxuICAjc2JQcmljZWJvb2tNYXNrLCAjc2JTZWdtZW50c01hc2ssICNzYkZhdm9yaXRlc01hc2ssICNzYkFsZXJ0TWFzayB7XG4gICAgLnNiTW9kYWxNYXNrO1xuXG4gICAgJi5jbG9zZSB7XG4gICAgICBkaXNwbGF5OiBub25lO1xuICAgIH1cbiAgfVxuXG4gICNzYlNlZ21lbnRzTW9kYWwsICNzYlByb2R1Y3RSdWxlQWxlcnQge1xuICAgIC5zYk1vZGFsRGlhbG9nO1xuICAgIG1heC13aWR0aDogNjAwcHg7XG5cbiAgICAmLmFtZW5kbWVudCB7XG4gICAgICBjdXJzb3I6IGRlZmF1bHQ7XG4gICAgICAuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuICAgICAgICBvdmVyZmxvdzogYXV0bztcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgaVtjbGFzc149c2YtaWNvbl0ge1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cblxuXG4gICAgICAjc2JDdXN0b21TZWdtZW50cyB7XG4gICAgICAgID4gdGJvZHkgPiB0ciB7XG4gICAgICAgICAgJjpmaXJzdC1vZi10eXBlID4gdGQge1xuICAgICAgICAgICAgcGFkZGluZy10b3A6IDE0cHg7XG4gICAgICAgICAgfVxuICAgICAgICAgID4gdGQge1xuICAgICAgICAgICAgY3Vyc29yOiBkZWZhdWx0O1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAuc2JNb2RhbEZvb3RlciB7XG4gICAgICAgID4gLnNiQnV0dG9ucyB7XG4gICAgICAgICAgPiAuc2JCdG4ge1xuICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICAgICAgY29sb3I6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICAgICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgICY6Zm9jdXMge1xuICAgICAgICAgICAgICBvdXRsaW5lOiBub25lO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICAgICAgICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5Gb250Q29sb3I7XG4gICAgICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgJi5jbG9zZSB7XG4gICAgICBkaXNwbGF5OiBub25lO1xuICAgIH1cblxuICAgIC5zYlZhbGlkYXRpb25FcnJvcnMge1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgIHBhZGRpbmc6IDVweCAxNXB4IDA7XG5cbiAgICAgID4gZGl2IHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgIGNvbG9yOiAjYzAwO1xuICAgICAgICBwYWRkaW5nLWJvdHRvbTogNXB4O1xuXG4gICAgICAgID4gc3BhbiwgPiBkaXYge1xuICAgICAgICAgIGRpc3BsYXk6IGlubGluZTtcbiAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICB9XG5cbiAgICAgICAgPiBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgICBjb2xvcjogI2MwMDtcbiAgICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMjtcbiAgICAgICAgICBwYWRkaW5nOiAwIDEwcHggMCAwO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgLm1lc3NhZ2Uge1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgbWFyZ2luOiAwIDAgMCA3cHg7XG4gICAgfVxuXG4gICAgLnNiQ3VzdG9tU2VnbWVudHNDb250YWluZXIge1xuICAgICAgaGVpZ2h0OiA0NDFweDtcbiAgICAgIG92ZXJmbG93OiBhdXRvO1xuICAgIH1cblxuICAgICNzYkN1c3RvbVNlZ21lbnRzIHtcbiAgICAgIG1hcmdpbi10b3A6IDA7XG5cbiAgICAgID4gdGhlYWQgPiB0ciA+IHRoIHtcbiAgICAgICAgcGFkZGluZy1ib3R0b206IDA7XG4gICAgICAgIC8vIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCAjYzAwO1xuICAgICAgfVxuXG4gICAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgIHRleHQtYWxpZ246IGluaXRpYWw7XG4gICAgICAgIGhlaWdodDogMzBweDtcbiAgICAgICAgY3Vyc29yOiBtb3ZlO1xuXG4gICAgICAgID4gW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgcGFkZGluZzogMCA1cHggMCAwO1xuICAgICAgICB9XG5cbiAgICAgICAgLnNmLWljb24tY2xvc2Uge1xuICAgICAgICAgIGNvbG9yOiAjNGQ0ZDRkO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgI3NiRmF2b3JpdGVzTW9kYWwge1xuICAgICNzYlNlZ21lbnRzTW9kYWw7XG5cbiAgICAuc2JNb2RhbENvbnRlbnRDb250YWluZXIgLnNiVGFibGUge1xuICAgICAgPiB0Ym9keSA+IHRyIHtcbiAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgICAgICAgfVxuXG4gICAgICAgID4gdGQge1xuICAgICAgICAgIHBhZGRpbmctdG9wOiAyMHB4O1xuXG4gICAgICAgICAgI3NiRmF2b3JpdGVOYW1lIHtcbiAgICAgICAgICAgIHdpZHRoOiAzMDBweDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBQcm9kdWN0IFJ1bGUgQWxlcnQgc3R5bGVcbiAgI3NiUHJvZHVjdFJ1bGVBbGVydCB7XG4gICAgbWluLWhlaWdodDogYXV0bztcbiAgICBsaSB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG4gIH1cblxuICAvLyBNRFEgcGFnZSBzdHlsZVxuICAmLnNiTURRIC5zYlBhZ2VCbG9jayB7XG5cbiAgICAuc2JUYWJsZSB7XG4gICAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuICAgICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICAgIHBhZGRpbmctbGVmdDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgICB9XG5cbiAgICAgID4gdGhlYWQgPiB0ciA+IHRoOmxhc3Qtb2YtdHlwZSxcbiAgICAgID4gdGJvZHkgPiB0ciA+IHRkOmxhc3Qtb2YtdHlwZSB7XG4gICAgICAgIHBhZGRpbmctcmlnaHQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIE1EUSBTZWdtZW50ZWQgUHJvZHVjdHMgdGFibGVcbiAgLnNiTXVsdGlTZWdtZW50IC5zYlRhYmxlIHtcbiAgICBtYXJnaW4tdG9wOiAxMHB4O1xuXG4gICAgLnNiTGluZU51bWJlciB7XG4gICAgICA+IHNwYW4ge1xuICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiRXhwYW5kQ29sbGFwc2Uge1xuICAgICAgPiBbY2xhc3NePVwic2ItaWNvbi1cIl0ge1xuICAgICAgICBmb250LXNpemU6IDEuNWVtO1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgfVxuXG4gICAgICA+IDpudGgtb2YtdHlwZSgyKSB7XG4gICAgICAgIGZvbnQtc2l6ZTogMS4zZW07XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gdGhlIGNlbGwgd2l0aCB0aGUgZXhwYW5kL2NvbGxhcHNlIGljb25cbiAgICAuc2JFeHBhbmQge1xuICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcblxuICAgICAgaSB7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgZm9udC1zaXplOiAxNHB4O1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgICAgIHRvcDogMnB4O1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIGEgXCJkZXRhaWxcIiByb3cgb2YgYSBzZWdtZW50XG4gICAgPiB0Ym9keSB7XG4gICAgICA+IHRyLmV4cGFuZGVkID4gdGQge1xuICAgICAgICBib3JkZXItYm90dG9tOiAwO1xuICAgICAgfVxuXG4gICAgICA+IC5zYkRldGFpbCB7XG4gICAgICAgID4gdGQge1xuICAgICAgICAgIGhlaWdodDogMzBweDtcbiAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JEZXRhaWxCZ0NvbG9yO1xuICAgICAgICB9XG5cbiAgICAgICAgJjpub3QoLmxhc3REZXRhaWxSb3cpe1xuICAgICAgICAgID4gdGQge1xuICAgICAgICAgICAgYm9yZGVyLWJvdHRvbTogMDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAvLyBsYWJlbCBjb2x1bW4gZm9yIGRldGFpbCByb3dzXG4gICAgICAgID4gdGQ6bnRoLWNoaWxkKDIpIHtcbiAgICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiA0MHB4O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiB0Zm9vdCA+IHRyPiB0ZDpmaXJzdC1vZi10eXBlIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgIH1cblxuICAgID4gdGZvb3QgPiB0cj4gdGQ6bGFzdC1vZi10eXBlIHtcbiAgICAgIHBhZGRpbmctcmlnaHQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIH1cbiAgfVxuXG4gIC8vIE1EUSBTdGFuZGFyZCBQcm9kdWN0cyBhbmQgU2VnbWVudGVkIFByb2R1Y3RzIGNvbnRhaW5lciBlbGVtZW50c1xuICAuc2JTdGFuZGFyZCB7XG4gICAgcGFkZGluZy10b3A6IDQwcHg7XG5cbiAgICAmLnNiRW1wdHlUYWJsZSB7XG4gICAgICBwYWRkaW5nLXRvcDowO1xuICAgIH1cblxuICAgID4gaDIge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB9XG4gIH1cblxuICAuc2JNdWx0aVNlZ21lbnQge1xuICAgIHBhZGRpbmctdG9wOiBAc2JQYWdlSGVhZGVyTGVmdDtcblxuICAgICYuc2JFbXB0eVRhYmxlIHtcbiAgICAgIHBhZGRpbmctdG9wOjA7XG4gICAgfVxuXG4gICAgLnNiU2VnbWVudGVkVGFibGVIZWFkZXIge1xuICAgICAgb3ZlcmZsb3c6IGF1dG87XG5cbiAgICAgID4gaDIge1xuICAgICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgfVxuXG4gICAgfVxuXG4gICAgLnNiRGltZW5zaW9uSGVhZGVyIHtcbiAgICAgIG1hcmdpbjogMCBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgIGNsZWFyOiBib3RoO1xuXG4gICAgICA+IGgyLCBpIHtcbiAgICAgICAgZmxvYXQ6IGxlZnQ7XG4gICAgICB9XG5cbiAgICAgIGkge1xuICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS4yO1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICBwYWRkaW5nOiA1cHggMCAwIDVweDtcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC5zYlRvb2x0aXAgPiAuc2JUb29sdGlwQ29udGVudCB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxuXG4gIC5zYk1EUVJpZ2h0IHtcbiAgICBmbG9hdDogcmlnaHQ7XG4gICAgPiAuc2JUb29sdGlwIHtcbiAgICAgIHdpZHRoOiAxJTtcbiAgICB9XG4gIH1cblxuICAvLyBEcmFnICYgRHJvcCBIb3ZlciBzdHlsZXNcbiAgLnNiR3JvdXBEcmFnSGFuZGxlIHtcbiAgICBjdXJzb3I6IG1vdmU7XG4gIH1cblxuICAuc2JEcmFnZ2VkTGluZSxcbiAgLnNiRHJhZ2dlZERpbWVuc2lvbixcbiAgLnNiRHJhZ2dlZFNlZ21lbnQsXG4gIC5zYkRyYWdnZWRHcm91cCB7XG4gICAgY29sb3I6IEBzYkxpbmtDb2xvcjtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgfVxuXG4gIC5zYkRyb3BSb3dIb3ZlciB7XG4gICAgYmFja2dyb3VuZDogQHNiVGFibGVSb3dIb3ZlckNvbG9yO1xuICB9XG5cbiAgLnNiRW1wdHlUYWJsZUhvdmVyIHtcbiAgICBwYWRkaW5nLWJvdHRvbTogMjJweDtcbiAgfVxuXG4gIC5zYkVtcHR5VGFibGVIb3ZlcixcbiAgLnNiRW1wdHlHcm91cEhvdmVyIHtcbiAgICBib3JkZXI6IDJweCBzb2xpZCBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICB9XG5cbiAgLnNiR3JvdXAuc2JHcm91cGVkLnNiRHJvcEdyb3VwSG92ZXIge1xuICAgIGJvcmRlcjogM3B4IHNvbGlkIEBzYkFjY2VudEljb25Db2xvcjtcbiAgICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIH1cblxuICBhLnNiRHJvcERpbWVuc2lvbkhvdmVyIHtcbiAgICBjb2xvcjogI2ZmZjtcbiAgICBjdXJzb3I6IG1vdmU7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG4gIH1cblxuICAuc2JQYWdlcyB7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIHBhZGRpbmc6IDA7XG4gICAgYmFja2dyb3VuZDogI2ZmZjtcblxuICAgIC5zYkJ0biB7XG4gICAgICBmbG9hdDogbm9uZTtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICB9XG5cbiAgICAuc2JEaXNwbGF5ZWRQYWdlIHtcbiAgICAgIGNvbG9yOiBAc2JMaW5rQ29sb3I7XG4gICAgfVxuICB9XG5cbiAgLnNiRHJvcFBhZ2VIb3ZlciB7XG4gICAgY29sb3I6ICNmZmY7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICB9XG5cbiAgdGggPiAubXVsdGlTZWdtZW50QXJyb3cge1xuICAgIGZvbnQtc2l6ZTogMS4yZW0gIWltcG9ydGFudDtcbiAgICAmOmhvdmVyIHtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICB9XG4gIH1cblxuICAjc2JUaWVyc01vZGFsIHtcbiAgICAgLnNiTW9kYWxEaWFsb2c7XG4gICAgIG1heC13aWR0aDogODAlO1xuXG4gICAgIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgICAgcGFkZGluZzogMTVweDtcbiAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgbWluLWhlaWdodDogMTAwcHg7XG4gICAgICAgbWF4LWhlaWdodDogNDAwcHg7XG4gICAgICAgb3ZlcmZsb3c6IGF1dG87XG5cbiAgICAgICBpbnB1dCB7XG4gICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgIH1cbiAgICAgfVxuXG4gICAgLmRhdGFDZWxsIHtcbiAgICAgIHRleHQtYWxpZ246bGVmdFxuICAgIH1cblxuICAgICNyZXZlcnRUaWVySWNvbiB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG5cbiAgICAjcmV2ZXJ0SWNvbkNvbnRhaW5lciB7XG4gICAgICBwYWRkaW5nOiA4cHg7XG4gICAgICBtYXJnaW4tbGVmdDogMTZweDtcbiAgICAgIGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG4gICAgfVxuXG5cdCAjZGlzY291bnRVbml0U2VsZWN0IHtcblx0IFx0bWFyZ2luLWxlZnQ6IDEwcHg7XG5cdCBcdHBhZGRpbmctbGVmdDogMTVweDtcblx0IH1cblxuICAgICAjZGlzY291bnRTY2hlZHVsZU5hbWUge1xuICAgICAgIHBhZGRpbmctbGVmdDogMzBweDtcblxuICAgICAgIGlucHV0IHtcbiAgICAgICAgIG1pbi13aWR0aDogMzAwcHg7XG4gICAgICAgICBtYXJnaW4tbGVmdDogMTBweDtcbiAgICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICAgICBwYWRkaW5nLWxlZnQ6IDEwcHg7XG4gICAgICAgfVxuICAgICB9XG5cbiAgICAgLnNmLWljb24tZXJyb3Ige1xuICAgICAgIGNvbG9yOiAjYzAwICFpbXBvcnRhbnQ7XG4gICAgIH1cblxuICAgICNkZWxldGVBbGxDaGVja2JveCB7XG4gICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgfVxuXG4gICAgICNkaXNjb3VudFVuaXRTZWxlY3Qge1xuICAgICAgcGFkZGluZy1yaWdodDogMjBweDtcbiAgICAgfVxuXG4gICAgICNlcnJvck1lc3NhZ2Uge1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgfVxuXG4gICAgIC5oaWRlSW5wdXRCb3JkZXJzIHtcbiAgICAgICAgaW5wdXQge1xuICAgICAgICAgIGJvcmRlcjogbm9uZTtcbiAgICAgICAgICBiYWNrZ3JvdW5kOiAjZmZmO1xuICAgICAgICB9XG4gICAgIH1cblxuICAgICAuZGlzY291bnRTY2hlZHVsZVJvdyB7XG4gICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgIH1cblxuICAgIC5yZXZlcnRCdXR0b24ge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICAgIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICAgIGNvbG9yOiBAc2JHcm91cEJ0bkZvbnRDb2xvcjtcbiAgICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICB9XG5cbiAgICAgLmRpc2NvdW50U2NoZWR1bGVIZWFkZXIge1xuICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICB9XG5cbiAgICAuYWRkQm90dG9tQm9yZGVyIHtcbiAgICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNkOGRkZTY7XG4gICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgfVxuXG4gICAgIC5kaXNjb3VudFNjaGVkdWxlTG9hZGVyIHtcbiAgICBtYXJnaW4tbGVmdDogYXV0bztcbiAgICBtYXJnaW4tcmlnaHQ6IGF1dG87XG4gICAgbWFyZ2luLXRvcDogMjBweDtcbiAgICAgfVxuICAgfVxufVxuXG4ucmVtb3ZlQm94U2hhZG93IHtcbiAgYm94LXNoYWRvdzogbm9uZTtcbn1cblxuLmFkZEJveFNoYWRvdyB7XG4gIGJveC1zaGFkb3c6IDAgMCAwIDE1cHggI0QxRDREODtcbn1cblxuLy8gTGluZSBFZGl0b3IgdG9vbHRpcHMgZm9yIE1EUS4gIEhhdmUgdG8gbWFrZSB0aGlzIGdsb2JhbCBhcyBqUVVJIHB1dHMgYXQgZW5kIG9mIGRvY3VtZW50LCBub3Qgd2l0aGluIG9yaWdpbmFsIHBhcmVudCBlbGVtZW50XG4uc2JMaW5lRWRpdG9yVG9vbHRpcCB7XG4gIHBhZGRpbmc6IDEycHg7XG4gIHRhYmxlIHRkIHtcbiAgICBwYWRkaW5nOiAzcHggMnB4O1xuICAgICY6bnRoLWNoaWxkKDIpIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgIH1cbiAgfVxufVxuXG4uc2JCdG5Ub29sdGlwIHtcbiAgcGFkZGluZzogM3B4O1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuICBjb2xvcjogQHNiRm9udENvbG9yO1xuICAtd2Via2l0LWJveC1zaGFkb3c6IDFweCAxcHggMTFweCAjRDFENEQ4O1xuICAtbW96LWJveC1zaGFkb3c6IDFweCAxcHggMTFweCAjRDFENEQ4O1xuICBib3gtc2hhZG93OiAxcHggMXB4IDExcHggI0QxRDREODtcbn1cbiIsIiNzYk5ld1JlbGF0ZWRDb250ZW50e1xuXG4gICNzYk5ld1JlbGF0ZWRDb250ZW50T3B0aW9uc3tcbiAgICBtYXJnaW46IDA7XG5cbiAgICBmaWVsZHNldCB7XG4gICAgICBib3JkZXI6IDA7XG4gICAgICBwYWRkaW5nOiA1cHg7XG5cbiAgICAgID4gbGFiZWwge1xuICAgICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgIHdpZHRoOiAxNzVweDtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICB9XG5cbiAgICAgID4gaW5wdXQsIHNlbGVjdCB7XG4gICAgICAgIHdpZHRoOiAyMDBweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgIGJvcmRlcjogbm9uZTtcbiAgfVxufVxuIiwiI3NiUHJvZHVjdENvbmZpZ3VyYXRvciB7XG5cbiAgLnNiQ29uZmlnUHJvZHVjdE5hbWUge1xuICAgIG1hcmdpbjogQHNiUGFnZUhlYWRlclRvcCAwIDAgQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cblxuICAvLyB0b29sIGJhcnMgaW4gdGhlIHBhZ2UgdGl0bGVcbiAgLnNiUGFnZVRpdGxlIHtcblxuICAgICYuc3F1ZWV6ZWQge1xuICAgICAgLnNiVG9vbHMge1xuICAgICAgICBwYWRkaW5nOiAwO1xuICAgICAgfVxuICAgIH1cblxuICAgIC5zYlBhZ2VUaXRsZUxlZnQge1xuICAgICAgLnNmLWljb24tY3VzdG9tX2FwcHMge1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjODE5OWFmO1xuICAgICAgfVxuICAgIH1cblxuICAgIC5zYkJ1dHRvbnMge1xuICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgIH1cblxuICAgIC5zYlRvb2xzIHtcbiAgICAgIG1hcmdpbi1yaWdodDogMTBweDtcbiAgICAgIHBhZGRpbmc6IDdweCAwO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAgIGZsb2F0OiByaWdodDtcbiAgICAgIHRyYW5zaXRpb246IGFsbCAuMjVzIGVhc2UtaW47XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIHBhZGRpbmc6IDhweDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUb29sU2VwYXJhdG9yIHtcbiAgICAgIGJvcmRlci1yaWdodDogQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICBoZWlnaHQ6IDFweDtcbiAgICAgIHdpZHRoOiAxMHB4O1xuICAgICAgZmxvYXQ6IGxlZnQ7XG4gICAgfVxuXG4gICAgLnNiQnRuIHtcbiAgICAgICY6ZGlzYWJsZWQge1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkRpc2FibGVkQ29sb3I7XG4gICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgIH1cblxuICAgICAgJi5zYkFkZE9wdGlvbiB7XG4gICAgICAgIG1hcmdpbjogMTZweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuc2JBZGRPcHRpb25Db250YWluZXIge1xuICAgIC5zYkFkZE9wdGlvbiB7XG4gICAgICBib3JkZXI6IDA7XG4gICAgICBtYXJnaW46IDRweCAwIDRweCAwO1xuXG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgaGVhZGVyIHtcbiAgICBwYWRkaW5nOiBAc2JQYWdlSGVhZGVyVG9wIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gICAgJi5zYlNlY3Rpb24ge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgYmFja2dyb3VuZDogQHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjtcbiAgICB9XG5cbiAgICAmLnNiRm9vdGVyIHtcbiAgICAgIG1hcmdpbjogMDtcbiAgICAgIGJvcmRlci10b3A6IEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgYmFja2dyb3VuZDogQHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjtcbiAgICB9XG5cbiAgICAmLm9wdGlvbkxvb2t1cE1vZGUge1xuICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICB9XG5cblxuICAgIC5zYlRpdGxlQ29udGFpbmVyIHtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIHBhZGRpbmctcmlnaHQ6IDUwcHg7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogdG9wO1xuXG4gICAgICA+IC5zYkZlYXR1cmVJbnN0cnVjdGlvbnMge1xuICAgICAgICBwYWRkaW5nOiAxMHB4IDAgMCAwO1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JGZWF0dXJlQWRkaXRpb25hbEluc3RydWN0aW9ucyB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmU7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIHBhZGRpbmctdG9wOiAzcHg7XG4gICAgfVxuXG4gIH1cblxuICAuZmVhdHVyZUNvbnRlbnQge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gIH1cblxuICAuc2JUb3BDb25maWd1cmF0aW9uQXR0cmlidXRlcywgLnNiQm90dG9tQ29uZmlndXJhdGlvbkF0dHJpYnV0ZXMge1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIHBhZGRpbmctdG9wOiAxMHB4O1xuXG4gICAgJi5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICAgICAgYm9yZGVyOjAgO1xuXG4gICAgICAmLnNiQm90dG9tIHtcbiAgICAgICAgYm9yZGVyLXRvcDogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgICBwYWRkaW5nLXRvcDogMzBweDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JDb25maWdBdHRyaWJ1dGVDb2x1bW4ge1xuICAgICAgdmVydGljYWwtYWxpZ246IHRvcDtcbiAgICB9XG5cbiAgICBsYWJlbCB7XG4gICAgICBwYWRkaW5nOjVweDtcbiAgICB9XG5cbiAgICB0ZCB7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cblxuICAgIGlucHV0IHtcbiAgICAgIG1hcmdpbi1yaWdodDogMzBweDtcblxuICAgICAgJi5oYXNEYXRlcGlja2VyIHtcbiAgICAgICAgd2lkdGg6IDQ1JTtcbiAgICAgIH1cblxuICAgIH1cblxuICAgIC5zYkxhYmVsQ29sIHtcbiAgICAgIHBhZGRpbmctcmlnaHQ6IDEwcHg7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICB9XG5cbiAgICAuc2JEYXRhQ29sIHtcbiAgICAgIHBhZGRpbmc6IDZweCAwO1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcblxuICAgICAgPiBkaXYge1xuXG4gICAgICAgID4gZGl2IHtcbiAgICAgICAgICBwYWRkaW5nLWxlZnQ6IDVweDtcbiAgICAgICAgfVxuXG4gICAgICAgID4gLnJlcXVpcmVkQ29uZmlndXJhdGlvbkF0dHJpYnV0ZSB7XG4gICAgICAgICAgYm9yZGVyLWxlZnQ6ICNjMDAgc29saWQ7XG4gICAgICAgICAgcGFkZGluZy1sZWZ0OiAycHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAucmVxdWlyZXNDb25maWd1cmF0aW9uIHtcbiAgICBib3JkZXItbGVmdDogI2MwMCBzb2xpZDtcbiAgfVxuXG4gIC5jZW50ZXIge1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIH1cblxuICAuc2JTZWxlY3Rpb25Db2x1bW4ge1xuICAgIHdpZHRoOiAxJTtcbiAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICB9XG5cbiAgLy8gU2lkZSBQYW5lbFxuICAuc2JPcHRpb25zRmlsdGVyIHtcbiAgICAuc2JQYW5lbDtcbiAgICB0b3A6IDkxcHg7XG5cbiAgICBpbnB1dCB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmU7XG4gICAgfVxuXG4gICAgZGl2IHtcbiAgICAgID4gYSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIE9wdGlvbiBNZXRob2QgQWRkIFNpZGUgUGFuZWxcbiAgLnNiQWRkT3B0aW9uc0ZpbHRlciB7XG4gICAgLnNiUGFuZWw7XG4gICAgdG9wOiA5MXB4O1xuXG4gICAgaW5wdXQge1xuICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgIH1cblxuICAgIGRpdiB7XG4gICAgICA+IGEge1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyB0aGUgXCJYIFByb2R1Y3RzIEZvdW5kXCIgbGFiZWxcbiAgLnNiUmVzdWx0cyB7XG4gICAgbWFyZ2luOiAxNHB4IDAgLThweCAwO1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICB9XG5cbiAgXHQvLyBQYWdlIEJsb2NrIFNlY3Rpb24gb3ZlcnJpZGVzXG4gIC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgcGFkZGluZzogMDtcbiAgfVxuXG4gIC5zYkdyb3VwcyB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgbWFyZ2luOiAxOHB4IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG4gICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuXG4gICAgPiBhLCBzcGFuIHtcbiAgICAgIGNvbG9yOiBpbmhlcml0O1xuICAgICAgcGFkZGluZzogNnB4IDE2cHg7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgfVxuICAgID4gYS5zZWxlY3RlZCwgc3Bhbi5zZWxlY3RlZCB7XG4gICAgICBib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiVGFiU2VsZWN0ZWRDb2xvcjtcbiAgICB9XG4gICAgPiBhOmhvdmVyLCBzcGFuOmhvdmVyIHtcbiAgICAgIGJvcmRlci1ib3R0b206IDJweCBzb2xpZCBAc2JUYWJTZWxlY3RlZENvbG9yO1xuICAgIH1cbiAgfVxuXG4gIC8vIEEgdGFibGUgb2Ygb3B0aW9ucyAocm93cylcbiAgLnNiVGFibGUge1xuICAgIEByb3dIZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcbiAgICBtYXJnaW4tdG9wOiA1cHg7XG5cbiAgICAvLyBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgID4gdGhlYWQgPiB0ciA+IHRoOm50aC1jaGlsZCgyKSxcbiAgICA+IHRib2R5ID4gdHIgPiB0ZDpudGgtY2hpbGQoMikge1xuICAgICAgd2lkdGg6IDYwcHg7XG4gICAgfVxuXG4gICAgLy8gQWRkIE9wdGlvbiBidXR0b24gb24gdGhlIGxvd2VyIGxlZnQgcm93IG9mIHRoZSB0YWJsZVxuXG4gICAgLy8gdGFibGUgY2VsbHNcbiAgICA+IHRoZWFkID4gdHIgPiB0aCB7XG4gICAgICBwYWRkaW5nLXJpZ2h0OiAxMnB4O1xuICAgICAgcGFkZGluZy1sZWZ0OiAxMnB4O1xuICAgIH1cbiAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICBoZWlnaHQ6IEByb3dIZWlnaHQ7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgcGFkZGluZzogMCAxMnB4O1xuXG5cbiAgICAgIFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS4yO1xuICAgICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgICAgfVxuXG4gICAgICAmLnJpZ2h0IHtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICB9XG5cblxuICAgICAgJi5zYlF1YW50aXR5Q2VsbCB7XG4gICAgICAgIHdpZHRoOiA3NXB4O1xuICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgICAgICAgaW5wdXQge1xuICAgICAgICAgIHdpZHRoOiAxMDBweDtcbiAgICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgIH1cblxuICAgIC5zYkN1cnJlbmN5Q2VsbCB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcblxuICAgICAgaW5wdXQge1xuICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IHRib2R5IHRyOmxhc3QtY2hpbGQge1xuICAgICAgPiB0ZCB7XG4gICAgICAgIGJvcmRlci1ib3R0b206IG5vbmU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLndpemFyZENvbmZpZ3VyYXRvciA+IHRhYmxlID4gdGJvZHkgPiB0cjpob3ZlciB7XG4gICAgYmFja2dyb3VuZDogI2ZmZjtcbiAgfVxuXG4gIC5zYkxvYWRNb3JlIHtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgaGVpZ2h0OiA2NXB4O1xuICAgIHRvcDogOTQlO1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS41O1xuICAgIHBhZGRpbmctdG9wOiAxNXB4O1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgZGlzcGxheTogbm9uZTtcblxuICAgICYuc2JTaG93TG9hZGluZyB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgfVxuICB9XG4gIC5zZi1pY29uLXdhcm5pbmcge1xuICAgIGNvbG9yOiAjNTg3NmEzO1xuICAgIGZvbnQtc2l6ZTogMjBweDtcbiAgfVxufVxuIiwiLy8gUHJvZHVjdCBTZWFyY2hcbiNzYlByb2R1Y3RTZWFyY2gge1xuICAuc2JTZWFyY2hSZXN1bHRzO1xuXG4gIC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICAgIGJhY2tncm91bmQ6IG5vbmU7XG4gICAgbWFyZ2luOiAwO1xuICAgIHBhZGRpbmc6IDA7XG4gIH1cblxuICAuc2JQYWdlVGl0bGUge1xuICAgIC5zYlRvb2xzIHtcbiAgICAgIG1hcmdpbi1yaWdodDogMTBweDtcbiAgICAgIC8vIHBhZGRpbmc6IDdweCAwO1xuICAgICAgLy8gZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcblxuICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICBwYWRkaW5nOiA3cHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiVGFibGUge1xuICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICB9XG5cbiAgICAuc2JTZWxlY3Rpb25IZWFkZXIge1xuICAgICAgd2lkdGg6IDElXG4gICAgfVxuXG4gICAgdGJvZHkge1xuICAgICAgJi5jbG9zZSA+IC5zYkdyb3VwUm93e1xuICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgfVxuICAgICAgXG4gICAgICAuc2JHcm91cE5hbWUge1xuICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgICAgZm9udC13ZWlnaHQ6IGJvbGQ7XG4gICAgICB9XG5cbiAgICAgIC5zYkdyb3VwTmFtZVJvdyB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkhlYWRlckJnQ29sb3I7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgXG4gICAgICAgIGkge1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplICogMS4yNTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgIHRmb290ID4gdHIuc2JQcm9kdWN0UGFnZXMge1xuXG4gICAgICA+IHRkIHtcbiAgICAgICAgYm9yZGVyLWJvdHRvbTogbm9uZTtcblxuICAgICAgICAuc2JQYWdlcyB7XG4gICAgICAgICAgZm9udC1zaXplOiAwLjllbTtcbiAgICAgICAgICBtYXJnaW4tdG9wOiAxMHB4O1xuICAgICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcblxuICAgICAgICAgID4gLnNiQnV0dG9ucyB7XG4gICAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvcjtcblxuICAgICAgICAgICAgPiAuc2JCdG4ge1xuICAgICAgICAgICAgICBwYWRkaW5nLXRvcDogNnB4O1xuICAgICAgICAgICAgICBjb2xvcjogQHNiR3JvdXBCdG5Gb250Q29sb3I7XG5cbiAgICAgICAgICAgICAgJi5zYi1pY29uLWxlZnQtZGlyLFxuICAgICAgICAgICAgICAmLnNiLWljb24tcmlnaHQtZGlyIHtcbiAgICAgICAgICAgICAgICBmb250LXNpemU6IDEuN2VtO1xuICAgICAgICAgICAgICAgIHBhZGRpbmctdG9wOiAzcHg7XG4gICAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgICAmLmRpc2FibGVkIHtcbiAgICAgICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgICAgICAgICAgICAgY29sb3I6IEBzYkdyb3VwQnRuRGlzYWJsZWRGb250Q29sb3I7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG5cbiAgICAgICAgICAuc2JQYWdlU2VsZWN0b3Ige1xuICAgICAgICAgICAgcGFkZGluZzogMCAxMHB4O1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG4gICAgICAgICAgICA+IGlucHV0IHtcbiAgICAgICAgICAgICAgd2lkdGg6IDQ1cHg7XG4gICAgICAgICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIFxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlRhYmxlUm93SG92ZXJDb2xvcjtcblxuICAgICAgICA+IHRkIC5zYlBhZ2VzID4gLnNiQnV0dG9uc3tcbiAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JUYWJsZVJvd0hvdmVyQ29sb3I7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuLy8gRmlsdGVkIGFuZCBHdWlkZWQgU2VsbGluZyBwYW5lbHMgb24gcmlnaHQgc2lkZSBvZiBwYWdlXG4uc2JQcm9kdWN0RmlsdGVyLCAjc2JHdWlkZWRNb2RhbC5zYkd1aWRlZCB7XG4gIC5zYlBhbmVsO1xuXG4gIGRpdiB7XG4gICAgPiBhIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgZGlzcGxheTogZmxleDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cbiAgfVxuXG4gIGZpZWxkc2V0PnNwYW4ge1xuICAgID4gaW5wdXRbdHlwZT1jaGVja2JveF0ge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG4gIH1cblxuICBsYWJlbD5zcGFuIHtcbiAgICA+IGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgfVxuICB9XG59XG5cbi5zYlByb2R1Y3RzIHtcbiAgdHJhbnNpdGlvbjogLjAycztcbn1cblxuLy8gR3VpZGVkIFNlbGxpbmdcbiNzYkd1aWRlZE1hc2sge1xuICAuc2JNb2RhbE1hc2s7XG5cbiAgJi5jbG9zZSB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxufVxuXG4jc2JHdWlkZWRNb2RhbC5zYkd1aWRlZE1vZGFsIHtcbiAgLnNiTW9kYWxEaWFsb2c7XG4gIG1heC13aWR0aDogNDgwcHg7XG5cbiAgJi5jbG9zZSB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxuXG4gID4gLnNiRmllbGRDb257XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBvdmVyZmxvdzogYXV0bztcbiAgfVxuXG4gIGZpZWxkc2V0IHtcbiAgICBwYWRkaW5nOiAxMHB4O1xuICAgIGJvcmRlcjogMDtcbiAgICBmb250LXNpemU6IDEuNGVtO1xuXG4gICAgPiBsYWJlbCB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgcGFkZGluZzogMCAwIDVweCA3cHg7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cblxuICAgID4gc3BhbiB7XG4gICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgID4gaW5wdXRbdHlwZT1jaGVja2JveF0ge1xuICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgfVxuICAgIH1cblxuICAgIGlucHV0LCBzZWxlY3Qge1xuICAgICAgZm9udC1zaXplOiBpbmhlcml0ICFpbXBvcnRhbnQ7XG4gICAgICBtYXJnaW4tbGVmdDogNnB4O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgIG1pbi13aWR0aDogMTAwcHg7XG4gICAgfVxuXG4gICAgPiAqW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgIH1cbiAgfVxuXG59XG5cbmRpdi5jaGF0dGVyRm9sbG93IHtcbiAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbn1cblxuLmNoYXR0ZXJGb2xsb3cgYSB7XG4gIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgY29sb3I6ICMwMDAwMDA7XG4gIGN1cnNvcjogcG9pbnRlcjtcbn1cblxuLmNoYXR0ZXJGb2xsb3cgLmZvbGxvd0ljb24ge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoL2ltZy9mZWVkcy9mb2xsb3dfc3ByaXRlLnBuZyk7XG4gIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IDAgMDtcbiAgd2lkdGg6IGF1dG87XG4gIGhlaWdodDogMjBweDtcbiAgbWFyZ2luLXRvcDogN3B4O1xuICBtYXJnaW4tbGVmdDogM3B4OyAgXG59XG5cbi5jaGF0dGVyRm9sbG93IC5jaGVja0ljb24ge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoL2ltZy9mZWVkcy9mb2xsb3dfc3ByaXRlLnBuZyk7XG4gIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IDAgLTI3cHg7XG4gIHdpZHRoOiBhdXRvO1xuICBoZWlnaHQ6IDIwcHg7XG4gIG1hcmdpbi10b3A6IDdweDtcbiAgbWFyZ2luLWxlZnQ6IDNweDtcbn1cblxuLmNoYXR0ZXJGb2xsb3cgLnVuZm9sbG93SWNvbiB7XG4gIGJhY2tncm91bmQtaW1hZ2U6IHVybCgvaW1nL2ZlZWRzL2ZvbGxvd19zcHJpdGUucG5nKTtcbiAgYmFja2dyb3VuZC1yZXBlYXQ6IG5vLXJlcGVhdDtcbiAgYmFja2dyb3VuZC1wb3NpdGlvbjogMCAtNTRweDtcbiAgd2lkdGg6IGF1dG87XG4gIGhlaWdodDogMjBweDtcbiAgbWFyZ2luLXRvcDogN3B4O1xuICBtYXJnaW4tbGVmdDogM3B4O1xufVxuXG4uY2hhdHRlckZvbGxvdyAuaGlvbiB7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IDAgLTc1cHg7XG59IiwiLy8gU2VhcmNoIHJlc3VsdHMgZGlzcGxheWVkXG4jc2JTdWJzY3JpcHRpb25TZWFyY2gge1xuICAuc2JTZWFyY2hSZXN1bHRzO1xuXG4gIC5zYlBhZ2VUaXRsZSB7XG5cbiAgICAmLnNxdWVlemVkIHtcbiAgICAgIC5zYlRvb2xzIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICBwYWRkaW5nOiA3cHggMDtcblxuICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgcGFkZGluZzogOHB4O1xuICAgICAgfVxuICAgIH1cbiAgfVxufVxuXG4vLyBTaWRlIHBhbmVsXG4uc2JTdWJzY3JpcHRpb25GaWx0ZXIge1xuICAuc2JQYW5lbDtcblxuICBpbnB1dCB7XG4gICAgZGlzcGxheTogaW5saW5lO1xuICB9XG5cbiAgZGl2IHtcbiAgICA+IGEge1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICBkaXNwbGF5OiBmbGV4O1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgfVxuICB9XG59XG4iLCIvLyBVc2VkIGZvciB0aGUgQ2xvbmVQcm9kdWN0Q2hpbGRyZW4sIENsb25lTGluZUl0ZW1zLCBhbmQgQ2xvbmVRdW90ZVRlbXBsYXRlUmVsYXRlZCBwYWdlc1xuLy8gQWxzbyBhZGRlZCBSZWZyZXNoUHJpY2luZyBQYWdlc1xuLy8gQWxzbyBhZGRlZCBQcmV2aWV3T3Bwb3J0dW5pdHkgcGFnZVxuI3NiQ2xvbmVSZWxhdGVkLCAjc2JSZWZyZXNoUHJpY2VzLCAjc2JQcmV2aWV3QXBwcm92YWxzLCAjc2JMaXN0QXBwcm92YWxzIHtcblxuXHRiYWNrZ3JvdW5kOiBAc2JQYWdlQmdDb2xvcjtcblx0Y29sb3I6IEBzYkZvbnRDb2xvcjtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRmb250LWZhbWlseTogQHNiRm9udDtcblxuXHQuc2JQYWdlVGl0bGUge1xuXHRcdHRleHQtYWxpZ246IGxlZnQ7XG5cblx0XHRoMSB7XG5cdFx0XHRmb250LXNpemU6IEBzYkZvbnRTaXplICogMjtcblx0XHQgIFx0Zm9udC13ZWlnaHQ6IDMwMDtcblx0XHQgICAgZm9udC1mYW1pbHk6IEBzYkZvbnQ7XG5cdFx0ICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdFx0fVxuXHRcdGgyIHtcblx0XHQgIFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgICAgICAgICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdFx0fVxuXG5cdFx0LnNmLWljb24tY29weTpiZWZvcmUsIC5zZi1pY29uLXJlZnJlc2g6YmVmb3JlLCAuc2YtaWNvbi1hcHByb3ZhbDpiZWZvcmUge1xuXHRcdFx0bWFyZ2luLXRvcDogMTBweDtcblx0XHRcdHBvc2l0aW9uOiBpbmhlcml0O1xuXHRcdH1cblxuXHRcdC5zZi1pY29uLXBvc3Q6YmVmb3JlIHtcblx0XHRcdHBvc2l0aW9uOiBpbmhlcml0O1xuXHRcdH1cblxuXHRcdC5zZi1pY29uLWFwcHJvdmFsOmJlZm9yZSB7XG5cdFx0XHRtYXJnaW4tdG9wOiAwcHg7XG5cdFx0fVxuXG5cdFx0LnJlc2l6ZSB7XG5cdFx0XHRwYWRkaW5nOiAycHggMTBweDtcblx0XHR9XG5cdH1cblxuXHQubWVzc2FnZSB7XG5cdFx0cGFkZGluZzogMTBweDtcblx0XHRtYXJnaW46IDE4cHggMjRweDtcblx0XHQubWVzc2FnZVRleHQge1xuXHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcblx0XHRcdGg0IHtcblx0XHRcdFx0cGFkZGluZzogMCA0cHg7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZTtcblx0XHRcdFx0Zm9udC13ZWlnaHQ6IDMwMDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JCdG5zIHtcblx0XHRmb250LXNpemU6IEBzYkZvbnRTaXplICogMC45O1xuXHRcdGJvcmRlci1yYWRpdXM6IDA7XG5cdFx0dmVydGljYWwtYWxpZ246IHRvcDtcblx0XHRmbG9hdDogcmlnaHQ7XG5cblx0XHQuc2JCdG4ge1xuXHRcdFx0Ym9yZGVyLXJhZGl1czogMDtcblxuXHRcdFx0JjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0Ym9yZGVyLXRvcC1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuXHRcdFx0XHRib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG5cdFx0XHR9XG5cblx0XHRcdCY6bGFzdC1vZi10eXBlIHtcblx0XHRcdFx0Ym9yZGVyLWxlZnQ6IDA7XG5cdFx0XHRcdGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG5cdFx0XHRcdGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Ly8gQ29udGFpbmVyIGZvciBlYWNoIHJlbGF0ZWQgbGlzdFxuXHQuc2JHcm91cCB7XG5cdCAgICA+IGhlYWRlciB7XG5cdCAgICAgICAgbWFyZ2luOiAwO1xuXHQgICAgICAgIGJvcmRlcjogMDtcblx0ICAgICAgICBwYWRkaW5nOiBAc2JQYWdlSGVhZGVyVG9wIC0gNXB4IEBzYlBhZ2VIZWFkZXJMZWZ0IEBzYlBhZ2VIZWFkZXJUb3AgLSAxMHB4O1xuXHQgICAgICAgIGJvcmRlci1ib3R0b206IEBzYkNvbnRlbnRCb3JkZXI7XG4gICAgICBcdH1cblxuICAgICAgXHQuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICAgIFx0XHRwYWRkaW5nLWJvdHRvbTogNnB4O1xuXHRcdCAgXHR0ZXh0LWFsaWduOiBsZWZ0O1xuXG4gICAgICBcdFx0PiBoMyB7XG5cdFx0ICAgIFx0Zm9udC1mYW1pbHk6IEBzYkZvbnQ7XG5cdFx0XHQgIFx0Zm9udC13ZWlnaHQ6IDMwMDtcblx0XHRcdH1cbiAgICAgIFx0fVxuXG5cdCAgICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJUb3AgQHNiUGFnZUhlYWRlckxlZnQ7XG5cdCAgICBib3JkZXI6IEBzYkNvbnRlbnRCb3JkZXI7XG5cdCAgICBib3JkZXItcmFkaXVzOiAzcHg7XG4gIFx0fVxuXG5cdC8vIEJ1dHRvbnMgdG8gZXhwYW5kIGFuZCBjb250cmFjdCByZWxhdGVkIGxpc3Rcblx0LnRvZ2dsZUJ1dHRvbiB7XG5cdFx0ZmxvYXQ6IHJpZ2h0O1xuXHR9XG5cblx0Ly8gVGFibGUgZm9yIGVhY2ggcmVsYXRlZCBsaXN0XG5cdC50YWJsZUNvbnRhaW5lciB7XG5cdFx0ZGlzcGxheTogbm9uZTtcblx0fVxuXG5cdC5zYlRhYmxlIHtcblx0ICAgIEByb3dIZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcblx0ICAgIEBpbmRlbnQ6IDEwcHggKyBAc2JQYWdlSGVhZGVyTGVmdDtcblxuXHQgICAgLnJmSGVhZCB7XG5cdCAgICBcdGJhY2tncm91bmQ6IEBzYkNvbnRlbnRCZ0NvbG9yO1xuXHQgICAgfVxuXG5cdCAgICAvLyBwYWRkaW5nIGZvciBmaXJzdCBhbmQgbGFzdCBjb2x1bW5zXG5cdCAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuXHQgICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG5cdCAgICAgIFx0cGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcblx0ICAgIH1cblx0ICAgID4gdGhlYWQgPiB0ciA+IHRoOmxhc3Qtb2YtdHlwZSxcblx0ICAgID4gdGJvZHkgPiB0ciA+IHRkOmxhc3Qtb2YtdHlwZSB7XG5cdCAgICAgIFx0cGFkZGluZy1yaWdodDogQHNiUGFnZUhlYWRlckxlZnQ7XG5cdCAgICB9XG5cdCAgICA+IHRib2R5ID4gdHI6bGFzdC1vZi10eXBlID4gdGQge1xuXHQgICAgICBcdGJvcmRlci1ib3R0b206IG5vbmU7XG5cdCAgICB9XG5cblx0ICAgID4gdGhlYWQgPiB0ciA+IHRoIHtcblx0ICAgICAgXHRoZWlnaHQ6IEByb3dIZWlnaHQgKiAwLjU7XG5cdCAgICB9XG5cblx0ICAgIC8vIHRhYmxlIGNlbGxzXG5cdCAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdCAgICBcdHBhZGRpbmc6IEByb3dIZWlnaHQgKiAwLjEgQHJvd0hlaWdodCAqIDAuMjtcblx0ICAgICAgXHRoZWlnaHQ6IEByb3dIZWlnaHQgKiAwLjU7XG5cdCAgICAgIFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0ICAgICAgXHR0ZXh0LWFsaWduOiBsZWZ0O1xuXHRcdH1cblxuXHRcdD4gdGZvb3QgPiB0ciB7XG5cdFx0XHQ+IHRkIHtcblx0XHRcdFx0dGV4dC1hbGlnbjogbGVmdDtcblx0XHQgICAgXHRwYWRkaW5nLXRvcDogQHJvd0hlaWdodCAqIDAuMTtcblx0XHQgICAgXHRwYWRkaW5nLWJvdHRvbTogQHJvd0hlaWdodCAqIDAuMTtcblx0XHQgICAgXHRwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXHRcdFx0XHRoZWlnaHQ6IEByb3dIZWlnaHQgKiAwLjQ7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0dGJvZHkgPiB0cjpob3ZlciB7XG5cdFx0ICBcdGJhY2tncm91bmQ6IG5vbmU7XG5cdFx0fVxuXHR9XG5cbn1cbiIsIi8vIEZhdm9yaXRlIE1hbmFnZXJcbiNzYkZhdm9yaXRlc01hbmFnZXIge1xuXG4gIC5zYlBhZ2VUaXRsZSB7XG4gICAgLnNiVG9vbHMge1xuICAgICAgbWFyZ2luLXJpZ2h0OiAxMHB4O1xuXG4gICAgICA+IC5zYlRvb2wge1xuICAgICAgICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgICAgIHBhZGRpbmc6IDdweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAudG9wTXNnIHtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgcGFkZGluZzogMzJweFxuICB9XG5cbiAgLmJvdE1zZyB7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICB9XG5cbiAgLnNiVGFibGUge1xuICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICB9XG5cbiAgICAuc2JTZWxlY3Rpb25IZWFkZXIge1xuICAgICAgd2lkdGg6IDElXG4gICAgfVxuXG4gICAgLnNiRmF2b3JpdGVIZWFkZXIge1xuICAgICAgd2lkdGg6IDE2MHB4O1xuICAgIH1cblxuICAgICAgLnNiRGVzY3JpcHRpb24ge1xuICAgICAgICB3aWR0aDogNTAlO1xuICAgICAgfVxuXG4gICAgdGJvZHkge1xuICAgICAgdHIge1xuICAgICAgICB0ZCB7XG4gICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgICAgIGkge1xuICAgICAgICAgICAgY29sb3I6IEBzYkxpbmtDb2xvcjtcbiAgICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuICAgICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgI3NiRmF2b3JpdGVzTWFuYWdlck1hc2sge1xuICAgIC5zYk1vZGFsTWFzaztcblxuICAgICYuY2xvc2Uge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG4gIH1cblxuICAjc2JGYXZvcml0ZXNNYW5hZ2VyTW9kYWwge1xuICAgIC5zYk1vZGFsRGlhbG9nO1xuXG4gICAgbWluLWhlaWdodDogMTYwcHg7XG4gICAgbWF4LXdpZHRoOiA0MDBweDtcblxuICAgIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgICB1bCB7XG4gICAgICAgIC13ZWJraXQtcGFkZGluZy1lbmQ6IDBweDtcbiAgICAgIH1cblxuICAgICAgLnNiVGFibGUge1xuICAgICAgICAuc2JBY3Rpb25zIHtcbiAgICAgICAgICB3aWR0aDogMSU7XG4gICAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLmZvcm0tY29udHJvbCB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgd2lkdGg6IDEwMCU7XG4gICAgaGVpZ2h0OiAzNHB4O1xuICAgIHBhZGRpbmc6IDZweCAxMnB4O1xuICAgIGZvbnQtc2l6ZTogMTRweDtcbiAgICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MztcbiAgICBjb2xvcjogIzU1NTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmO1xuICAgIGJhY2tncm91bmQtaW1hZ2U6IG5vbmU7XG4gICAgYm9yZGVyOiAxcHggc29saWQgI2NjYztcbiAgICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIH1cblxuICAuc2JWYWxpZGF0aW9uRXJyb3JzIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICBwYWRkaW5nOiA1cHggMTVweDtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgIGNvbG9yOiAjYzAwO1xuICB9XG5cbiAgLmludmFsaWQge1xuICAgIGJvcmRlci1jb2xvcjogI2MwMDtcbiAgfVxuXG4gIC5kcm9wZG93bi1tZW51IHtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgdG9wOiAxMDAlO1xuICAgIGxlZnQ6IDA7XG4gICAgei1pbmRleDogMTAwMDtcbiAgICBkaXNwbGF5OiBub25lO1xuICAgIGZsb2F0OiBsZWZ0O1xuICAgIG1pbi13aWR0aDogMTYwcHg7XG4gICAgcGFkZGluZzogNXB4IDA7XG4gICAgbWFyZ2luOiAycHggMCAwO1xuICAgIGZvbnQtc2l6ZTogMTRweDtcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgIGxpc3Qtc3R5bGU6IG5vbmU7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgICBib3JkZXI6IDFweCBzb2xpZCByZ2JhKDAsMCwwLC4xNSk7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICAgIGJveC1zaGFkb3c6IDAgNnB4IDEycHggcmdiYSgwLDAsMCwuMTc1KTtcbiAgICBiYWNrZ3JvdW5kLWNsaXA6IHBhZGRpbmctYm94O1xuICB9XG5cbiAgLmRyb3Bkb3duLW1lbnUgPiBsaSA+IGEge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIHBhZGRpbmc6IDNweCAyMHB4O1xuICAgIGNsZWFyOiBib3RoO1xuICAgIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gICAgbGluZS1oZWlnaHQ6IDEuNDI4NTcxNDM7XG4gICAgY29sb3I6ICMzMzM7XG4gICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgfVxuICAuZHJvcGRvd24tbWVudSA+IGxpID4gYTpob3ZlcixcbiAgLmRyb3Bkb3duLW1lbnUgPiBsaSA+IGE6Zm9jdXMge1xuICAgIGNvbG9yOiAjMjYyNjI2O1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZjVmNWY1O1xuICB9XG5cbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYSxcbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYTpob3ZlcixcbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYTpmb2N1cyB7XG4gICAgY29sb3I6ICNmZmY7XG4gICAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICAgIGJhY2tncm91bmQtY29sb3I6ICMzMzdhYjc7XG4gICAgb3V0bGluZTogMDtcbiAgfVxuXG59XG5cblxuIiwiLy8gVXNlZCBmb3IgdGhlIGJsb2NrIHByaWNlIGFuZCBjb3N0IHNjaGVkdWxlIHBhZ2VzXG4jc2JCbG9ja1ByaWNlIHtcblxuXHRiYWNrZ3JvdW5kOiBAc2JQYWdlQmdDb2xvcjtcblx0Y29sb3I6IEBzYkZvbnRDb2xvcjtcblx0Zm9udC1mYW1pbHk6IEBzYkZvbnQ7XG5cdHBhZGRpbmctdG9wOiAxMHB4O1xuICAgIHBhZGRpbmctYm90dG9tOiAxMHB4O1xuXG5cdCNzYlByaWNlQm9va0dyb3VwIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHR9XG5cbiAgICAjc2JDbG9uZVByaWNlQm9va0dyb3VwIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICBwYWRkaW5nLWxlZnQ6IDEwMHB4O1xuXHR9XG5cbiAgICAuc2JQcmljZUJvb2tUZXh0IHtcbiAgICAgICAgcGFkZGluZzogMTBweDtcblx0fVxuXG5cdC5zYkNsb25lRnJvbVByaWNlQm9vayB7XG5cdCAgICBtYXJnaW4tbGVmdDogMTVweDtcblx0ICAgIHBhZGRpbmctYm90dG9tOiA0cHg7XG5cdH1cblxuXHQuc2JQcmljZUJvb2tTZWxlY3Qge1xuXHQgICAgcGFkZGluZy1ib3R0b206IDJweDtcblx0fVxufSJdLCJzb3VyY2VSb290IjoiL3NvdXJjZS8ifQ== */
