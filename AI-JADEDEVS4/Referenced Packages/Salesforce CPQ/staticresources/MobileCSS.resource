/*** Common ***/
@-webkit-keyframes loading-rotate {
  0% {
    -webkit-transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
  }
}
@-moz-keyframes loading-rotate {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
@keyframes loading-rotate {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
* {
  font-family: ProximaNova, Arial, sans-serif;
  color: #3c3d3e;
  -webkit-font-smoothing: antialiased;
}
*,
*:before,
*:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
body {
  padding: 0px;
  margin: 0px;
}
.pbSubsection header {
  *zoom: 1;
  margin-left: -7px;
  margin-right: -7px;
  margin-bottom: 5px;
  padding: 14px;
  vertical-align: middle;
  border-bottom-width: 1px;
  border-bottom-style: solid;
  border-color: #eceef0;
}
.pbSubsection header h1 {
  margin: 0px;
  /*font-weight: 300;*/
  font-size: 14px;
  color: #3c3d3e;
}
.pbSubsection label {
  text-align: left;
}
header.pageHeader {
  margin: 0px;
  background-color: white;
  border-bottom-width: 1px;
  border-bottom-style: solid;
  border-color: #cfd4d9;
  padding-top: 3px;
  padding-bottom: 3px;
  width: 100%;
}
header.pageHeader h1 {
  display: inline-block;
  font-weight: 100;
  vertical-align: middle;
}
header.pageHeader h1 .title {
  display: block;
  font-size: 12px;
}
header.pageHeader h1 .subtitle {
  display: block;
  font-size: 14px;
}
.icon {
  display: inline-block;
  background-position: 50%;
  background-repeat: no-repeat;
  border-radius: 5px;
  width: 30px;
  height: 30px;
  background-size: 100%;
  vertical-align: middle;
  margin-left: 14px;
  margin-right: 14px;
}
.iconCustom18 {
  background-color: #4dca76;
  background-image: url('/img/icon/t4/custom/custom18_60.png');
}
input,
textarea,
keygen,
select,
button,
isindex {
  margin: 0;
  font: -webkit-small-control;
  font-size: 15px;
  font-family: inherit;
  color: initial;
  letter-spacing: normal;
  word-spacing: normal;
  text-transform: none;
  text-indent: 0px;
  text-shadow: none;
  display: inline-block;
  vertical-align: middle;
  text-align: start;
  box-sizing: border-box;
  color: #3c3d3e;
  padding: 7px 14px;
  line-height: 25px;
  border-radius: 5px;
  border: 1px solid #cfd0d2;
  -webkit-writing-mode: horizontal-tb;
  -moz-appearance: none;
  -webkit-appearance: none;
  -ms-appearance: none;
}
input {
  border: 1px solid #cfd0d2;
  border-radius: 3px;
  background-color: #fff;
  box-shadow: inset 0 2px 2px rgba(0, 0, 0, 0.07);
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
label {
  font-size: 13px;
  color: #696e71;
  margin: 0;
  padding-bottom: 5px;
  display: block;
}
textarea {
  -webkit-rtl-ordering: logical;
  -webkit-user-select: text;
  flex-direction: column;
  cursor: auto;
  white-space: pre-wrap;
  word-wrap: break-word;
  background-color: #fff;
  box-shadow: inset 0 2px 2px rgba(0, 0, 0, 0.07);
}
input[type="checkbox"],
input[type="radio"] {
  padding: 0px;
  border-style: solid;
  border-width: 1px;
  height: 22px;
  width: 22px;
  border-color: #bbc0c4;
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.02), inset 0 0 0 2px rgba(255, 255, 255, 0.5);
}
input[type="checkbox"]:disabled,
input[type="radio"]:disabled {
  opacity: 0.4;
}
input[type="checkbox"]:focus,
input[type="checkbox"]:active,
input[type="radio"]:focus,
input[type="radio"]:active {
  background: #e8eaeb;
}
input[type="checkbox"]:checked,
input[type="radio"]:checked {
  border-color: #1c78b1;
  background: #2a94d6 !important;
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.02);
}
input[type="checkbox"]:checked::after {
  display: block;
  position: relative;
  content: '';
  left: 3px;
  top: 4px;
  height: 8px;
  width: 14px;
  border-bottom: 4px solid white;
  border-left: 4px solid white;
  -webkit-transform: rotate(-45deg);
}
input[type="radio"]:checked::after {
  display: block;
  position: relative;
  content: '';
  left: 5px;
  top: 5px;
  height: 10px;
  width: 10px;
  border-radius: 100%;
  background: white;
}
input.invalidDate {
  border-color: #c00;
}
select {
  min-width: 50px;
  padding: 7px 14px;
  margin-left: 3px;
  background-image: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDI3LjYgMjEiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDI3LjYgMjEiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KICA8Zz4NCiAgICA8ZGVmcz4NCiAgICAgIDxwYXRoIGlkPSJTVkdJRF8xXyIgZD0iTTUuNiA1aDE2LjRjMC40IDAgMC44IDAuNiAwLjQgMWwtOCA5LjhjLTAuMyAwLjMtMC45IDAuMy0xLjIgMGwtOC05LjhDNC44IDUuNiA1LjEgNSA1LjYgNXoiLz4NCiAgICA8L2RlZnM+DQogICAgPGNsaXBQYXRoIGlkPSJTVkdJRF8yXyI+DQogICAgICA8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8xXyIgb3ZlcmZsb3c9InZpc2libGUiLz4NCiAgICA8L2NsaXBQYXRoPg0KICAgIDxyZWN0IHg9IjAiIHk9IjAiIGNsaXAtcGF0aD0idXJsKCNTVkdJRF8yXykiIGZpbGw9IiM1NTY5OEQiIHdpZHRoPSIyNy42IiBoZWlnaHQ9IjIxIi8+DQogIDwvZz4NCjwvc3ZnPg0K');
  background-color: #fff;
  background-position: 95% 50%;
  background-repeat: no-repeat;
  background-size: 14px 14px;
  border: 1px solid #cfd0d2;
  border-radius: 3px;
}
select[multiple] {
  min-height: 74px;
}
select[size="1"] {
  align-items: center;
  white-space: pre;
}
button.btn {
  background-color: white;
  border-color: #bbc0c4;
  padding-top: 6px;
  padding-bottom: 7px;
  padding-left: 6px;
  padding-right: 7px;
  margin-bottom: 14px;
  text-align: center;
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#f1f1f1));
  background-image: -webkit-linear-gradient(top, #ffffff, #f1f1f1);
  background-image: -moz-linear-gradient(top, #ffffff, #f1f1f1);
  background-image: -ms-linear-gradient(top, #ffffff, #f1f1f1);
  background-image: -o-linear-gradient(top, #ffffff, #f1f1f1);
}
button.btn span {
  font-size: 16px;
  font-weight: 700;
  color: #44596c;
}
button.primary {
  width: 200px;
}
button.single {
  max-width: 250px;
  width: 100%;
}
button {
  color: buttontext;
}
button.btn span.icon-utility-down {
  margin-left: 10px;
  margin-right: 10px;
}
.pbHeader {
  width: 100%;
  padding-top: 15px;
  text-align: center;
}
.pbTitle {
  display: none;
}
.pbButton {
  width: 100%;
}
table.list {
  width: 100%;
}
table.list td,
table.list th {
  padding: 5px 3px;
}
table.list th {
  color: #696e71;
  font-size: 12px;
  text-align: left;
  padding-right: 10px;
}
table.list td {
  font-size: 14px;
  color: #3c3d3e;
  padding-right: 10px;
}
td.dataCell {
  border-top: 1px solid #cfd4d9;
}
.labelCol {
  text-align: right;
  padding-right: 10px;
}
.instructionsCol {
  padding-left: 10px;
  padding-top: 5px;
}
.buttonContainer {
  width: 100%;
  margin-top: 7px;
  margin-bottom: 7px;
  text-align: center;
}
.recordEditorForm {
  margin-left: 10px;
  margin-right: 10px;
  padding-top: 85px;
}
.recordEditorForm td {
  padding-bottom: 3px;
}
.recordEditorForm select,
.recordEditorForm input[type="text"] {
  width: 100%;
}
.statusContainer {
  position: fixed;
  right: 0;
  left: 0;
  top: 0;
  bottom: 0;
  z-index: 1001;
  text-align: center;
  padding: 0px;
  opacity: 0.6;
  background-color: #354452;
}
.statusIcon {
  width: 30px;
  height: 30px;
  color: #afb5b9;
  position: absolute;
  top: 50%;
  margin: -15px auto auto;
  -webkit-animation: loading-rotate linear 0.8s infinite;
  -moz-animation: loading-rotate linear 0.8s infinite;
  animation: loading-rotate linear 0.8s infinite;
  -webkit-animation-fill-mode: forwards;
  -moz-animation-fill-mode: forwards;
  animation-fill-mode: forwards;
  background: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2M3B4IiBoZWlnaHQ9IjYzcHgiIHZpZXdCb3g9IjAgMCA2MyA2MyI+PHBhdGggZmlsbD0iI2FmYjViOSIgZD0iTTMxLjUwMSwxNi43ODF2LTQuODg2Yy0xMC43ODksMC0xOS41MzYsOC43NDUtMTkuNTM2LDE5LjUzNWMwLDEwLjc4OSw4Ljc0NywxOS41MzUsMTkuNTM2LDE5LjUzNWMxMC43ODgsMCwxOS41MzQtOC43NDYsMTkuNTM0LTE5LjUzNWMwLTUuMjE0LTIuMDQ5LTkuOTQ4LTUuMzc3LTEzLjQ1Mmw0LjcxOS00LjQ4M2M0LjQ0LDQuNjcxLDcuMTY4LDEwLjk4Myw3LjE2OCwxNy45MzdjMCwxNC4zODUtMTEuNjYyLDI2LjA0My0yNi4wNDIsMjYuMDQzYy0xNC4zODYsMC0yNi4wNDctMTEuNjU4LTI2LjA0Ny0yNi4wNDNjMC0xNC4zODgsMTEuNjYxLTI2LjA0NywyNi4wNDctMjYuMDQ3VjAuNWw5Ljc2Nyw4LjEzOUwzMS41MDEsMTYuNzgxeiIvPjwvc3ZnPg==') no-repeat center center;
  background-size: 100%;
}
.modalDialogWrapper {
  z-index: 22;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
}
.modalDialogBackground {
  z-index: 21;
  opacity: .6;
  background-color: #354452;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  -webkit-transition: opacity 300ms;
}
.modalDialog {
  z-index: 22;
  position: fixed;
  top: 100px;
  left: 0;
  right: 0;
  margin: auto;
  height: auto;
  max-height: 70%;
  width: 100%;
  max-width: 292px;
  border-radius: 5px;
  background-color: #ffffff;
  -webkit-transition: -webkit-transform 0.3s ease-in;
  overflow: scroll;
}
.closeBtn {
  position: fixed;
  z-index: 22;
  right: 0px;
  left: 0px;
  top: 70px;
  color: #ffffff;
  width: 100%;
  max-width: 292px;
  font-family: Arial;
  font-weight: 600;
  font-size: 25px;
  display: block;
  margin: auto;
  text-align: right;
}
.modalDialog .body {
  max-height: 70%;
  overflow: scroll;
  padding: 1px 14px;
  -webkit-flex: 1;
  border-radius: 5px;
}
.modalDialog .scrollWrapper {
  overflow: scroll;
  position: inherit;
  height: 70%;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
  -webkit-user-drag: none;
}
.modalDialog .scrollContent {
  -webkit-transition: -webkit-transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1);
  transition: -webkit-transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1);
  -webkit-transform-origin: 0px 0px;
}
.modalDialog button,
.modalDialog input {
  display: block;
  margin-top: 14px;
  width: 100%;
}
.documentPreviewContainer {
  position: absolute;
  width: 100%;
  top: 135px;
  bottom: 0px;
  overflow: scroll;
  text-align: center;
  -webkit-overflow-scrolling: touch;
}
iframe.documentPreviewFrame {
  width: 100%;
  height: 100%;
  text-align: center;
}
img.pagination {
  background-image: url('/img/paginationArrows.gif');
  background-repeat: no-repeat;
  margin: 0 2px;
  zoom: 1.4;
  -moz-transform: scale(1.4);
  -moz-transform-origin: 0 0;
}
img.warning {
  background-image: url('/img/msg_icons/warning16.gif');
  background-repeat: no-repeat;
  background-position: 0 0;
  width: 16px;
  height: 16px;
}
.message {
  border-radius: 4px;
  background-color: #ffc;
  border-style: solid;
  border-width: 1px;
  color: #000;
  padding: 6px 8px 6px 6px;
  margin: 4px 20px;
  font-size: 10px;
}
.message .messageTable .messageCell {
  vertical-align: middle;
}
.message .messageText {
  margin-left: 8px;
}
.msgIcon,
.errorLarge {
  background-image: url(/img/msg_icons/error32.png);
  background-position: 0 0;
  width: 32px;
  height: 32px;
}
.messageText h1,
.messageText h2,
.messageText h3,
.messageText h4,
.messageText h5,
.messageText h6 {
  font-weight: 400;
  font-family: inherit;
  display: inline-block;
  margin: 0;
  padding: 0;
}
.requiredConfigurationAttribute {
  border-left: #c00 solid;
  padding-left: 2px;
  margin-left: 1px;
}
.mobile {
  display: initial;
}
.desktop {
  display: none;
}
/* Mobile Reskinning*/
body {
  background-color: white;
}
/*** Phone styles ***/
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  .phone {
    display: initial;
  }
  .tablet {
    display: none;
  }
  .instructionsCol {
    padding-left: 3px;
    padding-top: 10px;
  }
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
  .groupContainer {
    margin-bottom: 10px;
  }
  .groupName {
    font-weight: bold;
    text-decoration: none;
  }
  .list {
    margin: 10px 0;
  }
  .unpaginatedHeader,
  .invisibleText {
    display: none;
  }
  .pageSelector {
    width: 50px;
    margin-right: 5px;
    text-align: center;
  }
  .groupList {
    text-align: center;
    padding: 10px 5px;
  }
  .groupList a {
    text-decoration: none;
  }
  .groupList .groupLinkName {
    white-space: nowrap;
    font-weight: bold;
    padding: 0 15px 3px;
  }
  .groupList .displayedGroup {
    border-bottom: 2px solid black;
    font-weight: bold;
  }
  .tableHeader {
    display: inline;
  }
  .quoteTotal,
  .groupTotal {
    text-align: right;
  }
  .quoteTotal {
    font-size: 20px;
    margin-right: 15px;
  }
  header .groupTotal {
    font-size: 14px;
    margin-right: 5px;
  }
  /*Custom actions on the group*/
  customActions input {
    margin-right: 5px;
  }
  /*Quote & Group Editor - fields and buttons*/
  .customActions input {
    display: block;
    margin-bottom: 5px;
  }
  /*Tables*/
  .tableHeader {
    font-size: 1.2em;
  }
  .tableContainer.standard {
    margin-top: 20px;
  }
  /*Multi-segment table*/
  .detailRow td.dataCell {
    border-top: none;
  }
  .footerRow {
    font-weight: bold;
  }
  /*Pagination Controls*/
  .paginationControls {
    text-align: center;
  }
}
/* Tablet styles */
@media only screen and (min-device-width: 641px) and (max-device-width: 1025px) {
  .tablet {
    display: initial;
  }
  .phone {
    display: none;
  }
  .searchPanel td {
    padding-left: 5px;
    padding-right: 5px;
    vertical-align: top;
  }
  .groupContainer {
    margin-bottom: 10px;
  }
  .groupName {
    font-weight: bold;
    text-decoration: none;
  }
  .list {
    margin: 10px 0;
  }
  .unpaginatedHeader,
  .invisibleText {
    display: none;
  }
  .pageSelector {
    width: 60px;
    margin-right: 5px;
    text-align: center;
  }
  .groupList {
    text-align: center;
    padding: 10px 5px;
  }
  .groupList a {
    text-decoration: none;
  }
  .groupList .groupLinkName {
    white-space: nowrap;
    font-weight: bold;
    padding: 0 15px 3px;
  }
  .groupList .displayedGroup {
    border-bottom: 2px solid #3c3d3e;
    font-weight: bold;
  }
  .tableHeader {
    display: inline;
  }
  .quoteTotal,
  .groupTotal {
    text-align: right;
  }
  .quoteTotal {
    font-size: 20px;
    margin-right: 15px;
  }
  header .groupTotal {
    font-size: 16px;
    margin-right: 5px;
  }
  /*Custom actions on the group*/
  .customActions {
    margin-left: 5px;
  }
  .customActions {
    margin-bottom: 5px;
  }
  .customActions input {
    margin-right: 5px;
  }
  /*Tables*/
  .tableHeader {
    font-size: 1.2em;
  }
  .tableContainer {
    padding-left: 5px;
  }
  .tableContainer.standard {
    margin-top: 20px;
  }
  /*Multi-segment table*/
  .detailRow td.dataCell {
    border-top: none;
  }
  .footerRow {
    font-weight: bold;
  }
  /*Pagination Controls*/
  .paginationControls {
    text-align: center;
  }
  /* Mobile Reskinning*/
  .sbBtn {
    font-size: 16px;
    margin: 0 0 0 10px;
  }
}
/*** Icons ***/
@font-face {
  font-family: 'icomoon';
  src: url('fonts/icomoon.eot');
}
@font-face {
  font-family: 'icomoon';
  src: url(data:application/x-font-ttf;charset=utf-8;base64,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) format('truetype'), url(data:application/font-woff;charset=utf-8;base64,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) format('woff');
  font-weight: normal;
  font-style: normal;
}
[class*="icon-utility-"] {
  font-family: 'icomoon';
  speak: none;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.icon-utility-success:before {
  content: "\e600";
}
.icon-utility-attach:before {
  content: "\e000";
}
.icon-utility-bookmark:before {
  content: "\e001";
}
.icon-utility-call:before {
  content: "\e002";
}
.icon-utility-chat:before {
  content: "\e003";
}
.icon-utility-checkin:before {
  content: "\e004";
}
.icon-utility-chevronleft:before {
  content: "\e005";
}
.icon-utility-chevronright:before {
  content: "\e006";
}
.icon-utility-close:before {
  content: "\e007";
}
.icon-utility-down:before {
  content: "\e008";
}
.icon-utility-download:before {
  content: "\e009";
}
.icon-utility-email:before {
  content: "\e00b";
}
.icon-utility-groups:before {
  content: "\e00e";
}
.icon-utility-image:before {
  content: "\e00f";
}
.icon-utility-left:before {
  content: "\e010";
}
.icon-utility-like:before {
  content: "\e011";
}
.icon-utility-link:before {
  content: "\e012";
}
.icon-utility-list:before {
  content: "\e013";
}
.icon-utility-location:before {
  content: "\e014";
}
.icon-utility-logout:before {
  content: "\e015";
}
.icon-utility-people:before {
  content: "\e016";
}
.icon-utility-photo:before {
  content: "\e017";
}
.icon-utility-reply:before {
  content: "\e018";
}
.icon-utility-right:before {
  content: "\e019";
}
.icon-utility-up:before {
  content: "\e01e";
}
.icon-utility-upload:before {
  content: "\e01f";
}
.icon-utility-user:before {
  content: "\e020";
}
.icon-utility-filter:before {
  content: "\e022";
}
.icon-utility-help:before {
  content: "\e023";
}
.icon-utility-error:before {
  content: "\e024";
}
.icon-utility-warning:before {
  content: "\e025";
}
.icon-utility-adduser:before {
  content: "\e026";
}
.icon-utility-add:before {
  content: "\e027";
}
.icon-utility-edit:before {
  content: "\e00a";
}
.icon-utility-back:before {
  content: "\e028";
}
.icon-utility-lock:before {
  content: "\e029";
}
.icon-utility-info:before {
  content: "\e02d";
}
.icon-utility-frozen:before {
  content: "\e02e";
}
.icon-utility-spinner:before {
  content: "\e02b";
}
.icon-utility-news:before {
  content: "\e02f";
}
.icon-utility-dash:before {
  content: "\e030";
}
.icon-utility-question:before {
  content: "\e031";
}
.icon-utility-3dots:before {
  content: "\e032";
}
.icon-utility-refresh:before {
  content: "\e033";
}
.icon-utility-socialshare:before {
  content: "\e034";
}
.icon-utility-priority:before {
  content: "\e021";
}
.icon-utility-search:before {
  content: "\e01b";
}
.icon-utility-rows:before {
  content: "\e01a";
}
.icon-utility-event:before {
  content: "\e00c";
}
.icon-utility-settings:before {
  content: "\e01c";
}
.icon-utility-check:before {
  content: "\e02a";
}
.icon-utility-notification:before {
  content: "\e02c";
}
.icon-utility-share:before {
  content: "\e01d";
}
.icon-utility-favorite:before {
  content: "\e00d";
}
.icon-utility-sms:before {
  content: "\e601";
}
.icon-utility-push:before {
  content: "\e602";
}
@font-face {
  font-family: 'icomoon';
  src: url('fonts/icomoon.eot');
}
@font-face {
  font-family: 'icomoon';
  src: url(data:application/x-font-ttf;charset=utf-8;base64,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) format('truetype'), url(data:application/font-woff;charset=utf-8;base64,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) format('woff');
  font-weight: normal;
  font-style: normal;
}
[class^="sb-icon-"],
[class*=" sb-icon-"] {
  font-family: 'icomoon';
  speak: none;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  font-size: 1.2em;
  color: #166bbf;
  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.sb-icon-jump-left:before {
  content: "\f0a5";
}
.sb-icon-jump-right:before {
  content: "\f0a6";
}
.sb-icon-triangle-left:before {
  content: "\f044";
}
.sb-icon-triangle-right3:before {
  content: "\f05a";
}
.sb-icon-triangle-right:before {
  content: "\e601";
}
.sb-icon-triangle-down:before {
  content: "\e602";
}
.sb-icon-info:before {
  content: "\e604";
}
.sb-icon-cog:before {
  content: "\e603";
}
.sb-icon-copy:before {
  content: "\e92c";
}
.sb-icon-spinner11:before {
  content: "\e984";
}
.sb-icon-plus:before {
  content: "\ea0a";
}
.sb-icon-cross:before {
  content: "\ea0f";
}
.sb-icon-radio-checked2:before {
  content: "\ea55";
}
.sb-icon-radio-unchecked:before {
  content: "\ea56";
}
/*Multi-segment line expand/collapse link*/
.sb-icon-triangle-right,
.sb-icon-triangle-down {
  color: black;
  vertical-align: text-bottom;
  cursor: pointer;
}
/*Action links on the actions column*/
.sb-icon-cross.line,
.sb-icon-cog.line {
  font-size: 1em;
}
/*Pagination controls*/
.sb-icon-jump-left,
.sb-icon-triangle-left,
.sb-icon-triangle-right3,
.sb-icon-jump-right {
  vertical-align: middle;
  margin-right: 5px;
  cursor: pointer;
}
.sb-icon-jump-left.disabled,
.sb-icon-triangle-left.disabled,
.sb-icon-triangle-right3.disabled,
.sb-icon-jump-right.disabled {
  color: #d3d3d3;
  cursor: default;
}
/*** jQuery UI Calendar ***/
.ui-datepicker {
  background-image: url('/img/alohaSkin/cal_sprite.png');
  background-position: left -109px;
  background-repeat: repeat-x;
  background-color: #ededed;
  z-index: 100 !important;
  width: auto;
  padding: 7px 5px 6px;
  border-left: 1px solid #d6d6d6;
  border-right: 1px solid #d6d6d6;
  -moz-box-shadow: 0 2px 6px #111;
  -webkit-box-shadow: 0 2px 6px #111;
  box-shadow: 0 2px 6px #111;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
}
.ui-datepicker,
.ui-datepicker-header,
.ui-datepicker-calendar,
.ui-datepicker-week-end,
.ui-datepicker-buttonpane {
  text-align: center;
  overflow: hidden;
  white-space: nowrap;
}
.ui-datepicker-header {
  padding: 0 0 3px;
}
.ui-datepicker-title {
  display: inline-block;
}
.ui-datepicker-month {
  float: left;
}
.ui-datepicker-year {
  float: right;
}
.ui-datepicker-prev,
.ui-datepicker-next {
  margin-top: 4px;
  display: inline-block;
  width: 19px;
  height: 16px;
  margin: 2px 4px 0 0;
  background-repeat: no-repeat;
  line-height: 400%;
}
.ui-datepicker-prev {
  float: left;
  background-image: url('/img/func_icons/cal/leftArrow.gif');
}
.ui-datepicker-next {
  float: left;
  background-image: url('/img/func_icons/cal/rightArrow.gif');
}
.ui-datepicker-calendar {
  padding: 0 5px;
  margin-left: auto;
  margin-right: auto;
}
.ui-datepicker-calendar > thead > tr > th {
  text-align: center;
  font-weight: normal;
  font-size: .9em;
  width: 14%;
}
.ui-datepicker-calendar td {
  padding: 2px;
}
.ui-datepicker-calendar a {
  width: auto;
  border-bottom: none;
  text-decoration: none;
  font-size: .95em;
}
.ui-datepicker-other-month a {
  color: #999;
}
.ui-datepicker-today,
.ui-datepicker-today > a {
  background-color: #1797c0;
  color: #fff;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker-current-day {
  background-color: #c6e1ff;
  border: 1px solid #9cf;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker-current-day > a {
  background-color: #c6e1ff;
  color: #333;
}
.ui-datepicker-buttonpane {
  padding: 1px;
  clear: both;
}
.ui-datepicker-buttonpane > button {
  background: transparent;
  border: none !important;
  color: #015ba7;
  cursor: pointer;
  font-weight: normal;
  padding: 0;
  margin: 0;
}
.ui-datepicker-close {
  display: none;
}
#ui-datepicker-div {
  display: none;
}
/*
Rotates an element

$r - the rotate function paramter, e.g. 90deg
 */
@font-face {
  font-family: 'sf-icons';
  src: url('../font/sf-icons.eot?13067676');
  src: url('../font/sf-icons.eot?13067676#iefix') format('embedded-opentype'), url('../font/sf-icons.svg?13067676#sf-icons') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'sf-icons';
  src: url('data:application/octet-stream;base64,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') format('woff'), url('data:application/octet-stream;base64,AAEAAAAPAIAAAwBwR1NVQrD+s+0AAAD8AAAAQk9TLzI+IEn7AAABQAAAAFZjbWFw7TgDsQAAAZgAAAjSY3Z0IAbV/wQAAK/sAAAAIGZwZ22KkZBZAACwDAAAC3BnYXNwAAAAEAAAr+QAAAAIZ2x5ZlEZyd4AAApsAACZOGhlYWQJYSfFAACjpAAAADZoaGVhB0AD1gAAo9wAAAAkaG10eBWh//oAAKQAAAACJGxvY2ExHlpmAACmJAAAARRtYXhwAikMoAAApzgAAAAgbmFtZb9aot4AAKdYAAACzXBvc3RgqNMzAACqKAAABbpwcmVw5UErvAAAu3wAAACGAAEAAAAKAB4ALAABREZMVAAIAAQAAAAAAAAAAQAAAAFsaWdhAAgAAAABAAAAAQAEAAQAAAABAAgAAQAGAAAAAQAAAAAAAQPlAZAABQAAAnoCvAAAAIwCegK8AAAB4AAxAQIAAAIABQMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUGZFZABA6ADohwNS/2oAWgNSAJYAAAABAAAAAAAAAAAABQAAAAMAAAAsAAAABAAAAmIAAQAAAAABXAADAAEAAAAsAAMACgAAAmIABAEwAAAABAAEAAEAAOiH//8AAOgA//8AAAABAAQAAAABAAIAAwAEAAUABgAHAAgACQAKAAsADAANAA4ADwAQABEAEgATABQAFQAWABcAGAAZABoAGwAcAB0AHgAfACAAIQAiACMAJAAlACYAJwAoACkAKgArACwALQAuAC8AMAAxADIAMwA0ADUANgA3ADgAOQA6ADsAPAA9AD4APwBAAEEAQgBDAEQARQBGAEcASABJAEoASwBMAE0ATgBPAFAAUQBSAFMAVABVAFYAVwBYAFkAWgBbAFwAXQBeAF8AYABhAGIAYwBkAGUAZgBnAGgAaQBqAGsAbABtAG4AbwBwAHEAcgBzAHQAdQB2AHcAeAB5AHoAewB8AH0AfgB/AIAAgQCCAIMAhACFAIYAhwCIAAABBgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAZwAAAAAAAAAIgAAOgAAADoAAAAAAEAAOgBAADoAQAAAAIAAOgCAADoAgAAAAMAAOgDAADoAwAAAAQAAOgEAADoBAAAAAUAAOgFAADoBQAAAAYAAOgGAADoBgAAAAcAAOgHAADoBwAAAAgAAOgIAADoCAAAAAkAAOgJAADoCQAAAAoAAOgKAADoCgAAAAsAAOgLAADoCwAAAAwAAOgMAADoDAAAAA0AAOgNAADoDQAAAA4AAOgOAADoDgAAAA8AAOgPAADoDwAAABAAAOgQAADoEAAAABEAAOgRAADoEQAAABIAAOgSAADoEgAAABMAAOgTAADoEwAAABQAAOgUAADoFAAAABUAAOgVAADoFQAAABYAAOgWAADoFgAAABcAAOgXAADoFwAAABgAAOgYAADoGAAAABkAAOgZAADoGQAAABoAAOgaAADoGgAAABsAAOgbAADoGwAAABwAAOgcAADoHAAAAB0AAOgdAADoHQAAAB4AAOgeAADoHgAAAB8AAOgfAADoHwAAACAAAOggAADoIAAAACEAAOghAADoIQAAACIAAOgiAADoIgAAACMAAOgjAADoIwAAACQAAOgkAADoJAAAACUAAOglAADoJQAAACYAAOgmAADoJgAAACcAAOgnAADoJwAAACgAAOgoAADoKAAAACkAAOgpAADoKQAAACoAAOgqAADoKgAAACsAAOgrAADoKwAAACwAAOgsAADoLAAAAC0AAOgtAADoLQAAAC4AAOguAADoLgAAAC8AAOgvAADoLwAAADAAAOgwAADoMAAAADEAAOgxAADoMQAAADIAAOgyAADoMgAAADMAAOgzAADoMwAAADQAAOg0AADoNAAAADUAAOg1AADoNQAAADYAAOg2AADoNgAAADcAAOg3AADoNwAAADgAAOg4AADoOAAAADkAAOg5AADoOQAAADoAAOg6AADoOgAAADsAAOg7AADoOwAAADwAAOg8AADoPAAAAD0AAOg9AADoPQAAAD4AAOg+AADoPgAAAD8AAOg/AADoPwAAAEAAAOhAAADoQAAAAEEAAOhBAADoQQAAAEIAAOhCAADoQgAAAEMAAOhDAADoQwAAAEQAAOhEAADoRAAAAEUAAOhFAADoRQAAAEYAAOhGAADoRgAAAEcAAOhHAADoRwAAAEgAAOhIAADoSAAAAEkAAOhJAADoSQAAAEoAAOhKAADoSgAAAEsAAOhLAADoSwAAAEwAAOhMAADoTAAAAE0AAOhNAADoTQAAAE4AAOhOAADoTgAAAE8AAOhPAADoTwAAAFAAAOhQAADoUAAAAFEAAOhRAADoUQAAAFIAAOhSAADoUgAAAFMAAOhTAADoUwAAAFQAAOhUAADoVAAAAFUAAOhVAADoVQAAAFYAAOhWAADoVgAAAFcAAOhXAADoVwAAAFgAAOhYAADoWAAAAFkAAOhZAADoWQAAAFoAAOhaAADoWgAAAFsAAOhbAADoWwAAAFwAAOhcAADoXAAAAF0AAOhdAADoXQAAAF4AAOheAADoXgAAAF8AAOhfAADoXwAAAGAAAOhgAADoYAAAAGEAAOhhAADoYQAAAGIAAOhiAADoYgAAAGMAAOhjAADoYwAAAGQAAOhkAADoZAAAAGUAAOhlAADoZQAAAGYAAOhmAADoZgAAAGcAAOhnAADoZwAAAGgAAOhoAADoaAAAAGkAAOhpAADoaQAAAGoAAOhqAADoagAAAGsAAOhrAADoawAAAGwAAOhsAADobAAAAG0AAOhtAADobQAAAG4AAOhuAADobgAAAG8AAOhvAADobwAAAHAAAOhwAADocAAAAHEAAOhxAADocQAAAHIAAOhyAADocgAAAHMAAOhzAADocwAAAHQAAOh0AADodAAAAHUAAOh1AADodQAAAHYAAOh2AADodgAAAHcAAOh3AADodwAAAHgAAOh4AADoeAAAAHkAAOh5AADoeQAAAHoAAOh6AADoegAAAHsAAOh7AADoewAAAHwAAOh8AADofAAAAH0AAOh9AADofQAAAH4AAOh+AADofgAAAH8AAOh/AADofwAAAIAAAOiAAADogAAAAIEAAOiBAADogQAAAIIAAOiCAADoggAAAIMAAOiDAADogwAAAIQAAOiEAADohAAAAIUAAOiFAADohQAAAIYAAOiGAADohgAAAIcAAOiHAADohwAAAIgAAAADAAAAAAPCAdIADAAZACYAOkA3CAQHAgYFAAEBAFQI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cHJvamVjdC5odHRwOi8vZm9udGVsbG8uY29tAEMAbwBwAHkAcgBpAGcAaAB0ACAAKABDACkAIAAyADAAMQA2ACAAYgB5ACAAbwByAGkAZwBpAG4AYQBsACAAYQB1AHQAaABvAHIAcwAgAEAAIABmAG8AbgB0AGUAbABsAG8ALgBjAG8AbQBzAGYALQBpAGMAbwBuAHMAUgBlAGcAdQBsAGEAcgBzAGYALQBpAGMAbwBuAHMAcwBmAC0AaQBjAG8AbgBzAFYAZQByAHMAaQBvAG4AIAAxAC4AMABzAGYALQBpAGMAbwBuAHMARwBlAG4AZQByAGEAdABlAGQAIABiAHkAIABzAHYAZwAyAHQAdABmACAAZgByAG8AbQAgAEYAbwBuAHQAZQBsAGwAbwAgAHAAcgBvAGoAZQBjAHQALgBoAHQAdABwADoALwAvAGYAbwBuAHQAZQBsAGwAbwAuAGMAbwBtAAAAAAIAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiQECAQMBBAEFAQYBBwEIAQkBCgELAQwBDQEOAQ8BEAERARIBEwEUARUBFgEXARgBGQEaARsBHAEdAR4BHwEgASEBIgEjASQBJQEmAScBKAEpASoBKwEsAS0BLgEvATABMQEyATMBNAE1ATYBNwE4ATkBOgE7ATwBPQE+AT8BQAFBAUIBQwFEAUUBRgFHAUgBSQFKAUsBTAFNAU4BTwFQAVEBUgFTAVQBVQFWAVcBWAFZAVoBWwFcAV0BXgFfAWABYQFiAWMBZAFlAWYBZwFoAWkBagFrAWwBbQFuAW8BcAFxAXIBcwF0AXUBdgF3AXgBeQF6AXsBfAF9AX4BfwGAAYEBggGDAYQBhQGGAYcBiAGJAYoABTNkb3RzA2FkZAVjbG9zZQlwcmljZWJvb2sEaGVscAhub3RlYm9vawRyb3dzBnVwbG9hZAVjbG9jawZncm91cHMLb3Blbl9mb2xkZXIQcmlnaHRfYWxpZ25fdGV4dAdwcm9kdWN0DXF1ZXN0aW9uX2ZlZWQHd2FybmluZwR1c2VyBXJpZ2h0DG5vdGlmaWNhdGlvbgRob21lCGNvbnRyYWN0B2FkZHVzZXIEYXBwcwRjb3B5BWltYWdlBG9wZW4Ic2V0dGluZ3MGem9vbWluBnJlY29yZAlhcnJvd2Rvd24DY3V0D2luc2VydF90ZW1wbGF0ZQ1vcGVuZWRfZm9sZGVyCXNpZGVfbGlzdAd6b29tb3V0BnF1b3RlcwxyZWxhdGVkX2xpc3QEZ2RvYwdzbmlwcGV0BHBhZ2ULY3VzdG9tX2FwcHMHYXJyb3d1cAZhdHRhY2gHZGF5dmlldwRpbmZvEGluc2VydF90YWdfZmllbGQFcGFzdGUEc29ydANwZGYGcmVwb3J0BHRhc2sIYXBwcm92YWwLc29jaWFsc2hhcmUGcGVvcGxlBml0YWxpYwZkZWxldGUEYmFjawNiYW4FZW1haWwEYm9sZAdwcmV2aWV3BXNoYXJlCWRhc2hib2FyZAZ0aGFua3MFdG9kYXkKY29udHJhY3QtMQdzcGlubmVyBXBob3RvBWV2ZW50B2J1aWxkZXIManVzdGlmeV90ZXh0EWNlbnRlcl9hbGlnbl90ZXh0BGVkaXQGbGF5b3V0CHByaW9yaXR5EHN0YW5kYXJkX29iamVjdHMHY29udGFjdAhjdXN0b205MwdlbWFpbC0xB3N1Y2Nlc3MHcmVmcmVzaA9sZWZ0X2FsaWduX3RleHQEZG93bgVjaGFydARjaGF0BWVycm9yBGxlZnQLcmVtb3ZlX2xpbmsHc3VtbWFyeQhkb2N1bWVudAZkcmFmdHMNc3VtbWFyeWRldGFpbAdyZXBsYWNlBGxpa2UIZG93bmxvYWQFY2hlY2sLY2hldnJvbmxlZnQGZXhwYW5kBGxpbmsFcmVwbHkFdGFibGUEZmVlZAdldmVudC0xDnRpbGVfY2FyZF9saXN0FHJpY2h0ZXh0YnVsbGV0ZWRsaXN0BGxpc3QIZmF2b3JpdGUMY2hldnJvbnJpZ2h0C2NoZXZyb25kb3duBmZpbHRlcgRtb3ZlDnJpY2h0ZXh0aW5kZW50CXVuZGVybGluZQhmZWVkYmFjawRmaWxlBHVuZG8UcmljaHRleHRudW1iZXJlZGxpc3QEbG9jawpmaWx0ZXJsaXN0CWNoZXZyb251cAVjbGVhcgdmb3J3YXJkCm5ld193aW5kb3cPcmljaHRleHRvdXRkZW50BnVubG9jawtvcHBvcnR1bml0eQRwb3N0AnVwBnNlYXJjaANuZXcGZnJvemVuCGNvbW1lbnRzBnJlY2VudAltYWdpY3dhbmQYZGlzY291bnRzY2hlZHVsZWljb25zLTAy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') format('truetype');
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
.pbSubsection header {
  *zoom: 1;
  margin: 0;
  padding: 0;
  vertical-align: middle;
  border: none;
}
/*a table that displays a list of entities/rows/etc, a la a "list page"*/
.sbTable {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  /*center aligned cells*/
  /*right aligned cells*/
  /*a standard table header cell*/
  /*a standard table body cell*/
  /*table footer cells*/
}
.sbTable tbody .sbActions [class^="sf-icon-"]:before,
.sbTable tbody .sbActions [class*=" sf-icon-"]:before {
  color: #0070D2;
  font-size: 20px;
}
.sbTable tbody .sbActions [class^="sf-icon-"]:before:hover,
.sbTable tbody .sbActions [class*=" sf-icon-"]:before:hover {
  color: #16325C;
  cursor: pointer;
}
.sbTable > th,
.sbTable > tr > td {
  height: 46px;
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
.sbTable > a {
  color: inherit;
}
.sbTable > input,
.sbTable select {
  font-size: inherit;
}
.sbTable > thead > tr > th {
  border-bottom: 1px solid #c0c0c0;
  padding: 8px 6px 6px;
  font-weight: normal;
  text-transform: uppercase;
  color: #777;
  text-align: left;
  white-space: nowrap;
}
.sbTable > tbody > tr > td {
  border-bottom: 1px solid #d0d0d0;
  padding: 8px 6px 6px;
  color: #222;
}
.sbTable > tbody > tr > td.right input {
  text-align: right;
}
.sbTable > tbody > tr > td input:disabled {
  background-color: #F4F6F9;
}
.sbTable > tfoot > tr > td {
  padding: 8px 6px 6px;
  color: #222;
}
/*A container/row of buttons, a la a button "bar"*/
.sbButtons {
  text-align: center;
  display: inline-block;
}
.sbModalFooter > .sbButtons {
  padding: 10px 0;
}
/*A standard, standalone button*/
.sbBtn {
  background: #fff;
  color: #166bbf;
  border: 1px solid #c0c0c0;
  border-radius: 3px;
  vertical-align: middle;
  text-align: center;
  height: 40px;
  font-size: 16px;
  margin: 0 0 0 4px;
}
.sbBtn > span {
  color: #0070D2;
}
.sbMobileTabs {
  font-size: 14px;
  margin: 18px 0;
  text-transform: uppercase;
  border-bottom: 1px solid #d0d0d0;
  margin-bottom: 10px;
}
.sbMobileTabs > a {
  color: inherit;
  padding: 6px 16px 6px;
  display: inline-block;
}
.sbMobileTabs > a.custom {
  position: relative;
}
.sbMobileTabs > a > .sf-icon-edit {
  visibility: hidden;
  color: #0070d2;
  position: absolute;
  top: 6px;
  right: -6px;
}
.sbMobileTabs > a > .sf-icon-edit.visible {
  visibility: visible;
}
.sbMobileTabs > a.selected {
  border-bottom: 4px solid #166bbf;
}
.sbPageTitleMobile {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  height: 75px;
  z-index: 5;
  background-color: #F4F6F9;
  border-bottom: 1px solid #d0d0d0;
}
.sbPageTitleMobile > .sbPageTitleTable > div {
  display: inline-block;
  vertical-align: middle;
  margin-top: 21px;
}
.sbPageTitleMobile > .sbPageTitleTable > .icon {
  margin-right: 10px;
}
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleLeft h1,
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleLeft h2 {
  font-size: 12px;
  font-weight: normal;
  margin: 0;
}
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight {
  margin: 7px;
  float: right;
}
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight > .sbPageButtons {
  margin-top: 7px;
  margin-bottom: 7px;
}
div.message {
  border-radius: 3px;
  margin: 10px 0;
  padding: 12px;
  font-size: 14px;
  color: #16325C;
  display: inline-block;
  background: none;
}
div.message.top {
  margin: 75px 0 -60px 40px;
}
div.message .msgIcon {
  background: none;
  width: 0;
  height: 0;
}
div.message .messageText {
  margin: 0 0 0 30px;
}
div.message .messageText > h4,
div.message .messageText > div {
  color: #c00;
  display: inline-block;
  vertical-align: top;
  line-height: 20px;
}
div.message .messageText h4 {
  margin-left: 10px;
  margin-right: 6px;
}
div.message .messageText > div:not(:first-of-type) {
  display: block;
}
div.message .messageText:before {
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
div.message.errorM2,
div.message.errorM3,
div.message.errorM4,
div.message.errorM5,
div.message.errorM6 {
  border-color: #c00;
}
div.message.errorM2 .messageText,
div.message.errorM3 .messageText,
div.message.errorM4 .messageText,
div.message.errorM5 .messageText,
div.message.errorM6 .messageText {
  color: #c00;
}
div.message.errorM2 .messageText:before,
div.message.errorM3 .messageText:before,
div.message.errorM4 .messageText:before,
div.message.errorM5 .messageText:before,
div.message.errorM6 .messageText:before {
  content: '\e821';
}
div.message.warningM2 .messageText,
div.message.warningM3 .messageText,
div.message.warningM4 .messageText,
div.message.warningM5 .messageText,
div.message.warningM6 .messageText {
  color: #d98633;
}
div.message.warningM2 .messageText:before,
div.message.warningM3 .messageText:before,
div.message.warningM4 .messageText:before,
div.message.warningM5 .messageText:before,
div.message.warningM6 .messageText:before {
  content: '\e820';
}
div.message.infoM2 .messageText,
div.message.infoM3 .messageText,
div.message.infoM4 .messageText,
div.message.infoM5 .messageText,
div.message.infoM6 .messageText {
  color: #0000cc;
}
div.message.infoM2 .messageText:before,
div.message.infoM3 .messageText:before,
div.message.infoM4 .messageText:before,
div.message.infoM5 .messageText:before,
div.message.infoM6 .messageText:before {
  content: '\e80f';
}
/** Custom Lookup */
span.lookupInput {
  white-space: nowrap;
}
#customLookupComponent div.lookupResult {
  padding-top: 10px;
  cursor: pointer;
  color: blue;
  text-decoration: underline;
}
#customLookupComponent div.lookupResult:hover {
  text-decoration: none;
  text-shadow: 1px 1px 1px #555;
}
#customLookupComponent span.resultHeader {
  display: block;
  padding-top: 20px !important;
  padding-bottom: 4px !important;
  font-style: italic;
}
#customLookupComponent div.body {
  padding-bottom: 20px;
}
#customLookupComponent input {
  width: 85% !important;
}
#customLookupComponent .sb-icon-search {
  padding-left: 7px;
}
/** Modal for additional button options in line editor */
.modalDialogWrapper input.sbBtn,
.modalDialogWrapper button.sbBtn {
  margin-bottom: 15px;
  margin-left: 0px;
}
.modalDialogWrapper input.sbBtn:first-of-type,
.modalDialogWrapper button.sbBtn:first-of-type {
  margin-top: 15px;
}
.modalDialogWrapper input.sbBtn:last-of-type,
.modalDialogWrapper button.sbBtn:last-of-type {
  margin-bottom: 15px;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  .sbBtn {
    font-size: 14px;
    padding: 5px 10px;
  }
  .sbBtn > span[class^="sb-icon-"],
  .sbBtn > span[class^="icon-utility-"],
  .icon-utility-down {
    vertical-align: middle;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .icon {
    float: left;
    margin-left: 10px;
    margin-right: 5px;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleLeft {
    float: left;
  }
  .sbPageTitleMobile > .sbPageTitleTable > div {
    margin-top: 15px;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight {
    display: block;
    float: right;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .sbBack {
    float: left;
    margin-left: 0;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .sbClose {
    float: right;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .sbClose > .sf-icon-close {
    font-size: 16.8px;
    display: inline-block;
    vertical-align: middle;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .modalDialogWrapper {
    margin: 0 auto;
  }
  div.message.top {
    margin: 115px 0 -100px 0;
  }
  div.message .messageText > div {
    display: inline;
    margin-left: -15px;
  }
}
#easyXDM_SBQQ_provider {
  width: 100%;
  min-height: 200px;
}
.sf-icon-close {
  color: #fff;
  font-family: Arial;
  font-weight: 600;
  font-size: 25px;
  display: block;
  text-align: right;
  z-index: 22;
  right: 0;
  margin: auto;
  width: 100%;
  left: 0;
}
#sbLineEditor {
  padding: 15px;
  font-size: 14px;
}
#sbLineEditor .sbEmptyQuoteMsg,
#sbLineEditor .sbEmptyGroupMsg,
#sbLineEditor .emptyMSTableMessage,
#sbLineEditor .emptyStandardTableMessage {
  padding: 25px 0;
}
#sbLineEditor .sbQuoteFields {
  margin: 0 15px;
}
#sbLineEditor .sbQuoteFields header {
  border: none;
}
#sbLineEditor .sbQuoteFields header > h1 {
  font-size: 14px;
}
#sbLineEditor .sbQuoteFields .sbTable > tbody > tr .sbLabel label {
  text-align: right;
  font-size: 14px;
}
#sbLineEditor .sbQuoteFields .sbTable > tbody > tr > td {
  border: none;
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
#sbLineEditor .sbQuoteActions ul,
#sbLineEditor .sbGroupActions ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
}
#sbLineEditor .sbQuoteActions ul ul,
#sbLineEditor .sbGroupActions ul ul {
  display: none;
}
#sbLineEditor .sbQuoteActions ul li span.sf-icon-down.open + ul,
#sbLineEditor .sbGroupActions ul li span.sf-icon-down.open + ul {
  display: block;
}
#sbLineEditor .sbQuoteActions li,
#sbLineEditor .sbGroupActions li {
  margin: 10px 0;
  padding: 10px;
  display: block;
}
#sbLineEditor .sbQuoteActions li.sbBtn,
#sbLineEditor .sbGroupActions li.sbBtn {
  height: auto;
}
#sbLineEditor .sbQuoteActions li.menu,
#sbLineEditor .sbGroupActions li.menu {
  border: 1px solid #c0c0c0;
}
#sbLineEditor .sbQuoteActions li.menu li,
#sbLineEditor .sbGroupActions li.menu li {
  border: none;
  margin: 0;
}
#sbLineEditor .sbQuoteActions li.menu li:first-of-type,
#sbLineEditor .sbGroupActions li.menu li:first-of-type {
  margin-top: 10px;
}
#sbLineEditor .sbQuoteActions .sbToolSeparator,
#sbLineEditor .sbGroupActions .sbToolSeparator {
  height: 0;
  padding: 0;
  border: none;
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
#sbLineEditor.optional li.optionalAllBtn,
#sbLineEditor.optional li.optionalNoneBtn {
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
#sbLineEditor .sbGroups,
#sbLineEditor .sbLineItems,
#sbLineEditor .sbCustomSegmentsEditor,
#sbLineEditor .sbDiscountScheduleModal,
#sbLineEditor #sbPricebookModal,
#sbLineEditor #sbFavoritesModal,
#sbLineEditor .sbProductRuleAlertPopup,
#sbLineEditor .recordEditorForm {
  padding-top: 75px;
}
#sbLineEditor .sbDiscountScheduleModal .message {
  margin-top: 5px;
  margin-bottom: 5px;
}
#sbLineEditor .sbQuoteFields,
#sbLineEditor .msStandardTableContainer,
#sbLineEditor .sbMultiSegmentTableContainer,
#sbLineEditor .sbGroupFieldsContainer,
#sbLineEditor .sbCustomSegmentsContainer {
  overflow-x: auto;
}
#sbLineEditor .sbModalContentContainer {
  overflow-x: auto;
}
#sbLineEditor .discountScheduleLoader {
  margin-left: auto;
  margin-right: auto;
  margin-top: 20px;
}
#sbLineEditor .discountScheduleProperty {
  white-space: nowrap;
}
#sbLineEditor .hideInputBorders {
  border: 0px;
}
#sbLineEditor .sbGroupNames {
  text-align: center;
  margin: 30px;
}
#sbLineEditor .sbGroupNames > div {
  text-transform: uppercase;
  padding: 15px;
  margin-bottom: 10px;
}
#sbLineEditor .sbGroupNames > div > span {
  display: inline-block;
  vertical-align: middle;
  font-weight: normal;
  font-size: 14px;
}
#sbLineEditor .sbGroupNames > div > span:last-of-type {
  padding-left: 30px;
}
#sbLineEditor .sbQuoteTotalContainer,
#sbLineEditor .sbGroupTotalContainer {
  margin-top: 25px;
  text-align: right;
}
#sbLineEditor .sbQuoteTotalContainer header,
#sbLineEditor .sbGroupTotalContainer header {
  border-bottom: none;
  border-top: 1px solid #d0d0d0;
}
#sbLineEditor .sbQuoteTotalContainer header > h1,
#sbLineEditor .sbGroupTotalContainer header > h1 {
  font-size: 14px;
  margin-top: 15px;
}
#sbLineEditor .sbGroupTotalContainer {
  margin-top: 50px;
}
#sbLineEditor .sbGroup {
  margin-top: 10px;
}
#sbLineEditor .sbGroup .sbGroupHeader {
  height: 50px;
  float: left;
}
#sbLineEditor .sbGroup .sbGroupHeader > h2,
#sbLineEditor .sbGroup .sbGroupHeader > input {
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor .sbGroup .sbGroupHeader > h2 {
  margin: 0;
  font-size: 21px;
}
#sbLineEditor .sbGroup .sbGroupHeader > input {
  display: none;
  height: 40px;
  width: 200px;
  padding: 5px;
}
#sbLineEditor .sbGroup .sbGroupHeader > span {
  font-size: 1.3em;
  display: inline-block;
  vertical-align: bottom;
}
#sbLineEditor .sbGroup .sbGroupButtons {
  float: right;
}
#sbLineEditor .sbGroup .sbDescriptionField {
  margin: 20px 0 40px;
  font-size: 14px;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer {
  padding: 5px;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer .sbGroupFields .sbGroupField {
  display: block;
  white-space: nowrap;
  margin-bottom: 15px;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer .sbGroupFields .sbGroupField label {
  display: inline;
  font-size: 14px;
  color: #16325C;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer .sbGroupFields .sbGroupField input[type='checkbox'] {
  vertical-align: middle;
}
#sbLineEditor .sbGroup .multiSegment.sbTable,
#sbLineEditor .sbGroup .standard.sbTable {
  margin-top: 30px;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > thead > th span,
#sbLineEditor .sbGroup .standard.sbTable > thead > th span {
  color: #16325C;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td {
  height: 55px;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions {
  white-space: nowrap;
  text-align: left;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions .icon-utility-chevronright,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions .icon-utility-chevronright,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions .icon-utility-down,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions .icon-utility-down {
  width: 30px;
  font-size: 17px;
  color: #0070D2;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions ul,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions ul ul,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions ul ul {
  display: none;
  top: 100%;
  left: 0;
  width: 100%;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions ul li span.sf-icon-down.open + ul,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions ul li span.sf-icon-down.open + ul {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li {
  margin: 10px 0;
  padding: 10px;
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.sbBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.sbBtn {
  height: auto;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.menu,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.menu {
  border: 1px solid #c0c0c0;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.menu li,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.menu li {
  border: none;
  margin: 0;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.menu li:first-of-type,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.menu li:first-of-type {
  margin-top: 10px;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions .sbAction.action,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions .sbAction.action {
  display: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .addToFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .addToFavBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .removeFromFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .removeFromFavBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .deleteBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .deleteBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .cloneBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .cloneBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable.favorite .addToFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable.favorite .addToFavBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable:not(.favorite) .removeFromFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable:not(.favorite) .removeFromFavBtn {
  display: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions:not(.component) .cloneBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions:not(.component) .cloneBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.configurable .reconfigureBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.configurable .reconfigureBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable .desegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable .desegmentBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable .resegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable .resegmentBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable.segmented .resegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable.segmented .resegmentBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable:not(.segmented) .desegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable:not(.segmented) .desegmentBtn {
  display: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.dsEditable .viewDSBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.dsEditable .viewDSBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td .sb-icon-level-down,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td .sb-icon-level-down {
  color: #888;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tfoot > tr.sbTotalRow > td,
#sbLineEditor .sbGroup .standard.sbTable > tfoot > tr.sbTotalRow > td {
  font-weight: bold;
}
#sbLineEditor .sbBundleOption {
  color: #696969;
}
#sbLineEditor .sbIndent2 {
  padding-left: 15px;
}
#sbLineEditor .sbIndent3 {
  padding-left: 30px;
}
#sbLineEditor .sbIndent4 {
  padding-left: 45px;
}
#sbLineEditor .sbIndent5 {
  padding-left: 60px;
}
#sbLineEditor .sbIndent6 {
  padding-left: 75px;
}
#sbLineEditor .sbIndent7 {
  padding-left: 90px;
}
#sbLineEditor .sbIndent8 {
  padding-left: 105px;
}
#sbLineEditor .sbIndent9 {
  padding-left: 120px;
}
#sbLineEditor .sbIndent10 {
  padding-left: 135px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal {
  overflow: auto;
  margin: 0;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header {
  margin-bottom: 25px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header > h3,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header > h3 {
  font-size: 21px;
  width: 100%;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header .sbButtons,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header .sbButtons {
  width: 100%;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header .sbButtons > .sbBtn,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header .sbButtons > .sbBtn {
  display: inline-block;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header .sbButtons > .sbBtn:not(:first-of-type),
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header .sbButtons > .sbBtn:not(:first-of-type) {
  margin-top: 0;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors {
  margin-bottom: 25px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors > div,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors > div {
  padding-top: 10px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors > div > span,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors > div > span,
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors > div > div,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors > div > div {
  display: inline;
  color: #c00;
  font-size: 14px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbTable i,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbTable i {
  padding-right: 10px;
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor #sbFavoritesModal header {
  margin-bottom: 25px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors {
  margin-bottom: 25px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div {
  padding-top: 10px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > span,
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > div {
  display: inline;
  color: #c00;
  font-size: 14px;
}
#sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td {
  border-bottom: none;
}
#sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td:first-of-type {
  width: 15%;
  padding-left: 15px;
}
#sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td #sbFavoriteName {
  width: 300px;
}
#sbLineEditor .editedMSLine.sbTable {
  width: 75%;
  margin: 30px auto 0;
}
#sbLineEditor .editedMSLine.sbTable tbody > tr > td {
  height: 55px;
}
#sbLineEditor .editedMSLine.sbTable > thead > tr > th:first-of-type,
#sbLineEditor .editedMSLine.sbTable > tbody > tr > td:first-of-type {
  padding-left: 150px;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msSummaryRow i {
  padding-left: 25px;
  font-size: 21px;
  vertical-align: text-bottom;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td {
  background-color: #f7f7f7;
  border: none;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td select {
  width: inherit;
  margin-left: 5px;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td.label {
  padding-left: 150px;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.sbTotalRow > td {
  padding-top: 10px;
  text-transform: uppercase;
  font-weight: bold;
}
#sbLineEditor .recordEditorForm > header > h3 {
  font-size: 21px;
}
#sbLineEditor .recordEditorForm .sbLineActions {
  display: inline;
}
#sbLineEditor .recordEditorForm > .buttonContainer {
  margin: 0;
}
#sbLineEditor .sbLineNumber.dataCell {
  white-space: nowrap;
}
#sbLineEditor .sbLineNumber.dataCell span {
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor .sbLineNumber.dataCell .sbLineError span {
  white-space: initial;
  margin: 20px 5px;
}
#sbLineEditor #sbPricebookModal {
  text-align: center;
}
#sbLineEditor #sbPricebookModal select {
  width: 250px;
  margin: 25px 0;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbLineEditor {
    padding: 5px;
  }
  #sbLineEditor .sbMobileTabs {
    font-size: 10px;
    margin: 10px 0;
  }
  #sbLineEditor .sbPhoneTab.sbBtn {
    padding: 10px;
    margin: 0 0 15px 0;
  }
  #sbLineEditor .sbPhoneTab.sbBtn.selected {
    background-color: #F4F6F9;
  }
  #sbLineEditor .sbPhoneTab.sbBtn > span {
    text-transform: uppercase;
    display: inline-block;
    vertical-align: middle;
  }
  #sbLineEditor .sbPhoneTab.sbBtn > span.sf-icon-edit {
    position: absolute;
    right: 15px;
    visibility: hidden;
  }
  #sbLineEditor .sbPhoneTab.sbBtn > span.sf-icon-edit.visible {
    visibility: visible;
  }
  #sbLineEditor .sbGroupNames > div {
    padding: 10px;
  }
  #sbLineEditor .sbGroup .sbGroupHeader,
  #sbLineEditor .sbGroup .sbGroupButtons {
    display: inline-block;
  }
  #sbLineEditor .sbGroup .sbGroupHeader {
    float: left;
  }
  #sbLineEditor .sbGroup .sbGroupHeader > h2 {
    padding-top: 5px;
  }
  #sbLineEditor .recordEditorForm > header {
    text-align: center;
  }
  #sbLineEditor .multiSegment.sbTable,
  #sbLineEditor .standard.sbTable {
    margin-bottom: 15px;
  }
  #sbLineEditor .editedMSLine.sbTable {
    width: 90%;
  }
  #sbLineEditor .editedMSLine.sbTable > thead > tr > th:first-of-type,
  #sbLineEditor .editedMSLine.sbTable > tbody > tr > td:first-of-type {
    padding-left: 15px;
  }
  #sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td.label {
    padding-left: 15px;
  }
  #sbLineEditor .sbDiscountScheduleModal .sbButtons {
    width: 100%;
  }
  #sbLineEditor .sbDiscountScheduleModal .message {
    margin-top: 5px;
    margin-bottom: 5px;
  }
  #sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td:first-of-type {
    white-space: nowrap;
    padding-left: 0;
  }
  #sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td #sbFavoriteName {
    width: 200px;
  }
}
#sbProductSearch {
  padding: 15px;
  font-size: 14px;
}
#sbProductSearch .sbPageBlock {
  padding-top: 85px;
}
#sbProductSearch .sbProductFilters > button,
#sbProductSearch .sbProductFilters > .sbTable {
  display: inline-block;
}
#sbProductSearch .sbProductFilters > button {
  vertical-align: bottom;
  margin-bottom: 3px;
}
#sbProductSearch .sbProductFilters > .sbTable {
  width: inherit;
}
#sbProductSearch .sbProductFilters > .sbTable > thead > tr > td {
  padding: 0 5px;
}
#sbProductSearch .sbProductFilters > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbProductSearch .sbGuidedSelling > button,
#sbProductSearch .sbGuidedSelling > .sbTable {
  display: inline-block;
}
#sbProductSearch .sbGuidedSelling > button {
  vertical-align: bottom;
  margin-bottom: 3px;
}
#sbProductSearch .sbGuidedSelling > .sbTable {
  width: inherit;
}
#sbProductSearch .sbGuidedSelling > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbProductSearch .sbProductsTableContainer {
  overflow-x: auto;
}
#sbProductSearch .sbProductsTableContainer .sbProducts {
  margin-top: 20px;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td {
  border-bottom: none;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages {
  margin-top: 25px;
  text-align: center;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn {
  font-size: 1.4em;
  padding: 9px 10px 11px;
  color: #0070D2;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn.sb-icon-left-dir,
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn.sb-icon-right-dir {
  font-size: 1.6em;
  padding: 8px 8px 9px;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn.disabled {
  background-color: #fff;
  color: #888;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages .sbPageSelector {
  padding: 0 10px;
  display: inline-block;
  vertical-align: middle;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages .sbPageSelector > input {
  width: 45px;
  text-align: center;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbProductSearch .sbProductFilters {
    margin-top: 30px;
  }
  #sbProductSearch .sbProductFilters label {
    margin-top: 5px;
  }
  #sbProductSearch .sbProductFilters button {
    margin: 20px 0 0 0;
  }
  #sbProductSearch .sbGuidedSelling {
    margin-top: 30px;
  }
  #sbProductSearch .sbGuidedSelling label {
    margin-top: 5px;
  }
  #sbProductSearch .sbGuidedSelling button {
    margin: 20px 0 0 0;
  }
  #sbProductSearch .sbProductsTableContainer table.sbProducts > tfoot > tr.sbProductPages > td {
    padding-left: 0;
  }
  #sbProductSearch .sbProductsTableContainer table.sbProducts > tfoot > tr.sbProductPages > td .sbPages {
    text-align: left;
  }
  #sbProductSearch .sbProductsTableContainer table.sbProducts > tfoot > tr.sbProductPages > td .sbPages .sbBtn:first-of-type {
    margin-left: 0;
  }
}
#sbProductConfigurator {
  padding: 15px;
  font-size: 14px;
}
#sbProductConfigurator .sbPageTitleTable > .sbPageTitleRight {
  margin-top: 7px;
}
#sbProductConfigurator .sbPageTitleTable > .sbPageTitleLeft .sf-icon-custom_apps {
  background-color: #8199af;
}
#sbProductConfigurator .sbFeatures,
#sbProductConfigurator .sbAddOptionDialog {
  margin-top: 75px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .sbConfigProductName {
  margin-bottom: 0;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct:not(:first-of-type) .sbConfigProductName {
  margin-top: 45px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group h3 {
  margin-top: 25px;
  margin-bottom: 3px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group .featureInstructions {
  padding-bottom: 15px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group .sbFeatureOptions {
  overflow-x: auto;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group .sbAddOptionContainer {
  margin-top: 15px;
}
#sbProductConfigurator .sbFeatures .requiresConfiguration {
  border-left: #c00 solid;
}
#sbProductConfigurator .sbAddOptionDialog > .sbTitleContainer > h2 {
  margin-bottom: 5px;
}
#sbProductConfigurator .sbDataCol {
  padding: 5px 0;
}
#sbProductConfigurator .configTable.sbTable {
  margin-top: 15px;
}
#sbProductConfigurator .configTable.sbTable td {
  padding: 15px;
  border-bottom: none;
}
#sbProductConfigurator .configTable.sbTable td.sbLabelCol {
  text-align: right;
}
#sbProductConfigurator .configTable.sbTable td.sbLabelCol > label {
  padding-bottom: 0;
}
#sbProductConfigurator .configTable.sbTable td.sbDataCol select {
  width: 150px;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbProductConfigurator .sbFeatures,
  #sbProductConfigurator .sbAddOptionDialog {
    margin-top: 115px;
  }
}
#sbAssetSearch .sbPageBlock {
  padding-top: 100px;
}
#sbAssetSearch .sbProductFilters > .sbTable {
  width: inherit;
}
#sbAssetSearch .sbAssets {
  margin-top: 20px;
}
#sbAssetSearch .sbProductFilters > .sbTable {
  display: inline-block;
}
#sbAssetSearch .sbProductFilters > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbAssetSearch .sbProductFilters > button {
  display: inline-block;
  margin-bottom: 5px;
  vertical-align: bottom;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbAssetSearch .sbAssetFilter {
    margin-top: 30px;
  }
  #sbAssetSearch .sbAssetFilter label {
    margin-top: 5px;
  }
  #sbAssetSearch .sbAssetFilter button {
    margin: 20px 0 0 0;
  }
}
#sbSubscriptionSearch .sbPageBlock {
  padding-top: 100px;
}
#sbSubscriptionSearch .sbProductFilters > .sbTable {
  width: inherit;
}
#sbSubscriptionSearch .sbSubscriptions {
  margin-top: 20px;
}
#sbSubscriptionSearch .sbProductFilters > .sbTable {
  display: inline-block;
}
#sbSubscriptionSearch .sbProductFilters > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbSubscriptionSearch .sbProductFilters > button {
  display: inline-block;
  margin-bottom: 5px;
  vertical-align: bottom;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbSubscriptionSearch .sbSubscriptionFilter {
    margin-top: 30px;
  }
  #sbSubscriptionSearch .sbSubscriptionFilter label {
    margin-top: 5px;
  }
  #sbSubscriptionSearch .sbSubscriptionFilter button {
    margin: 20px 0 0 0;
  }
}
/*
Document Generation Preview page

Previews a document in the browser with chosen template, additional docs, etc.
*/
#sbDocGenPreview,
#sbDocGenOptions {
  padding: 15px;
  font-size: 14px;
  /** Phone Styles */
}
#sbDocGenPreview .sbPreview,
#sbDocGenOptions .sbPreview {
  margin-top: 75px;
}
#sbDocGenPreview .sbPreview [class^=sf-icon],
#sbDocGenOptions .sbPreview [class^=sf-icon] {
  font-size: 17px;
  padding: 5px;
}
#sbDocGenPreview .sbPreview > .buttonContainer,
#sbDocGenOptions .sbPreview > .buttonContainer,
#sbDocGenPreview .sbPreview .sf-icon-zoomout,
#sbDocGenOptions .sbPreview .sf-icon-zoomout {
  padding-left: 15px;
}
#sbDocGenPreview .sbPreview > .documentPreviewContainer,
#sbDocGenOptions .sbPreview > .documentPreviewContainer {
  margin-left: -15px;
  top: 145px;
}
#sbDocGenPreview .sbDocOptionsContainer,
#sbDocGenOptions .sbDocOptionsContainer {
  margin-top: 75px;
}
#sbDocGenPreview .sbDocOptionsContainer .pbSubsection,
#sbDocGenOptions .sbDocOptionsContainer .pbSubsection {
  margin-top: 15px;
}
#sbDocGenPreview .sbDocOptionsContainer .pbSubsection > header > h1,
#sbDocGenOptions .sbDocOptionsContainer .pbSubsection > header > h1 {
  font-size: 28px;
  margin-bottom: 15px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox {
  padding: 15px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > thead > tr > th,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > thead > tr > th {
  text-align: center;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3),
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3) {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul {
  width: 250px;
  min-height: 300px;
  overflow: auto;
  padding-left: 8px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li {
  padding: 8px;
  white-space: nowrap;
  list-style-type: none;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.required,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.required {
  color: #af2626;
  font-weight: bold;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.selected,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.selected {
  color: #fff;
  background-color: #0070D2;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a {
  color: inherit;
  padding: 5px;
  margin: 0 8px;
  display: block;
  border: 1px solid #D8DDE6;
  border-bottom: 0px;
  text-align: center;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sf-icon],
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sf-icon] {
  font-size: 17px;
  padding: 5px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon],
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon] {
  font-size: 22px;
  padding: 5px;
  color: #3d3e3f;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon-to-end]:before,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(-90deg);
  -moz-transform: rotate(-90deg);
  -ms-transform: rotate(-90deg);
  transform: rotate(-90deg);
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:nth-child(4) [class^=sb-icon-to-end]:before,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:nth-child(4) [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:first-of-type,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:first-of-type {
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:last-of-type,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:last-of-type {
  border-bottom: 1px solid #D8DDE6;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbDocGenPreview .sbPreview,
  #sbDocGenOptions .sbPreview,
  #sbDocGenPreview .sbDocOptionsContainer,
  #sbDocGenOptions .sbDocOptionsContainer {
    margin-top: 115px;
  }
  #sbDocGenPreview .sbPreview > .documentPreviewContainer,
  #sbDocGenOptions .sbPreview > .documentPreviewContainer,
  #sbDocGenPreview .sbDocOptionsContainer > .documentPreviewContainer,
  #sbDocGenOptions .sbDocOptionsContainer > .documentPreviewContainer {
    top: 185px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .pbSubsection > header > h1,
  #sbDocGenOptions .sbDocOptionsContainer .pbSubsection > header > h1 {
    font-size: 24px;
    margin-bottom: 0;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox {
    padding-top: 5px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td {
    display: block;
    padding: 10px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3) {
    border: none;
    text-align: center;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4) {
    text-align: center;
    font-weight: bold;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(5),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(5) {
    border: 1px solid #D8DDE6;
    border-radius: 3px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul {
    margin: 0;
    text-align: left;
    height: 120px;
    min-height: 120px;
    overflow: auto;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a {
    display: inline-block;
    margin: 0 2px;
    border: 1px solid #D8DDE6;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon],
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon] {
    font-size: 17px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4) {
    text-align: center;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(1),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(1),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(4),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(4) {
    padding-bottom: 7px;
  }
}
/*
Document Generation options

Choices for document generation such as template, output format, etc.
*/
#sbDocGenOptions td {
  padding-bottom: 5px;
}
#sbDocGenOptions td > label {
  padding-bottom: 0;
}
#sbNewRelatedContent .sbBody {
  margin-top: 85px;
}
#sbNewRelatedContent .sbBody fieldset {
  border: none;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbNewRelatedContent .sbBody {
    margin-top: 125px;
  }
}
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbAmendContract .sbPageTitle > .sbPageTitleTable > .sbPageTitleRight {
    display: block;
    text-align: center;
  }
  #sbAmendContract .sbPageTitle > .sbPageTitleTable > .sbPageTitleRight .sbButtons {
    float: none;
  }
}
#sbFavoritesManager {
  padding: 15px;
  font-size: 14px;
}
#sbFavoritesManager .sbPageBlock {
  padding-top: 85px;
}
#sbFavoritesManager .topMsg {
  text-align: center;
  display: block;
  font-weight: normal;
  padding: 32px;
}
#sbFavoritesManager .botMsg {
  text-align: center;
  display: block;
  font-weight: normal;
  padding: 0 32px;
}
#sbFavoritesManager .sbFavoritesTableContainer {
  overflow-x: auto;
}
#sbFavoritesManager .sbFavoritesTableContainer .sbFavorites {
  margin-top: 20px;
}
#sbFavoritesManager .modalDialog {
  top: 100px;
  max-width: 440px;
  overflow: visible;
}
#sbFavoritesManager .modalDialog header {
  text-align: center;
  border-bottom: 2px solid #D8DDE6;
}
#sbFavoritesManager .modalDialog header .sb-icon-star {
  display: inline-block;
  color: black;
  margin: 0 0;
}
#sbFavoritesManager .modalDialog header h2 {
  display: inline-block;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer {
  padding: 1px 14px;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer input {
  margin: 0 0;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer .sbTable > tbody > tr > td {
  border: 0;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer .sbTable .sbActions {
  width: 1%;
  text-align: left;
  white-space: nowrap;
}
#sbFavoritesManager .modalDialog .sbModalFooter {
  border-top: 2px solid #D8DDE6;
  background-color: #F4F6F9;
  padding: 12px 16px;
  text-align: right;
}
#sbFavoritesManager .modalDialog .sbModalFooter .sbButtons {
  padding: 0 2px;
}
#sbFavoritesManager .modalDialog .sbModalFooter input {
  margin: 0;
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
}
#sbFavoritesManager .sbValidationErrors span {
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
/** Phone Styles */

/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIm1vYmlsZU9sZC5sZXNzIiwiaWNvbnMubGVzcyIsIm1peGlucy5sZXNzIiwiYmFzZU1vYmlsZS5sZXNzIiwiLi4vLi4vcXVvdGVzL2xpbmVFZGl0b3JNb2JpbGUubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RMb29rdXBNb2JpbGUubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RDb25maWd1cmF0b3JNb2JpbGUubGVzcyIsIi4uLy4uL2Fzc2V0cy9hc3NldExvb2t1cE1vYmlsZS5sZXNzIiwiLi4vLi4vc3Vic2NyaXB0aW9ucy9zdWJzY3JpcHRpb25Mb29rdXBNb2JpbGUubGVzcyIsIi4uLy4uL2RvY2dlbi9wcmV2aWV3TW9iaWxlLmxlc3MiLCIuLi8uLi9xdW90ZXMvbmV3UmVsYXRlZENvbnRlbnRNb2JpbGUubGVzcyIsIi4uLy4uL2NvbnRyYWN0cy9hbWVuZENvbnRyYWN0TW9iaWxlLmxlc3MiLCIuLi8uLi9mYXZvcml0ZXMvZmF2b3JpdGVzTWFuYWdlck1vYmlsZS5sZXNzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFFQTtFQUNDO0lBQUksbUJBQWtCLFlBQWxCOztFQUNKO0lBQU0sbUJBQWtCLGNBQWxCOzs7QUFHUDtFQUNDO0lBQUksV0FBVSxZQUFWOztFQUNKO0lBQU0sV0FBVSxjQUFWOzs7QUFHUDtFQUNDO0lBQUksV0FBVSxZQUFWOztFQUNKO0lBQU0sV0FBVSxjQUFWOzs7QUFHUDtFQUNDLDJDQUFBO0VBQ0EsY0FBQTtFQUNBLG1DQUFBOztBQUdEO0FBQUcsQ0FBQztBQUFTLENBQUM7RUFDYiwyQkFBQTtFQUNBLDhCQUFBO0VBQ0Esc0JBQUE7O0FBR0Q7RUFDQyxZQUFBO0VBQ0EsV0FBQTs7QUFHRCxhQUFjO0VBQ2IsUUFBQTtFQUNBLGlCQUFBO0VBQ0Esa0JBQUE7RUFDQSxrQkFBQTtFQUNBLGFBQUE7RUFDQSxzQkFBQTtFQUNBLHdCQUFBO0VBQ0MsMEJBQUE7RUFDQSxxQkFBQTs7QUFHRixhQUFjLE9BQU87RUFDcEIsV0FB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QTtFQUNBLHFCQUFBO0VBQ0EseUJBQUE7RUFDQSxVQUFBIiwiZmlsZSI6Im1vYmlsZS5jc3MiLCJzb3VyY2VzQ29udGVudCI6WyIvKioqIENvbW1vbiAqKiovXG5cbkAtd2Via2l0LWtleWZyYW1lcyBsb2FkaW5nLXJvdGF0ZSB7XG5cdDAlIHstd2Via2l0LXRyYW5zZm9ybTpyb3RhdGUoMGRlZyk7fVxuXHQxMDAlIHstd2Via2l0LXRyYW5zZm9ybTpyb3RhdGUoMzYwZGVnKTt9XG59XG5cbkAtbW96LWtleWZyYW1lcyBsb2FkaW5nLXJvdGF0ZSB7XG5cdDAlIHt0cmFuc2Zvcm06cm90YXRlKDBkZWcpO31cblx0MTAwJSB7dHJhbnNmb3JtOnJvdGF0ZSgzNjBkZWcpO31cbn1cblxuQGtleWZyYW1lcyBsb2FkaW5nLXJvdGF0ZSB7XG5cdDAlIHt0cmFuc2Zvcm06cm90YXRlKDBkZWcpO31cblx0MTAwJSB7dHJhbnNmb3JtOnJvdGF0ZSgzNjBkZWcpO31cbn1cblxuKiB7XG5cdGZvbnQtZmFtaWx5OiBQcm94aW1hTm92YSwgQXJpYWwsIHNhbnMtc2VyaWY7XG5cdGNvbG9yOiAjM2MzZDNlO1xuXHQtd2Via2l0LWZvbnQtc21vb3RoaW5nOiBhbnRpYWxpYXNlZDtcbn1cblxuKiwgKjpiZWZvcmUsICo6YWZ0ZXIge1xuXHQtbW96LWJveC1zaXppbmc6IGJvcmRlci1ib3g7XG5cdC13ZWJraXQtYm94LXNpemluZzogYm9yZGVyLWJveDtcblx0Ym94LXNpemluZzogYm9yZGVyLWJveDtcbn1cblxuYm9keSB7XG5cdHBhZGRpbmc6IDBweDtcblx0bWFyZ2luOiAwcHg7XG59XG5cbi5wYlN1YnNlY3Rpb24gaGVhZGVyIHtcblx0Knpvb206IDE7XG5cdG1hcmdpbi1sZWZ0OiAtN3B4O1xuXHRtYXJnaW4tcmlnaHQ6IC03cHg7XG5cdG1hcmdpbi1ib3R0b206IDVweDtcblx0cGFkZGluZzogMTRweDtcblx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0Ym9yZGVyLWJvdHRvbS13aWR0aDogMXB4O1xuXHRcdGJvcmRlci1ib3R0b20tc3R5bGU6IHNvbGlkO1xuXHRcdGJvcmRlci1jb2xvcjogI2VjZWVmMDtcbn1cblxuLnBiU3Vic2VjdGlvbiBoZWFkZXIgaDEge1xuXHRtYXJnaW46IDBweDtcblx0Lypmb250LXdlaWdodDogMzAwOyovXG5cdGZvbnQtc2l6ZTogMTRweDtcblx0Y29sb3I6ICMzYzNkM2U7XG59XG5cbi5wYlN1YnNlY3Rpb24gbGFiZWwge1xuXHR0ZXh0LWFsaWduOiBsZWZ0O1xufVxuXG5oZWFkZXIucGFnZUhlYWRlciB7XG5cdG1hcmdpbjogMHB4O1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiB3aGl0ZTtcblx0Ym9yZGVyLWJvdHRvbS13aWR0aDogMXB4O1xuXHRib3JkZXItYm90dG9tLXN0eWxlOiBzb2xpZDtcblx0Ym9yZGVyLWNvbG9yOiAjY2ZkNGQ5O1xuXHRwYWRkaW5nLXRvcDogM3B4O1xuXHRwYWRkaW5nLWJvdHRvbTogM3B4O1xuXHR3aWR0aDogMTAwJTtcbn1cblxuaGVhZGVyLnBhZ2VIZWFkZXIgaDEge1xuXHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdGZvbnQtd2VpZ2h0OiAxMDA7XG5cdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG59XG5cbmhlYWRlci5wYWdlSGVhZGVyIGgxIC50aXRsZSB7XG5cdGRpc3BsYXk6IGJsb2NrO1xuXHRmb250LXNpemU6IDEycHg7XG59XG5cbmhlYWRlci5wYWdlSGVhZGVyIGgxIC5zdWJ0aXRsZSB7XG5cdGRpc3BsYXk6IGJsb2NrO1xuXHRmb250LXNpemU6IDE0cHg7XG59XG5cbi5pY29uIHtcblx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdGJhY2tncm91bmQtcG9zaXRpb246IDUwJTtcblx0YmFja2dyb3VuZC1yZXBlYXQ6IG5vLXJlcGVhdDtcblx0Ym9yZGVyLXJhZGl1czogNXB4O1xuXHR3aWR0aDogMzBweDtcblx0XHRoZWlnaHQ6IDMwcHg7XG5cdGJhY2tncm91bmQtc2l6ZTogMTAwJTtcblx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0bWFyZ2luLWxlZnQ6IDE0cHg7XG5cdFx0bWFyZ2luLXJpZ2h0OiAxNHB4O1xufVxuXG4uaWNvbkN1c3RvbTE4IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNGRjYTc2O1xuXHRcdGJhY2tncm91bmQtaW1hZ2U6IHVybCgnL2ltZy9pY29uL3Q0L2N1c3RvbS9jdXN0b20xOF82MC5wbmcnKTtcblx0fVxuXG5pbnB1dCwgdGV4dGFyZWEsIGtleWdlbiwgc2VsZWN0LCBidXR0b24sIGlzaW5kZXgge1xuXHRtYXJnaW46IDA7XG5cdGZvbnQ6IC13ZWJraXQtc21hbGwtY29udHJvbDtcblx0Zm9udC1zaXplOiAxNXB4O1xuXHRmb250LWZhbWlseTogaW5oZXJpdDtcblx0Y29sb3I6IGluaXRpYWw7XG5cdGxldHRlci1zcGFjaW5nOiBub3JtYWw7XG5cdHdvcmQtc3BhY2luZzogbm9ybWFsO1xuXHR0ZXh0LXRyYW5zZm9ybTogbm9uZTtcblx0dGV4dC1pbmRlbnQ6IDBweDtcblx0dGV4dC1zaGFkb3c6IG5vbmU7XG5cdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0dGV4dC1hbGlnbjogc3RhcnQ7XG5cdGJveC1zaXppbmc6IGJvcmRlci1ib3g7XG5cdGNvbG9yOiAjM2MzZDNlO1xuXHRwYWRkaW5nOiA3cHggMTRweDtcblx0bGluZS1oZWlnaHQ6IDI1cHg7XG5cdGJvcmRlci1yYWRpdXM6IDVweDtcblx0Ym9yZGVyOiAxcHggc29saWQgI2NmZDBkMjtcblx0LXdlYmtpdC13cml0aW5nLW1vZGU6IGhvcml6b250YWwtdGI7XG5cdC1tb3otYXBwZWFyYW5jZTogbm9uZTtcblx0LXdlYmtpdC1hcHBlYXJhbmNlOiBub25lO1xuXHQtbXMtYXBwZWFyYW5jZTogbm9uZTtcblxufVxuXG5pbnB1dCB7XG5cdGJvcmRlcjogMXB4IHNvbGlkICNjZmQwZDI7XG5cdGJvcmRlci1yYWRpdXM6IDNweDtcblx0YmFja2dyb3VuZC1jb2xvcjogQHNiUGFnZUJnQ29sb3I7XG5cdGJveC1zaGFkb3c6IGluc2V0IDAgMnB4IDJweCByZ2JhKDAsMCwwLC4wNyk7XG5cdC13ZWJraXQtdGFwLWhpZ2hsaWdodC1jb2xvcjogcmdiYSgwLCAwLCAwLCAwKTtcbn1cblxubGFiZWwge1xuXHRmb250LXNpemU6IDEzcHg7XG5cdGNvbG9yOiAjNjk2ZTcxO1xuXHRtYXJnaW46IDA7XG5cdHBhZGRpbmctYm90dG9tOiA1cHg7XG5cdGRpc3BsYXk6IGJsb2NrO1xufVxuXG50ZXh0YXJlYSB7XG5cdC13ZWJraXQtcnRsLW9yZGVyaW5nOiBsb2dpY2FsO1xuXHQtd2Via2l0LXVzZXItc2VsZWN0OiB0ZXh0O1xuXHRmbGV4LWRpcmVjdGlvbjogY29sdW1uO1xuXHRjdXJzb3I6IGF1dG87XG5cdHdoaXRlLXNwYWNlOiBwcmUtd3JhcDtcblx0d29yZC13cmFwOiBicmVhay13b3JkO1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQYWdlQmdDb2xvcjtcblx0Ym94LXNoYWRvdzogaW5zZXQgMCAycHggMnB4IHJnYmEoMCwwLDAsLjA3KTtcbn1cblxuaW5wdXRbdHlwZT1cImNoZWNrYm94XCJdLCBpbnB1dFt0eXBlPVwicmFkaW9cIl0ge1xuXHRwYWRkaW5nOiAwcHg7XG5cdFx0Ym9yZGVyLXN0eWxlOiBzb2xpZDtcblx0XHRib3JkZXItd2lkdGg6IDFweDtcblx0XHRoZWlnaHQ6IDIycHg7XG5cdFx0d2lkdGg6IDIycHg7XG5cdFx0Ym9yZGVyLWNvbG9yOiAjYmJjMGM0O1xuXHRcdGJveC1zaGFkb3c6IDAgMXB4IDAgcmdiYSgwLCAwLCAwLCAwLjAyKSwgaW5zZXQgMCAwIDAgMnB4IHJnYmEoMjU1LCAyNTUsIDI1NSwgMC41KTtcbn1cblxuaW5wdXRbdHlwZT1cImNoZWNrYm94XCJdOmRpc2FibGVkLCBpbnB1dFt0eXBlPVwicmFkaW9cIl06ZGlzYWJsZWQge1xuXHRvcGFjaXR5OiAwLjQ7XG59XG5cbmlucHV0W3R5cGU9XCJjaGVja2JveFwiXTpmb2N1cywgaW5wdXRbdHlwZT1cImNoZWNrYm94XCJdOmFjdGl2ZSwgaW5wdXRbdHlwZT1cInJhZGlvXCJdOmZvY3VzLCBpbnB1dFt0eXBlPVwicmFkaW9cIl06YWN0aXZlIHtcblx0YmFja2dyb3VuZDogI2U4ZWFlYjtcbn1cblxuaW5wdXRbdHlwZT1cImNoZWNrYm94XCJdOmNoZWNrZWQsIGlucHV0W3R5cGU9XCJyYWRpb1wiXTpjaGVja2VkIHtcblx0Ym9yZGVyLWNvbG9yOiAjMWM3OGIxO1xuXHRiYWNrZ3JvdW5kOiAjMmE5NGQ2ICFpbXBvcnRhbnQ7XG5cdGJveC1zaGFkb3c6IDAgMXB4IDAgcmdiYSgwLCAwLCAwLCAwLjAyKTtcbn1cblxuaW5wdXRbdHlwZT1cImNoZWNrYm94XCJdOmNoZWNrZWQ6OmFmdGVyIHtcblx0ZGlzcGxheTogYmxvY2s7XG5cdHBvc2l0aW9uOiByZWxhdGl2ZTtcblx0Y29udGVudDogJyc7XG5cdGxlZnQ6IDNweDtcblx0dG9wOiA0cHg7XG5cdGhlaWdodDogOHB4O1xuXHR3aWR0aDogMTRweDtcblx0Ym9yZGVyLWJvdHRvbTogNHB4IHNvbGlkIHdoaXRlO1xuXHRib3JkZXItbGVmdDogNHB4IHNvbGlkIHdoaXRlO1xuXHQtd2Via2l0LXRyYW5zZm9ybTogcm90YXRlKC00NWRlZyk7XG59XG5cbmlucHV0W3R5cGU9XCJyYWRpb1wiXTpjaGVja2VkOjphZnRlciB7XG5cdGRpc3BsYXk6IGJsb2NrO1xuXHRwb3NpdGlvbjogcmVsYXRpdmU7XG5cdGNvbnRlbnQ6ICcnO1xuXHRsZWZ0OiA1cHg7XG5cdHRvcDogNXB4O1xuXHRoZWlnaHQ6IDEwcHg7XG5cdHdpZHRoOiAxMHB4O1xuXHRib3JkZXItcmFkaXVzOiAxMDAlO1xuXHRiYWNrZ3JvdW5kOiB3aGl0ZTtcbn1cblxuaW5wdXQuaW52YWxpZERhdGUge1xuXHRib3JkZXItY29sb3I6ICNjMDA7XG59XG5cbnNlbGVjdCB7XG4gICAgbWluLXdpZHRoOiA1MHB4O1xuICAgIHBhZGRpbmc6IDdweCAxNHB4O1xuICAgIG1hcmdpbi1sZWZ0OiAzcHg7XG4gICAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCdkYXRhOmltYWdlL3N2Zyt4bWw7YmFzZTY0LFBITjJaeUI0Yld4dWN6MGlhSFIwY0RvdkwzZDNkeTUzTXk1dmNtY3ZNakF3TUM5emRtY2lJSGh0Ykc1ek9uaHNhVzVyUFNKb2RIUndPaTh2ZDNkM0xuY3pMbTl5Wnk4eE9UazVMM2hzYVc1cklpQjJaWEp6YVc5dVBTSXhMakVpSUdsa1BTSk1ZWGxsY2w4eElpQjRQU0l3Y0hnaUlIazlJakJ3ZUNJZ2RtbGxkMEp2ZUQwaU1DQXdJREkzTGpZZ01qRWlJR1Z1WVdKc1pTMWlZV05yWjNKdmRXNWtQU0p1WlhjZ01DQXdJREkzTGpZZ01qRWlJSGh0YkRwemNHRmpaVDBpY0hKbGMyVnlkbVVpUGcwS0lDQThaejROQ2lBZ0lDQThaR1ZtY3o0TkNpQWdJQ0FnSUR4d1lYUm9JR2xrUFNKVFZrZEpSRjh4WHlJZ1pEMGlUVFV1TmlBMWFERTJMalJqTUM0MElEQWdNQzQ0SURBdU5pQXdMalFnTVd3dE9DQTVMamhqTFRBdU15QXdMak10TUM0NUlEQXVNeTB4TGpJZ01Hd3RPQzA1TGpoRE5DNDRJRFV1TmlBMUxqRWdOU0ExTGpZZ05Yb2lMejROQ2lBZ0lDQThMMlJsWm5NK0RRb2dJQ0FnUEdOc2FYQlFZWFJvSUdsa1BTSlRWa2RKUkY4eVh5SStEUW9nSUNBZ0lDQThkWE5sSUhoc2FXNXJPbWh5WldZOUlpTlRWa2RKUkY4eFh5SWdiM1psY21ac2IzYzlJblpwYzJsaWJHVWlMejROQ2lBZ0lDQThMMk5zYVhCUVlYUm9QZzBLSUNBZ0lEeHlaV04wSUhnOUlqQWlJSGs5SWpBaUlHTnNhWEF0Y0dGMGFEMGlkWEpzS0NOVFZrZEpSRjh5WHlraUlHWnBiR3c5SWlNMU5UWTVPRVFpSUhkcFpIUm9QU0l5Tnk0MklpQm9aV2xuYUhROUlqSXhJaTgrRFFvZ0lEd3ZaejROQ2p3dmMzWm5QZzBLJyk7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgICBiYWNrZ3JvdW5kLXBvc2l0aW9uOiA5NSUgNTAlO1xuICAgIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gICAgYmFja2dyb3VuZC1zaXplOiAxNHB4IDE0cHg7XG4gICAgYm9yZGVyOiAxcHggc29saWQgI2NmZDBkMjtcbiAgICBib3JkZXItcmFkaXVzOiAzcHg7XG5cbiAgICAmW211bHRpcGxlXSB7XG4gICAgICBtaW4taGVpZ2h0OiA3NHB4O1xuICAgIH1cbiAgfVxuXG5zZWxlY3Rbc2l6ZT1cIjFcIl0ge1xuXHRhbGlnbi1pdGVtczogY2VudGVyO1xuXHR3aGl0ZS1zcGFjZTogcHJlO1xufVxuXG5idXR0b24uYnRuIHtcblx0YmFja2dyb3VuZC1jb2xvcjogd2hpdGU7XG5cdGJvcmRlci1jb2xvcjogI2JiYzBjNDtcblx0cGFkZGluZy10b3A6IDZweDtcblx0XHRwYWRkaW5nLWJvdHRvbTogN3B4O1xuXHRcdHBhZGRpbmctbGVmdDogNnB4O1xuXHRcdHBhZGRpbmctcmlnaHQ6IDdweDtcblx0XHRtYXJnaW4tYm90dG9tOiAxNHB4O1xuXHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRiYWNrZ3JvdW5kLWltYWdlOiAtd2Via2l0LWdyYWRpZW50KGxpbmVhciwgMCAwLCAwIDEwMCUsIGZyb20oI2ZmZmZmZiksIHRvKCNmMWYxZjEpKTtcblx0XHRiYWNrZ3JvdW5kLWltYWdlOiAtd2Via2l0LWxpbmVhci1ncmFkaWVudCh0b3AsICNmZmZmZmYsICNmMWYxZjEpO1xuXHRcdGJhY2tncm91bmQtaW1hZ2U6IC1tb3otbGluZWFyLWdyYWRpZW50KHRvcCwgI2ZmZmZmZiwgI2YxZjFmMSk7XG5cdFx0YmFja2dyb3VuZC1pbWFnZTogLW1zLWxpbmVhci1ncmFkaWVudCh0b3AsICNmZmZmZmYsICNmMWYxZjEpO1xuXHRcdGJhY2tncm91bmQtaW1hZ2U6IC1vLWxpbmVhci1ncmFkaWVudCh0b3AsICNmZmZmZmYsICNmMWYxZjEpO1xuXHR9XG5cblx0YnV0dG9uLmJ0biBzcGFuIHtcblx0XHRmb250LXNpemU6IDE2cHg7XG5cdFx0Zm9udC13ZWlnaHQ6IDcwMDtcblx0XHRjb2xvcjogIzQ0NTk2Yztcblx0fVxuXG5cdGJ1dHRvbi5wcmltYXJ5IHtcblx0XHR3aWR0aDogMjAwcHg7XG5cdH1cblxuXHRidXR0b24uc2luZ2xlIHtcblx0XHRtYXgtd2lkdGg6IDI1MHB4O1xuXHRcdHdpZHRoOiAxMDAlO1xuXHR9XG5cblx0YnV0dG9uIHtcblx0XHRjb2xvcjogYnV0dG9udGV4dDtcblx0fVxuXG5idXR0b24uYnRuIHNwYW4uaWNvbi11dGlsaXR5LWRvd24ge1xuXHRcdG1hcmdpbi1sZWZ0OiAxMHB4O1xuXHRcdG1hcmdpbi1yaWdodDogMTBweDtcblx0fVxuXG4ucGJIZWFkZXIge1xuXHR3aWR0aDogMTAwJTtcblx0cGFkZGluZy10b3A6IDE1cHg7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcbn1cblxuLnBiVGl0bGUge1xuXHRkaXNwbGF5OiBub25lO1xufVxuXG4ucGJCdXR0b24ge1xuXHR3aWR0aDogMTAwJTtcbn1cblxudGFibGUubGlzdCB7XG5cdHdpZHRoOiAxMDAlO1xufVxuXG50YWJsZS5saXN0IHRyIHtcbn1cblxudGFibGUubGlzdCB0ZCwgdGFibGUubGlzdCB0aCB7XG5cdHBhZGRpbmc6IDVweCAzcHg7XG59XG5cbnRhYmxlLmxpc3QgdGgge1xuXHRjb2xvcjogIzY5NmU3MTtcblx0Zm9udC1zaXplOiAxMnB4O1xuXHR0ZXh0LWFsaWduOiBsZWZ0O1xuXHRwYWRkaW5nLXJpZ2h0OiAxMHB4O1xufVxuXG50YWJsZS5saXN0IHRkIHtcblx0Zm9udC1zaXplOiAxNHB4O1xuXHRjb2xvcjogIzNjM2QzZTtcblx0cGFkZGluZy1yaWdodDogMTBweDtcbn1cblxudGQuZGF0YUNlbGx7XG5cdGJvcmRlci10b3A6IDFweCBzb2xpZCAjY2ZkNGQ5O1xufVxuXG4ubGFiZWxDb2wge1xuXHR0ZXh0LWFsaWduOiByaWdodDtcblx0cGFkZGluZy1yaWdodDogMTBweDtcbn1cblxuLmluc3RydWN0aW9uc0NvbCB7XG5cdHBhZGRpbmctbGVmdDogMTBweDtcblx0cGFkZGluZy10b3A6IDVweDtcbn1cblxuLmJ1dHRvbkNvbnRhaW5lciB7XG5cdHdpZHRoOiAxMDAlO1xuXHRtYXJnaW4tdG9wOiA3cHg7XG5cdG1hcmdpbi1ib3R0b206IDdweDtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xufVxuXG4ucmVjb3JkRWRpdG9yRm9ybSB7XG5cdG1hcmdpbi1sZWZ0OiAxMHB4O1xuXHRtYXJnaW4tcmlnaHQ6IDEwcHg7XG5cdHBhZGRpbmctdG9wOiA4NXB4O1xufVxuXG4ucmVjb3JkRWRpdG9yRm9ybSB0ZCB7XG5cdHBhZGRpbmctYm90dG9tOiAzcHg7XG59XG5cbi5yZWNvcmRFZGl0b3JGb3JtIHNlbGVjdCwgLnJlY29yZEVkaXRvckZvcm0gaW5wdXRbdHlwZT1cInRleHRcIl0ge1xuXHR3aWR0aDogMTAwJTtcbn1cblxuLnN0YXR1c0NvbnRhaW5lciB7XG5cdHBvc2l0aW9uOiBmaXhlZDtcblx0cmlnaHQ6IDA7XG5cdGxlZnQ6IDA7XG5cdHRvcDogMDtcblx0Ym90dG9tOiAwO1xuXHR6LWluZGV4OiAxMDAxO1xuXHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdHBhZGRpbmc6IDBweDtcblx0b3BhY2l0eTogMC42O1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiAjMzU0NDUyO1xufVxuXG4uc3RhdHVzSWNvbiB7XG5cdHdpZHRoOiAzMHB4O1xuXHRoZWlnaHQ6IDMwcHg7XG5cdGNvbG9yOiAjYWZiNWI5O1xuXHRwb3NpdGlvbjogYWJzb2x1dGU7XG5cdHRvcDo1MCU7XG5cdG1hcmdpbjogLTE1cHggYXV0byBhdXRvO1xuXHQtd2Via2l0LWFuaW1hdGlvbjogbG9hZGluZy1yb3RhdGUgbGluZWFyIC44cyBpbmZpbml0ZTtcblx0LW1vei1hbmltYXRpb246IGxvYWRpbmctcm90YXRlIGxpbmVhciAuOHMgaW5maW5pdGU7XG5cdGFuaW1hdGlvbjogbG9hZGluZy1yb3RhdGUgbGluZWFyIC44cyBpbmZpbml0ZTtcblx0LXdlYmtpdC1hbmltYXRpb24tZmlsbC1tb2RlOiBmb3J3YXJkcztcblx0LW1vei1hbmltYXRpb24tZmlsbC1tb2RlOiBmb3J3YXJkcztcblx0YW5pbWF0aW9uLWZpbGwtbW9kZTogZm9yd2FyZHM7XG5cdGJhY2tncm91bmQ6IHVybCgnZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpSUhkcFpIUm9QU0kyTTNCNElpQm9aV2xuYUhROUlqWXpjSGdpSUhacFpYZENiM2c5SWpBZ01DQTJNeUEyTXlJK1BIQmhkR2dnWm1sc2JEMGlJMkZtWWpWaU9TSWdaRDBpVFRNeExqVXdNU3d4Tmk0M09ERjJMVFF1T0RnMll5MHhNQzQzT0Rrc01DMHhPUzQxTXpZc09DNDNORFV0TVRrdU5UTTJMREU1TGpVek5XTXdMREV3TGpjNE9TdzRMamMwTnl3eE9TNDFNelVzTVRrdU5UTTJMREU1TGpVek5XTXhNQzQzT0Rnc01Dd3hPUzQxTXpRdE9DNDNORFlzTVRrdU5UTTBMVEU1TGpVek5XTXdMVFV1TWpFMExUSXVNRFE1TFRrdU9UUTRMVFV1TXpjM0xURXpMalExTW13MExqY3hPUzAwTGpRNE0yTTBMalEwTERRdU5qY3hMRGN1TVRZNExERXdMams0TXl3M0xqRTJPQ3d4Tnk0NU16ZGpNQ3d4TkM0ek9EVXRNVEV1TmpZeUxESTJMakEwTXkweU5pNHdORElzTWpZdU1EUXpZeTB4TkM0ek9EWXNNQzB5Tmk0d05EY3RNVEV1TmpVNExUSTJMakEwTnkweU5pNHdORE5qTUMweE5DNHpPRGdzTVRFdU5qWXhMVEkyTGpBME55d3lOaTR3TkRjdE1qWXVNRFEzVmpBdU5XdzVMamMyTnl3NExqRXpPVXd6TVM0MU1ERXNNVFl1TnpneGVpSXZQand2YzNablBnPT0nKSBuby1yZXBlYXQgY2VudGVyIGNlbnRlcjtcblx0YmFja2dyb3VuZC1zaXplOiAxMDAlO1xufVxuXG4ubW9kYWxEaWFsb2dXcmFwcGVyIHtcblx0ei1pbmRleDogMjI7XG5cdHBvc2l0aW9uOiBhYnNvbHV0ZTtcblx0dG9wOiAwO1xuXHRsZWZ0OiAwO1xuXHRyaWdodDogMDtcblx0Ym90dG9tOiAwO1xufVxuXG4ubW9kYWxEaWFsb2dCYWNrZ3JvdW5kIHtcblx0ei1pbmRleDogMjE7XG5cdG9wYWNpdHk6IC42O1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiAjMzU0NDUyO1xuXHRwb3NpdGlvbjogZml4ZWQ7XG5cdHRvcDogMDtcblx0cmlnaHQ6IDA7XG5cdGJvdHRvbTogMDtcblx0bGVmdDogMDtcblx0LXdlYmtpdC10cmFuc2l0aW9uOiBvcGFjaXR5IDMwMG1zO1xufVxuXG4ubW9kYWxEaWFsb2cge1xuXHR6LWluZGV4OiAyMjtcblx0cG9zaXRpb246IGZpeGVkO1xuXHR0b3A6MTAwcHg7XG5cdGxlZnQ6MDtcblx0cmlnaHQ6MDtcblx0bWFyZ2luOmF1dG87XG5cdGhlaWdodDogYXV0bztcblx0bWF4LWhlaWdodDogNzAlO1xuXHR3aWR0aDogMTAwJTtcblx0bWF4LXdpZHRoOiAyOTJweDtcblx0Ym9yZGVyLXJhZGl1czogNXB4O1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmZmZmO1xuXHQtd2Via2l0LXRyYW5zaXRpb246IC13ZWJraXQtdHJhbnNmb3JtIC4zcyBlYXNlLWluO1xuXHRvdmVyZmxvdzogc2Nyb2xsO1xufVxuXG4uY2xvc2VCdG4ge1xuXHRwb3NpdGlvbjogZml4ZWQ7XG5cdHotaW5kZXg6IDIyO1xuXHRyaWdodDogMHB4O1xuXHRsZWZ0OiAwcHg7XG5cdHRvcDogNzBweDtcblx0Y29sb3I6ICNmZmZmZmY7XG5cdHdpZHRoOiAxMDAlO1xuXHRtYXgtd2lkdGg6IDI5MnB4O1xuXHRmb250LWZhbWlseTogQXJpYWw7XG5cdGZvbnQtd2VpZ2h0OiA2MDA7XG5cdGZvbnQtc2l6ZTogMjVweDtcblx0ZGlzcGxheTogYmxvY2s7XG5cdG1hcmdpbjogYXV0bztcblx0dGV4dC1hbGlnbjogcmlnaHQ7XG59XG5cbi5tb2RhbERpYWxvZyAuYm9keSB7XG5cdG1heC1oZWlnaHQ6IDcwJTtcblx0b3ZlcmZsb3c6IHNjcm9sbDtcblx0cGFkZGluZzogMXB4IDE0cHg7XG5cdC13ZWJraXQtZmxleDogMTtcblx0Ym9yZGVyLXJhZGl1czogNXB4O1xufVxuXG4ubW9kYWxEaWFsb2cgLnNjcm9sbFdyYXBwZXIge1xuXHRvdmVyZmxvdzogc2Nyb2xsO1xuXHRwb3NpdGlvbjogaW5oZXJpdDtcblx0aGVpZ2h0OiA3MCU7XG5cdC13ZWJraXQtdGFwLWhpZ2hsaWdodC1jb2xvcjogcmdiYSgwLCAwLCAwLCAwKTtcblx0LXdlYmtpdC11c2VyLWRyYWc6IG5vbmU7XG59XG5cblxuLm1vZGFsRGlhbG9nIC5zY3JvbGxDb250ZW50IHtcblx0LXdlYmtpdC10cmFuc2l0aW9uOiAtd2Via2l0LXRyYW5zZm9ybSAwbXMgY3ViaWMtYmV6aWVyKDAuMzMsIDAuNjYsIDAuNjYsIDEpO1xuXHR0cmFuc2l0aW9uOiAtd2Via2l0LXRyYW5zZm9ybSAwbXMgY3ViaWMtYmV6aWVyKDAuMzMsIDAuNjYsIDAuNjYsIDEpO1xuXHQtd2Via2l0LXRyYW5zZm9ybS1vcmlnaW46IDBweCAwcHg7XG59XG5cbi5tb2RhbERpYWxvZyBidXR0b24sXG4ubW9kYWxEaWFsb2cgaW5wdXQge1xuXHRkaXNwbGF5OiBibG9jaztcblx0bWFyZ2luLXRvcDogMTRweDtcblx0d2lkdGg6IDEwMCU7XG59XG5cbi5kb2N1bWVudFByZXZpZXdDb250YWluZXIge1xuXHRwb3NpdGlvbjogYWJzb2x1dGU7XG5cdHdpZHRoOiAxMDAlO1xuXHR0b3A6IDEzNXB4O1xuXHRib3R0b206IDBweDtcblx0b3ZlcmZsb3c6IHNjcm9sbDtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHQtd2Via2l0LW92ZXJmbG93LXNjcm9sbGluZzogdG91Y2g7XG59XG5cbmlmcmFtZS5kb2N1bWVudFByZXZpZXdGcmFtZSB7XG5cdHdpZHRoOiAxMDAlO1xuXHRoZWlnaHQ6IDEwMCU7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcbn1cblxuaW1nLnBhZ2luYXRpb24ge1xuXHRiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9pbWcvcGFnaW5hdGlvbkFycm93cy5naWYnKTtcblx0YmFja2dyb3VuZC1yZXBlYXQ6bm8tcmVwZWF0O1xuXHRtYXJnaW46IDAgMnB4O1xuXHR6b29tOiAxLjQ7XG5cdC1tb3otdHJhbnNmb3JtOiBzY2FsZSgxLjQpO1xuXHQtbW96LXRyYW5zZm9ybS1vcmlnaW46IDAgMDtcbn1cblxuaW1nLndhcm5pbmcge1xuXHRiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9pbWcvbXNnX2ljb25zL3dhcm5pbmcxNi5naWYnKTtcblx0YmFja2dyb3VuZC1yZXBlYXQ6bm8tcmVwZWF0O1xuXHRiYWNrZ3JvdW5kLXBvc2l0aW9uOiAwIDA7XG5cdHdpZHRoOiAxNnB4O1xuXHRoZWlnaHQ6IDE2cHg7XG59XG5cbi5tZXNzYWdle1xuXHRib3JkZXItcmFkaXVzOjRweDtcblx0YmFja2dyb3VuZC1jb2xvcjogI2ZmYztcblx0Ym9yZGVyLXN0eWxlOiBzb2xpZDtcblx0Ym9yZGVyLXdpZHRoOiAxcHg7XG5cdGNvbG9yOiAjMDAwO1xuXHRwYWRkaW5nOiA2cHggOHB4IDZweCA2cHg7XG5cdG1hcmdpbjogNHB4IDIwcHg7XG5cdGZvbnQtc2l6ZToxMHB4O1xufVxuXG4ubWVzc2FnZSAubWVzc2FnZVRhYmxlIC5tZXNzYWdlQ2VsbCB7XG5cdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG59XG5cbi5tZXNzYWdlIC5tZXNzYWdlVGV4dHtcblx0bWFyZ2luLWxlZnQ6IDhweDtcbn1cblxuLm1zZ0ljb24sIC5lcnJvckxhcmdle1xuXHRiYWNrZ3JvdW5kLWltYWdlOiB1cmwoL2ltZy9tc2dfaWNvbnMvZXJyb3IzMi5wbmcpO1xuXHRiYWNrZ3JvdW5kLXBvc2l0aW9uOiAwIDA7XG5cdHdpZHRoOiAzMnB4O1xuXHRoZWlnaHQ6IDMycHg7XG59XG5cbi5tZXNzYWdlVGV4dCBoMSwgLm1lc3NhZ2VUZXh0IGgyLCAubWVzc2FnZVRleHQgaDMsIC5tZXNzYWdlVGV4dCBoNCwgLm1lc3NhZ2VUZXh0IGg1LCAubWVzc2FnZVRleHQgaDYge1xuICBmb250LXdlaWdodDogNDAwO1xuICBmb250LWZhbWlseTogaW5oZXJpdDtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICBtYXJnaW46IDA7XG4gIHBhZGRpbmc6IDA7XG59XG5cbi5yZXF1aXJlZENvbmZpZ3VyYXRpb25BdHRyaWJ1dGV7XG4gICAgYm9yZGVyLWxlZnQ6ICNjMDAgc29saWQ7XG4gICAgcGFkZGluZy1sZWZ0OiAycHg7XG4gICAgbWFyZ2luLWxlZnQ6IDFweDtcbn1cblxuLm1vYmlsZSB7XG5cdGRpc3BsYXk6IGluaXRpYWw7XG59XG5cbi5kZXNrdG9wIHtcblx0ZGlzcGxheTogbm9uZTtcbn1cblxuLyogTW9iaWxlIFJlc2tpbm5pbmcqL1xuXG5ib2R5IHtcblx0YmFja2dyb3VuZC1jb2xvcjogd2hpdGU7XG59XG5cblxuLyoqKiBQaG9uZSBzdHlsZXMgKioqL1xuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogMzIwcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDY0MHB4KSB7XG5cdC5waG9uZSB7XG5cdFx0ZGlzcGxheTogaW5pdGlhbDtcblx0fVxuXG5cdC50YWJsZXQge1xuXHRcdGRpc3BsYXk6IG5vbmU7XG5cdH1cblxuXHQuaW5zdHJ1Y3Rpb25zQ29sIHtcblx0XHRwYWRkaW5nLWxlZnQ6IDNweDtcblx0XHRwYWRkaW5nLXRvcDogMTBweDtcblx0fVxuXG5cdC5zZWFyY2hQYW5lbCB0ZCB7XG5cdFx0cGFkZGluZzogMHB4O1xuXHR9XG5cblx0LnNlYXJjaFBhbmVsIGxhYmVsIHtcblx0XHRtYXJnaW46IDBweDtcblx0XHRwYWRkaW5nOiAwcHg7XG5cdFx0cGFkZGluZy1ib3R0b206IDJweDtcblx0fVxuXG5cdC5zZWFyY2hQYW5lbCBkaXYuc2VhcmNoRmllbGQge1xuXHRcdG1hcmdpbi1ib3R0b206IDVweDtcblx0fVxuXG5cdC5ncm91cENvbnRhaW5lciB7XG5cdFx0bWFyZ2luLWJvdHRvbTogMTBweDtcblx0fVxuXG5cdC5ncm91cE5hbWUge1xuXHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHRcdHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblx0fVxuXG5cdC5saXN0IHtcblx0XHRtYXJnaW46IDEwcHggMDtcblx0fVxuXG5cdC51bnBhZ2luYXRlZEhlYWRlcixcblx0LmludmlzaWJsZVRleHQge1xuXHRcdGRpc3BsYXk6IG5vbmU7XG5cdH1cblxuXHQucGFnZVNlbGVjdG9yIHtcblx0XHR3aWR0aDogNTBweDtcblx0XHRtYXJnaW4tcmlnaHQ6IDVweDtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdH1cblxuXHQuZ3JvdXBMaXN0IHtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0cGFkZGluZzogMTBweCA1cHg7XG5cdH1cblxuXHQuZ3JvdXBMaXN0IGEge1xuXHRcdHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblx0fVxuXG5cdC5ncm91cExpc3QgLmdyb3VwTGlua05hbWUge1xuXHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdFx0cGFkZGluZzogMCAxNXB4IDNweDtcblx0fVxuXG5cdC5ncm91cExpc3QgLmRpc3BsYXllZEdyb3VwIHtcblx0XHRib3JkZXItYm90dG9tOiAycHggc29saWQgYmxhY2s7XG5cdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdH1cblxuXHQudGFibGVIZWFkZXIge1xuXHRcdGRpc3BsYXk6IGlubGluZTtcblx0fVxuXG5cdC5xdW90ZVRvdGFsLCAuZ3JvdXBUb3RhbCB7XG5cdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cdH1cblxuXHQucXVvdGVUb3RhbCB7XG5cdFx0Zm9udC1zaXplOiAyMHB4O1xuXHRcdG1hcmdpbi1yaWdodDogMTVweDtcblx0fVxuXG5cdCBoZWFkZXIgLmdyb3VwVG90YWwge1xuXHRcdGZvbnQtc2l6ZTogMTRweDtcblx0XHRtYXJnaW4tcmlnaHQ6IDVweDtcblx0fVxuXG5cdC8qQ3VzdG9tIGFjdGlvbnMgb24gdGhlIGdyb3VwKi9cblx0Y3VzdG9tQWN0aW9ucyBpbnB1dCB7XG5cdFx0bWFyZ2luLXJpZ2h0OiA1cHg7XG5cdH1cblxuXHQvKlF1b3RlICYgR3JvdXAgRWRpdG9yIC0gZmllbGRzIGFuZCBidXR0b25zKi9cblx0LmN1c3RvbUFjdGlvbnMgaW5wdXQge1xuXHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdG1hcmdpbi1ib3R0b206IDVweDtcblx0fVxuXG5cdC8qVGFibGVzKi9cblx0LnRhYmxlSGVhZGVyIHtcblx0XHRmb250LXNpemU6IDEuMmVtO1xuXHR9XG5cblx0LnRhYmxlQ29udGFpbmVyLnN0YW5kYXJkIHtcblx0XHRtYXJnaW4tdG9wOiAyMHB4O1xuXHR9XG5cblxuXHQvKk11bHRpLXNlZ21lbnQgdGFibGUqL1xuXHQuZGV0YWlsUm93IHRkLmRhdGFDZWxsIHtcblx0XHRib3JkZXItdG9wOiBub25lO1xuXHR9XG5cblx0LmZvb3RlclJvdyB7XG5cdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdH1cblxuXHQvKlBhZ2luYXRpb24gQ29udHJvbHMqL1xuXHQucGFnaW5hdGlvbkNvbnRyb2xzIHtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdH1cblxufVxuXG4vKiBUYWJsZXQgc3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiA2NDFweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogMTAyNXB4KSB7XG5cdC50YWJsZXQge1xuXHRcdGRpc3BsYXk6IGluaXRpYWw7XG5cdH1cblxuXHQucGhvbmUge1xuXHRcdGRpc3BsYXk6IG5vbmU7XG5cdH1cblxuXHQuc2VhcmNoUGFuZWwgdGQge1xuXHRcdHBhZGRpbmctbGVmdDogNXB4O1xuXHRcdHBhZGRpbmctcmlnaHQ6IDVweDtcblx0XHR2ZXJ0aWNhbC1hbGlnbjogdG9wO1xuXHR9XG5cblx0Lmdyb3VwQ29udGFpbmVyIHtcblx0XHRtYXJnaW4tYm90dG9tOiAxMHB4O1xuXHR9XG5cblx0Lmdyb3VwTmFtZSB7XG5cdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdFx0dGV4dC1kZWNvcmF0aW9uOiBub25lO1xuXHR9XG5cblx0Lmxpc3Qge1xuXHRcdG1hcmdpbjogMTBweCAwO1xuXHR9XG5cblx0LnVucGFnaW5hdGVkSGVhZGVyLFxuXHQuaW52aXNpYmxlVGV4dCB7XG5cdFx0ZGlzcGxheTogbm9uZTtcblx0fVxuXG5cdC5wYWdlU2VsZWN0b3Ige1xuXHRcdHdpZHRoOiA2MHB4O1xuXHRcdG1hcmdpbi1yaWdodDogNXB4O1xuXHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0fVxuXG5cdC5ncm91cExpc3Qge1xuXHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRwYWRkaW5nOiAxMHB4IDVweDtcblx0fVxuXG5cdC5ncm91cExpc3QgYSB7XG5cdFx0dGV4dC1kZWNvcmF0aW9uOiBub25lO1xuXHR9XG5cblx0Lmdyb3VwTGlzdCAuZ3JvdXBMaW5rTmFtZSB7XG5cdFx0d2hpdGUtc3BhY2U6IG5vd3JhcDtcblx0XHRmb250LXdlaWdodDogYm9sZDtcblx0XHRwYWRkaW5nOiAwIDE1cHggM3B4O1xuXHR9XG5cblx0Lmdyb3VwTGlzdCAuZGlzcGxheWVkR3JvdXAge1xuXHRcdGJvcmRlci1ib3R0b206IDJweCBzb2xpZCAjM2MzZDNlO1xuXHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHR9XG5cblx0LnRhYmxlSGVhZGVyIHtcblx0XHRkaXNwbGF5OiBpbmxpbmU7XG5cdH1cblxuXHQucXVvdGVUb3RhbCwgLmdyb3VwVG90YWwge1xuXHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXHR9XG5cblx0LnF1b3RlVG90YWwge1xuXHRcdGZvbnQtc2l6ZTogMjBweDtcblx0XHRtYXJnaW4tcmlnaHQ6IDE1cHg7XG5cdH1cblxuXHRoZWFkZXIgLmdyb3VwVG90YWwge1xuXHRcdGZvbnQtc2l6ZTogMTZweDtcblx0XHRtYXJnaW4tcmlnaHQ6IDVweDtcblx0fVxuXG5cdC8qQ3VzdG9tIGFjdGlvbnMgb24gdGhlIGdyb3VwKi9cblx0LmN1c3RvbUFjdGlvbnMge1xuXHRcdG1hcmdpbi1sZWZ0OiA1cHg7XG5cdH1cblxuXHQuY3VzdG9tQWN0aW9ucyB7XG5cdFx0bWFyZ2luLWJvdHRvbTogNXB4O1xuXHR9XG5cblx0LmN1c3RvbUFjdGlvbnMgaW5wdXQge1xuXHRcdG1hcmdpbi1yaWdodDogNXB4O1xuXHR9XG5cblx0LypUYWJsZXMqL1xuXHQudGFibGVIZWFkZXIge1xuXHRcdGZvbnQtc2l6ZTogMS4yZW07XG5cdH1cblxuXHQudGFibGVDb250YWluZXIge1xuXHRcdHBhZGRpbmctbGVmdDogNXB4O1xuXHR9XG5cblx0LnRhYmxlQ29udGFpbmVyLnN0YW5kYXJkIHtcblx0XHRtYXJnaW4tdG9wOiAyMHB4O1xuXHR9XG5cblx0LypNdWx0aS1zZWdtZW50IHRhYmxlKi9cblx0LmRldGFpbFJvdyB0ZC5kYXRhQ2VsbCB7XG5cdFx0Ym9yZGVyLXRvcDogbm9uZTtcblx0fVxuXG5cdC5mb290ZXJSb3cge1xuXHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHR9XG5cblx0LypQYWdpbmF0aW9uIENvbnRyb2xzKi9cblx0LnBhZ2luYXRpb25Db250cm9scyB7XG5cdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHR9XG5cblx0LyogTW9iaWxlIFJlc2tpbm5pbmcqL1xuXHQuc2JCdG4ge1xuXHRcdGZvbnQtc2l6ZTogMTZweDtcblx0XHRtYXJnaW46IDAgMCAwIDEwcHg7XG5cdH1cblxufVxuXG5cblxuLyoqKiBJY29ucyAqKiovXG5cbkBmb250LWZhY2Uge1xuXHRmb250LWZhbWlseTogJ2ljb21vb24nO1xuXHRzcmM6IHVybCgnZm9udHMvaWNvbW9vbi5lb3QnKTtcbn1cbkBmb250LWZhY2Uge1xuXHRmb250LWZhbWlseTogJ2ljb21vb24nO1xuXHRzcmM6IHVybChkYXRhOmFwcGxpY2F0aW9uL3gtZm9udC10dGY7Y2hhcnNldD11dGYtODtiYXNlNjQsQUFFQUFBQUxBSUFBQXdBd1QxTXZNZzZ2OHl3QUFBQzhBQUFBWUdOdFlYRGdmT2FNQUFBQkhBQUFBRVJuWVhOd0FBQUFFQUFBQVdBQUFBQUlaMng1WmxSTUZ4b0FBQUZvQUFBNldHaGxZV1FBU0FrM0FBQTd3QUFBQURab2FHVmhCOElEK3dBQU8vZ0FBQUFrYUcxMGVPSUFETVVBQUR3Y0FBQUE2R3h2WTJHZEQ1QUlBQUE5QkFBQUFIWnRZWGh3QUVNQkxRQUFQWHdBQUFBZ2JtRnRaVVFYdE5ZQUFEMmNBQUFCT1hCdmMzUUFBd0FBQUFBKzJBQUFBQ0FBQXdRQUFaQUFCUUFBQXBrQ3pBQUFBSThDbVFMTUFBQUI2d0F6QVFrQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUNEbUFnUEEvOEQvd0FQQUFFQUFBQUFBQUFBQUFBQUFBQUFBQUFBZ0FBQUFBQUFDQUFBQUF3QUFBQlFBQXdBQkFBQUFGQUFFQURBQUFBQUlBQWdBQWdBQUFDRGdOT1lDLy84QUFBQWc0QURtQVAvLy8rRWdBaG8zQUFFQUFBQUFBQUFBQUFBQkFBSC8vd0FQQUFFQUFBQUFBQUFBQUFBQ0FBQTNPUUVBQUFBQUFRQlJBQkVEcmdOdUFGTUFBQUV1QVNJR0J3RU9BUlFXRng0Qk1qWTNBVDRCTkNZbkxnRWlCZzhCRGdFVUZoY2VBVEkyUHdFK0FUSVdGeDRCRkFZSEFRNEJJaVluTGdFME5qY0JQZ0V5RmhjZUFSUUdEd0VlQXhjM1BnRTBKaWNEcmlobWFtWXAvaXNvS0Nnb0tXWnFaaWdCSUJrWkdSa1pQMEkvR2JRS0Nnb0tDUmNZRndtMUJoQVFFQVlHQmdZRy91QVdOemszRmhZV0ZoWUIxUlkzT1RjV0ZoWVdGZ1FMRVF3SEFTNHBLU2twQTI0cEtTa3AvaXNvWm1wbUtTZ29LQ2dCSUJrL1FqOFpHUmtaR2JVSkZ4Z1hDUW9LQ2dxMEJnWUdCZ1lRRUJBRy91RVdGaFlXRmpjNU54WUIxUllXRmhZV056azNGZ1FQSUNJakVpNHBabXBtS0FBQkFSRC93QU1RQThBQUtBQUFBU0VpRGdJVkVSUWVBaGNXTWo0QlB3RVhIZ016T2dNelBnTTFFVFF1QWlNQzBQNkFEUmNSQ2dJREJRTURCd1lHQXR2YkFnUUVCQUlCQWdJQ0FRTUZBd0lLRVJjTkE4QUtFUmNOL0ZVREJnVUVBUUVCQXdMYjJ3RUNBZ0VCQkFVR0F3T3JEUmNSQ2dBQUFBQUJBRjcvNGdQZUE1NEFUd0FBSlNjd0xnSWpJZzRDRHdFT0FpWW5MZ01uTGdNbkxnRStBVDhCUGdNMU5DNENMd0V1QXlNT0F3Y09BUjRCRng0RE16SStBamMrQXpjMExnSW5BOHZ0QkFZR0FnUUlCd1lDWlFRTEN3c0ZFaU1pSVJBUUhSc1lDd01DQVFVRVpRTUZBd0lCQVFJQmdnSUdDQWtGRmkwcUpRNHlGVEJ4VlRsN2UzZzJHakV0SnhBT0Z4RUxBZ01GQndUZWR3SUNBZ0lFQlFOY0JBVUJBZ01MR0JzZUVCQWhJaU1TQlFzTEN3UmtBd1lIQ0FRREJRVUVBdTBFQndVREFna1BGUTR5bXJPK1ZUbFlQQjhJRUJnUURpTW9LeFlGQ2dnSEFnQUFBQUFCQUNMLzhnUGVBNHdBVFFBQUFTNERKeTRESXlJT0FnY09Bd2NPQXhVVUhnSVhIZ01YSGdNWEZSUWVBaGN5SGdFeU16SStBajhCTWo0Q056NEROejRETlRRdUFpY0QwQVFpTVRzZEpFaElTQ1FrU0VoSUpCMDdNaU1GQXdVREFnSURCUU1GSXpJN0hRb1ZGUlVLQXdVSUJRSURBd1FDQXdZR0JnTE1IVG82T2gwZE96RWlCQVFGQXdJQ0F3VUVBdHdkTnl3ZEF3UUdCQUlDQkFZRUF4MHNOeDBYTGk4dkdCY3VMaTBXSFRjc0hRTUJBZ0VCQWE4RkNnZ0hBZ0VCQVFJRUFzVUNBd1FEQXh3ck5oMFdMaTR1Rnhjdkx5NFhBQUFDQUluLzN3TjNBOEFBR1FBdUFBQUJJZzRDRlJRZUFqRWVBalkzTUQ0Q05UUXVBaU1SSWk0Q05UUStBak15SGdJVkZBNENJd0lBVG9sbU8yTjNZeEFiR2h3UlpIaGtPMmFKVGlWQk1Cd2NNRUVsSlVFd0hCd3dRU1VEd0Q1cmoxRnUxNnBwRHhBQkR4QnBxdGR1VVk5clB2M1hIREJCSlNWQk1Cd2NNRUVsSlVFd0hBQUJBSkVBTmdNekEyb0FMZ0FBQ1FFK0F6VThBUzRCSnk0REl5RWlEZ0lIQVE0QkZCWVhBUjRETXlFeVBnSTNQZ0V1QVNjQkFkd0JUZ0lFQWdFQkFRRUNCd2dLQmY3M0JBY0hCZ0wrb3dRRUJBUUJYUUlHQndjRUFRa0ZDZ2dIQWdJQkFnUUUvcklCMEFGZ0FnWUdCZ01DQkFRRUFnUUhCUU1DQXdRRC9va0ZEQXdNQmY2SkFnUURBZ01GQ0FVRkNna0pCQUZoQUFBQUFBRUF6UUEyQTI0RGFnQXVBQUFKQVM0REl5RWlEZ0lIRGdFZUFSY0pBUTRERlJ3QkhnRVhIZ016SVRJK0FqY0JQZ0UwSmljRGJ2NmtBZ1lIQndUKzl3VUtDQWNDQWdFQ0JBTUJUdjZ5QWdNQ0FRRUJBUUlIQ0FvRkFRa0VCd2NHQWdGY0JRVUZCUUhtQVhjREJBTUNBd1VIQkFVS0Nna0UvcUQrbndJRkJnWURBZ1FFQkFJRkNBVURBZ01FQWdGM0JRd01EQVVBQUFBQUFRQ1JBR0VEYndNL0FFUUFBQUUzUGdJbUp5NERKeTRCRGdFUEFTY3VBZ1lIRGdNSERnRWVBUjhCQnc0Q0ZoY2VBeGNlQVQ0QlB3RVhIZ0kyTno0RE56NEJMZ0V2QVFLZXlnY0lBZ1FGREJnYUhBOEdEeEFRQjhyTEJoQVFFQVlPR3hvWURBVUVBZ2dIeXNzR0NBSUVCUXdZR2hzT0JoQVFFQWJMeWdjUUVBOEdEeHdhR0F3RkJBSUlCOG9CME1vSEVCQVBCZzhjR2hnTUJRUUNDQWZCd1FjSUFnUUZEQmdhSEE4R0R4QVFCOHJMQmhBUUVBWU9HeG9ZREFVRUFnY0d5OHNHQ0FJRUJRd1lHaHdQQmc4UUVBYkxBQUFCQUk4QXp3TnhBczhBTFFBQUFTNERJeUl1QWlNaURnSWpJZzRDQnc0QkZCWVhIZ01YSGdFeU5qYytBemMrQVRRbUp3TnhBd2tLREFZQk9GeDJQajUyWERnQkJnd0xDUU1EQXdNRE1ISmtSZ01IRWhJU0J3TkdaSEl3QXdNREF3S3JCZ2tIQkFNRUF3TUVBd1FIQ1FZR0RBd01CbFNaZFVjREJnWUdCZ05IZFpsVUJnd01EQVlBQWdBQS85QUVBQU91QUQ0QVlRQUFBUjRETXpJK0FqYytBemMrQWlZbkxnTXJBUzRESnk0REl5SU9BZ2NPQXdjaklnNENCdzRCSGdFWEhnTVhKUlFPQWdjaExnTTFJeFFlQWhVZUF6TWhNajRDTnpRK0FqVWpBZWNEQmdZR0F3TUdCZ1lEQXpwVFh5Z0RBd0VDQWdNSUNRb0dpd1lPRHcwRUJROFVHUThQR1JRUEJRVU9EZzRGaXdZS0NRY0RBZ0lCQXdNb1gxTTZBd0Z5QkFZSEEvMTFBd2NHQktZTURnd0VFQllhRGdNT0Roc1dFQVFNRGd5bUFWQUNBd0lCQVFJREFnSXpWRzA3QkFvTEN3VUZDQVlESUVJNEtRZ0lEUWtGQlFrTkNBa3FPRUVnQXdZSUJRVUxDd29FTzIxVU13SmVObDFOUFJZV1BFMWROMmVhWnpVQ0RoY1FDUWtSRnc0Q05XZWFaZ0FBQUFBQ0FBZi93QVA4QTdrQU9RQmlBQUFGTGdNbkxnTW5BUzRDQmdjT0F3Y09Bd2NPQVI0QkZ3RWVBeGNlQXhjZUFqSXpNajRDTno0Q0ppY25MZ01uQVQ0RE53RWVBek15UGdJM1BnSW1Kd0UrQXpjQkhnTVhCd1A4RHgwZEhROEJBZ01FQXYzTUJoQVJFUWdVSmlRaUVCQWRHeG9NQlFRQ0NBWUNOQUlGQlFVRExsdGJXaXdDQkFRRUFnVUlDQWNFQlFZQ0FnUHdFaVVsSlJIOThRVUxEQTBIQWdBRUNRa0tCUVVJQ0FjRUNBZ0JCd2YrQWdjT0RnNEhBZzhHREF3TUJrd0NMRmxhV2k0REJnVUZBZ0kzQmdjQ0JBUU1HaHdlRUE4Z0lpUVRDQkVSRHdiOXlRSUVBd01CRHg0ZUh4QUJBUUVDQkFZRUJRc0xEUWRzQmd3TURBWUNFUWdRRHc4SC9mOEVCUU1CQWdRR0JBZ1NFaElJQWY0R0RBd01CZjNyRWlNakl4Sk1BQUFBQUFJQU1nQW1BKzREV2dBaUFFOEFBQUVpTGdJbkFSRVVIZ0lYSGdNek1qNENOejRETlJFQkRnTWpBUzRESXlJT0FnY09BeDBCSGdNWEFSNERNekkrQWpjQlBnTTNOVFF1QWljQ0VCTWxKQ0VQL3E0RUNBb0dPSEJ4Y1RnNGNYQndOd1lMQ0FYK3JnOGhKQ1VUQWNBM2IzQnhPRGh4Y0hBNEJnb0lCQUVGQ1EwS0FXd0lFaFFWQ3dzVkZCSUlBV3dLRFFrRkFRVUlDd1lCRlFVS0VBc0JBLzRrQmdzSkJnRUlEQWdFQkFnTUNBRUdDUXNHQWR6Ky9Rc1FDZ1VDSkFnTUNBUUVDQXdJQVFZSkN3WXhCQXdPRVFuKzdRWUpCZ01EQmdrR0FSTUpFUTRNQkRFR0N3a0dBUUFIQUNML3dBUGVBOEFBQkFBSkFBNEFFd0IyQUlRQWlRQUFBU01WTXpVWEl4VXpOVFVqRlRNMUJ5TVZNelVCSWk0Q0p6VTBMZ0lqSWc0Q0hRRVVIZ0lYSWk0Q1BRRXFBeU1xQVE0QkJ6VTBMZ0lqSWc0Q0hRRVVIZ0lYSWk0Q1BRRU9BeU1PQXhVUkZCNENGekllQWpNeVBnSXpQZ00xRVRRdUFpY0REZ01qSWk0Q0p4RWhFU1VqRlRNMUFrU0ppYzJKaVltSnpZbUpBWEVDR0NvN0pRc1RHUTRPR1JNTEF3WUlCUkloR1E4SUVSRVJDUklqSWlFUUN4TVpEZzRaRXdzREJnZ0ZFaUVaRHhZaUdRNEJDUThMQmdZTER3a0RRWEtmWUdDZmNrRURDUThMQmdZTER3aytHRXBnZEVKQ2RHQktHQUx2L2dDSmlRSGlpWW5OaVluTmlZbk5pWWtDSHdRSENBUXdEaGtUQ3dzVEdRNkpDQTROQ3dVTUZoOFRRd0VCQVNVT0dSTUxDeE1aRG9rSURnMExCUXdXSHhNdUF3VUVBd0lKRFJBSi9SWUpFQTBKQWd3T0RBd09EQUlKRFJBSkF1b0pFQTBKQXYwTEJBb0pCZ1lKQ2dRQjUvNFoxb21KQUFBQUFRQUQvOEFEL1FQQUFITUFBQUV1QXljdUF5Y3VBeWN1QXlNaURnSUhEZ01IRGdNSERnTUhEZ0VlQVJjZUF4Y09Bd2NVSGdJWEhnSTJOejRETno0RE54NERGeDRERng0RE16SStBamMrQXpVdUF5YytBemMrQWlZbkEvMENCUWNKQlJOQ1Vsc3NEaU1tSnhJRUNBa0pCUVVLQ1FrRUVpY21JdzRzVzFKQ0V3VUpCd1VDQWdJQkF3TU1LenBHS0FzU0Rna0NBd1lKQmdZTkRRMEdCdzRQRHdnVkxqTTNIaDQzTXk0VkNBOFBEZ2NEQmdZR0F3UUhCd2NEQmdrR0F3SUpEaElMS0VZNkt3d0RBd0VDQWdJN0JRa0lCZ0lJREFnRkFpaGRWMGNTQkFZRUFnSUVCZ1FTUjFkZEtBSUZDQXdJQWdZSUNRVUZDd3NMQlJjNFBrTWlMRk5MUWh3SERRd0tCQVFFQVFNREJBZ0hCd1FLRmhvZkV4TWZHaFlLQkFjSENBUUJBZ0VCQVFJREFnUUtEQTBISEVKTFV5d2lRejQ0RndVTEN3c0ZBQUFEQUFFQUJBUC9BM3dBVUFDWUFOOEFBQ1V1QXljdUFqWTNQZ0ltSnk0REl5SU9BZ2NPQVI0QkZ4NEJEZ0VIRGdNSERnTUhCaFFlQVJjZUF6TXlIZ0l6TWo0Q016SStBamMrQWpRbkxnTW5KVE0rQXpjdUFqWTNQZ00zTkM0Q0p5NERJeUlPQWdjT0FSNEJGeDRCRGdFSERnTUhEZ01IQmhRZUFSY2VBek15SGdJWFBnTTNKUzRESnk0REp5NENOamMrQWlZbkxnTWpJZzRDQnc0REZSNERGeDRCRGdFSEhnTVhIZ01YUGdNek1qNENOejRDTkNjQzdoTXBKUjRJQmdzRUJnc2NId3NJREFzaUtDc1VGQ3NvSWdzTUNBc2ZIQXNHQkFzR0NCNG1LUk1XRnd3R0JRRUJBZ0lDQkFVR0F3RWJRR3hUVW14QUd3RURCZ1VFQWdJQ0FRRUZCd3dYRmY1REFRUUlDQWdFSXg4RkR3c09LVEEwR2dJRUJnUUxJaWdyRkJRcktDSUxEQWdMSHh3TEJnUUxCZ2dlSmlrVEZoY01CZ1VCQVFJQ0FnUUZCZ01CRlRGU1BnZ1JFUkFJQXM0RkJ3d1hGUk1wSlI0SUJnc0VCZ3NjSHdzSURBc2lLQ3NVRkNzb0lnc0VCZ1FDR2pRdktBNE1Ed1VmSXdRSUNRa0VDQkFSRVFnK1VURVZBUU1HQlFRQ0FnSUJBYTBPR0JZVENBY1FFeFlOSUR3NU5ob1lJUlVKQ1JVaEdCbzJPVHdnRFJZVEVBY0lFeFlZRGc4Wkd5QVhBd1lHQlFJQ0JBTUNCQVFFQkFRRUFnTUVBZ0lHQmdZREZ5QWJHUTl3QWdVRkJRSXVWVXRBR1I4dEh4SUVDaFFURXdrWUlSVUpDUlVoR0JvMk9Ud2dEUllURUFjSUV4WVlEZzhaR3lBWEF3WUdCUUlDQkFNQ0F3UUVBUVlMQ2dvRkJSY2dHeGtQRGhnV0V3Z0hFQk1XRFNBOE9UWWFHQ0VWQ1FrVklSZ0pFeE1VQ2dRU0h5MGZHVUJMVlM0Q0JRVUZBZ1VLQ2dzR0FRUUVBd0lEQkFJQ0JRWUdBd0FEQUFBQVVBUUFBMUFBR0FBdEFETUFBQUVoSWc0Q0ZSRVVIZ0l6SVRJK0FqVVJOQzRDSXdVeUhnSVZGQTRDSXlJdUFqVTBQZ0l6QXpjWEV3RWhBOEQ4Z0EwWEVRb0tFUmNOQTRBTkZ4RUtDaEVYRGYwZ0ZDTWFEdzhhSXhRVUl4b1BEeG9qRkdDQWxlc0JBUDBBQTFBS0VSY04vWUFORnhFS0NoRVhEUUtBRFJjUkNvQVBHaU1VRkNNYUR3OGFJeFFVSXhvUC9nREFhd0VyL29BQUFBQUFBUUR2QUc4Qzd3TlJBQzBBQUFFMExnSW5MZ0VpQmdjT0F3Y09BUlFXRng0REZ4NEJNalkzUGdNMU5ENENOVFF1QWpVQzVRUUhDUVlHREF3TUJsV1pkVWNEQmdZR0JnTkhkWmxWQmd3TURBWUdDUWNFQXdRREF3UURBeWtHREFvSkF3TURBd013Y21SR0F3Y1NFaElIQTBaa2NqQURBd01EQXdrTERBWUJPRngyUGo1MlhEZ0JBQUlBQVAvaUEvOERuZ0F4QURZQUFBRXVBeU1oUGdFdUFTY3VBeU1pRGdJSERnTUhFVE15SGdJWEhnTXpNajRDUHdFMkxnSW5BVE1SSXhFRDVBb1lHUmNKL3ZVRkJnUVFFUVVNRFE4SUZod1JDZ1FHRXpCWlRTWWdMQ0VhRGhFbk5rczJlSVZERmdvRkFRSUhDd2o4SEt1ckFpb0xEQVlDT0dKUVBSTUdDZ2NFRXg0bUVpQkhSRG9TL2dzR0N3OEpDaFlTRENOY24zeEtEeHdaRmduOXVRSm0vWm9BQWdCUkFCRURyZ051QURFQVl3QUFBUTRCRkJZWEhnRVVCZzhCRGdFaUppY3VBVFEyUHdFdUF6Y0hEZ0VVRmhjZUFUSTJQd0UrQVRRbUp5NEJJZ1lIQVM0QklnWVBBUTRCRkJZWEhnRXlOamMrQVRRbUp5NEJORFkvQVQ0Qk1oWVhIZ0VVQmc4QkhnTUhOejRCTkNZbkFoNEpDUWtKRmhZV0ZwOFdOemszRmhZV0ZoWk1Cd29GQVFLU0tDZ29LQ2xtYW1Zb29DZ29LQ2dKR0JrWUNRR1JLR1pxWmltZktDZ29LQWtYR0JjSkNnb0tDaFlXRmhhZ0ZqYzVOeFlXRmhZV1RBY0tCUUVDa1NrcEtTa0NPUWtZR1JnSkZqYzVOeGFmRmhZV0ZoWTNPVGNXVEJNbktDa1VraWhtYW1ZcEtDZ29LS0FvWm1wbUtRa0pDUWtCTlNrcEtTbWZLR1pxWmlrSkNRa0pDUmNZRndrV056azNGcDhXRmhZV0ZqYzVOeFpORXljb0tCU1JLV1pxWmlnQUJnQVFBRWtENndOYUFCd0FNUUJHQUdNQWdBQ1ZBQUFCSVRJK0FqYytBVFFtSnk0REl5RWlEZ0lkQVJRZUFqTUhJZzRDRlJRZUFqTXlQZ0kxTkM0Q0l4RWlEZ0lWRkI0Q016SStBalUwTGdJakFTRWlEZ0lkQVJRZUFqTWhNajRDTno0Qk5DWW5MZ01qRVNFaURnSWRBUlFlQWpNaE1qNENOejRCTkNZbkxnTWpBU0lPQWhVVUhnSXpNajRDTlRRdUFpTUJaQUpiQ0E4TUNBRUNBZ0lDQVFnTUR3ajlwUWNNQ1FVR0NRd0cveElmRncwTkZ4OFNFaDhYRFEwWEh4SVNIeGNORFJjZkVoSWZGdzBORng4U0ExcjlwUWNNQ1FVR0NRd0dBbHNJRHd3SUFRSUNBZ0lCQ0F3UENQMmxCd3dKQlFZSkRBWUNXd2dQREFnQkFnSUNBZ0VJREE4SS9LWVNIeGNORFJjZkVoSWZGdzBORng4U0FxOEZDUTBJRVJjVkZ4RUlEUWtGQmdvTkIyUUlEUWtGaVEwWEh4SVNIeGNORFJjZkVoSWZGdzMrelEwWEh4SVNIeGNORFJjZkVoSWZGdzBCTXdZS0RRZGtDQTBKQlFVSkRRZ1JGeFVYRVFnTkNRWCt6UVlLRFFka0NBMEpCUVVKRFFnUkZ4VVhFUWdOQ1FVQ1pnMFhIeElTSHhjTkRSY2ZFaElmRncwQUFBQUFBd0FBLytJRUFBT2VBRHNBckFEU0FBQUJKUzRDSWlNSElnNENEd0VsTGdFT0FRY09BeFVSRkI0Q0Z3VWVBakl6TWo0Q1B3RUZIZ0UrQVRjK0F6VVJOQzRDSndFT0F3Y09Bd2NPQVM0Qkp5NERNVEF1QWljdUFqWXhMZ01qSWk0Q0p4RVhIZ01YRmc0Q0p5NENCZ2NPQWhZWEhnRStBVGMrQWhZWEhnTVhIZ016TWo0Qk1oY1dQZ0l6TWg0Q01SNERGeDRERlJRT0FnY2xEZ01qSWk0Q0p5NEROell1QWljdUF5Y3VBVFEyTno0RE54Y1JBK0grdGdNR0J3Y0RBUUlFQkFRQzh2N09CZzBNREFVR0NRWURCQWdMQndGSkF3VUZCUU1EQmdZR0EvSUJNZ1lOREF3RkJna0dBd1VJQ3dmK1hnWUpDQWtHQlFnTEVRME1Ed29HQWdJRkJBSURDQThNSGhVQkNRZ1pJU2dYRGgwZEd3emVCdzhPQ3dNSEJ3OFJBd1liSUNBTEVSY0pCdzBOQ3dVQ0JBUUlDQWdFQkF3TUNnRUJBZ1lMQ2d3TEJ3Y0lDQkFQRGdZR0VSQUxFeG9TRFFZR0RBb0dBd2dPQ3dGYkJ3NE5DZ01JRGdzSEFRTUhCZ01CQWdVU0h4Y0tGeFlVQnhrWUdCWUlHQnNjREtrRERZMENBZ0VCQVFFQ0FZS0VBZ0lCQkFRRUNRc01CdjA1Q0E0TUNnT09BUUlCQVFJQ0FvS0RBZ0lCQkFNRUNRc01CZ0xIQ0E0TUNnUCtCd1VMRGhFTENoQVJGQTROQkFjT0JnWVdGaEFLRFF3Q0JTc3dKZ1lTRVF3REJRY0VBVkJnRGhNUUVRc1lJaElDQ0E0TUFnVUVCZzhRRHdZR0JBRUZCQVFGQVFNRUF3WUlEQWtKRFFnRUF3SUNBZ0VEQXdZSUJnSURCQVVFQkJBVUZ3b0pFUkFSQ1NNSURRa0VDQW9KQWdjZUloOElIU01VQ2dRQ0JRY0xDQjB2S1NVVEJnNE5EQVZKL253QUFBQUNBQkQvd1FQbEE3NEFOQUJ6QUFBVE5ENENOejRETnpVT0F3Y09Bd2NVRGdJVkZCNENGUjRERng0REZ6VXVBeWN1QXpVbExnTW5MZ0VpQmdjT0F4MEJEZ01IRGdNVkZCNENGeDRERnhVVUhnSVhIZ016TWo0Q056NEROejRCTkNZbnRnVUhDUVFaUTFKZk5GQ1Rja1lEREJRUURBTUxEUW9LREFvRERCRVZEQU5HY3BOUU5GOVNReGtFQ1FjRkF5OENOVlZ1T3dRS0N3c0ZCUWNFQWl0aVZqOElDaEFNQmdZTUVBb0lQbFppS3dJRUJ3VUNCQVVGQWdNR0JnVUNPMjVWTlFJRUJBUUVBY1EwWEUwOUZRVU1EQWtDb3dNU0V3OEJBd3NRRkFzQ05tT09XMXVSWmpnQ0RCUVFDd01CRHhNU0JLUUNDUXdNQlJZL1QxNDFFd002VTE4b0F3TUNBZ01JQ1FvR2hnUVBFUThFQlE4VUdBOFBHQk1QQmdRUEVSQUZoZ1VLQ1FnREFRSUJBUUVDQWdJb1gxTTZBd1lORFF3RkFBQUFBZ0FCQUJrRC93T0hBRm9BcGdBQUpTNERKeTRESnlZK0FqYytBaVluTGdNaklnNENCdzRCSGdFWEhnTUhEZ01IRGdNSERnTUhCaFFlQVJjZUF6TXlIZ0l6TWo0Q016SStBamMrQWpRbkxnTW5CUzRESnk0REp5NERKeVkrQWpjK0FpWW5MZ01qSWc0Q0J4NERGeDRCRGdFSEhnTVhIZ01YSGdNWFBnTXpNajRDTno0Q05DY0NjZ1lPRGc4SURod1lFUU1DQXdjS0JSb2ZDUXdSRFNRck1Sb2FNU3NrRFJFTUNSOGFCUW9IQXdJREVSZ2NEZ2dQRGc0R0dDa2dGZ1lCQVFJQ0FnVUdCZ1FCSmxPRFhsNkVVeWNCQkFZR0JRSUNBd0VCQmhjZ0tSZ0JqUVlXSUNrWUJnME9Ed2dPSEJnUkF3SURDQXNHR2g0SkRSRU5KQ3N4R2hnbEh4c09FeUFiR0FzUUZBVWtLQUlGQkFRQ0NSSVJFUWdZS2lRZEN6QkZMQllCQXdZR0JRSUNBZ0VCOWdRSEJnWURCZ3dORHdrSUVoTVNDQ2hMUlQ4Y0ZpSVlEUTBZSWhZY1AwVkxLQWdTRXhJSUNROE5EQVlEQmdZSEJBOGxLekFhQkFjR0JnTURCUVFDQkFVRUJBVUVBZ1FGQXdNR0JnY0VHakFySlE4Z0dqQXJKUThFQndZR0F3WU1EUThKQ0JJVEVnZ29TMFUvSEJZaUdBMEtFeHdTQ1JVYUh4TWJTVnh0UHdFQ0FnSUJBd2NJQ0FVUEl5Z3NHQUVFQkFNQ0JBVURBd1lHQndRQUF3QkRBRFlEd2dOcUFCUUFaUUI2QUFBQklnNENGUlFlQWpNeVBnSTFOQzRDSXlVdUF5Y3VBeWN1QXljdUF5TXVBeU1pRGdJSElnNENCdzREQnc0REJ3NERCdzRCRkJZWEhnTVhIZ016TWo0Q056NEROejRCTkNZbkFTSXVBalUwUGdJek1oNENGUlFPQWlNQ0FDTStMaHNiTGo0akl6NHVHeHN1UGlNQndnSUlDdzBIRkNnb0tCUURCZ1lIQkFJS0RROEhGaXdzTEJZV0t5c3JGUWNQRFFvQ0JBY0dCZ01VS0Nnb0ZBY09Dd2dCRVJBUkVBRUlDdzRITW1WbFpUSXpabVptTXdjTkN3Z0NEZzRPRHY0K09XVkxMQ3hMWlRrNVpVc3NMRXRsT1FKWkd5NCtJeU0rTGhzYkxqNGpJejR1RzE0SERRb0hBUUlFQXdNQ0NSVVZGUW9IRGdzSEFnSUNBUUVDQWdJSEN3NEhDaFVWRlFrQ0F3TUVBZ0VIQ2cwSFZveUZpVlFIRFFvSEFRWUlCZ01EQmdnR0FRY0tEUWRKa1pHUlNQM2pMRXRsT1RsbFN5d3NTMlU1T1dWTExBQUFBUUF0LytRRDNnTnZBRU1BQUFFMU5DNENKeTRCRGdFSERnTUhEZ0VVRmhjZUF4Y2VBek15UGdJM1BnTTlBUjRERnhZVURnRUhEZ0VlQVRNeVBnSTFOQzRDSndIZUFnVUlCZ1lORFEwR1NvRmhPZ0lGQlFVRkFqcGhnVW9EQndjSEJBTUdCZ1lEQmdnRkFpOWVVRG9NRFJjdUlTTWRCeWdpSkdWZFFWbVJ1RjhDakxrSERRc0pBd1FEQVFRRU1uWm9TQU1IRUJBUEJnUklhSFl4QWdNQ0FRRUJBZ0VEQ1FzTkI3Y0JDeFlnRmhndktpTU1EaXNwSFM1V2ZFNWNmMUVvQlFBQUFBRUJFUUJ2QXhBRFVRQXRBQUFCTGdNbkxnRWlCZ2NPQXhVVURnSVZGQjRDRlJRZUFoY2VBVEkyTno0RE56NEJOQ1luQXhBRFIzV1pWUVlNREF3R0Jna0hCQU1FQXdNRUF3UUhDUVlHREF3TUJsV1pkVWNEQndjSEJ3SUNBMFprY2pBREF3TURBd2tLREFZQk9GeDJQajUyWERnQkJnd0xDUU1EQXdNRE1ISmtSZ01IRWhJU0J3QURBQTBBVUFQd0F6QUFGZ0F0QUVRQUFCTWhNajRDTlRRdUFpTWhJZzRDRlJRZUFqTUZJU0lPQWhVVUhnSXpJVEkrQWpVMExnSWpFU0VpRGdJVkZCNENNeUV5UGdJMU5DNENJMWNEVUE4YUZBc0xGQm9QL0xBUEdoUUxDeFFhRHdOUS9MQVBHaFFMQ3hRYUR3TlFEeG9VQ3dzVUdnLzhyZzhhRkFzTEZCb1BBMUlQR2hRTEN4UWFEd0taRFJVY0R3OGJGQXdNRkJzUER4d1ZEWW9NRkJzUER4c1VDd3NVR3c4UEd4UU0vdFFNRlJzUER4b1RDd3NUR2c4UEd4VU1BQUFDQUFEL3dBUG5BOEFBS2dBL0FBQVRGQjRDTXpJK0FqY0JIZ016TWo0Q056NEJOQ1luQVQ0RE5UUXVBaU1pRGdJVk16UStBak15SGdJVkZBNENJeUl1QWpVQVBHaU1VQnczTkRBV0FTRUdEaEFRQ0FnUUR3NEdEQXdNRFA3ZURoWVBDRHhvakZCUWpHZzhnQ2hHWFRVMVhVWW9LRVpkTlRWZFJpZ0NRRkNNYUR3SUR4WU8vdDRHQ1FZREF3WUpCZ3dnSVNBTUFTRVdNRFEzSEZDTWFEdzhhSXhRTlYxR0tDaEdYVFUxWFVZb0tFWmROUUFDQUFML3dBUCtBNzRCQXdFWUFBQUJMZ01uTGdNeExnTTFORDRDTnpBK0FqRStBVFFtSnk0REp5NEJJZ1lIRGdNeERnTWpJaTRDTHdFdUF5Y3VBU0lHQnc0RER3RU9BeU1pTGdJdkFTNEJJZ1lIRGdNSERnRVVGaGNlQXpFZUF4VVVEZ0lQQVE0REJ3NEJGQllYSGdNZkFSNERGUlFPQWc4QkRnRVVGaGNlQXhjZUF6TXlQZ0kvQVQ0RE16SWVBaGN3SGdJeEhnTVhNaDRCTWpNNkFUNEJNejREUHdFK0F6TXlIZ0lmQVI0RE16SStBamMrQXpjK0FUUW1KeTRETVM0RE5UUStBamN3UGdJM1BnTTNQZ0UwSmljRklpNENOVFErQWpNeUhnSVZGQTRDSXdQK0FRZ01Ed2tMSGhzVENoQU1Cd0VDQkFJUkZCRUdCUVlHQ0JBUkVnb0hFQkVRQndrWUZnOEVDQWdJQkFvU0R3b0NDd0VJREJBSkRCa1pHQXdKRUF3SUFRc0NDZzhUQ2dVSkNRZ0VRd2NRRVJBSENoSVJFQWdHQmdZR0JoSVFDd01FQXdJSURSSUtVd2tRREFnQkFRRUJBUUVJREE4SlV3b1NEUWdDQXdRRE13WUZCZ1lJRUJFU0NnUUlDQWdFQkFnSUJ3TkRCQWdKQ1FVS0V3OEtBZ01FQXdFSURCQUpCZ3dNREFZR0RBd01CZ2tRREFnQkN3SUtEeElLQkFrSUNBTkZBd2NJQ0FRRUNBZ0lCQW9TRVJBSUJnWUZCZ2NTRVF3Q0JBSUJCd3dRQ2hNYkhnc0pEd3dJQVFFQkFRSCtBaVEvTHhzYkx6OGtKRDh2R3hzdlB5UUI4UWtRREFnQkFRUURBZ0lLRHhJS0JBZ0lCd01XR2hZSEVCRVFCd29TRVJBSUJnWUZCZ2NTRVF3Q0JBTUNCdzBSQ2xVSkR3d0lBUUVCQVFFQkNBd1BDVlVLRVEwSEFnTUVBalFHQlFZR0NCQVJFZ29IRUJFUUJ3Z1hGUThFQ0FnSkJBc1REd29DQ3dFSURCQUpEQmtaR0F3SkVBd0lBUXNCQ2c4VEN3VUpDUWdFUXdjUUVSQUhDaElSRUFnREJBTUNBUU1FQXpRQ0JBTUNCdzBSQ2hzZ0dna1BEQWdCQVFFQkFRRUlEQThKVlFvUkRRY0JBZ1FDTlFNRUF3RUJBd1FEQ0JBUkVnb0hFQkVRQndrWUZnOERCd2dJQkFvU0R3b0NBZ01FQVFFSURCQUpEQmtaR0F6Zkd5OC9KQ1EvTHhzYkx6OGtKRDh2R3dBQ0FBRC85QVFBQTJ3QVBnQnVBQUFCTGdNbkxnSUdCdzRESFFFaURnSUhCaDRDRnhZeVBnRTNQZ016RlJRZUFoY2VBVDRCTno0RE56NEROVFF1QWljQklSRWhOU0l1QVNJaklnNENCdzRERlJFVUhnSVhIZ016TWo0Q056NERQUUVPQXdjVkEvY0NNbE5zUEFVS0N3c0ZCUWdHQTFlUGFENEdCQUVLRXc0UUlCMFlDQm91T0VrMEF3WUlCUVVMQ3dvRVBHeFRNZ0lDQXdJQkFRSURBdjczL1pvQnZBOGpKQ01QS1ZOVFV5a1lLUjRSRVI0cEdDbFRVMU1wS1ZOVFV5a1lLUjRSRGlJa0pCRUNRQU0vV1dNb0F3TUJBZ0lEQ0FrS0JxVTFTVTRaRWg0WUV3WUlDQTBGRGhvVURLa0dDZ2tIQXdJQ0FRTURLR1JaUHdJREJnWUdBd01HQmdZRC9qMENab1lCQVFJRUJnUUNGU0VyR1AyZ0dDc2hGUUlFQmdRQ0FnUUdCQUlWSVNzWWlRNGNHeHNNSUFBQUFBRUFud0RoQTRFQzRRQXRBQUFCTGdNbkxnRWlCZ2NPQXdjT0FSUVdGeDRETXpJZUFqTXlQZ0l6TWo0Q056NEJOQ1luQTRFd2NtUkdBd2NTRWhJSEEwWmtjakFEQXdNREF3a0xEQVlCT0Z4MlBqNTJYRGdCQmd3S0NRTURBd01EQVRWVW1YVkhBd1lHQmdZRFIzV1pWQVlNREF3R0Jna0hCQU1FQXdNRUF3UUhDUVlHREF3TUJnQUNBQUQvMEFRQUE2NEFQZ0JoQUFBVE14NERGeDRETXpJK0FqYytBemN6TWo0Q056NEJMZ0VuTGdNbkxnTWpJZzRDQnc0REJ3NENGaGNlQXpNRkZBNENCeUV1QXpVakZCNENGUjRETXlFeVBnSTNORDRDTlNQeWl3VU9EZzRGQlE4VUdROFBHUlFQQlFRTkR3NEdpd1lLQ1FnREFnSUJBd01vWDFNNkF3TUdCZ1lEQXdZR0JnTURPbE5mS0FNREFRSUNBd2dKQ2dZQ1p3UUdCd1A5ZFFNSEJnU21EQTRNQkJBV0dnNEREZzRiRmhBRURBNE1wZ0kySUVFNEtna0lEUWtGQlFrTkNBZ3BPRUlnQXdZSUJRVUxDd3NGTzJ4VU13SUNBd0lCQVFJREFnSXpWR3c3QlFzTEN3VUZDQVlEaVRaZFRUMFdGanhOWFRkbm1tYzFBZzRYRUFrSkVSY09BalZubW1ZQUFRQWovOUFEM1FPdUFGVUFBQ1V1QXljdUF5Y3VBeWNtUGdJM1BnSW1KeTRESXlJT0FnY09BUjRCRng0REJ3NERCdzREQnc0REJ3WWVBaGN5SGdJek1qNENOejRETXo0REp3UGRDQnduTVJ3SUVoTVVDaFFvSWhrRkF3RUlEd3NoSnd3UUZoRXROVHNnSHpzMUxSRVdFQXdvSWdzUENBRURCUmtpS0JNTEZSTVJDQnd4Snh3SUFnSUdDZ1lDTVd1c2ZENW9Wa1ViR3ljWkRRRUdDZ1lDQWh3bU96QW5FZ1VKQ1FnRUNCRVVHQThLRnhvZUVUWmtYRk1sSFM0Z0VSRWdMaDBsVTF4a05oRWVHaGNLRHhnVUVRZ0VDQWtKQlJJbk1Ec21CdzBMQ0FJTERRc0RCUVlEQXdZRkF3SUlDdzBIQUFBQUFBSUFBUC9CQkFBRHdRQVlBRndBQUFFVURnSUhFU01SSWk0Q05UUStBanNCTWg0Q0ZRRU9BeU1xQVM0Qkp5NERKeVlPQWpFUk1ENENNekllQWhjZUF4Y2VBek02QVQ0Qk56SStBamMrQXpNeUhnSVZFUTREQndFUkRCTVpEWWtPR1JNTEN4TVpEb2tPR1JNTEF0UUxIeVVxRmdnUkVSRUlLVG8wT1NnblhGQTJJRFJDSWdvVkZSUUpLRGswT2lrR0RRME5CZ3NXRlJVS0JBa0pDUVFFQ0FnSUJBY01DUVlCQlFjSkJRTjlEaGdTQ3dIOGlRTjNDeElaRGc0WkV3c0xFeGtPL09zRUNBY0ZBUUlDQ0NveExnc0tBd3dOQWprSUNnZ0JBZ1FDQ3ljcEpBZ0JBZ0lCQWdNQ0FRSUNBUUVDQWdFRkNRd0gvZlVHQ2djRkFRQUFBQUFFQUF6Lyt3UUFBM0FBRmdBdEFFUUFkQUFBRXlFeVBnSTFOQzRDSXlFaURnSVZGQjRDTXdVaElnNENGUlFlQWpNaE1qNENOVFF1QWlNUkl5SU9BaFVVSGdJN0FUSStBalUwTGdJakpTTTFOQzRDS3dFaURnSWRBU01pRGdJSEhBRWVBUjhCSGdJeU16b0JQZ0UvQVQ0Q05EVXVBeVB5QXJnU0lCZ09EaGdnRXYxSUVpQVlEZzRZSUJJQ3VQNjVFaUFZRGc0WUlCSUJSeElnR0E0T0dDQVMrUklnR0E0T0dDQVMrUklnR0E0T0dDQVMvbUNUQWdNRUFyVUNCQU1Da3dJREF3SUJBUUVCK1FFQ0FnSUJBUUlDQWdINUFRRUJBUUlEQXdJQ3ZBOGFJUklTSUJnT0RoZ2dFaEloR2crbERoZ2dFaElnRncwTkZ5QVNFaUFZRHY2YUR4a2hFaElmRncwTkZ4OFNFaUVaRDFYL0FnUURBZ0lEQkFML0FRSURBZ0lEQXdNQjlBRUJBUUVCQWZRQkF3TURBZ0lEQWdFQUFBQURBQUQvd0FRQUE4QUFGQUFwQUlFQUFBRWlEZ0lWRkI0Q016SStBalUwTGdJakVTSXVBalUwUGdJek1oNENGUlFPQWlNVERnTUhEZ01IRkE0Q0t3RWlMZ0kxUGdNM1BnTTFOQzRDSnk0REl5SU9BZ2NPQXlzQklpNENOVHdETlRBK0FqRStBek15SGdJWEhnTVZGQTRDQndJQWFydUxVRkNMdTJwcXU0dFFVWXU2YWhBY0ZRME5GUndRRUJ3VkRRMFZIQkRaQlJFWUhoSUlFQTRMQWdVSkRBZEZCdzBLQmdFbU5EZ1RCQVVEQVFNR0NRWUdEaEVUQ2hFZUdCQURBUVlKQ3daSEJ3d0pCUUVCQVFrbE4wa3VHUzBvSXc4UEZ4QUlBd1lKQmdQQVVJdTZhbXE3aTFCUWk3dHFhcnFMVVB4L0RSVWNFQkFjRlEwTkZSd1FFQndWRFFISkNoWVpIQkFIRUJJVUN3Y05DZ1lGQ1F3SEtEc3hLeGdGQ2dzTUJnZ05EQXNHQmdrR0F3d1VHQXdHQ1FjREJRZ01Cd0VDQWdJQkFnSUNIRGt1SFFjT0ZRNE9JQ01sRXdzVkZCTUpBQUFDQUFEL3dBUUFBOEFBRkFBMUFBQUJJZzRDRlJRZUFqTXlQZ0kxTkM0Q0l3RVVEZ0lqSVNJdUFpY3VBVFEyTno0RE15RXlIZ0lWSGdFVUJnY0NBR3E3aTFCUWk3dHFhcnVMVUZHTHVtb0JXUVlLRFFmOWx3Y05DZ1lCQVFFQkFRRUdDZzBIQW1rSERRb0dBZ0lDQWdQQVVJdTZhbXE3aTFCUWk3dHFhcnFMVVAyOUNBMEpCUVVKRFFnUklpSWlFUWdOQ1FVRkNRMElFU0lpSWhFQUFBQUFBd0FKLytJRUFBT2VBQ0VBTmdCYkFBQWxBUzRESXlJT0FnY0JEZ0VVRmhjZUF6TWhNajRDTlRRdUFpY0ZJaTRDTlRRK0FqTXlIZ0lWRkE0Q0l4TU9BeXNCSWk0Q0p5NERKelErQWpjK0FUSVdGeDRERlE0REJ3UHova2tFRFJBU0NRb1NEdzBFL2tRRUJBVUZCUTBQRVFrRGR3NFpFd3NDQXdVRC9nMFFIQlVNREJVY0VCQWNGUXdNRlJ3UUxBRUlEQTRJQXdjT0N3Z0JCZ29JQndNRkNRd0hEUllWRmcwSURBZ0VBd2NJQ2daT0F5MElEUWtGQlFrTkNQek1DQkVSRVFnSURBa0ZDeElaRGdZTENna0VEd3dWSEJBUUhCVU1EQlVjRUJBY0ZRd0JHd2dQQ3djSEN3OElJa1ZFUVI0SERnd0pBZ0lDQWdJQ0NRd09CeDVCUkVVaUFBQURBQUgvd0FRQUE4QUFVUUJtQUpzQUFBRStBemMrQWlZbkxnTW5MZ01qSWc0Q0J3NEJIZ0VYSGdNSERnTUhEZ01IRGdNSEJoUWVBUmNlQXpNeUhnSTdBUzRETlRRK0FqYytBemNYSWc0Q0ZSUWVBak15UGdJMU5DNENJeE1VRGdJckFSVVVEZ0lyQVNJdUFqMEJJeUl1QWowQk5ENENPd0UxTkQ0Q093RXlIZ0lkQVRNeUhnSWRBUUpGREJnV0ZBZ05Fd2dEQ0FJRkJnY0VFQzQzUGlFaFBqY3VFUlVQRENjaEN3OEpBZ01FRnlBbUVnb1RFaEVJSGk4aUZ3Y0JBUU1DQWdVR0J3UUNLMk9pZVNVT0ZnOElDQkVhRWdnVEZCVUt1elZkUlNnb1JWMDFOVjFHS0NoR1hUV2FBd1VHQkZVREJRWUVSQVFHQlFOVkJBWUZBd01GQmdSVkF3VUdCRVFFQmdVRFZRUUdCUU1CMXdzVkZoa1BHRGM1T1JzSERnNE9CaHdzSHhBUUh5d2NKRkZaWVRRUUhSa1dDUTBXRXhBSUJBZ0lDUVVUTERRN0lnTUhCd2NEQXdVRUF3WUhCaFFzTHpJYUhEWXpMeFVLRlJRVENCY29SVjAxTlYxRktDaEZYVFUxWFVVby90NEVCZ1VEVlFRR0JRTURCUVlFVlFNRkJnUkVCQVlGQTFVRUJnVURBd1VHQkZVREJRWUVSQUFCQUZrQUdRT2xBMlVBUkFBQUFTNERJeUVSTkM0Q0p5NEJJZ1lIRGdNVkVTRWlEZ0lIRGdFVUZoY2VBek1oRVJRZUFoY2VBVEkyTno0RE5SRWhNajRDTno0Qk5DWW5BNlVCQ0F3UUNmNytCZ3NQQ0JRb0tDZ1VDQThMQnY3L0NSQU1DQUVDQWdJQ0FRZ01FQWtCQVFZTER3Z1VLQ2dvRkFnUEN3WUJBZ2tRREFnQkFnSUNBZ0lOQ1E4TEJnRUJDUkFNQ0FFQ0FnSUNBUWdNRUFuKy93WUxEd2tVSnljbkZBa1BDd2IrL2drUURBZ0JBZ0lDQWdFSURCQUpBUUlHQ3c4SkZDY25KeFFBQUFFQUFnQTFCQUFEVHdCV0FBQVRBVDRETXpJZUFoY2VBeGNlQXhVVURnSUhEZ01QQVNFeUhnSVhIZ01WRkE0Q0J3NERJeUVYSGdNWEhnTVhIZ01WRkE0Q0J3NERJeUl1QWljQkFnRjlDQkVTRkFzTEZCSVJDQVFIQmdVQ0FnTUNBUVFJQ3dnRUNRb0tCVndDQ2dzVUVoRUlDQXNJQkFRSUN3Z0lFUklVQy8zMlhBVUtDZ2tFQkFjR0JRSUNBd0lCQkFnTENBZ1JFaFFMQ3hRU0VRaitnd0hEQVhJSENnY0RBd2NLQndRSUNRa0ZCUWtKQ1FVTEV4RVFCd1VLQ2dvRldBUUhDd2NIRUJJVEN3b1RFaEFIQndzSEJGZ0ZDZ29LQlFRSUNBa0ZCUWtKQ1FRTEV4SVFCd2dMQ0FRRUNBc0lBWEFBQUFBQ0FJbi8wZ040QTdBQUxnQThBQUFCTkM0Q0t3RTFOQzRDSXlJT0FoMEJJeUlPQWhVUkZCNENGeDRETXpJK0FqYytBelVSSlRVMFBnSXpNaDRDSFFFakEzZ0xFeGtPSVNkSVpUMDlaVWduSkE0WUVnb0lEaFFNS0ZCUlVTZ29VRkJQS0F3VkR3bitJZ1lWS1NJaUtSVUd6UUdyRGhzVURLcytaVWduSjBobFBxc05GaHdPL3BJTUZoSU1BZ2tPQ1FRRUNRNEpBZ3dTRmd3QmNVcXJFQ1FlRkJRZUpCQ3JBQUFCQUFZQUt3UDVBMDhBSkFBQUFUNEJOQ1l2QVM0QklnWUhBU2N1QVNJR0R3RU9BUlFXRndFZUF6TXlQZ0kzQVFQNUF3TURBNVVEQ0FnSUEvNDd4Z01JQ0FnRGxRTURBd01CYWdJRUJBUUNBZ1FFQkFJQ2FnS2JBd2dJQ0FPVkF3TURBLzQ1eHdNREF3T1ZBd2dJQ0FQK2xnRUNBZ0VCQWdJQkFtb0FBUUJmQUNJRG9BT3hBQzBBQUFFMUlnNENGUlFlQWpNeVBnSTFOQzRDSnpjZUF4VVVEZ0lqSWk0Q05UUStBak0xRndjQ0FFRnlWVEV4VlhKQlFYSlZNUXdXSUJSTUd5b2VFRUp4bUZaV21IRkJRWEdZVnB5Y0FxMU9NVlZ5UVVGeVZURXhWWEpCSHpzM01SVklIRUZKVHlwV21IRkJRWEdZVmxhWWNVRk9nb0lBQUFBQUFRQWsvOFlEM2dQQUFEd0FBQ1V1QXpVMExnSWpJZzRDRlJRT0FnY09BeGNlQXhjZUF4Y2VBek15UGdJM1BnTTNQZ00zTmk0Q0p3UEdBaTgyTFRoWWJEUTBiRmc0TFRZdkFnY0tCd01CQVFjTERnZ0NLVXRxUWdjY0ppOGFHaThtSEFkQ2Frc3FBZ2dOQ2djQkFRSUdDZ2ZxQWkxWWhGbDBrVkFjSEZDUmRGaUVXUzBDQmc0UUVRa0pFUTRMQkFFUUZSWUhHQ2dkRVJFZEtCZ0hGaFVRQVFRTERoQUpDUklRRGdZQUFBTUFBUC9BQkFBRHdBQVVBQ2tBVVFBQUFTSU9BaFVVSGdJek1qNENOVFF1QWlNVk1oNENGUlFPQWlNaUxnSTFORDRDTXhNaklpNENOVFErQWpjMUxnTTFORDRDT3dFeUhnSVZCeDRERlJRT0FpTUNBR3E3aTFCUWk3dHFhcnVMVUZDTHUyb1JIUllORFJZZEVSRWRGZzBORmgwUk8zZ0xFdzRJQlFrTUJ3Y01DUVVJRGhNTFdBc1REZ2dCQnd3SUJRZ09Fd3NEd0ZDTHUycHF1NHRRVUl1N2FtcTdpMUMzRFJZZEVSRWRGZzBORmgwUkVSMFdEZjJRQ0E0VEN3Z1BEUW9EdUFNS0RROElDeE1PQ0FnT0V3dnBBd29NRHdnTEV3NElBQUFCQUJYLzBRUHpBNjhBcHdBQUFSUU9BaXNCRng0QkZBWUhEZ01qSWk0Q0x3RWpGUmNlQVJRR0J3NERJeUl1QWk4QkZSUU9BaU1pTGdJOUFRY09BU0ltSnk0Qk5EWS9BVFVqQnc0REl5SXVBaWN1QVRRMlB3RWpJaTRDTlRRK0Fqc0JKeTRCTkRZM1BnRXlGaDhCTXpVbkxnRTBOamMrQVRJV0h3RTFORDRDTXpJZUFoMEJOejRCTWhZWEhnRVVCZzhCRlRNM1BnRXlGaGNlQVJRR0R3RXpNaDRDRlFQekNBNFRDcEJ4Q0FnSUNBUUpDZ29GQlFzS0NRUzdZTDhJQ0FnSUJBa0tDd1VGQ2dvSkJISUlEaE1LQ3hNT0NISUlGQlVVQ0FnSUNBaS9ZTHdFQ1FvS0JRVUtDZ2tFQ0FnSUNIQ1BDeE1PQ0FnT0V3dVBjQWdJQ0FnSUZCVVVDTHBodndnSUNBZ0lGQlVVQ0hJSURoTUxDaE1PQ0hJSUZCVVVDQWdJQ0FpL1lMc0lGQlVVQ0FnSUNBaHdqd29URGdnQndBc1REZ2h5Q0JRVkZBZ0VCZ1FDQWdRR0JMOWh1d2dVRlJRSUJBWUVBZ0lFQmdSd2p3c1REZ2dJRGhNTGozQUlDQWdJQ0JRVkZBaThZTDhFQmdRQ0FnUUdCQWdVRlJRSWNnZ09Fd3NLRXc0SWNnZ1VGUlFJQ0FnSUNMOWd1d2dVRlJRSUNBZ0lDSEdRQ2hNT0NBZ09Fd3FQY0FnSUNBZ0lGQlVVQ0x0Z3Z3Z0lDQWdJRkJVVUNISUlEaE1LQUFnQUFBQVhCQUFEYVFBNkFEOEFSQUJKQUU0QVV3QllBRjBBQUFFSEp3Y25CeWNISndjbkJ5Y0hKd2NuQnljSEVSUU9BaU1pTGdJMVBBRVFOREVpRGdJVkVSUWVBak1oTWo0Q05SRXdMZ0luQVNFMUlSVTFJVFVoRlRVaE5TRVZCU0UxSVJVMUlUVWhGVGNoTlNFVk5TRTFJUlVEMENzdk1USW5MU2twS3l3eUx5d3FKQ3duTFNZR0NRc0ZDQThNQndvWkZnOElEUklLQTV3S0VnMElEUkVRQXY1Sy90a0JKLzdaQVNmKzJRRW5BWWIrd3dFOS9zTUJQUUgrd2dFKy9WSUNyZ05tS0NvcUtpb3FLaXdzS2lvcEtTY25LaW9xS3YxREN4QUtCQWdNRGdjSDNRRUQxZ1VLRHdyOU13b1NEUWdJRFJJS0F2Y0xEZzBDL1NoSVNIdEpTWGxMUy9SSVNIdEpTWHRKU1pLVGt3QUFBQUVBQWdGYUEvMENKZ0FnQUFBQk5DNENJeUVpRGdJSERnRVVGaGNlQXpNaE1qNENOVDRCTkNZbkEvMEdDZzBIL0U4SERRb0dBUUVCQVFFQkJnb05Cd094QncwS0JnSUNBZ0lDQXdnTkNRVUZDUTBJRVNJaUloRUlEUWtGQlFrTkNCRWlJaUlSQUFBQUFnREgvOEFET1FQQUFCUUFiQUFBSlNJT0FoVVVIZ0l6TWo0Q05UUXVBaU1UTGdNaklnNENCeFFPQWpFY0FRWVVGUlFlQWpzQk1qNENOejRETXpJZUFoY2VBeFVVRGdJSERnTUhGQjRDT3dFeVBnSTFQZ00zUGdNM1BnTTFOQzRDSndIbkZpZ2VFaEllS0JZV0tCNFNFaDRvRnZvVk1UZy9JMEJuVFRNTUFRRUJBUWNORVFwa0NBOE1DUUlFRnlFcUdBOGFGeFFJQ0F3SUJBSUVCd1lhVGtvMkFnZ05FZ3BoQ2hJTkJ3TVBGQmNMR1NvaEdBY0lEUWtGREJZaEZac1NIaWdXRmlnZUVoSWVLQllXS0I0U0F0Z1VIUk1LS1VGUUp3RURBd0lDQXdNREFnb1JEQVlGQ1EwSUVTSWNFUVVKRFFnSUVCRVNDd2dRRHc4SElUMUVVemdLRVEwSENBNFNDZzhjR1JZS0ZpZ2pIdzBOR3h3ZER4bzBNUzRVQUFBQUF3QnRBVjBEa3dJbEFCUUFLUUErQUFBVEZCNENNekkrQWpVMExnSWpJZzRDRlNFVUhnSXpNajRDTlRRdUFpTWlEZ0lWSlRJZUFoVVVEZ0lqSWk0Q05UUStBak50RUJzbEZSVWxHeEFRR3lVVkZTVWJFQUV2RUJzbEZSVWxHeEFRR3lVVkZTVWJFQUdURlNVYkVCQWJKUlVWSlJzUUVCc2xGUUhCRlNVYkVCQWJKUlVWSlJzUUVCc2xGUlVsR3hBUUd5VVZGU1ViRUJBYkpSVmtFQnNsRlJVbEd4QVFHeVVWRlNVYkVBQUFBQUFCQUJ2LytRUGpBNGtBaWdBQUFRNERJekFxQWlNaUxnSW5MZ01uSmo0Q1B3RXVBeWN1QXdjT0F3Y09Bd2NHSGdJWEhnTVhGajRDTno0QkhnRVhIZ0VPQVE4QkRnTUhCaTRDSnk0REp5NENORGMrQXpjK0F6YytBemMrQWpJek1oNENGeDRERnpjK0FqSVhIZ01WRmc0Q0J3UE5BUVlKQ3dZREJRZ0ZHbHR4Zno0RkNRY0ZBUUVCQkFjRWhnWU1EUTBIRFJ3ZEhROFBIUndiRFE0WEVnNEVDUU1YS3g0UEl5WW9GUlVxS1NrVURCa1hFd1lGQWdVTUNRRVlPRHcvSHlCQVB6MGRIamN4S1JBUUZnd0dBd2dMRGdnSkZCVVhEQmcrUlVvbENSRVJFUWtkT1RjMUdCRWdIaHdNWlFRSkNnb0ZCUWtIQkFvRURROEJBWWtHQ2dnRUFnb1VFZ0VGQ0FrRkJRb0pDQU5aQmd3TENnUUlEQWNDQWdFSURSSUxEQmtiSFJBZVIwWkFGd3dURGdvQ0FnRUdEUW9HQVFnUkRBb1dGUk1IQVJJZkZ3NEJBUWdSR2hFUktqRTNIaDVCUlVna0VpTWlJUkFRSGh3YURCa3FJQllGQVFJQkNBOFdEd29YR1J3UGRnUUdBd0lDQmdnSkJVNmVnRk1FQUFFQUFQL0JCQUFEd1FCQ0FBQUZJaTRDSnlVT0F5TWlMZ0kxTkQ0Q016SWVBaGNsTlRRK0FqTXlIZ0lWRkE0Q0l5SXVBaWNGRlFVK0F6TXlIZ0lWRkE0Q0l3TkVJejR4SVFiK25Bc1pHeDBQSjBRekhoNHpSQ2NQSFJzWkN3RmhIak5FSnlkRU14NGVNMFFuRHgwYkdRditud0ZIRFI0aUpSUW5SRE1lSGpORUp6OFhLVGtodXdnTkNRVWVNMFFuSjBRekhnVUpEUWk2QWlkRU14NGVNMFFuSjBRekhnVUpEUWk2QkswTkZRNElIak5FSnlkRU14NEFBQUFBQWdBQS84QUVBQVBBQUJRQU9RQUFBU0lPQWhVVUhnSXpNajRDTlRRdUFpTUpBUTRESXlJdUFpOEJMZ0UwTmo4QlBnRXlGaDhCQVQ0Qk1oWWZBUjRCRkFZSEFnQnF1NHRRVUl1N2FtcTdpMUJRaTd0cUFUNytld0VDQWdNQkFRTUNBZ0hrQWdJQ0FsNENCUVVGQW53QkhnSUZCUVVDWGdJQ0FnSUR3RkNMdTJwcXU0dFFVSXU3YW1xN2kxRCtpdjU3QVFFQkFRRUJBUUhrQWdVRkJRSmVBZ0lDQW4wQkhnSUNBZ0plQWdVRkJRSUFBQUFBQkFBaS8vTUQzZ09OQUUwQW5nRFpBU29BQUFFdUF5Y3VBeU1pRGdJSERnTUhEZ01WRkI0Q0Z4NERGeDRERnhVVUhnSVhNaDRCTWpNeVBnSS9BVEkrQWpjK0F6YytBelUwTGdJbkFTSXVBaWN1QWpRMU5ENENNem9CSGdFWEhnTXpNajRDTlRRdUFqVTBQZ0l6TWg0Q0Z4NENGQlVVRGdJaktnRXVBU2N1QXlNaURnSVZGQjRDRlJRT0FpTWxGQTRDSXlJdUFqMEJCdzRESXlJdUFpOEJGUlFPQWlNaUxnSTlBVFErQWpNMkhnSWZBVGMrQXpNMkhnSWRBUmNpTGdJbkxnSTBOVFErQWpNNkFSNEJGeDRETXpJK0FqVTBMZ0kxTkQ0Q016SWVBaGNlQWhRVkZBNENJeW9CTGdFbkxnTWpJZzRDRlJRZUFoVVVEZ0lqQTlBRUlqRTdIU1JJU0Vna0pFaElTQ1FkT3pJakJRTUZBd0lDQXdVREJTTXlPeDBLRlJVVkNnTUZDQVVDQXdNRUFnTUdCZ1lDekIwNk9qb2RIVHN4SWdRRUJRTUNBZ01GQlAxS0RCa1dFZ1FCQVFFRUJnZ0VBZ01EQXdFRkRBMFBDQWtPQ1FVbUxpWUxGUjRUQ1JZVkVRUUJBUUVFQmdnRUFRTURBd0VHREF3TUJnY0xDQVFtTGlZS0ZTQVdBVndFQmdnRkJRZ0dCRG9CQWdNRUFnSUVBd0lCT2dRR0NBVUZDQVlFQkFjSkJRZ09EQWtETEN3Q0JnZ0tCUWdQREFkMkRCa1dFZ1FCQVFFRUJnZ0VBZ01EQXdFRkRBMFBDQWtPQ1FVbUxpWUxGUjRUQ1JZVkVRUUJBUUVFQmdnRUFRTURBd0VHREF3TUJnY0xDQVFtTGlZS0ZTQVdBdDBkTnl3ZEF3UUdCQUlDQkFZRUF4MHNOeDBYTGk4dkdCY3VMaTBXSFRjc0hRTUJBZ0VCQWE4RkNnZ0hBZ0VCQVFJRUFzVUNBd1FEQXh3ck5oMFdMaTR1Rnhjdkx5NFgvdDhFQndvSEFRTURBd0VGQ0FZREFRRUJCQVlFQWdRSENRVU9DZ3dhSGcwWUVnb0RCZ2tHQVFNREF3RUZDQVVEQVFFQkF3VURBUU1HQ0FVTkNRMGFIZzhaRWdvWkJRZ0dCQVFHQ0FXQmp3SURBZ0VCQWdNQ2o0RUZDQVlFQkFZSUJhY0ZDUWNFQVFFRkNRZHNiQVVJQlFNQkFnWUxDS2NaQkFjS0J3RURBd01CQlFnR0F3RUJBUVFHQkFJRUJ3a0ZEZ29NR2g0TkdCSUtBd1lKQmdFREF3TUJCUWdGQXdFQkFRTUZBd0VEQmdnRkRRa05HaDRQR1JJS0FBQUFBQU1Bd1ArL0EwQUR2d0FZQUIwQU1nQUFBUkVVRGdJaklTSXVBalVSTkQ0Q015RXlIZ0lWQnlFUklSRUROQzRDSXlJT0FoVVVIZ0l6TWo0Q05RTkFDaEVYRGY0QURSY1JDZ29SRncwQ0FBMFhFUXByL2xVQnE1VUtFUmNORFJjUkNnb1JGdzBORnhFS0EzLzhnQTBYRVFvS0VSY05BNEFORnhFS0NoRVhEV3Y5cXdKVi9Tc05GeEVLQ2hFWERRMFhFUW9LRVJjTkFBQUFBUUFBQUFFQUFDQlRxa1pmRHp6MUFBc0VBQUFBQUFET2xHSmRBQUFBQU02VVlsMEFBUCsvQkFBRHdRQUFBQWdBQWdBQUFBQUFBQUFCQUFBRHdQL0FBQUFFQUFBQUFBQUVBQUFCQUFBQUFBQUFBQUFBQUFBQUFBQUFPZ0FBQUFBQ0FBQUFCQUFBVVFRQUFSQUVBQUJlQkFBQUlnUUFBSWtFQUFDUkJBQUF6UVFBQUpFRUFBQ1BCQUFBQUFRQUFBY0VBQUF5QkFBQUlnUUFBQU1FQUFBQkJBQUFBQVFBQU84RUFBQUFCQUFBVVFRQUFCQUVBQUFBQkFBQUVBUUFBQUVFQUFCREJBQUFMUVFBQVJFRUFBQU5CQUFBQUFRQUFBSUVBQUFBQkFBQW53UUFBQUFFQUFBakJBQUFBQVFBQUF3RUFBQUFCQUFBQUFRQUFBa0VBQUFCQkFBQVdRUUFBQUlFQUFDSkJBQUFCZ1FBQUY4RUFBQWtCQUFBQUFRQUFCVUVBQUFBQkFBQUFnUUFBTWNFQUFCdEJBQUFHd1FBQUFBRUFBQUFCQUFBSWdRQUFNQUFBQUFBQUFvQWpBRElBVG9CcGdIb0FqUUNnQUxxQXk0RHRnUktCTDRGZEFZVUIwWUhsZ2ZhQ0N3SXdnbU9DcklMVUF3MEROd05QZzJDRGVJT1BBK3FFRVFRaUJFT0VZZ1NDQktrRTB3VG5CUWVGT29WVGhYSUZod1dXaGFjRnZJWFlCaENHTXdaQUJtUUdlZ2FwaHNFRzE0YzRCMHNBQUFBQVFBQUFEb0JLd0FJQUFBQUFBQUNBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQTRBcmdBQkFBQUFBQUFCQUE0QUFBQUJBQUFBQUFBQ0FBNEFSd0FCQUFBQUFBQURBQTRBSkFBQkFBQUFBQUFFQUE0QVZRQUJBQUFBQUFBRkFCWUFEZ0FCQUFBQUFBQUdBQWNBTWdBQkFBQUFBQUFLQUNnQVl3QURBQUVFQ1FBQkFBNEFBQUFEQUFFRUNRQUNBQTRBUndBREFBRUVDUUFEQUE0QUpBQURBQUVFQ1FBRUFBNEFWUUFEQUFFRUNRQUZBQllBRGdBREFBRUVDUUFHQUE0QU9RQURBQUVFQ1FBS0FDZ0FZd0JwQUdNQWJ3QnRBRzhBYndCdUFGWUFaUUJ5QUhNQWFRQnZBRzRBSUFBd0FDNEFNQUJwQUdNQWJ3QnRBRzhBYndCdWFXTnZiVzl2YmdCcEFHTUFid0J0QUc4QWJ3QnVBRklBWlFCbkFIVUFiQUJoQUhJQWFRQmpBRzhBYlFCdkFHOEFiZ0JIQUdVQWJnQmxBSElBWVFCMEFHVUFaQUFnQUdJQWVRQWdBRWtBWXdCdkFFMEFid0J2QUc0QUFBQUFBd0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUE9PSkgZm9ybWF0KCd0cnVldHlwZScpLFxuXHRcdCB1cmwoZGF0YTphcHBsaWNhdGlvbi9mb250LXdvZmY7Y2hhcnNldD11dGYtODtiYXNlNjQsZDA5R1JnQUJBQUFBQUQ5RUFBc0FBQUFBUHZnQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJQVXk4eUFBQUJDQUFBQUdBQUFBQmdEcS96TEdOdFlYQUFBQUZvQUFBQVJBQUFBRVRnZk9hTVoyRnpjQUFBQWF3QUFBQUlBQUFBQ0FBQUFCQm5iSGxtQUFBQnRBQUFPbGdBQURwWVZFd1hHbWhsWVdRQUFEd01BQUFBTmdBQUFEWUFTQWszYUdobFlRQUFQRVFBQUFBa0FBQUFKQWZDQS90b2JYUjRBQUE4YUFBQUFPZ0FBQURvNGdBTXhXeHZZMkVBQUQxUUFBQUFkZ0FBQUhhZEQ1QUliV0Y0Y0FBQVBjZ0FBQUFnQUFBQUlBQkRBUzF1WVcxbEFBQTk2QUFBQVRrQUFBRTVSQmUwMW5CdmMzUUFBRDhrQUFBQUlBQUFBQ0FBQXdBQUFBTUVBQUdRQUFVQUFBS1pBc3dBQUFDUEFwa0N6QUFBQWVzQU13RUpBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQWc1Z0lEd1AvQS84QUR3QUJBQUFBQUFBQUFBQUFBQUFBQUFBQUFJQUFBQUFBQUFnQUFBQU1BQUFBVUFBTUFBUUFBQUJRQUJBQXdBQUFBQ0FBSUFBSUFBQUFnNERUbUF2Ly9BQUFBSU9BQTVnRC8vLy9oSUFJYU53QUJBQUFBQUFBQUFBQUFBUUFCLy84QUR3QUJBQUFBQUFBQUFBQUFBZ0FBTnprQkFBQUFBQUVBVVFBUkE2NERiZ0JUQUFBQkxnRWlCZ2NCRGdFVUZoY2VBVEkyTndFK0FUUW1KeTRCSWdZUEFRNEJGQllYSGdFeU5qOEJQZ0V5RmhjZUFSUUdCd0VPQVNJbUp5NEJORFkzQVQ0Qk1oWVhIZ0VVQmc4QkhnTVhOejRCTkNZbkE2NG9abXBtS2Y0cktDZ29LQ2xtYW1Zb0FTQVpHUmtaR1Q5Q1B4bTBDZ29LQ2drWEdCY0p0UVlRRUJBR0JnWUdCdjdnRmpjNU54WVdGaFlXQWRVV056azNGaFlXRmhZRUN4RU1Cd0V1S1NrcEtRTnVLU2twS2Y0cktHWnFaaWtvS0Nnb0FTQVpQMEkvR1JrWkdSbTFDUmNZRndrS0Nnb0t0QVlHQmdZR0VCQVFCdjdoRmhZV0ZoWTNPVGNXQWRVV0ZoWVdGamM1TnhZRUR5QWlJeEl1S1dacVppZ0FBUUVRLzhBREVBUEFBQ2dBQUFFaElnNENGUkVVSGdJWEZqSStBVDhCRng0RE16b0RNejRETlJFMExnSWpBdEQrZ0EwWEVRb0NBd1VEQXdjR0JnTGIyd0lFQkFRQ0FRSUNBZ0VEQlFNQ0NoRVhEUVBBQ2hFWERmeFZBd1lGQkFFQkFRTUMyOXNCQWdJQkFRUUZCZ01EcXcwWEVRb0FBQUFBQVFCZS8rSUQzZ09lQUU4QUFDVW5NQzRDSXlJT0FnOEJEZ0ltSnk0REp5NERKeTRCUGdFL0FUNEROVFF1QWk4QkxnTWpEZ01IRGdFZUFSY2VBek15UGdJM1BnTTNOQzRDSndQTDdRUUdCZ0lFQ0FjR0FtVUVDd3NMQlJJaklpRVFFQjBiR0FzREFnRUZCR1VEQlFNQ0FRRUNBWUlDQmdnSkJSWXRLaVVPTWhVd2NWVTVlM3Q0TmhveExTY1FEaGNSQ3dJREJRY0UzbmNDQWdJQ0JBVURYQVFGQVFJREN4Z2JIaEFRSVNJakVnVUxDd3NFWkFNR0J3Z0VBd1VGQkFMdEJBY0ZBd0lKRHhVT01wcXp2bFU1V0R3ZkNCQVlFQTRqS0NzV0JRb0lCd0lBQUFBQUFRQWkvL0lEM2dPTUFFMEFBQUV1QXljdUF5TWlEZ0lIRGdNSERnTVZGQjRDRng0REZ4NERGeFVVSGdJWE1oNEJNak15UGdJL0FUSStBamMrQXpjK0F6VTBMZ0luQTlBRUlqRTdIU1JJU0Vna0pFaElTQ1FkT3pJakJRTUZBd0lDQXdVREJTTXlPeDBLRlJVVkNnTUZDQVVDQXdNRUFnTUdCZ1lDekIwNk9qb2RIVHN4SWdRRUJRTUNBZ01GQkFMY0hUY3NIUU1FQmdRQ0FnUUdCQU1kTERjZEZ5NHZMeGdYTGk0dEZoMDNMQjBEQVFJQkFRR3ZCUW9JQndJQkFRRUNCQUxGQWdNRUF3TWNLellkRmk0dUxoY1hMeTh1RndBQUFnQ0ovOThEZHdQQUFCa0FMZ0FBQVNJT0FoVVVIZ0l4SGdJMk56QStBalUwTGdJakVTSXVBalUwUGdJek1oNENGUlFPQWlNQ0FFNkpaanRqZDJNUUd4b2NFV1I0WkR0bWlVNGxRVEFjSERCQkpTVkJNQndjTUVFbEE4QSthNDlSYnRlcWFROFFBUThRYWFyWGJsR1Bhejc5MXh3d1FTVWxRVEFjSERCQkpTVkJNQndBQVFDUkFEWURNd05xQUM0QUFBa0JQZ00xUEFFdUFTY3VBeU1oSWc0Q0J3RU9BUlFXRndFZUF6TWhNajRDTno0QkxnRW5BUUhjQVU0Q0JBSUJBUUVCQWdjSUNnWCs5d1FIQndZQy9xTUVCQVFFQVYwQ0JnY0hCQUVKQlFvSUJ3SUNBUUlFQlA2eUFkQUJZQUlHQmdZREFnUUVCQUlFQndVREFnTUVBLzZKQlF3TURBWCtpUUlFQXdJREJRZ0ZCUW9KQ1FRQllRQUFBQUFCQU0wQU5nTnVBMm9BTGdBQUNRRXVBeU1oSWc0Q0J3NEJIZ0VYQ1FFT0F4VWNBUjRCRng0RE15RXlQZ0kzQVQ0Qk5DWW5BMjcrcEFJR0J3Y0UvdmNGQ2dnSEFnSUJBZ1FEQVU3K3NnSURBZ0VCQVFFQ0J3Z0tCUUVKQkFjSEJnSUJYQVVGQlFVQjVnRjNBd1FEQWdNRkJ3UUZDZ29KQlA2Zy9wOENCUVlHQXdJRUJBUUNCUWdGQXdJREJBSUJkd1VNREF3RkFBQUFBQUVBa1FCaEEyOERQd0JFQUFBQk56NENKaWN1QXljdUFRNEJEd0VuTGdJR0J3NERCdzRCSGdFZkFRY09BaFlYSGdNWEhnRStBVDhCRng0Q05qYytBemMrQVM0Qkx3RUNuc29IQ0FJRUJRd1lHaHdQQmc4UUVBZkt5d1lRRUJBR0Roc2FHQXdGQkFJSUI4ckxCZ2dDQkFVTUdCb2JEZ1lRRUJBR3k4b0hFQkFQQmc4Y0doZ01CUVFDQ0FmS0FkREtCeEFRRHdZUEhCb1lEQVVFQWdnSHdjRUhDQUlFQlF3WUdod1BCZzhRRUFmS3l3WVFFQkFHRGhzYUdBd0ZCQUlIQnN2TEJnZ0NCQVVNR0JvY0R3WVBFQkFHeXdBQUFRQ1BBTThEY1FMUEFDMEFBQUV1QXlNaUxnSWpJZzRDSXlJT0FnY09BUlFXRng0REZ4NEJNalkzUGdNM1BnRTBKaWNEY1FNSkNnd0dBVGhjZGo0K2RsdzRBUVlNQ3drREF3TURBekJ5WkVZREJ4SVNFZ2NEUm1SeU1BTURBd01DcXdZSkJ3UURCQU1EQkFNRUJ3a0dCZ3dNREFaVW1YVkhBd1lHQmdZRFIzV1pWQVlNREF3R0FBSUFBUC9RQkFBRHJnQStBR0VBQUFFZUF6TXlQZ0kzUGdNM1BnSW1KeTRES3dFdUF5Y3VBeU1pRGdJSERnTUhJeUlPQWdjT0FSNEJGeDRERnlVVURnSUhJUzRETlNNVUhnSVZIZ016SVRJK0FqYzBQZ0kxSXdIbkF3WUdCZ01EQmdZR0F3TTZVMThvQXdNQkFnSURDQWtLQm9zR0RnOE5CQVVQRkJrUER4a1VEd1VGRGc0T0JZc0dDZ2tIQXdJQ0FRTURLRjlUT2dNQmNnUUdCd1A5ZFFNSEJnU21EQTRNQkJBV0dnNEREZzRiRmhBRURBNE1wZ0ZRQWdNQ0FRRUNBd0lDTTFSdE93UUtDd3NGQlFnR0F5QkNPQ2tJQ0EwSkJRVUpEUWdKS2poQklBTUdDQVVGQ3dzS0JEdHRWRE1DWGpaZFRUMFdGanhOWFRkbm1tYzFBZzRYRUFrSkVSY09BalZubW1ZQUFBQUFBZ0FILzhBRC9BTzVBRGtBWWdBQUJTNERKeTRESndFdUFnWUhEZ01IRGdNSERnRWVBUmNCSGdNWEhnTVhIZ0l5TXpJK0FqYytBaVluSnk0REp3RStBemNCSGdNek1qNENOejRDSmljQlBnTTNBUjRERndjRC9BOGRIUjBQQVFJREJBTDl6QVlRRVJFSUZDWWtJaEFRSFJzYURBVUVBZ2dHQWpRQ0JRVUZBeTViVzFvc0FnUUVCQUlGQ0FnSEJBVUdBZ0lEOEJJbEpTVVIvZkVGQ3d3TkJ3SUFCQWtKQ2dVRkNBZ0hCQWdJQVFjSC9nSUhEZzRPQndJUEJnd01EQVpNQWl4Wldsb3VBd1lGQlFJQ053WUhBZ1FFREJvY0hoQVBJQ0lrRXdnUkVROEcvY2tDQkFNREFROGVIaDhRQVFFQkFnUUdCQVVMQ3cwSGJBWU1EQXdHQWhFSUVBOFBCLzMvQkFVREFRSUVCZ1FJRWhJU0NBSCtCZ3dNREFYOTZ4SWpJeU1TVEFBQUFBQUNBRElBSmdQdUExb0FJZ0JQQUFBQklpNENKd0VSRkI0Q0Z4NERNekkrQWpjK0F6VVJBUTRESXdFdUF5TWlEZ0lIRGdNZEFSNERGd0VlQXpNeVBnSTNBVDRETnpVMExnSW5BaEFUSlNRaEQvNnVCQWdLQmpod2NYRTRPSEZ3Y0RjR0N3Z0YvcTRQSVNRbEV3SEFOMjl3Y1RnNGNYQndPQVlLQ0FRQkJRa05DZ0ZzQ0JJVUZRc0xGUlFTQ0FGc0NnMEpCUUVGQ0FzR0FSVUZDaEFMQVFQK0pBWUxDUVlCQ0F3SUJBUUlEQWdCQmdrTEJnSGMvdjBMRUFvRkFpUUlEQWdFQkFnTUNBRUdDUXNHTVFRTURoRUovdTBHQ1FZREF3WUpCZ0VUQ1JFT0RBUXhCZ3NKQmdFQUJ3QWkvOEFEM2dQQUFBUUFDUUFPQUJNQWRnQ0VBSWtBQUFFakZUTTFGeU1WTXpVMUl4VXpOUWNqRlRNMUFTSXVBaWMxTkM0Q0l5SU9BaDBCRkI0Q0Z5SXVBajBCS2dNaktnRU9BUWMxTkM0Q0l5SU9BaDBCRkI0Q0Z5SXVBajBCRGdNakRnTVZFUlFlQWhjeUhnSXpNajRDTXo0RE5SRTBMZ0luQXc0REl5SXVBaWNSSVJFbEl4VXpOUUpFaVluTmlZbUppYzJKaVFGeEFoZ3FPeVVMRXhrT0Roa1RDd01HQ0FVU0lSa1BDQkVSRVFrU0l5SWhFQXNUR1E0T0dSTUxBd1lJQlJJaEdROFdJaGtPQVFrUEN3WUdDdzhKQTBGeW4yQmduM0pCQXdrUEN3WUdDdzhKUGhoS1lIUkNRblJnU2hnQzcvNEFpWWtCNG9tSnpZbUp6WW1KelltSkFoOEVCd2dFTUE0WkV3c0xFeGtPaVFnT0RRc0ZEQllmRTBNQkFRRWxEaGtUQ3dzVEdRNkpDQTROQ3dVTUZoOFRMZ01GQkFNQ0NRMFFDZjBXQ1JBTkNRSU1EZ3dNRGd3Q0NRMFFDUUxxQ1JBTkNRTDlDd1FLQ1FZR0NRb0VBZWYrR2RhSmlRQUFBQUVBQS8vQUEvMER3QUJ6QUFBQkxnTW5MZ01uTGdNbkxnTWpJZzRDQnc0REJ3NERCdzREQnc0QkhnRVhIZ01YRGdNSEZCNENGeDRDTmpjK0F6YytBemNlQXhjZUF4Y2VBek15UGdJM1BnTTFMZ01uUGdNM1BnSW1Kd1A5QWdVSENRVVRRbEpiTEE0akppY1NCQWdKQ1FVRkNna0pCQkluSmlNT0xGdFNRaE1GQ1FjRkFnSUNBUU1ERENzNlJpZ0xFZzRKQWdNR0NRWUdEUTBOQmdjT0R3OElGUzR6Tng0ZU56TXVGUWdQRHc0SEF3WUdCZ01FQndjSEF3WUpCZ01DQ1E0U0N5aEdPaXNNQXdNQkFnSUNPd1VKQ0FZQ0NBd0lCUUlvWFZkSEVnUUdCQUlDQkFZRUVrZFhYU2dDQlFnTUNBSUdDQWtGQlFzTEN3VVhPRDVESWl4VFMwSWNCdzBNQ2dRRUJBRURBd1FJQndjRUNoWWFIeE1USHhvV0NnUUhCd2dFQVFJQkFRRUNBd0lFQ2d3TkJ4eENTMU1zSWtNK09CY0ZDd3NMQlFBQUF3QUJBQVFEL3dOOEFGQUFtQURmQUFBbExnTW5MZ0kyTno0Q0ppY3VBeU1pRGdJSERnRWVBUmNlQVE0QkJ3NERCdzREQndZVUhnRVhIZ016TWg0Q016SStBak15UGdJM1BnSTBKeTRESnlVelBnTTNMZ0kyTno0RE56UXVBaWN1QXlNaURnSUhEZ0VlQVJjZUFRNEJCdzREQnc0REJ3WVVIZ0VYSGdNek1oNENGejRETnlVdUF5Y3VBeWN1QWpZM1BnSW1KeTRESXlJT0FnY09BeFVlQXhjZUFRNEJCeDRERng0REZ6NERNekkrQWpjK0FqUW5BdTRUS1NVZUNBWUxCQVlMSEI4TENBd0xJaWdyRkJRcktDSUxEQWdMSHh3TEJnUUxCZ2dlSmlrVEZoY01CZ1VCQVFJQ0FnUUZCZ01CRzBCc1UxSnNRQnNCQXdZRkJBSUNBZ0VCQlFjTUZ4WCtRd0VFQ0FnSUJDTWZCUThMRGlrd05Cb0NCQVlFQ3lJb0t4UVVLeWdpQ3d3SUN4OGNDd1lFQ3dZSUhpWXBFeFlYREFZRkFRRUNBZ0lFQlFZREFSVXhVajRJRVJFUUNBTE9CUWNNRnhVVEtTVWVDQVlMQkFZTEhCOExDQXdMSWlnckZCUXJLQ0lMQkFZRUFobzBMeWdPREE4Rkh5TUVDQWtKQkFnUUVSRUlQbEV4RlFFREJnVUVBZ0lDQVFHdERoZ1dFd2dIRUJNV0RTQThPVFlhR0NFVkNRa1ZJUmdhTmprOElBMFdFeEFIQ0JNV0dBNFBHUnNnRndNR0JnVUNBZ1FEQWdRRUJBUUVCQUlEQkFJQ0JnWUdBeGNnR3hrUGNBSUZCUVVDTGxWTFFCa2ZMUjhTQkFvVUV4TUpHQ0VWQ1FrVklSZ2FOams4SUEwV0V4QUhDQk1XR0E0UEdSc2dGd01HQmdVQ0FnUURBZ01FQkFFR0N3b0tCUVVYSUJzWkR3NFlGaE1JQnhBVEZnMGdQRGsyR2hnaEZRa0pGU0VZQ1JNVEZBb0VFaDh0SHhsQVMxVXVBZ1VGQlFJRkNnb0xCZ0VFQkFNQ0F3UUNBZ1VHQmdNQUF3QUFBRkFFQUFOUUFCZ0FMUUF6QUFBQklTSU9BaFVSRkI0Q015RXlQZ0kxRVRRdUFpTUZNaDRDRlJRT0FpTWlMZ0kxTkQ0Q013TTNGeE1CSVFQQS9JQU5GeEVLQ2hFWERRT0FEUmNSQ2dvUkZ3MzlJQlFqR2c4UEdpTVVGQ01hRHc4YUl4UmdnSlhyQVFEOUFBTlFDaEVYRGYyQURSY1JDZ29SRncwQ2dBMFhFUXFBRHhvakZCUWpHZzhQR2lNVUZDTWFELzRBd0dzQksvNkFBQUFBQUFFQTd3QnZBdThEVVFBdEFBQUJOQzRDSnk0QklnWUhEZ01IRGdFVUZoY2VBeGNlQVRJMk56NEROVFErQWpVMExnSTFBdVVFQndrR0Jnd01EQVpWbVhWSEF3WUdCZ1lEUjNXWlZRWU1EQXdHQmdrSEJBTUVBd01FQXdNcEJnd0tDUU1EQXdNRE1ISmtSZ01IRWhJU0J3TkdaSEl3QXdNREF3TUpDd3dHQVRoY2RqNCtkbHc0QVFBQ0FBRC80Z1AvQTU0QU1RQTJBQUFCTGdNaklUNEJMZ0VuTGdNaklnNENCdzREQnhFek1oNENGeDRETXpJK0FqOEJOaTRDSndFekVTTVJBK1FLR0JrWENmNzFCUVlFRUJFRkRBMFBDQlljRVFvRUJoTXdXVTBtSUN3aEdnNFJKelpMTm5pRlF4WUtCUUVDQndzSS9CeXJxd0lxQ3d3R0FqaGlVRDBUQmdvSEJCTWVKaElnUjBRNkV2NExCZ3NQQ1FvV0Vnd2pYSjk4U2c4Y0dSWUovYmtDWnYyYUFBSUFVUUFSQTY0RGJnQXhBR01BQUFFT0FSUVdGeDRCRkFZUEFRNEJJaVluTGdFME5qOEJMZ00zQnc0QkZCWVhIZ0V5Tmo4QlBnRTBKaWN1QVNJR0J3RXVBU0lHRHdFT0FSUVdGeDRCTWpZM1BnRTBKaWN1QVRRMlB3RStBVElXRng0QkZBWVBBUjREQnpjK0FUUW1Kd0llQ1FrSkNSWVdGaGFmRmpjNU54WVdGaFlXVEFjS0JRRUNraWdvS0NncFptcG1LS0FvS0Nnb0NSZ1pHQWtCa1NobWFtWXBueWdvS0NnSkZ4Z1hDUW9LQ2dvV0ZoWVdvQlkzT1RjV0ZoWVdGa3dIQ2dVQkFwRXBLU2twQWprSkdCa1lDUlkzT1RjV254WVdGaFlXTnprM0Zrd1RKeWdwRkpJb1ptcG1LU2dvS0NpZ0tHWnFaaWtKQ1FrSkFUVXBLU2twbnlobWFtWXBDUWtKQ1FrWEdCY0pGamM1TnhhZkZoWVdGaFkzT1RjV1RSTW5LQ2dVa1NsbWFtWW9BQVlBRUFCSkErc0RXZ0FjQURFQVJnQmpBSUFBbFFBQUFTRXlQZ0kzUGdFMEppY3VBeU1oSWc0Q0hRRVVIZ0l6QnlJT0FoVVVIZ0l6TWo0Q05UUXVBaU1SSWc0Q0ZSUWVBak15UGdJMU5DNENJd0VoSWc0Q0hRRVVIZ0l6SVRJK0FqYytBVFFtSnk0REl4RWhJZzRDSFFFVUhnSXpJVEkrQWpjK0FUUW1KeTRESXdFaURnSVZGQjRDTXpJK0FqVTBMZ0lqQVdRQ1d3Z1BEQWdCQWdJQ0FnRUlEQThJL2FVSERBa0ZCZ2tNQnY4U0h4Y05EUmNmRWhJZkZ3ME5GeDhTRWg4WERRMFhIeElTSHhjTkRSY2ZFZ05hL2FVSERBa0ZCZ2tNQmdKYkNBOE1DQUVDQWdJQ0FRZ01Ed2o5cFFjTUNRVUdDUXdHQWxzSUR3d0lBUUlDQWdJQkNBd1BDUHltRWg4WERRMFhIeElTSHhjTkRSY2ZFZ0t2QlFrTkNCRVhGUmNSQ0EwSkJRWUtEUWRrQ0EwSkJZa05GeDhTRWg4WERRMFhIeElTSHhjTi9zME5GeDhTRWg4WERRMFhIeElTSHhjTkFUTUdDZzBIWkFnTkNRVUZDUTBJRVJjVkZ4RUlEUWtGL3MwR0NnMEhaQWdOQ1FVRkNRMElFUmNWRnhFSURRa0ZBbVlORng4U0VoOFhEUTBYSHhJU0h4Y05BQUFBQUFNQUFQL2lCQUFEbmdBN0FLd0EwZ0FBQVNVdUFpSWpCeUlPQWc4QkpTNEJEZ0VIRGdNVkVSUWVBaGNGSGdJeU16SStBajhCQlI0QlBnRTNQZ00xRVRRdUFpY0JEZ01IRGdNSERnRXVBU2N1QXpFd0xnSW5MZ0kyTVM0REl5SXVBaWNSRng0REZ4WU9BaWN1QWdZSERnSVdGeDRCUGdFM1BnSVdGeDRERng0RE16SStBVElYRmo0Q016SWVBakVlQXhjZUF4VVVEZ0lISlE0REl5SXVBaWN1QXpjMkxnSW5MZ01uTGdFME5qYytBemNYRVFQaC9yWURCZ2NIQXdFQ0JBUUVBdkwremdZTkRBd0ZCZ2tHQXdRSUN3Y0JTUU1GQlFVREF3WUdCZ1B5QVRJR0RRd01CUVlKQmdNRkNBc0gvbDRHQ1FnSkJnVUlDeEVOREE4S0JnSUNCUVFDQXdnUERCNFZBUWtJR1NFb0Z3NGRIUnNNM2djUERnc0RCd2NQRVFNR0d5QWdDeEVYQ1FjTkRRc0ZBZ1FFQ0FnSUJBUU1EQW9CQVFJR0N3b01Dd2NIQ0FnUUR3NEdCaEVRQ3hNYUVnMEdCZ3dLQmdNSURnc0JXd2NPRFFvRENBNExCd0VEQndZREFRSUZFaDhYQ2hjV0ZBY1pHQmdXQ0JnYkhBeXBBdzJOQWdJQkFRRUJBZ0dDaEFJQ0FRUUVCQWtMREFiOU9RZ09EQW9EamdFQ0FRRUNBZ0tDZ3dJQ0FRUURCQWtMREFZQ3h3Z09EQW9EL2djRkN3NFJDd29RRVJRT0RRUUhEZ1lHRmhZUUNnME1BZ1VyTUNZR0VoRU1Bd1VIQkFGUVlBNFRFQkVMR0NJU0FnZ09EQUlGQkFZUEVBOEdCZ1FCQlFRRUJRRURCQU1HQ0F3SkNRMElCQU1DQWdJQkF3TUdDQVlDQXdRRkJBUVFGQmNLQ1JFUUVRa2pDQTBKQkFnS0NRSUhIaUlmQ0IwakZBb0VBZ1VIQ3dnZEx5a2xFd1lPRFF3RlNmNThBQUFBQWdBUS84RUQ1UU8rQURRQWN3QUFFelErQWpjK0F6YzFEZ01IRGdNSEZBNENGUlFlQWhVZUF4Y2VBeGMxTGdNbkxnTTFKUzRESnk0QklnWUhEZ01kQVE0REJ3NERGUlFlQWhjZUF4Y1ZGQjRDRng0RE16SStBamMrQXpjK0FUUW1KN1lGQndrRUdVTlNYelJRazNKR0F3d1VFQXdEQ3cwS0Nnd0tBd3dSRlF3RFJuS1RVRFJmVWtNWkJBa0hCUU12QWpWVmJqc0VDZ3NMQlFVSEJBSXJZbFkvQ0FvUURBWUdEQkFLQ0Q1V1lpc0NCQWNGQWdRRkJRSURCZ1lGQWp0dVZUVUNCQVFFQkFIRU5GeE5QUlVGREF3SkFxTURFaE1QQVFNTEVCUUxBalpqamx0YmtXWTRBZ3dVRUFzREFROFRFZ1NrQWdrTURBVVdQMDllTlJNRE9sTmZLQU1EQWdJRENBa0tCb1lFRHhFUEJBVVBGQmdQRHhnVER3WUVEeEVRQllZRkNna0lBd0VDQVFFQkFnSUNLRjlUT2dNR0RRME1CUUFBQUFJQUFRQVpBLzhEaHdCYUFLWUFBQ1V1QXljdUF5Y21QZ0kzUGdJbUp5NERJeUlPQWdjT0FSNEJGeDREQnc0REJ3NERCdzREQndZVUhnRVhIZ016TWg0Q016SStBak15UGdJM1BnSTBKeTRESndVdUF5Y3VBeWN1QXljbVBnSTNQZ0ltSnk0REl5SU9BZ2NlQXhjZUFRNEJCeDRERng0REZ4NERGejRETXpJK0FqYytBalFuQW5JR0RnNFBDQTRjR0JFREFnTUhDZ1VhSHdrTUVRMGtLekVhR2pFckpBMFJEQWtmR2dVS0J3TUNBeEVZSEE0SUR3NE9CaGdwSUJZR0FRRUNBZ0lGQmdZRUFTWlRnMTVlaEZNbkFRUUdCZ1VDQWdNQkFRWVhJQ2tZQVkwR0ZpQXBHQVlORGc4SURod1lFUU1DQXdnTEJob2VDUTBSRFNRck1Sb1lKUjhiRGhNZ0d4Z0xFQlFGSkNnQ0JRUUVBZ2tTRVJFSUdDb2tIUXN3UlN3V0FRTUdCZ1VDQWdJQkFmWUVCd1lHQXdZTURROEpDQklURWdnb1MwVS9IQllpR0EwTkdDSVdIRDlGU3lnSUVoTVNDQWtQRFF3R0F3WUdCd1FQSlNzd0dnUUhCZ1lEQXdVRUFnUUZCQVFGQkFJRUJRTURCZ1lIQkJvd0t5VVBJQm93S3lVUEJBY0dCZ01HREEwUENRZ1NFeElJS0V0RlB4d1dJaGdOQ2hNY0Vna1ZHaDhURzBsY2JUOEJBZ0lDQVFNSENBZ0ZEeU1vTEJnQkJBUURBZ1FGQXdNR0JnY0VBQU1BUXdBMkE4SURhZ0FVQUdVQWVnQUFBU0lPQWhVVUhnSXpNajRDTlRRdUFpTWxMZ01uTGdNbkxnTW5MZ01qTGdNaklnNENCeUlPQWdjT0F3Y09Bd2NPQXdjT0FSUVdGeDRERng0RE16SStBamMrQXpjK0FUUW1Kd0VpTGdJMU5ENENNekllQWhVVURnSWpBZ0FqUGk0Ykd5NCtJeU0rTGhzYkxqNGpBY0lDQ0FzTkJ4UW9LQ2dVQXdZR0J3UUNDZzBQQnhZc0xDd1dGaXNyS3hVSER3MEtBZ1FIQmdZREZDZ29LQlFIRGdzSUFSRVFFUkFCQ0FzT0J6SmxaV1V5TTJabVpqTUhEUXNJQWc0T0RnNytQamxsU3l3c1MyVTVPV1ZMTEN4TFpUa0NXUnN1UGlNalBpNGJHeTQrSXlNK0xodGVCdzBLQndFQ0JBTURBZ2tWRlJVS0J3NExCd0lDQWdFQkFnSUNCd3NPQndvVkZSVUpBZ01EQkFJQkJ3b05CMWFNaFlsVUJ3MEtCd0VHQ0FZREF3WUlCZ0VIQ2cwSFNaR1JrVWo5NHl4TFpUazVaVXNzTEV0bE9UbGxTeXdBQUFFQUxmL2tBOTREYndCREFBQUJOVFF1QWljdUFRNEJCdzREQnc0QkZCWVhIZ01YSGdNek1qNENOejREUFFFZUF4Y1dGQTRCQnc0QkhnRXpNajRDTlRRdUFpY0IzZ0lGQ0FZR0RRME5Ca3FCWVRvQ0JRVUZCUUk2WVlGS0F3Y0hCd1FEQmdZR0F3WUlCUUl2WGxBNkRBMFhMaUVqSFFjb0lpUmxYVUZaa2JoZkFveTVCdzBMQ1FNRUF3RUVCREoyYUVnREJ4QVFEd1lFU0doMk1RSURBZ0VCQVFJQkF3a0xEUWUzQVFzV0lCWVlMeW9qREE0cktSMHVWbnhPWEg5UktBVUFBQUFCQVJFQWJ3TVFBMUVBTFFBQUFTNERKeTRCSWdZSERnTVZGQTRDRlJRZUFoVVVIZ0lYSGdFeU5qYytBemMrQVRRbUp3TVFBMGQxbVZVR0RBd01CZ1lKQndRREJBTURCQU1FQndrR0Jnd01EQVpWbVhWSEF3Y0hCd2NDQWdOR1pISXdBd01EQXdNSkNnd0dBVGhjZGo0K2RsdzRBUVlNQ3drREF3TURBekJ5WkVZREJ4SVNFZ2NBQXdBTkFGQUQ4QU13QUJZQUxRQkVBQUFUSVRJK0FqVTBMZ0lqSVNJT0FoVVVIZ0l6QlNFaURnSVZGQjRDTXlFeVBnSTFOQzRDSXhFaElnNENGUlFlQWpNaE1qNENOVFF1QWlOWEExQVBHaFFMQ3hRYUQveXdEeG9VQ3dzVUdnOERVUHl3RHhvVUN3c1VHZzhEVUE4YUZBc0xGQm9QL0s0UEdoUUxDeFFhRHdOU0R4b1VDd3NVR2c4Q21RMFZIQThQR3hRTURCUWJEdzhjRlEyS0RCUWJEdzhiRkFzTEZCc1BEeHNVRFA3VURCVWJEdzhhRXdzTEV4b1BEeHNWREFBQUFnQUEvOEFENXdQQUFDb0FQd0FBRXhRZUFqTXlQZ0kzQVI0RE16SStBamMrQVRRbUp3RStBelUwTGdJaklnNENGVE0wUGdJek1oNENGUlFPQWlNaUxnSTFBRHhvakZBY056UXdGZ0VoQmc0UUVBZ0lFQThPQmd3TURBeiszZzRXRHdnOGFJeFFVSXhvUElBb1JsMDFOVjFHS0NoR1hUVTFYVVlvQWtCUWpHZzhDQThXRHY3ZUJna0dBd01HQ1FZTUlDRWdEQUVoRmpBME54eFFqR2c4UEdpTVVEVmRSaWdvUmwwMU5WMUdLQ2hHWFRVQUFnQUMvOEFEL2dPK0FRTUJHQUFBQVM0REp5NERNUzRETlRRK0FqY3dQZ0l4UGdFMEppY3VBeWN1QVNJR0J3NERNUTRESXlJdUFpOEJMZ01uTGdFaUJnY09BdzhCRGdNaklpNENMd0V1QVNJR0J3NERCdzRCRkJZWEhnTXhIZ01WRkE0Q0R3RU9Bd2NPQVJRV0Z4NERId0VlQXhVVURnSVBBUTRCRkJZWEhnTVhIZ016TWo0Q1B3RStBek15SGdJWE1CNENNUjRERnpJZUFUSXpPZ0UrQVRNK0F6OEJQZ016TWg0Q0h3RWVBek15UGdJM1BnTTNQZ0UwSmljdUF6RXVBelUwUGdJM01ENENOejRETno0Qk5DWW5CU0l1QWpVMFBnSXpNaDRDRlJRT0FpTUQvZ0VJREE4SkN4NGJFd29RREFjQkFnUUNFUlFSQmdVR0JnZ1FFUklLQnhBUkVBY0pHQllQQkFnSUNBUUtFZzhLQWdzQkNBd1FDUXdaR1JnTUNSQU1DQUVMQWdvUEV3b0ZDUWtJQkVNSEVCRVFCd29TRVJBSUJnWUdCZ1lTRUFzREJBTUNDQTBTQ2xNSkVBd0lBUUVCQVFFQkNBd1BDVk1LRWcwSUFnTUVBek1HQlFZR0NCQVJFZ29FQ0FnSUJBUUlDQWNEUXdRSUNRa0ZDaE1QQ2dJREJBTUJDQXdRQ1FZTURBd0dCZ3dNREFZSkVBd0lBUXNDQ2c4U0NnUUpDQWdEUlFNSENBZ0VCQWdJQ0FRS0VoRVFDQVlHQlFZSEVoRU1BZ1FDQVFjTUVBb1RHeDRMQ1E4TUNBRUJBUUVCL2dJa1B5OGJHeTgvSkNRL0x4c2JMejhrQWZFSkVBd0lBUUVFQXdJQ0NnOFNDZ1FJQ0FjREZob1dCeEFSRUFjS0VoRVFDQVlHQlFZSEVoRU1BZ1FEQWdjTkVRcFZDUThNQ0FFQkFRRUJBUWdNRHdsVkNoRU5Cd0lEQkFJMEJnVUdCZ2dRRVJJS0J4QVJFQWNJRnhVUEJBZ0lDUVFMRXc4S0Fnc0JDQXdRQ1F3WkdSZ01DUkFNQ0FFTEFRb1BFd3NGQ1FrSUJFTUhFQkVRQndvU0VSQUlBd1FEQWdFREJBTTBBZ1FEQWdjTkVRb2JJQm9KRHd3SUFRRUJBUUVCQ0F3UENWVUtFUTBIQVFJRUFqVURCQU1CQVFNRUF3Z1FFUklLQnhBUkVBY0pHQllQQXdjSUNBUUtFZzhLQWdJREJBRUJDQXdRQ1F3WkdSZ00zeHN2UHlRa1B5OGJHeTgvSkNRL0x4c0FBZ0FBLy9RRUFBTnNBRDRBYmdBQUFTNERKeTRDQmdjT0F4MEJJZzRDQndZZUFoY1dNajRCTno0RE14VVVIZ0lYSGdFK0FUYytBemMrQXpVMExnSW5BU0VSSVRVaUxnRWlJeUlPQWdjT0F4VVJGQjRDRng0RE16SStBamMrQXowQkRnTUhGUVAzQWpKVGJEd0ZDZ3NMQlFVSUJnTlhqMmcrQmdRQkNoTU9FQ0FkR0FnYUxqaEpOQU1HQ0FVRkN3c0tCRHhzVXpJQ0FnTUNBUUVDQXdMKzkvMmFBYndQSXlRakR5bFRVMU1wR0NrZUVSRWVLUmdwVTFOVEtTbFRVMU1wR0NrZUVRNGlKQ1FSQWtBRFAxbGpLQU1EQVFJQ0F3Z0pDZ2FsTlVsT0dSSWVHQk1HQ0FnTkJRNGFGQXlwQmdvSkJ3TUNBZ0VEQXloa1dUOENBd1lHQmdNREJnWUdBLzQ5QW1hR0FRRUNCQVlFQWhVaEt4ajlvQmdySVJVQ0JBWUVBZ0lFQmdRQ0ZTRXJHSWtPSEJzYkRDQUFBQUFCQUo4QTRRT0JBdUVBTFFBQUFTNERKeTRCSWdZSERnTUhEZ0VVRmhjZUF6TXlIZ0l6TWo0Q016SStBamMrQVRRbUp3T0JNSEprUmdNSEVoSVNCd05HWkhJd0F3TURBd01KQ3d3R0FUaGNkajQrZGx3NEFRWU1DZ2tEQXdNREF3RTFWSmwxUndNR0JnWUdBMGQxbVZRR0RBd01CZ1lKQndRREJBTURCQU1FQndrR0Jnd01EQVlBQWdBQS85QUVBQU91QUQ0QVlRQUFFek1lQXhjZUF6TXlQZ0kzUGdNM016SStBamMrQVM0Qkp5NERKeTRESXlJT0FnY09Bd2NPQWhZWEhnTXpCUlFPQWdjaExnTTFJeFFlQWhVZUF6TWhNajRDTnpRK0FqVWo4b3NGRGc0T0JRVVBGQmtQRHhrVUR3VUVEUThPQm9zR0Nna0lBd0lDQVFNREtGOVRPZ01EQmdZR0F3TUdCZ1lEQXpwVFh5Z0RBd0VDQWdNSUNRb0dBbWNFQmdjRC9YVURCd1lFcGd3T0RBUVFGaG9PQXc0T0d4WVFCQXdPREtZQ05pQkJPQ29KQ0EwSkJRVUpEUWdJS1RoQ0lBTUdDQVVGQ3dzTEJUdHNWRE1DQWdNQ0FRRUNBd0lDTTFSc093VUxDd3NGQlFnR0E0azJYVTA5RmhZOFRWMDNaNXBuTlFJT0Z4QUpDUkVYRGdJMVo1cG1BQUVBSS8vUUE5MERyZ0JWQUFBbExnTW5MZ01uTGdNbkpqNENOejRDSmljdUF5TWlEZ0lIRGdFZUFSY2VBd2NPQXdjT0F3Y09Bd2NHSGdJWE1oNENNekkrQWpjK0F6TStBeWNEM1FnY0p6RWNDQklURkFvVUtDSVpCUU1CQ0E4TElTY01FQllSTFRVN0lCODdOUzBSRmhBTUtDSUxEd2dCQXdVWklpZ1RDeFVURVFnY01TY2NDQUlDQmdvR0FqRnJySHcrYUZaRkd4c25HUTBCQmdvR0FnSWNKanN3SnhJRkNRa0lCQWdSRkJnUENoY2FIaEUyWkZ4VEpSMHVJQkVSSUM0ZEpWTmNaRFlSSGhvWENnOFlGQkVJQkFnSkNRVVNKekE3SmdjTkN3Z0NDdzBMQXdVR0F3TUdCUU1DQ0FzTkJ3QUFBQUFDQUFEL3dRUUFBOEVBR0FCY0FBQUJGQTRDQnhFakVTSXVBalUwUGdJN0FUSWVBaFVCRGdNaktnRXVBU2N1QXljbURnSXhFVEErQWpNeUhnSVhIZ01YSGdNek9nRStBVGN5UGdJM1BnTXpNaDRDRlJFT0F3Y0JFUXdUR1EySkRoa1RDd3NUR1E2SkRoa1RDd0xVQ3g4bEtoWUlFUkVSQ0NrNk5Ea29KMXhRTmlBMFFpSUtGUlVVQ1NnNU5Eb3BCZzBORFFZTEZoVVZDZ1FKQ1FrRUJBZ0lDQVFIREFrR0FRVUhDUVVEZlE0WUVnc0IvSWtEZHdzU0dRNE9HUk1MQ3hNWkR2enJCQWdIQlFFQ0FnZ3FNUzRMQ2dNTURRSTVDQW9JQVFJRUFnc25LU1FJQVFJQ0FRSURBZ0VDQWdFQkFnSUJCUWtNQi8zMUJnb0hCUUVBQUFBQUJBQU0vL3NFQUFOd0FCWUFMUUJFQUhRQUFCTWhNajRDTlRRdUFpTWhJZzRDRlJRZUFqTUZJU0lPQWhVVUhnSXpJVEkrQWpVMExnSWpFU01pRGdJVkZCNENPd0V5UGdJMU5DNENJeVVqTlRRdUFpc0JJZzRDSFFFaklnNENCeHdCSGdFZkFSNENNak02QVQ0QlB3RStBalExTGdNajhnSzRFaUFZRGc0WUlCTDlTQklnR0E0T0dDQVNBcmordVJJZ0dBNE9HQ0FTQVVjU0lCZ09EaGdnRXZrU0lCZ09EaGdnRXZrU0lCZ09EaGdnRXY1Z2t3SURCQUsxQWdRREFwTUNBd01DQVFFQkFma0JBZ0lDQVFFQ0FnSUIrUUVCQVFFQ0F3TUNBcndQR2lFU0VpQVlEZzRZSUJJU0lSb1BwUTRZSUJJU0lCY05EUmNnRWhJZ0dBNyttZzhaSVJJU0h4Y05EUmNmRWhJaEdROVYvd0lFQXdJQ0F3UUMvd0VDQXdJQ0F3TURBZlFCQVFFQkFRSDBBUU1EQXdJQ0F3SUJBQUFBQXdBQS84QUVBQVBBQUJRQUtRQ0JBQUFCSWc0Q0ZSUWVBak15UGdJMU5DNENJeEVpTGdJMU5ENENNekllQWhVVURnSWpFdzREQnc0REJ4UU9BaXNCSWk0Q05UNEROejRETlRRdUFpY3VBeU1pRGdJSERnTXJBU0l1QWpVOEF6VXdQZ0l4UGdNek1oNENGeDRERlJRT0FnY0NBR3E3aTFCUWk3dHFhcnVMVUZHTHVtb1FIQlVORFJVY0VCQWNGUTBORlJ3UTJRVVJHQjRTQ0JBT0N3SUZDUXdIUlFjTkNnWUJKalE0RXdRRkF3RURCZ2tHQmc0UkV3b1JIaGdRQXdFR0NRc0dSd2NNQ1FVQkFRRUpKVGRKTGhrdEtDTVBEeGNRQ0FNR0NRWUR3RkNMdW1wcXU0dFFVSXU3YW1xNmkxRDhmdzBWSEJBUUhCVU5EUlVjRUJBY0ZRMEJ5UW9XR1J3UUJ4QVNGQXNIRFFvR0JRa01CeWc3TVNzWUJRb0xEQVlJRFF3TEJnWUpCZ01NRkJnTUJna0hBd1VJREFjQkFnSUNBUUlDQWh3NUxoMEhEaFVPRGlBakpSTUxGUlFUQ1FBQUFnQUEvOEFFQUFQQUFCUUFOUUFBQVNJT0FoVVVIZ0l6TWo0Q05UUXVBaU1CRkE0Q0l5RWlMZ0luTGdFME5qYytBek1oTWg0Q0ZSNEJGQVlIQWdCcXU0dFFVSXU3YW1xN2kxQlJpN3BxQVZrR0NnMEgvWmNIRFFvR0FRRUJBUUVCQmdvTkJ3SnBCdzBLQmdJQ0FnSUR3RkNMdW1wcXU0dFFVSXU3YW1xNmkxRDl2UWdOQ1FVRkNRMElFU0lpSWhFSURRa0ZCUWtOQ0JFaUlpSVJBQUFBQUFNQUNmL2lCQUFEbmdBaEFEWUFXd0FBSlFFdUF5TWlEZ0lIQVE0QkZCWVhIZ016SVRJK0FqVTBMZ0luQlNJdUFqVTBQZ0l6TWg0Q0ZSUU9BaU1URGdNckFTSXVBaWN1QXljMFBnSTNQZ0V5RmhjZUF4VU9Bd2NEOC81SkJBMFFFZ2tLRWc4TkJQNUVCQVFGQlFVTkR4RUpBM2NPR1JNTEFnTUZBLzRORUJ3VkRBd1ZIQkFRSEJVTURCVWNFQ3dCQ0F3T0NBTUhEZ3NJQVFZS0NBY0RCUWtNQncwV0ZSWU5DQXdJQkFNSENBb0dUZ010Q0EwSkJRVUpEUWo4ekFnUkVSRUlDQXdKQlFzU0dRNEdDd29KQkE4TUZSd1FFQndWREF3VkhCQVFIQlVNQVJzSUR3c0hCd3NQQ0NKRlJFRWVCdzRNQ1FJQ0FnSUNBZ2tNRGdjZVFVUkZJZ0FBQXdBQi84QUVBQVBBQUZFQVpnQ2JBQUFCUGdNM1BnSW1KeTRESnk0REl5SU9BZ2NPQVI0QkZ4NERCdzREQnc0REJ3NERCd1lVSGdFWEhnTXpNaDRDT3dFdUF6VTBQZ0kzUGdNM0Z5SU9BaFVVSGdJek1qNENOVFF1QWlNVEZBNENLd0VWRkE0Q0t3RWlMZ0k5QVNNaUxnSTlBVFErQWpzQk5UUStBanNCTWg0Q0hRRXpNaDRDSFFFQ1JRd1lGaFFJRFJNSUF3Z0NCUVlIQkJBdU56NGhJVDQzTGhFVkR3d25JUXNQQ1FJREJCY2dKaElLRXhJUkNCNHZJaGNIQVFFREFnSUZCZ2NFQWl0am9ua2xEaFlQQ0FnUkdoSUlFeFFWQ3JzMVhVVW9LRVZkTlRWZFJpZ29SbDAxbWdNRkJnUlZBd1VHQkVRRUJnVURWUVFHQlFNREJRWUVWUU1GQmdSRUJBWUZBMVVFQmdVREFkY0xGUllaRHhnM09Ua2JCdzRPRGdZY0xCOFFFQjhzSENSUldXRTBFQjBaRmdrTkZoTVFDQVFJQ0FrRkV5dzBPeUlEQndjSEF3TUZCQU1HQndZVUxDOHlHaHcyTXk4VkNoVVVFd2dYS0VWZE5UVmRSU2dvUlYwMU5WMUZLUDdlQkFZRkExVUVCZ1VEQXdVR0JGVURCUVlFUkFRR0JRTlZCQVlGQXdNRkJnUlZBd1VHQkVRQUFRQlpBQmtEcFFObEFFUUFBQUV1QXlNaEVUUXVBaWN1QVNJR0J3NERGUkVoSWc0Q0J3NEJGQllYSGdNeklSRVVIZ0lYSGdFeU5qYytBelVSSVRJK0FqYytBVFFtSndPbEFRZ01FQW4rL2dZTER3Z1VLQ2dvRkFnUEN3Yisvd2tRREFnQkFnSUNBZ0VJREJBSkFRRUdDdzhJRkNnb0tCUUlEd3NHQVFJSkVBd0lBUUlDQWdJQ0RRa1BDd1lCQVFrUURBZ0JBZ0lDQWdFSURCQUovdjhHQ3c4SkZDY25KeFFKRHdzRy92NEpFQXdJQVFJQ0FnSUJDQXdRQ1FFQ0Jnc1BDUlFuSnljVUFBQUJBQUlBTlFRQUEwOEFWZ0FBRXdFK0F6TXlIZ0lYSGdNWEhnTVZGQTRDQnc0RER3RWhNaDRDRng0REZSUU9BZ2NPQXlNaEZ4NERGeDRERng0REZSUU9BZ2NPQXlNaUxnSW5BUUlCZlFnUkVoUUxDeFFTRVFnRUJ3WUZBZ0lEQWdFRUNBc0lCQWtLQ2dWY0Fnb0xGQklSQ0FnTENBUUVDQXNJQ0JFU0ZBdjk5bHdGQ2dvSkJBUUhCZ1VDQWdNQ0FRUUlDd2dJRVJJVUN3c1VFaEVJL29NQnd3RnlCd29IQXdNSENnY0VDQWtKQlFVSkNRa0ZDeE1SRUFjRkNnb0tCVmdFQndzSEJ4QVNFd3NLRXhJUUJ3Y0xCd1JZQlFvS0NnVUVDQWdKQlFVSkNRa0VDeE1TRUFjSUN3Z0VCQWdMQ0FGd0FBQUFBZ0NKLzlJRGVBT3dBQzRBUEFBQUFUUXVBaXNCTlRRdUFpTWlEZ0lkQVNNaURnSVZFUlFlQWhjZUF6TXlQZ0kzUGdNMUVTVTFORDRDTXpJZUFoMEJJd040Q3hNWkRpRW5TR1U5UFdWSUp5UU9HQklLQ0E0VURDaFFVVkVvS0ZCUVR5Z01GUThKL2lJR0ZTa2lJaWtWQnMwQnF3NGJGQXlyUG1WSUp5ZElaVDZyRFJZY0R2NlNEQllTREFJSkRna0VCQWtPQ1FJTUVoWU1BWEZLcXhBa0hoUVVIaVFRcXdBQUFRQUdBQ3NEK1FOUEFDUUFBQUUrQVRRbUx3RXVBU0lHQndFbkxnRWlCZzhCRGdFVUZoY0JIZ016TWo0Q053RUQrUU1EQXdPVkF3Z0lDQVArTzhZRENBZ0lBNVVEQXdNREFXb0NCQVFFQWdJRUJBUUNBbW9DbXdNSUNBZ0RsUU1EQXdQK09jY0RBd01EbFFNSUNBZ0QvcFlCQWdJQkFRSUNBUUpxQUFFQVh3QWlBNkFEc1FBdEFBQUJOU0lPQWhVVUhnSXpNajRDTlRRdUFpYzNIZ01WRkE0Q0l5SXVBalUwUGdJek5SY0hBZ0JCY2xVeE1WVnlRVUZ5VlRFTUZpQVVUQnNxSGhCQ2NaaFdWcGh4UVVGeG1GYWNuQUt0VGpGVmNrRkJjbFV4TVZWeVFSODdOekVWU0J4QlNVOHFWcGh4UVVGeG1GWldtSEZCVG9LQ0FBQUFBQUVBSlAvR0E5NER3QUE4QUFBbExnTTFOQzRDSXlJT0FoVVVEZ0lIRGdNWEhnTVhIZ01YSGdNek1qNENOejRETno0RE56WXVBaWNEeGdJdk5pMDRXR3cwTkd4WU9DMDJMd0lIQ2djREFRRUhDdzRJQWlsTGFrSUhIQ1l2R2hvdkpod0hRbXBMS2dJSURRb0hBUUVDQmdvSDZnSXRXSVJaZEpGUUhCeFFrWFJZaEZrdEFnWU9FQkVKQ1JFT0N3UUJFQlVXQnhnb0hSRVJIU2dZQnhZVkVBRUVDdzRRQ1FrU0VBNEdBQUFEQUFEL3dBUUFBOEFBRkFBcEFGRUFBQUVpRGdJVkZCNENNekkrQWpVMExnSWpGVEllQWhVVURnSWpJaTRDTlRRK0FqTVRJeUl1QWpVMFBnSTNOUzRETlRRK0Fqc0JNaDRDRlFjZUF4VVVEZ0lqQWdCcXU0dFFVSXU3YW1xN2kxQlFpN3RxRVIwV0RRMFdIUkVSSFJZTkRSWWRFVHQ0Q3hNT0NBVUpEQWNIREFrRkNBNFRDMWdMRXc0SUFRY01DQVVJRGhNTEE4QlFpN3RxYXJ1TFVGQ0x1MnBxdTR0UXR3MFdIUkVSSFJZTkRSWWRFUkVkRmczOWtBZ09Fd3NJRHcwS0E3Z0RDZzBQQ0FzVERnZ0lEaE1MNlFNS0RBOElDeE1PQ0FBQUFRQVYvOUVEOHdPdkFLY0FBQUVVRGdJckFSY2VBUlFHQnc0REl5SXVBaThCSXhVWEhnRVVCZ2NPQXlNaUxnSXZBUlVVRGdJaklpNENQUUVIRGdFaUppY3VBVFEyUHdFMUl3Y09BeU1pTGdJbkxnRTBOajhCSXlJdUFqVTBQZ0k3QVNjdUFUUTJOejRCTWhZZkFUTTFKeTRCTkRZM1BnRXlGaDhCTlRRK0FqTXlIZ0lkQVRjK0FUSVdGeDRCRkFZUEFSVXpOejRCTWhZWEhnRVVCZzhCTXpJZUFoVUQ4d2dPRXdxUWNRZ0lDQWdFQ1FvS0JRVUxDZ2tFdTJDL0NBZ0lDQVFKQ2dzRkJRb0tDUVJ5Q0E0VENnc1REZ2h5Q0JRVkZBZ0lDQWdJdjJDOEJBa0tDZ1VGQ2dvSkJBZ0lDQWh3andzVERnZ0lEaE1MajNBSUNBZ0lDQlFWRkFpNlliOElDQWdJQ0JRVkZBaHlDQTRUQ3dvVERnaHlDQlFWRkFnSUNBZ0l2MkM3Q0JRVkZBZ0lDQWdJY0k4S0V3NElBY0FMRXc0SWNnZ1VGUlFJQkFZRUFnSUVCZ1MvWWJzSUZCVVVDQVFHQkFJQ0JBWUVjSThMRXc0SUNBNFRDNDl3Q0FnSUNBZ1VGUlFJdkdDL0JBWUVBZ0lFQmdRSUZCVVVDSElJRGhNTENoTU9DSElJRkJVVUNBZ0lDQWkvWUxzSUZCVVVDQWdJQ0FoeGtBb1REZ2dJRGhNS2ozQUlDQWdJQ0JRVkZBaTdZTDhJQ0FnSUNCUVZGQWh5Q0E0VENnQUlBQUFBRndRQUEya0FPZ0EvQUVRQVNRQk9BRk1BV0FCZEFBQUJCeWNISndjbkJ5Y0hKd2NuQnljSEp3Y25CeEVVRGdJaklpNENOVHdCRURReElnNENGUkVVSGdJeklUSStBalVSTUM0Q0p3RWhOU0VWTlNFMUlSVTFJVFVoRlFVaE5TRVZOU0UxSVJVM0lUVWhGVFVoTlNFVkE5QXJMekV5SnkwcEtTc3NNaThzS2lRc0p5MG1CZ2tMQlFnUERBY0tHUllQQ0EwU0NnT2NDaElOQ0EwUkVBTCtTdjdaQVNmKzJRRW4vdGtCSndHRy9zTUJQZjdEQVQwQi9zSUJQdjFTQXE0RFppZ3FLaW9xS2lvc0xDb3FLU2tuSnlvcUtpcjlRd3NRQ2dRSURBNEhCOTBCQTlZRkNnOEsvVE1LRWcwSUNBMFNDZ0wzQ3c0TkF2MG9TRWg3U1VsNVMwdjBTRWg3U1VsN1NVbVNrNU1BQUFBQkFBSUJXZ1A5QWlZQUlBQUFBVFF1QWlNaElnNENCdzRCRkJZWEhnTXpJVEkrQWpVK0FUUW1Kd1A5QmdvTkIveFBCdzBLQmdFQkFRRUJBUVlLRFFjRHNRY05DZ1lDQWdJQ0FnTUlEUWtGQlFrTkNCRWlJaUlSQ0EwSkJRVUpEUWdSSWlJaUVRQUFBQUlBeC8vQUF6a0R3QUFVQUd3QUFDVWlEZ0lWRkI0Q016SStBalUwTGdJakV5NERJeUlPQWdjVURnSXhIQUVHRkJVVUhnSTdBVEkrQWpjK0F6TXlIZ0lYSGdNVkZBNENCdzREQnhRZUFqc0JNajRDTlQ0RE56NEROejRETlRRdUFpY0I1eFlvSGhJU0hpZ1dGaWdlRWhJZUtCYjZGVEU0UHlOQVowMHpEQUVCQVFFSERSRUtaQWdQREFrQ0JCY2hLaGdQR2hjVUNBZ01DQVFDQkFjR0drNUtOZ0lJRFJJS1lRb1NEUWNERHhRWEN4a3FJUmdIQ0EwSkJRd1dJUldiRWg0b0ZoWW9IaElTSGlnV0ZpZ2VFZ0xZRkIwVENpbEJVQ2NCQXdNQ0FnTURBd0lLRVF3R0JRa05DQkVpSEJFRkNRMElDQkFSRWdzSUVBOFBCeUU5UkZNNENoRU5Cd2dPRWdvUEhCa1dDaFlvSXg4TkRSc2NIUThhTkRFdUZBQUFBQU1BYlFGZEE1TUNKUUFVQUNrQVBnQUFFeFFlQWpNeVBnSTFOQzRDSXlJT0FoVWhGQjRDTXpJK0FqVTBMZ0lqSWc0Q0ZTVXlIZ0lWRkE0Q0l5SXVBalUwUGdJemJSQWJKUlVWSlJzUUVCc2xGUlVsR3hBQkx4QWJKUlVWSlJzUUVCc2xGUlVsR3hBQmt4VWxHeEFRR3lVVkZTVWJFQkFiSlJVQndSVWxHeEFRR3lVVkZTVWJFQkFiSlJVVkpSc1FFQnNsRlJVbEd4QVFHeVVWWkJBYkpSVVZKUnNRRUJzbEZSVWxHeEFBQUFBQUFRQWIvL2tENHdPSkFJb0FBQUVPQXlNd0tnSWpJaTRDSnk0REp5WStBajhCTGdNbkxnTUhEZ01IRGdNSEJoNENGeDRERnhZK0FqYytBUjRCRng0QkRnRVBBUTREQndZdUFpY3VBeWN1QWpRM1BnTTNQZ00zUGdNM1BnSXlNekllQWhjZUF4YzNQZ0l5Rng0REZSWU9BZ2NEelFFR0NRc0dBd1VJQlJwYmNYOCtCUWtIQlFFQkFRUUhCSVlHREEwTkJ3MGNIUjBQRHgwY0d3ME9GeElPQkFrREZ5c2VEeU1tS0JVVktpa3BGQXdaRnhNR0JRSUZEQWtCR0RnOFB4OGdRRDg5SFI0M01Ta1FFQllNQmdNSUN3NElDUlFWRnd3WVBrVktKUWtSRVJFSkhUazNOUmdSSUI0Y0RHVUVDUW9LQlFVSkJ3UUtCQTBQQVFHSkJnb0lCQUlLRkJJQkJRZ0pCUVVLQ1FnRFdRWU1Dd29FQ0F3SEFnSUJDQTBTQ3d3Wkd4MFFIa2RHUUJjTUV3NEtBZ0lCQmcwS0JnRUlFUXdLRmhVVEJ3RVNIeGNPQVFFSUVSb1JFU294Tng0ZVFVVklKQklqSWlFUUVCNGNHZ3daS2lBV0JRRUNBUWdQRmc4S0Z4a2NEM1lFQmdNQ0FnWUlDUVZPbm9CVEJBQUJBQUQvd1FRQUE4RUFRZ0FBQlNJdUFpY2xEZ01qSWk0Q05UUStBak15SGdJWEpUVTBQZ0l6TWg0Q0ZSUU9BaU1pTGdJbkJSVUZQZ016TWg0Q0ZSUU9BaU1EUkNNK01TRUcvcHdMR1JzZER5ZEVNeDRlTTBRbkR4MGJHUXNCWVI0elJDY25SRE1lSGpORUp3OGRHeGtML3A4QlJ3MGVJaVVVSjBRekhoNHpSQ2MvRnlrNUlic0lEUWtGSGpORUp5ZEVNeDRGQ1EwSXVnSW5SRE1lSGpORUp5ZEVNeDRGQ1EwSXVnU3REUlVPQ0I0elJDY25SRE1lQUFBQUFBSUFBUC9BQkFBRHdBQVVBRGtBQUFFaURnSVZGQjRDTXpJK0FqVTBMZ0lqQ1FFT0F5TWlMZ0l2QVM0Qk5EWS9BVDRCTWhZZkFRRStBVElXSHdFZUFSUUdCd0lBYXJ1TFVGQ0x1MnBxdTR0UVVJdTdhZ0UrL25zQkFnSURBUUVEQWdJQjVBSUNBZ0plQWdVRkJRSjhBUjRDQlFVRkFsNENBZ0lDQThCUWk3dHFhcnVMVUZDTHUycHF1NHRRL29yK2V3RUJBUUVCQVFFQjVBSUZCUVVDWGdJQ0FnSjlBUjRDQWdJQ1hnSUZCUVVDQUFBQUFBUUFJdi96QTk0RGpRQk5BSjRBMlFFcUFBQUJMZ01uTGdNaklnNENCdzREQnc0REZSUWVBaGNlQXhjZUF4Y1ZGQjRDRnpJZUFUSXpNajRDUHdFeVBnSTNQZ00zUGdNMU5DNENKd0VpTGdJbkxnSTBOVFErQWpNNkFSNEJGeDRETXpJK0FqVTBMZ0kxTkQ0Q016SWVBaGNlQWhRVkZBNENJeW9CTGdFbkxnTWpJZzRDRlJRZUFoVVVEZ0lqSlJRT0FpTWlMZ0k5QVFjT0F5TWlMZ0l2QVJVVURnSWpJaTRDUFFFMFBnSXpOaDRDSHdFM1BnTXpOaDRDSFFFWElpNENKeTRDTkRVMFBnSXpPZ0VlQVJjZUF6TXlQZ0kxTkM0Q05UUStBak15SGdJWEhnSVVGUlFPQWlNcUFTNEJKeTRESXlJT0FoVVVIZ0lWRkE0Q0l3UFFCQ0l4T3gwa1NFaElKQ1JJU0Vna0hUc3lJd1VEQlFNQ0FnTUZBd1VqTWpzZENoVVZGUW9EQlFnRkFnTURCQUlEQmdZR0Fzd2RPam82SFIwN01TSUVCQVVEQWdJREJRVDlTZ3daRmhJRUFRRUJCQVlJQkFJREF3TUJCUXdORHdnSkRna0ZKaTRtQ3hVZUV3a1dGUkVFQVFFQkJBWUlCQUVEQXdNQkJnd01EQVlIQ3dnRUppNG1DaFVnRmdGY0JBWUlCUVVJQmdRNkFRSURCQUlDQkFNQ0FUb0VCZ2dGQlFnR0JBUUhDUVVJRGd3SkF5d3NBZ1lJQ2dVSUR3d0hkZ3daRmhJRUFRRUJCQVlJQkFJREF3TUJCUXdORHdnSkRna0ZKaTRtQ3hVZUV3a1dGUkVFQVFFQkJBWUlCQUVEQXdNQkJnd01EQVlIQ3dnRUppNG1DaFVnRmdMZEhUY3NIUU1FQmdRQ0FnUUdCQU1kTERjZEZ5NHZMeGdYTGk0dEZoMDNMQjBEQVFJQkFRR3ZCUW9JQndJQkFRRUNCQUxGQWdNRUF3TWNLellkRmk0dUxoY1hMeTh1Ri83ZkJBY0tCd0VEQXdNQkJRZ0dBd0VCQVFRR0JBSUVCd2tGRGdvTUdoNE5HQklLQXdZSkJnRURBd01CQlFnRkF3RUJBUU1GQXdFREJnZ0ZEUWtOR2g0UEdSSUtHUVVJQmdRRUJnZ0ZnWThDQXdJQkFRSURBbytCQlFnR0JBUUdDQVduQlFrSEJBRUJCUWtIYkd3RkNBVURBUUlHQ3dpbkdRUUhDZ2NCQXdNREFRVUlCZ01CQVFFRUJnUUNCQWNKQlE0S0RCb2VEUmdTQ2dNR0NRWUJBd01EQVFVSUJRTUJBUUVEQlFNQkF3WUlCUTBKRFJvZUR4a1NDZ0FBQUFBREFNRC92d05BQTc4QUdBQWRBRElBQUFFUkZBNENJeUVpTGdJMUVUUStBak1oTWg0Q0ZRY2hFU0VSQXpRdUFpTWlEZ0lWRkI0Q016SStBalVEUUFvUkZ3MytBQTBYRVFvS0VSY05BZ0FORnhFS2EvNVZBYXVWQ2hFWERRMFhFUW9LRVJjTkRSY1JDZ04vL0lBTkZ4RUtDaEVYRFFPQURSY1JDZ29SRncxci9hc0NWZjByRFJjUkNnb1JGdzBORnhFS0NoRVhEUUFBQUFFQUFBQUJBQUFnVTZwR1h3ODg5UUFMQkFBQUFBQUF6cFJpWFFBQUFBRE9sR0pkQUFEL3Z3UUFBOEVBQUFBSUFBSUFBQUFBQUFBQUFRQUFBOEQvd0FBQUJBQUFBQUFBQkFBQUFRQUFBQUFBQUFBQUFBQUFBQUFBQURvQUFBQUFBZ0FBQUFRQUFGRUVBQUVRQkFBQVhnUUFBQ0lFQUFDSkJBQUFrUVFBQU0wRUFBQ1JCQUFBandRQUFBQUVBQUFIQkFBQU1nUUFBQ0lFQUFBREJBQUFBUVFBQUFBRUFBRHZCQUFBQUFRQUFGRUVBQUFRQkFBQUFBUUFBQkFFQUFBQkJBQUFRd1FBQUMwRUFBRVJCQUFBRFFRQUFBQUVBQUFDQkFBQUFBUUFBSjhFQUFBQUJBQUFJd1FBQUFBRUFBQU1CQUFBQUFRQUFBQUVBQUFKQkFBQUFRUUFBRmtFQUFBQ0JBQUFpUVFBQUFZRUFBQmZCQUFBSkFRQUFBQUVBQUFWQkFBQUFBUUFBQUlFQUFESEJBQUFiUVFBQUJzRUFBQUFCQUFBQUFRQUFDSUVBQURBQUFBQUFBQUtBSXdBeUFFNkFhWUI2QUkwQW9BQzZnTXVBN1lFU2dTK0JYUUdGQWRHQjVZSDJnZ3NDTUlKamdxeUMxQU1OQXpjRFQ0TmdnM2lEandQcWhCRUVJZ1JEaEdJRWdnU3BCTk1FNXdVSGhUcUZVNFZ5QlljRmxvV25CYnlGMkFZUWhqTUdRQVprQm5vR3FZYkJCdGVIT0FkTEFBQUFBRUFBQUE2QVNzQUNBQUFBQUFBQWdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT0FLNEFBUUFBQUFBQUFRQU9BQUFBQVFBQUFBQUFBZ0FPQUVjQUFRQUFBQUFBQXdBT0FDUUFBUUFBQUFBQUJBQU9BRlVBQVFBQUFBQUFCUUFXQUE0QUFRQUFBQUFBQmdBSEFESUFBUUFBQUFBQUNnQW9BR01BQXdBQkJBa0FBUUFPQUFBQUF3QUJCQWtBQWdBT0FFY0FBd0FCQkFrQUF3QU9BQ1FBQXdBQkJBa0FCQUFPQUZVQUF3QUJCQWtBQlFBV0FBNEFBd0FCQkFrQUJnQU9BRGtBQXdBQkJBa0FDZ0FvQUdNQWFRQmpBRzhBYlFCdkFHOEFiZ0JXQUdVQWNnQnpBR2tBYndCdUFDQUFNQUF1QURBQWFRQmpBRzhBYlFCdkFHOEFibWxqYjIxdmIyNEFhUUJqQUc4QWJRQnZBRzhBYmdCU0FHVUFad0IxQUd3QVlRQnlBR2tBWXdCdkFHMEFid0J2QUc0QVJ3QmxBRzRBWlFCeUFHRUFkQUJsQUdRQUlBQmlBSGtBSUFCSkFHTUFid0JOQUc4QWJ3QnVBQUFBQUFNQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQT0pIGZvcm1hdCgnd29mZicpO1xuXHRmb250LXdlaWdodDogbm9ybWFsO1xuXHRmb250LXN0eWxlOiBub3JtYWw7XG59XG5cbltjbGFzcyo9XCJpY29uLXV0aWxpdHktXCJdIHtcblx0Zm9udC1mYW1pbHk6ICdpY29tb29uJztcblx0c3BlYWs6IG5vbmU7XG5cdGZvbnQtc3R5bGU6IG5vcm1hbDtcblx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0Zm9udC12YXJpYW50OiBub3JtYWw7XG5cdHRleHQtdHJhbnNmb3JtOiBub25lO1xuXHRsaW5lLWhlaWdodDogMTtcblxuXHQvKiBCZXR0ZXIgRm9udCBSZW5kZXJpbmcgPT09PT09PT09PT0gKi9cblx0LXdlYmtpdC1mb250LXNtb290aGluZzogYW50aWFsaWFzZWQ7XG5cdC1tb3otb3N4LWZvbnQtc21vb3RoaW5nOiBncmF5c2NhbGU7XG59XG5cbi5pY29uLXV0aWxpdHktc3VjY2VzczpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTYwMFwiO1xufVxuLmljb24tdXRpbGl0eS1hdHRhY2g6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDBcIjtcbn1cbi5pY29uLXV0aWxpdHktYm9va21hcms6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDFcIjtcbn1cbi5pY29uLXV0aWxpdHktY2FsbDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAwMlwiO1xufVxuLmljb24tdXRpbGl0eS1jaGF0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDAzXCI7XG59XG4uaWNvbi11dGlsaXR5LWNoZWNraW46YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDRcIjtcbn1cbi5pY29uLXV0aWxpdHktY2hldnJvbmxlZnQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDVcIjtcbn1cbi5pY29uLXV0aWxpdHktY2hldnJvbnJpZ2h0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDA2XCI7XG59XG4uaWNvbi11dGlsaXR5LWNsb3NlOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDA3XCI7XG59XG4uaWNvbi11dGlsaXR5LWRvd246YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDhcIjtcbn1cbi5pY29uLXV0aWxpdHktZG93bmxvYWQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDlcIjtcbn1cbi5pY29uLXV0aWxpdHktZW1haWw6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMGJcIjtcbn1cbi5pY29uLXV0aWxpdHktZ3JvdXBzOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDBlXCI7XG59XG4uaWNvbi11dGlsaXR5LWltYWdlOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDBmXCI7XG59XG4uaWNvbi11dGlsaXR5LWxlZnQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMTBcIjtcbn1cbi5pY29uLXV0aWxpdHktbGlrZTpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxMVwiO1xufVxuLmljb24tdXRpbGl0eS1saW5rOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDEyXCI7XG59XG4uaWNvbi11dGlsaXR5LWxpc3Q6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMTNcIjtcbn1cbi5pY29uLXV0aWxpdHktbG9jYXRpb246YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMTRcIjtcbn1cbi5pY29uLXV0aWxpdHktbG9nb3V0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDE1XCI7XG59XG4uaWNvbi11dGlsaXR5LXBlb3BsZTpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxNlwiO1xufVxuLmljb24tdXRpbGl0eS1waG90bzpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxN1wiO1xufVxuLmljb24tdXRpbGl0eS1yZXBseTpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxOFwiO1xufVxuLmljb24tdXRpbGl0eS1yaWdodDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxOVwiO1xufVxuLmljb24tdXRpbGl0eS11cDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxZVwiO1xufVxuLmljb24tdXRpbGl0eS11cGxvYWQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMWZcIjtcbn1cbi5pY29uLXV0aWxpdHktdXNlcjpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyMFwiO1xufVxuLmljb24tdXRpbGl0eS1maWx0ZXI6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMjJcIjtcbn1cbi5pY29uLXV0aWxpdHktaGVscDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyM1wiO1xufVxuLmljb24tdXRpbGl0eS1lcnJvcjpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyNFwiO1xufVxuLmljb24tdXRpbGl0eS13YXJuaW5nOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDI1XCI7XG59XG4uaWNvbi11dGlsaXR5LWFkZHVzZXI6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMjZcIjtcbn1cbi5pY29uLXV0aWxpdHktYWRkOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDI3XCI7XG59XG4uaWNvbi11dGlsaXR5LWVkaXQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMGFcIjtcbn1cbi5pY29uLXV0aWxpdHktYmFjazpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyOFwiO1xufVxuLmljb24tdXRpbGl0eS1sb2NrOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDI5XCI7XG59XG4uaWNvbi11dGlsaXR5LWluZm86YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMmRcIjtcbn1cbi5pY29uLXV0aWxpdHktZnJvemVuOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDJlXCI7XG59XG4uaWNvbi11dGlsaXR5LXNwaW5uZXI6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMmJcIjtcbn1cbi5pY29uLXV0aWxpdHktbmV3czpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyZlwiO1xufVxuLmljb24tdXRpbGl0eS1kYXNoOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDMwXCI7XG59XG4uaWNvbi11dGlsaXR5LXF1ZXN0aW9uOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDMxXCI7XG59XG4uaWNvbi11dGlsaXR5LTNkb3RzOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDMyXCI7XG59XG4uaWNvbi11dGlsaXR5LXJlZnJlc2g6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMzNcIjtcbn1cbi5pY29uLXV0aWxpdHktc29jaWFsc2hhcmU6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMzRcIjtcbn1cbi5pY29uLXV0aWxpdHktcHJpb3JpdHk6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMjFcIjtcbn1cbi5pY29uLXV0aWxpdHktc2VhcmNoOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDFiXCI7XG59XG4uaWNvbi11dGlsaXR5LXJvd3M6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMWFcIjtcbn1cbi5pY29uLXV0aWxpdHktZXZlbnQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMGNcIjtcbn1cbi5pY29uLXV0aWxpdHktc2V0dGluZ3M6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMWNcIjtcbn1cbi5pY29uLXV0aWxpdHktY2hlY2s6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMmFcIjtcbn1cbi5pY29uLXV0aWxpdHktbm90aWZpY2F0aW9uOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDJjXCI7XG59XG4uaWNvbi11dGlsaXR5LXNoYXJlOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDFkXCI7XG59XG4uaWNvbi11dGlsaXR5LWZhdm9yaXRlOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDBkXCI7XG59XG4uaWNvbi11dGlsaXR5LXNtczpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTYwMVwiO1xufVxuLmljb24tdXRpbGl0eS1wdXNoOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlNjAyXCI7XG59XG5cbkBmb250LWZhY2Uge1xuXHRmb250LWZhbWlseTogJ2ljb21vb24nO1xuXHRzcmM6IHVybCgnZm9udHMvaWNvbW9vbi5lb3QnKTtcbn1cbkBmb250LWZhY2Uge1xuXHRmb250LWZhbWlseTogJ2ljb21vb24nO1xuXHRzcmM6IHVybChkYXRhOmFwcGxpY2F0aW9uL3gtZm9udC10dGY7Y2hhcnNldD11dGYtODtiYXNlNjQsQUFFQUFBQUxBSUFBQXdBd1QxTXZNZzhTRGRBQUFBQzhBQUFBWUdOdFlYQ3lTM2hsQUFBQkhBQUFBSnhuWVhOd0FBQUFFQUFBQWJnQUFBQUlaMng1WnVWcW01OEFBQUhBQUFBRzJHaGxZV1FGTlBZekFBQUltQUFBQURab2FHVmhCOE1EMUFBQUNOQUFBQUFrYUcxMGVEWHFBRm9BQUFqMEFBQUFVR3h2WTJFUmhnK3FBQUFKUkFBQUFDcHRZWGh3QUJvQVZ3QUFDWEFBQUFBZ2JtRnRaVmNacHU0QUFBbVFBQUFCUlhCdmMzUUFBd0FBQUFBSzJBQUFBQ0FBQXdRQUFaQUFCUUFBQXBrQ3pBQUFBSThDbVFMTUFBQUI2d0F6QVFrQUFBQUFBQUFBQUFBQUFBQUFBQUFCRUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFEd3BnUEEvOEFBUUFQQUFFQUFBQUFCQUFBQUFBQUFBQUFBQUFBZ0FBQUFBQUFDQUFBQUF3QUFBQlFBQXdBQkFBQUFGQUFFQUlnQUFBQWVBQkFBQXdBT0FBRUFJT1lFNlN6cGhPb0s2Zy9xVnZCRThFcndUdkJhOEtiLy9mLy9BQUFBQUFBZzVnSHBMT21FNmdycUQrcFY4RVR3U3ZCTzhGcndwZi85Ly84QUFmL2pHZ01XM0JhRkZnQVYvQlczRDhvUHhRL0NEN2NQYlFBREFBRUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQi8vOEFEd0FCQUFBQUFBQUFBQUFBQWdBQU56a0JBQUFBQUFFQUFBQUFBQUFBQUFBQ0FBQTNPUUVBQUFBQUFRQUFBQUFBQUFBQUFBSUFBRGM1QVFBQUFBQUJBQUFBUUFHQUEwQUFBd0FBRXdrQkVRQUJnUDZBQTBEK2dQNkFBd0FBQUFFQUFBREFBd0FDUUFBREFBQVRDUUVoQUFHQUFYLzlBUUpBL29BQmdBQUFBZ0FTLzhBRDdnUEFBRFlBU3dBQUFTNEJQZ0UzSnc0Qkl5SXVBalVqRkFZSERnSW1Kd2NlQVJjZUFRNEJCeGMrQVRNeUhnSVZNelEyTno0Q0ZoYzNMZ0VuQlNJdUFqVTBQZ0l6TWg0Q0ZSUU9BaU1EcGhRSkV5OGpaUlV5R3loSE5SN0pEUTBWUGtoTkkyVVdKUTBVQ1JRdUkyVVZNaG9vUnpVZnlRME5GRDVKVENSa0ZTVU4vbG9yU3prZ0lEbExLeXRMT1NBZ09Vc3JBVjRqVEVrK0ZLOE5EaDgxUnlrWk1oY2pMaE1KRks0TkpCY2pURWcvRks0TURoODFSeWdaTVJjakxoTUpGSzhNSkJkdElEbExLeXRMT1NBZ09Vc3JLMHM1SUFBQUFBQUVBQUQvd0FRQUE4QUFFQUFhQUM4QVJBQUFBVFEyT3dFeUZoMEJGQVlyQVNJbVBRRVRJVFV6TlNNMU14RXpBeUlPQWhVVUhnSXpNajRDTlRRdUFpTVJJaTRDTlRRK0FqTXlIZ0lWRkE0Q0l3SEFIQlFnRkJ3Y0ZDQVVITUQvQUVCQXdFQ0FhcnVMVUZDTHUycHF1NHRRVUl1N2FsYVljVUZCY1poV1ZwaHhRVUZ4bUZZQ2tCUWNIQlFnRkJ3Y0ZDRCtNRURBUVA4QUFzQlFpN3RxYXJ1TFVGQ0x1MnBxdTR0US9HQkJjWmhXVnBoeFFVRnhtRlpXbUhGQkFBVUFBUC9BQkFBRHdBQUpBQTBBRmdBYUFDRUFBQUVSSVFjUklSRWhFU0VsRlNNM0F4RXpOU0VWQnhFaEFSVWpOd0VoRVRNMUlSRUNnUDVBd0FHQUFvRCtnUDVBWldXQXdBRkF3UDdBQWdCbFpRR0EvZ0RBQVVBQ3dBRUF3UDNBL3dBREFLVmxaZjJiQWNEQXdNRC9BQUZsWldYOW13SEF3UDJBQUFBQkFBRC93QVFBQThBQUxnQUFBU0UzTGdFaklnWUhEZ0VWRkJZWEhnRXpNalkzUGdFM0Z3NERJeUl1QWpVMFBnSXpNaDRDRnpjUkJBRCtnSkEzakUxTmpEYzJPam8yTjR4TlRZdzNCQWtFWUNOV1ltdzZhcnVMVUZDTHUybzFaRnhTSTVZQ1FKQTJPam8yTjR4TlRZdzNOam82TmdVSkJWUW9RUzBaVUl1N2FtcTdpMUFWSnpjamx2NkFBQUVBQVAvQUJBQUR3QUFrQUFBQklSRTBKaXNCSWdZVkVTRWlCaDBCRkJZeklSRVVGanNCTWpZMUVTRXlOajBCTkNZakErRCtvQk1Od0EwVC9xQU5FeE1OQVdBVERjQU5Fd0ZnRFJNVERRSkFBV0FORXhNTi9xQVREY0FORS82Z0RSTVREUUZnRXczQURSTUFBQUVBQXYvQ0EvNER2Z0JVQUFBbE9BRXhDUUU0QVRFK0FUYzJKaThCTGdFSERnRUhPQUV4Q1FFNEFURXVBU2NtQmc4QkRnRVhIZ0VYT0FFeENRRTRBVEVPQVFjR0ZoOEJIZ0UzUGdFM09BRXhDUUU0QVRFZUFSY1dOajhCUGdFbkxnRW5BL2YreVFFM0FnUUJBd01Ia3djU0NRTUdBdjdKL3NrQ0JnTUpFZ2VUQndNREFRUUNBVGYreVFJRUFRTURCNU1IRWdrREJnSUJOd0UzQWdZRENSSUhrd2NEQXdFRUFva0JOd0UzQWdZRENSSUhrd2NEQXdFRUF2N0pBVGNDQkFFREF3ZVRCeElKQXdZQy9zbit5UUlHQXdrU0I1TUhBd01CQkFJQk4vN0pBZ1FCQXdNSGt3Y1NDUU1HQWdBQUFBSUFBUC9BQkFBRHdBQVVBQ0VBQUFFaURnSVZGQjRDTXpJK0FqVTBMZ0lqRVNJbU5UUTJNeklXRlJRR0l3SUFhcnVMVUZDTHUycHF1NHRRVUl1N2FqVkxTelUxUzBzMUE4QlFpN3RxYXJ1TFVGQ0x1MnBxdTR0US9ZQkxOVFZMU3pVMVN3QUNBQUQvd0FRQUE4QUFGQUFwQUFBQklnNENGUlFlQWpNeVBnSTFOQzRDSXhFaUxnSTFORDRDTXpJZUFoVVVEZ0lqQWdCcXU0dFFVSXU3YW1xN2kxQlFpN3RxVUl0cFBEeHBpMUJRaTJrOFBHbUxVQVBBVUl1N2FtcTdpMUJRaTd0cWFydUxVUHlBUEdtTFVGQ0xhVHc4YVl0UVVJdHBQQUFCQUFBQVFBR0FBMEFBQXdBQUV3RVJBUUFCZ1A2QUFjRCtnQU1BL29BQUFBRUFSZ0FBQTdjRGJnQWVBQUFCTmhjV0ZSRVVCd1luQVNZbkVSUUhCaWNCSmpVME53RTJGeFlWRVRZM0E1MExCd2dJQnd2K2FnUURCd2dML21zTEN3R1ZDd2dIQXdRRFpnc0RCQS84dHc4REF3b0JsZ1VHL21vUEF3TUtBWllMRHc4TEFaVUxBd1FQL21zR0JRQUFBQUFCQUFBQUFBTnhBMjRBSGdBQU53WW5KalVSTkRjMkZ3RVdGeEUwTnpZWEFSWVZGQWNCQmljbU5SRUdCeG9MQ0FjSENBc0JsUVVEQndnTEFaVUxDLzVyQ3dnSEF3VUhDZ01ERHdOSkR3UURDLzVyQlFZQmxROEVBd3YrYXdzUER3dithZ29EQXc4QmxnWUZBQUFCQUFBQVFBR0FBMEFBQXdBQUV3a0JFUUFCZ1A2QUEwRCtnUDZBQXdBQUFBSUFBQUJBQW9BRFFBQURBQWdBQUFrQkVRRUJNeEVqRVFFQUFZRCtnUDhBZ0lBQndQNkFBd0QrZ1A2QUF3RDlBQUFBQUFBQ0FBQUFRQUtBQTBBQUF3QUlBQUEzQ1FFUkFSRXpFU01BQVlEK2dBSUFnSUJBQVlBQmdQMEFBd0Q5QUFNQUFBQUJBQUFBQVFBQW1XaENSbDhQUFBVQUN3UUFBQUFBQU5FSzJOc0FBQUFBMFFyWTJ3QUEvOEFFQUFQQUFBQUFDQUFDQUFBQUFBQUFBQUVBQUFQQS84QUFBQVFBQUFELy93UUFBQUVBQUFBQUFBQUFBQUFBQUFBQUFBQVVBQUFBQUFBQUFBQUFBQUFBQWdBQUFBRi9BQUFDL3dBQUJBQUFFZ1FBQUFBRUFBQUFCQUFBQUFRQUFBQUVBQUFDQkFBQUFBUUFBQUFCZndBQUE3Y0FSZ08zQUFBQmZ3QUFBb0FBQUFLQUFBQUFBQUFBQUFvQUZBQWVBQzRBUGdDdUFRd0JTZ0dRQWNZQ1BnSndBcXdDdkFMMEF5b0RPZ05VQTJ3QUFBQUJBQUFBRkFCVkFBVUFBQUFBQUFJQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQURnQ3VBQUVBQUFBQUFBRUFEZ0FBQUFFQUFBQUFBQUlBRGdCSEFBRUFBQUFBQUFNQURnQWtBQUVBQUFBQUFBUUFEZ0JWQUFFQUFBQUFBQVVBRmdBT0FBRUFBQUFBQUFZQUJ3QXlBQUVBQUFBQUFBb0FOQUJqQUFNQUFRUUpBQUVBRGdBQUFBTUFBUVFKQUFJQURnQkhBQU1BQVFRSkFBTUFEZ0FrQUFNQUFRUUpBQVFBRGdCVkFBTUFBUVFKQUFVQUZnQU9BQU1BQVFRSkFBWUFEZ0E1QUFNQUFRUUpBQW9BTkFCakFHa0FZd0J2QUcwQWJ3QnZBRzRBVmdCbEFISUFjd0JwQUc4QWJnQWdBREVBTGdBd0FHa0FZd0J2QUcwQWJ3QnZBRzVwWTI5dGIyOXVBR2tBWXdCdkFHMEFid0J2QUc0QVVnQmxBR2NBZFFCc0FHRUFjZ0JwQUdNQWJ3QnRBRzhBYndCdUFFWUFid0J1QUhRQUlBQm5BR1VBYmdCbEFISUFZUUIwQUdVQVpBQWdBR0lBZVFBZ0FFa0FZd0J2QUUwQWJ3QnZBRzRBTGdBQUFBQURBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBKSBmb3JtYXQoJ3RydWV0eXBlJyksXG5cdFx0IHVybChkYXRhOmFwcGxpY2F0aW9uL2ZvbnQtd29mZjtjaGFyc2V0PXV0Zi04O2Jhc2U2NCxkMDlHUmdBQkFBQUFBQXRFQUFzQUFBQUFDdmdBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQlBVeTh5QUFBQkNBQUFBR0FBQUFCZ0R4SU4wR050WVhBQUFBRm9BQUFBbkFBQUFKeXlTM2hsWjJGemNBQUFBZ1FBQUFBSUFBQUFDQUFBQUJCbmJIbG1BQUFDREFBQUJ0Z0FBQWJZNVdxYm4yaGxZV1FBQUFqa0FBQUFOZ0FBQURZRk5QWXphR2hsWVFBQUNSd0FBQUFrQUFBQUpBZkRBOVJvYlhSNEFBQUpRQUFBQUZBQUFBQlFOZW9BV214dlkyRUFBQW1RQUFBQUtnQUFBQ29SaGcrcWJXRjRjQUFBQ2J3QUFBQWdBQUFBSUFBYUFGZHVZVzFsQUFBSjNBQUFBVVVBQUFGRlZ4bW03bkJ2YzNRQUFBc2tBQUFBSUFBQUFDQUFBd0FBQUFNRUFBR1FBQVVBQUFLWkFzd0FBQUNQQXBrQ3pBQUFBZXNBTXdFSkFBQUFBQUFBQUFBQUFBQUFBQUFBQVJBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQThLWUR3UC9BQUVBRHdBQkFBQUFBQVFBQUFBQUFBQUFBQUFBQUlBQUFBQUFBQWdBQUFBTUFBQUFVQUFNQUFRQUFBQlFBQkFDSUFBQUFIZ0FRQUFNQURnQUJBQ0RtQk9rczZZVHFDdW9QNmxid1JQQks4RTd3V3ZDbS8vMy8vd0FBQUFBQUlPWUI2U3pwaE9vSzZnL3FWZkJFOEVyd1R2QmE4S1gvL2YvL0FBSC80eG9ERnR3V2hSWUFGZndWdHcvS0Q4VVB3ZyszRDIwQUF3QUJBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFFQUFmLy9BQThBQVFBQUFBQUFBQUFBQUFJQUFEYzVBUUFBQUFBQkFBQUFBQUFBQUFBQUFnQUFOemtCQUFBQUFBRUFBQUFBQUFBQUFBQUNBQUEzT1FFQUFBQUFBUUFBQUVBQmdBTkFBQU1BQUJNSkFSRUFBWUQrZ0FOQS9vRCtnQU1BQUFBQkFBQUF3QU1BQWtBQUF3QUFFd2tCSVFBQmdBRi8vUUVDUVA2QUFZQUFBQUlBRXYvQUErNER3QUEyQUVzQUFBRXVBVDRCTnljT0FTTWlMZ0kxSXhRR0J3NENKaWNISGdFWEhnRU9BUWNYUGdFek1oNENGVE0wTmpjK0FoWVhOeTRCSndVaUxnSTFORDRDTXpJZUFoVVVEZ0lqQTZZVUNSTXZJMlVWTWhzb1J6VWV5UTBORlQ1SVRTTmxGaVVORkFrVUxpTmxGVElhS0VjMUg4a05EUlErU1V3a1pCVWxEZjVhSzBzNUlDQTVTeXNyU3prZ0lEbExLd0ZlSTB4SlBoU3ZEUTRmTlVjcEdUSVhJeTRUQ1JTdURTUVhJMHhJUHhTdURBNGZOVWNvR1RFWEl5NFRDUlN2RENRWGJTQTVTeXNyU3prZ0lEbExLeXRMT1NBQUFBQUFCQUFBLzhBRUFBUEFBQkFBR2dBdkFFUUFBQUUwTmpzQk1oWWRBUlFHS3dFaUpqMEJFeUUxTXpVak5UTVJNd01pRGdJVkZCNENNekkrQWpVMExnSWpFU0l1QWpVMFBnSXpNaDRDRlJRT0FpTUJ3QndVSUJRY0hCUWdGQnpBL3dCQVFNQkFnR3E3aTFCUWk3dHFhcnVMVUZDTHUycFdtSEZCUVhHWVZsYVljVUZCY1poV0FwQVVIQndVSUJRY0hCUWcvakJBd0VEL0FBTEFVSXU3YW1xN2kxQlFpN3RxYXJ1TFVQeGdRWEdZVmxhWWNVRkJjWmhXVnBoeFFRQUZBQUQvd0FRQUE4QUFDUUFOQUJZQUdnQWhBQUFCRVNFSEVTRVJJUkVoSlJVak53TVJNelVoRlFjUklRRVZJemNCSVJFek5TRVJBb0QrUU1BQmdBS0Evb0QrUUdWbGdNQUJRTUQrd0FJQVpXVUJnUDRBd0FGQUFzQUJBTUQ5d1A4QUF3Q2xaV1g5bXdIQXdNREEvd0FCWldWbC9ac0J3TUQ5Z0FBQUFRQUEvOEFFQUFQQUFDNEFBQUVoTnk0Qkl5SUdCdzRCRlJRV0Z4NEJNekkyTno0Qk54Y09BeU1pTGdJMU5ENENNekllQWhjM0VRUUEvb0NRTjR4TlRZdzNOam82TmplTVRVMk1Od1FKQkdBalZtSnNPbXE3aTFCUWk3dHFOV1JjVWlPV0FrQ1FOam82TmplTVRVMk1Oelk2T2pZRkNRVlVLRUV0R1ZDTHUycHF1NHRRRlNjM0k1YitnQUFCQUFEL3dBUUFBOEFBSkFBQUFTRVJOQ1lyQVNJR0ZSRWhJZ1lkQVJRV015RVJGQlk3QVRJMk5SRWhNalk5QVRRbUl3UGcvcUFURGNBTkUvNmdEUk1URFFGZ0V3M0FEUk1CWUEwVEV3MENRQUZnRFJNVERmNmdFdzNBRFJQK29BMFRFdzBCWUJNTndBMFRBQUFCQUFML3dnUCtBNzRBVkFBQUpUZ0JNUWtCT0FFeFBnRTNOaVl2QVM0QkJ3NEJCemdCTVFrQk9BRXhMZ0VuSmdZUEFRNEJGeDRCRnpnQk1Ra0JPQUV4RGdFSEJoWWZBUjRCTno0Qk56Z0JNUWtCT0FFeEhnRVhGalkvQVQ0Qkp5NEJKd1AzL3NrQk53SUVBUU1EQjVNSEVna0RCZ0wreWY3SkFnWURDUklIa3djREF3RUVBZ0UzL3NrQ0JBRURBd2VUQnhJSkF3WUNBVGNCTndJR0F3a1NCNU1IQXdNQkJBS0pBVGNCTndJR0F3a1NCNU1IQXdNQkJBTCt5UUUzQWdRQkF3TUhrd2NTQ1FNR0F2N0ovc2tDQmdNSkVnZVRCd01EQVFRQ0FUZit5UUlFQVFNREI1TUhFZ2tEQmdJQUFBQUNBQUQvd0FRQUE4QUFGQUFoQUFBQklnNENGUlFlQWpNeVBnSTFOQzRDSXhFaUpqVTBOak15RmhVVUJpTUNBR3E3aTFCUWk3dHFhcnVMVUZDTHUybzFTMHMxTlV0TE5RUEFVSXU3YW1xN2kxQlFpN3RxYXJ1TFVQMkFTelUxUzBzMU5Vc0FBZ0FBLzhBRUFBUEFBQlFBS1FBQUFTSU9BaFVVSGdJek1qNENOVFF1QWlNUklpNENOVFErQWpNeUhnSVZGQTRDSXdJQWFydUxVRkNMdTJwcXU0dFFVSXU3YWxDTGFUdzhhWXRRVUl0cFBEeHBpMUFEd0ZDTHUycHF1NHRRVUl1N2FtcTdpMUQ4Z0R4cGkxQlFpMms4UEdtTFVGQ0xhVHdBQVFBQUFFQUJnQU5BQUFNQUFCTUJFUUVBQVlEK2dBSEEvb0FEQVA2QUFBQUJBRVlBQUFPM0EyNEFIZ0FBQVRZWEZoVVJGQWNHSndFbUp4RVVCd1luQVNZMU5EY0JOaGNXRlJFMk53T2RDd2NJQ0FjTC9tb0VBd2NJQy81ckN3c0JsUXNJQndNRUEyWUxBd1FQL0xjUEF3TUtBWllGQnY1cUR3TURDZ0dXQ3c4UEN3R1ZDd01FRC81ckJnVUFBQUFBQVFBQUFBQURjUU51QUI0QUFEY0dKeVkxRVRRM05oY0JGaGNSTkRjMkZ3RVdGUlFIQVFZbkpqVVJCZ2NhQ3dnSEJ3Z0xBWlVGQXdjSUN3R1ZDd3YrYXdzSUJ3TUZCd29EQXc4RFNROEVBd3YrYXdVR0FaVVBCQU1ML21zTER3OEwvbW9LQXdNUEFaWUdCUUFBQVFBQUFFQUJnQU5BQUFNQUFCTUpBUkVBQVlEK2dBTkEvb0QrZ0FNQUFBQUNBQUFBUUFLQUEwQUFBd0FJQUFBSkFSRUJBVE1SSXhFQkFBR0Evb0QvQUlDQUFjRCtnQU1BL29EK2dBTUEvUUFBQUFBQUFnQUFBRUFDZ0FOQUFBTUFDQUFBTndrQkVRRVJNeEVqQUFHQS9vQUNBSUNBUUFHQUFZRDlBQU1BL1FBREFBQUFBUUFBQUFFQUFKbG9Ra1pmRHp6MUFBc0VBQUFBQUFEUkN0amJBQUFBQU5FSzJOc0FBUC9BQkFBRHdBQUFBQWdBQWdBQUFBQUFBQUFCQUFBRHdQL0FBQUFFQUFBQS8vOEVBQUFCQUFBQUFBQUFBQUFBQUFBQUFBQUFGQUFBQUFBQUFBQUFBQUFBQUFJQUFBQUJmd0FBQXY4QUFBUUFBQklFQUFBQUJBQUFBQVFBQUFBRUFBQUFCQUFBQWdRQUFBQUVBQUFBQVg4QUFBTzNBRVlEdHdBQUFYOEFBQUtBQUFBQ2dBQUFBQUFBQUFBS0FCUUFIZ0F1QUQ0QXJnRU1BVW9Ca0FIR0FqNENjQUtzQXJ3QzlBTXFBem9EVkFOc0FBQUFBUUFBQUJRQVZRQUZBQUFBQUFBQ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBNEFyZ0FCQUFBQUFBQUJBQTRBQUFBQkFBQUFBQUFDQUE0QVJ3QUJBQUFBQUFBREFBNEFKQUFCQUFBQUFBQUVBQTRBVlFBQkFBQUFBQUFGQUJZQURnQUJBQUFBQUFBR0FBY0FNZ0FCQUFBQUFBQUtBRFFBWXdBREFBRUVDUUFCQUE0QUFBQURBQUVFQ1FBQ0FBNEFSd0FEQUFFRUNRQURBQTRBSkFBREFBRUVDUUFFQUE0QVZRQURBQUVFQ1FBRkFCWUFEZ0FEQUFFRUNRQUdBQTRBT1FBREFBRUVDUUFLQURRQVl3QnBBR01BYndCdEFHOEFid0J1QUZZQVpRQnlBSE1BYVFCdkFHNEFJQUF4QUM0QU1BQnBBR01BYndCdEFHOEFid0J1YVdOdmJXOXZiZ0JwQUdNQWJ3QnRBRzhBYndCdUFGSUFaUUJuQUhVQWJBQmhBSElBYVFCakFHOEFiUUJ2QUc4QWJnQkdBRzhBYmdCMEFDQUFad0JsQUc0QVpRQnlBR0VBZEFCbEFHUUFJQUJpQUhrQUlBQkpBR01BYndCTkFHOEFid0J1QUM0QUFBQUFBd0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUE9PSkgZm9ybWF0KCd3b2ZmJyk7XG5cdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cblxuW2NsYXNzXj1cInNiLWljb24tXCJdLCBbY2xhc3MqPVwiIHNiLWljb24tXCJdIHtcblx0Zm9udC1mYW1pbHk6ICdpY29tb29uJztcblx0c3BlYWs6IG5vbmU7XG5cdGZvbnQtc3R5bGU6IG5vcm1hbDtcblx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0Zm9udC12YXJpYW50OiBub3JtYWw7XG5cdHRleHQtdHJhbnNmb3JtOiBub25lO1xuXHRsaW5lLWhlaWdodDogMTtcblx0Zm9udC1zaXplOiAxLjJlbTtcblx0Y29sb3I6ICMxNjZiYmY7XG5cblx0LyogQmV0dGVyIEZvbnQgUmVuZGVyaW5nID09PT09PT09PT09ICovXG5cdC13ZWJraXQtZm9udC1zbW9vdGhpbmc6IGFudGlhbGlhc2VkO1xuXHQtbW96LW9zeC1mb250LXNtb290aGluZzogZ3JheXNjYWxlO1xufVxuXG4uc2ItaWNvbi1qdW1wLWxlZnQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGYwYTVcIjtcbn1cblxuLnNiLWljb24tanVtcC1yaWdodDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZjBhNlwiO1xufVxuXG4uc2ItaWNvbi10cmlhbmdsZS1sZWZ0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxmMDQ0XCI7XG59XG5cbi5zYi1pY29uLXRyaWFuZ2xlLXJpZ2h0MzpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZjA1YVwiO1xufVxuXG4uc2ItaWNvbi10cmlhbmdsZS1yaWdodDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTYwMVwiO1xufVxuXG4uc2ItaWNvbi10cmlhbmdsZS1kb3duOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlNjAyXCI7XG59XG5cbi5zYi1pY29uLWluZm86YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGU2MDRcIjtcbn1cblxuLnNiLWljb24tY29nOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlNjAzXCI7XG59XG5cbi5zYi1pY29uLWNvcHk6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGU5MmNcIjtcbn1cblxuLnNiLWljb24tc3Bpbm5lcjExOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlOTg0XCI7XG59XG5cbi5zYi1pY29uLXBsdXM6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGVhMGFcIjtcbn1cblxuLnNiLWljb24tY3Jvc3M6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGVhMGZcIjtcbn1cblxuLnNiLWljb24tcmFkaW8tY2hlY2tlZDI6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGVhNTVcIjtcbn1cblxuLnNiLWljb24tcmFkaW8tdW5jaGVja2VkOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlYTU2XCI7XG59XG5cbi8qTXVsdGktc2VnbWVudCBsaW5lIGV4cGFuZC9jb2xsYXBzZSBsaW5rKi9cbi5zYi1pY29uLXRyaWFuZ2xlLXJpZ2h0LFxuLnNiLWljb24tdHJpYW5nbGUtZG93biB7XG5cdGNvbG9yOiBibGFjaztcblx0dmVydGljYWwtYWxpZ246IHRleHQtYm90dG9tO1xuXHRjdXJzb3I6IHBvaW50ZXI7XG59XG5cbi8qQWN0aW9uIGxpbmtzIG9uIHRoZSBhY3Rpb25zIGNvbHVtbiovXG4uc2ItaWNvbi1jcm9zcy5saW5lLFxuLnNiLWljb24tY29nLmxpbmUge1xuXHRmb250LXNpemU6IDFlbTtcbn1cblxuLypQYWdpbmF0aW9uIGNvbnRyb2xzKi9cbi5zYi1pY29uLWp1bXAtbGVmdCxcbi5zYi1pY29uLXRyaWFuZ2xlLWxlZnQsXG4uc2ItaWNvbi10cmlhbmdsZS1yaWdodDMsXG4uc2ItaWNvbi1qdW1wLXJpZ2h0IHtcblx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0bWFyZ2luLXJpZ2h0OiA1cHg7XG5cdGN1cnNvcjogcG9pbnRlcjtcbn1cblxuLnNiLWljb24tanVtcC1sZWZ0LmRpc2FibGVkLFxuLnNiLWljb24tdHJpYW5nbGUtbGVmdC5kaXNhYmxlZCxcbi5zYi1pY29uLXRyaWFuZ2xlLXJpZ2h0My5kaXNhYmxlZCxcbi5zYi1pY29uLWp1bXAtcmlnaHQuZGlzYWJsZWQge1xuXHRjb2xvcjogI2QzZDNkMztcblx0Y3Vyc29yOiBkZWZhdWx0O1xufVxuXG4vKioqIGpRdWVyeSBVSSBDYWxlbmRhciAqKiovXG5cbi51aS1kYXRlcGlja2VyIHtcblx0YmFja2dyb3VuZC1pbWFnZTogdXJsKCcvaW1nL2Fsb2hhU2tpbi9jYWxfc3ByaXRlLnBuZycpO1xuXHRiYWNrZ3JvdW5kLXBvc2l0aW9uOiBsZWZ0IC0xMDlweDtcblx0YmFja2dyb3VuZC1yZXBlYXQ6IHJlcGVhdC14O1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiAjZWRlZGVkO1xuXHR6LWluZGV4OiAxMDAgIWltcG9ydGFudDtcblx0d2lkdGg6IGF1dG87XG5cdHBhZGRpbmc6IDdweCA1cHggNnB4O1xuXHRib3JkZXItbGVmdDogMXB4IHNvbGlkICNkNmQ2ZDY7XG5cdGJvcmRlci1yaWdodDogMXB4IHNvbGlkICNkNmQ2ZDY7XG5cdC1tb3otYm94LXNoYWRvdzogMCAycHggNnB4ICMxMTE7XG5cdC13ZWJraXQtYm94LXNoYWRvdzogMCAycHggNnB4ICMxMTE7XG5cdGJveC1zaGFkb3c6IDAgMnB4IDZweCAjMTExO1xuXHQtbW96LWJvcmRlci1yYWRpdXM6IDVweDtcblx0LXdlYmtpdC1ib3JkZXItcmFkaXVzOiA1cHg7XG5cdGJvcmRlci1yYWRpdXM6IDVweDtcbn1cblxuLnVpLWRhdGVwaWNrZXIsIC51aS1kYXRlcGlja2VyLWhlYWRlciwgLnVpLWRhdGVwaWNrZXItY2FsZW5kYXIsIC51aS1kYXRlcGlja2VyLXdlZWstZW5kLCAudWktZGF0ZXBpY2tlci1idXR0b25wYW5lIHtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRvdmVyZmxvdzogaGlkZGVuO1xuXHR3aGl0ZS1zcGFjZTogbm93cmFwO1xufVxuXG4udWktZGF0ZXBpY2tlci1oZWFkZXIge1xuXHRwYWRkaW5nOiAwIDAgM3B4O1xufVxuXG4udWktZGF0ZXBpY2tlci10aXRsZSB7XG5cdGRpc3BsYXk6IGlubGluZS1ibG9jaztcbn1cblxuLnVpLWRhdGVwaWNrZXItbW9udGgge1xuXHRmbG9hdDogbGVmdDtcbn1cblxuLnVpLWRhdGVwaWNrZXIteWVhciB7XG5cdGZsb2F0OiByaWdodDtcbn1cblxuLnVpLWRhdGVwaWNrZXItcHJldiwgLnVpLWRhdGVwaWNrZXItbmV4dCB7XG5cdG1hcmdpbi10b3A6IDRweDtcblx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHR3aWR0aDogMTlweDtcblx0aGVpZ2h0OiAxNnB4O1xuXHRtYXJnaW46IDJweCA0cHggMCAwO1xuXHRiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuXHRsaW5lLWhlaWdodDogNDAwJTtcbn1cblxuLnVpLWRhdGVwaWNrZXItcHJldiB7XG5cdGZsb2F0OiBsZWZ0O1xuXHRiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9pbWcvZnVuY19pY29ucy9jYWwvbGVmdEFycm93LmdpZicpO1xufVxuXG4udWktZGF0ZXBpY2tlci1uZXh0IHtcblx0ZmxvYXQ6IGxlZnQ7XG5cdGJhY2tncm91bmQtaW1hZ2U6IHVybCgnL2ltZy9mdW5jX2ljb25zL2NhbC9yaWdodEFycm93LmdpZicpO1xufVxuXG4udWktZGF0ZXBpY2tlci1jYWxlbmRhciB7XG5cdHBhZGRpbmc6IDAgNXB4O1xuXHRtYXJnaW4tbGVmdDogYXV0bztcblx0bWFyZ2luLXJpZ2h0OiBhdXRvO1xufVxuXG4udWktZGF0ZXBpY2tlci1jYWxlbmRhciA+IHRoZWFkID4gdHIgPiB0aCB7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcblx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0Zm9udC1zaXplOiAuOWVtO1xuXHR3aWR0aDogMTQlO1xufVxuXG4udWktZGF0ZXBpY2tlci1jYWxlbmRhciB0ZCB7XG5cdHBhZGRpbmc6IDJweDtcbn1cblxuLnVpLWRhdGVwaWNrZXItY2FsZW5kYXIgYSB7XG5cdHdpZHRoOiBhdXRvO1xuXHRib3JkZXItYm90dG9tOiBub25lO1xuXHR0ZXh0LWRlY29yYXRpb246IG5vbmU7XG5cdGZvbnQtc2l6ZTogLjk1ZW07XG59XG5cbi51aS1kYXRlcGlja2VyLW90aGVyLW1vbnRoIGEge1xuXHRjb2xvcjogIzk5OTtcbn1cblxuLnVpLWRhdGVwaWNrZXItdG9kYXksIC51aS1kYXRlcGlja2VyLXRvZGF5ID4gYSB7XG5cdGJhY2tncm91bmQtY29sb3I6ICMxNzk3YzA7XG5cdGNvbG9yOiAjZmZmO1xuXHRmb250LXdlaWdodDogYm9sZDtcblx0dGV4dC1kZWNvcmF0aW9uOiBub25lO1xufVxuXG4udWktZGF0ZXBpY2tlci1jdXJyZW50LWRheSB7XG5cdGJhY2tncm91bmQtY29sb3I6ICNjNmUxZmY7XG5cdGJvcmRlcjogMXB4IHNvbGlkICM5Y2Y7XG5cdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHR0ZXh0LWRlY29yYXRpb246IG5vbmU7XG59XG5cbi51aS1kYXRlcGlja2VyLWN1cnJlbnQtZGF5ID4gYSB7XG5cdGJhY2tncm91bmQtY29sb3I6ICNjNmUxZmY7XG5cdGNvbG9yOiAjMzMzO1xufVxuXG4udWktZGF0ZXBpY2tlci1idXR0b25wYW5lIHtcblx0cGFkZGluZzogMXB4O1xuXHRjbGVhcjogYm90aDtcbn1cblxuLnVpLWRhdGVwaWNrZXItYnV0dG9ucGFuZSA+IGJ1dHRvbiB7XG5cdGJhY2tncm91bmQ6IHRyYW5zcGFyZW50O1xuXHRib3JkZXI6IG5vbmUgIWltcG9ydGFudDtcblx0Y29sb3I6ICMwMTViYTc7XG5cdGN1cnNvcjogcG9pbnRlcjtcblx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0cGFkZGluZzogMDtcblx0bWFyZ2luOiAwO1xufVxuXG4udWktZGF0ZXBpY2tlci1jbG9zZSB7XG5cdGRpc3BsYXk6IG5vbmU7XG59XG5cbiN1aS1kYXRlcGlja2VyLWRpdiB7XG5cdGRpc3BsYXk6IG5vbmU7XG59XG4iLCIvLyBAaW1wb3J0IFwiaWNvbnMvc2FsZXNmb3JjZS9jc3Mvc2YtaWNvbnMtZW1iZWRkZWQuY3NzXCI7XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6ICdzZi1pY29ucyc7XG4gIHNyYzogdXJsKCcuLi9mb250L3NmLWljb25zLmVvdD8xMzA2NzY3NicpO1xuICBzcmM6IHVybCgnLi4vZm9udC9zZi1pY29ucy5lb3Q/MTMwNjc2NzYjaWVmaXgnKSBmb3JtYXQoJ2VtYmVkZGVkLW9wZW50eXBlJyksXG4gICAgICAgdXJsKCcuLi9mb250L3NmLWljb25zLnN2Zz8xMzA2NzY3NiNzZi1pY29ucycpIGZvcm1hdCgnc3ZnJyk7XG4gIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogJ3NmLWljb25zJztcbiAgc3JjOiB1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxkMDlHUmdBQkFBQUFBR0lZQUE4QUFBQUF2QVFBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQkhVMVZDQUFBQldBQUFBRE1BQUFCQ3NQNno3VTlUTHpJQUFBR01BQUFBUXdBQUFGWStJRW43WTIxaGNBQUFBZEFBQUFMR0FBQUkwdTA0QTdGamRuUWdBQUFFbUFBQUFCTUFBQUFnQnRYL0JHWndaMjBBQUFTc0FBQUZrQUFBQzNDS2taQlpaMkZ6Y0FBQUNqd0FBQUFJQUFBQUNBQUFBQkJuYkhsbUFBQUtSQUFBVUdVQUFKazRVUm5KM21obFlXUUFBRnFzQUFBQU1nQUFBRFlKWVNmRmFHaGxZUUFBV3VBQUFBQWZBQUFBSkFkQUE5Wm9iWFI0QUFCYkFBQUFBQ1lBQUFJa0ZhSC8rbXh2WTJFQUFGc29BQUFCRkFBQUFSUXhIbHBtYldGNGNBQUFYRHdBQUFBZ0FBQUFJQUlwREtCdVlXMWxBQUJjWEFBQUFZTUFBQUxOdjFxaTNuQnZjM1FBQUYzZ0FBQUR1Z0FBQmJwZ3FOTXpjSEpsY0FBQVlad0FBQUI2QUFBQWh1VkJLN3g0bkdOZ1pHQmc0R0tRWTlCaFlIUng4d2xoNEdCZ1lZQUFrQXhqVG1aNklsQU15Z1BLc1lCcERpQm1nNGdDQUlvakEwOEFlSnhqWUdSK3lqaUJnWldCZ2FtS2FROERBME1QaEdaOHdHREl5QVFVWldCbFpzQUtBdEpjVXhnY1hqQzhhR2NPK3AvRkVNVWN4REFOS013SWtnTUFFM2tNbVFCNG5PM1dDYmZOQlJpRjhlZHl1a2xDMGlBTmhwS29ERkVwSWxTYWtDYWtTQmt5WmE2RXlIUS82djRXZXY3SC9oanVXcit6N2pucjNHSGQ5ZTY5TC9BSU1GMXZhQVRURGpQaFowd2M4TldKOGV2VG1UbCtmVFN4ZXZ5ZTBmQjY3dDIvN3lQRG84OUg0OGRwdm5ma2Q1emtVV2J3bUYvM09MTjRndG5NWVM1UE1vK25tTS9UUE1PelBNY0NubWNoTC9BaUwvRXlpMWpNRXBieUNxK3lqTmRZenV1c1lLVS8vMDNlWWhXcldjTmEzbVlkNjNtSGQzbVBEYnpQQjJ4a0V4K3ltUzE4eEZhMnNaMlArWVJQMmNGbmZNNFhmTWxYN0dRWHUvbWFQWHpEdDN6SDkvekFYdmF4bng4NXdFLzh6RUVPOFF1SCtaWGZPTUpSam5HYzN6bkJTVTV4bWpQOHdWbk9jWjRMWE9RU2wvbVR2L2liSy96RFZhNXhuWCs1d1UzKzR4YTN1Y05kN2pIbEgyU1NoeCt6aG9mSnMzMDJOZHpNQStNcktpK0gxSENOcWVHdVVzT2xwcnd3VXQ0YUthK09sUGRIYXJqZ2xEZEphdmp0VXQ0cEtTK1dsTGRMeWlzbTVUMlQ4ckpKZWVPa3ZIWlMzajBwRTBES0xKQXlGYVRNQnltVFFzck1rREk5cE13UktSTkZ5bXlSTW1Xa3pCc3BrMGZLREpJeWphVE1KU2tUU3Nxc2tqSzFwTXd2S1pOTXlreVRHbG9uWmM1Sm1YaFNacCtVTFVES1BpQmxNNUN5STBqWkZxVHNEVkkyQ0NtN2hKU3RRc3ArSVdYVGtMSnpTTmsrcE93aFVqWVNLYnVKbEMxRnlyNGlaWE9Sc3NOSTJXYWs3RFZTTmh3cHU0NlVyVWZLL2lObEU1S3lFMG5aanFUc1NWSTJKaW03azVRdFNzbytKV1d6a3JKalNkbTJwT3hkVWpZd0tidVlsSzFNeW40bVpWT1Rzck5KMmQ2azdIRlNOam9wdTUyVUxVL0t2aWRsODVOeUEwaTVCcVRjQlZJdUJDbTNncFNyUWNyOUlPV1NrSEpUU0xrdXBOd1pVaTRPS2JlSGxDdEV5ajBpNVRLUmNxTkl1VmFrM0MxU0xoZ3B0NHlVcTBiS2ZTUGwwcEZ5ODBpNWZxVGNRVkl1SWltM2taUXJTY3E5Sk9WeWtuSkRTYm1tcE54VlVpNHNLYmZXLzBZZVlPcC95K09RVWdBQWVKeGpZRUFERWhESUhQUS9DNFFCRW13RDNRQjRuSzFXYVhmVFJoUWRlVW1jaEN3bEN5MXFZY1RFYWJCR0ptekJnQWxCc21NZ1haeXRsYUNMRkR2cHZ2R0ozK0JmODJUYWMrZzNmbHJ2R3k4a2tMVG5jSnFUbzNmbnpkWE0yMlVTV3BMWUMrdVJsSnN2eGRUV0pvM3NQQW5waGszTFVYd29PM3NoWllySjN3VlJFSzJXMnJjZGgwUkVJbEMxcnJCRUVQc2VXWnBrZk9oUlJzdTJwRmROeWkwOTZTNWI0MEc5VmQ5K0dqcktzVHVocEdZemRHZzlzaVZWR0ZXaVNLWTlVdEttWmFqNkswa3J2TC9DekZmTlVNS0lUaUpwdkJuRzBFamVHMmUweW1nMXR1TW9pbXl5M0NoU0pKcmhRUlI1bE5VUzUrU0tDUXpLQjgyUThzcW5FZVhEL0lpczJLT2NWckJMdHRQOHZpOTVwM2M1UDdGZmIxRzI1RUFmeUk3czRPeDBKVitFVzF0aDNMU1Q3U2hVRVhiWGQwSnMyZXhVLzJhUDhwcEdBN2NyTXIzUWpHQ3BmSVVRS3oraHpQNGhXUzJjVC9tU1I2TmFzcEVUUWV0bFR1eExQb0hXNDRncGNjMFlXZERkMFFrUjFQMlNNd3oybUQ0ZS9QSGVLWllMRXdKNEhNdDZSeVdjQ0JNcFlYTTBTZG93Y21BbFpZc3FxZld1bURqbGRWckVXOEorN2RyUmw4NW80MUIzWWp4YkR4MWJPVkhKOFdoU3A1bE1uZHBKemFNcERhS1VkQ1o0eks4REtEK2lTVjV0WXpXSmxVZlRPR2JHaEVRaUFpM2NTMU5CTER1eHBDa0V6YU1admJrYnBybDJMVnFreVFQMTNLUDM5T1pXdUxuVFU5b085TE5HZjFhbllqcllDOVBwYWVRdjhXbmE1U0pGNmZycEdYNU00a0hXQWpLUkxUYkRsSU1IYi8wTzBzdlhsaHlGMXdiWTd1M3pLNmg5MWtUd3BBSDdHOUFlVDlVcENVeUZtRldJVmtCaXJXdFpsc25WckJhcHlOUjNRNXBXdnF6VEJJcHlIQmZIdm94eC9WOHpNNWFZRXI3ZmlkT3pJeTQ5YysxTENOTWNmSnQxUFpyWHFjVnlBWEZtZVU2bldaYnY2elRIOGdPZDVsbWUxK2tJUzF1bm95dy8xR21CNVVjNkhXTjVRUXVhZE4vQmtJc3c1QUlPa0RDRXBRTkRXRjZDSVN3VkRHRzVDRU5ZRm1FSXl5VVl3dkpqR01KeUdZYXd2S3hsMWRSVFNlUGFtVmdHYkVKZ1lvNGV1Y3hGNVdvcXVWUkN1MmhVYWtPZUVtNlZWQlRQcW45bG9GNDg4b1k1c0JaSWw4aWFYekhPbFk5RzVmaldGUzF2R2p0WHdMSHFieCtPOWpueFV0YUxoVDhGLzlYV1ZDVzlZczNEazZ2d0c0YWViQ2VxTnFsNGRFMlh6MVU5dXY1ZlZGUllDL1FiU0lWWUtNcXliSEJuSW9TUE9wMkdhcUNWUTh4c3pEeTA2M1hMbXAvRC9UY3hRaFpRL2ZnM0ZCb0wzSU5PV1VsWjdlQ3MxZGZic3R3N2czSTRFeXhKTVRmeitsYjRJaU96MG42UldjcWVqM3dlY0FXTVNtWFlhZ090RmJ6Wkp6RVBtZDRrendSeFcxRTJTTnJZemdTSkRSenpnSG56blFRbVllcXFEZVJPNFlZTitBVmhic0Y1SjF5aWVxTXNoKzVGN1BNb3BQeGJwK0pFOXFob2pNQ3oyUnRocis5Q3ltOXhEQ1EwK2FWK0RGUVZvYWtZTlJYUU5GSnVxQVpmeHRtNmJVTEdEdlFqS25iRHNxeml3OGNXOTVXU2JSbUVmS1NJMWFPam45WmVvazZxM0g1bUZKZnZuYjRGd1NBMU1YOTczM1J4a01xN1dza3lSMjBEVTdjYWxWUFhta1BqVllmcTVsSDF2ZVBzRXpscm1tNjZKeDU2WDlPcTI4SEZYQ3l3OW0wTzBsSW1GOVQxWVlVTm9zdkZwVkRxWlRSSjc3Z0hHQllZME85UWlvMy9xL3JZZko0clZZWFJjU1RmVHRTMzBlZGdEUHdQMkg5SDlRUFE5MlBvY2cwdXovZWFFNTl1OU9Gc21hNmlGK3VuNkRjd2E2MjVXYm9HM05CMEErSWhSNjJPdU1vTmZLY0djWHFrdVJ6cEllQmozUlhpQWNBbWdNWGdFOTIxak9aVEFLUDVqRGsrd09mTVlkQmtEb010NWpEWVpzNGF3QTV6R093eWg4RWVjeGg4d1p4MWdDK1p3eUJrRG9PSU9ReWVNQ2NBZU1vY0JsOHhoOEhYekdId0RYUHVBM3pMSEFZeGN4Z2t6R0d3cituV01Nd3RYdEJkb0xaQlZhQURVMDlZM01QaVVGTmx5UDZPRjRiOXZVSE0vc0VncHY2bzZmYVEraE12RFBWbmc1ajZpMEZNL1ZYVG5TSDFOMTRZNnU4R01mVVBnNWo2VEw4WXkyVUd2NHg4bHdvSGxGMXNQdWZ2aWZjUDI4VkF1UUFCQUFILy93QVBlSnpNdlFtY0hFZDVOMXhWZlZXZk16MzM3REhuenJISDdLNTJkL2JXN3F5a1BTU3Q3cFcwa20xNWZVaVdMZXZ3YldPSXpXVTd4bURIT01ZUkpCQ3dnUURHaEpod2hJQ0J2Qi9FRUVJNEFzRTJ4eStBSWVRakR2RExsL2lWbXUrcDZwNWpSeXZMaHJ6NXZUcTZxNnVyZTdxcnE1N24rVDlYSVFIQkgrSHorT3ZJUUhHVVIrT1ZFU29xUkpZUXhtakpLeUs4TEFrRUk3elkybUtaR0tWVExmbldmQ2hveHEyNElpTURHNm9VNmc0T0pIREl3cGxlUERTRjArYzlPSjBzSjVQbEtiYkJ0eldXVTJ3M3pjdi80RldlWndPUGpCSDZ6Y2VGdHdzUzZrTkRsWFdJWUhJU1NVZzZKY0J6STd3RU80eVdSWmxBeTBXQ3VncVpaRXMwNE5NVTFFZjZGSGhhZUtqaDlYZ29uMDFuOG1WN0tOK05NM0xZRHNsd0xMZmpVR1F3UFJDQjQ4Z0VIaGlHODhOa0JxODNiTnR3dnFCcUFYMWNEMmlxOHdWV2dkZFhLM0NIZCtJbFdpTHYyZjlMMkU4K0I4OWVyT1JZeDZLVEVoWkU0UlRDb29pWG9PL0ZaU1JpY1RFWVRBYURFVmxxNmNZancwTjlPSi94WVRuajdVTkpIQWw1KzRGcFBEemc3Vm03SWJMMG9xcm0xYWg2UnZKTFoyQmZWS0VvT1NvVWVLWDh2OTNLRnlWOHpSbmFkUDUveTM0b3VwV3lmS1oyRVhReEd5OEd1UmNWMEFpYVIvdlJWZWpHeW5Vck95djlvcUF1TDR3V1JTcVNlWGdqb21LeTRzZklaK3FDS2lCMUJRbElwSUs0WWhtYVFDV0ZMc0hOWkVXUzNRcXFMQ09GS3ZDdHJyejg0b05MdXhlM2JOb3dPVDQwME5PVlNiYTFSTU9oZ004ME5FVkNCVkt3K2ZkajN5bWJrZGtuQ2pmditmZGozeTJQUXpKODJqeDg2bUg0bEpGdzlCVWVrNzl6N29sM2hQeXhtRC9VdU0zRjhLM3hmTTc1b2lRVlJWa1dpNUswVTVKQ3JCaVNwQ3ZYckNYM1pxT1JhRHAycGZjL0VDMTB4dkVQWWdubkNHdnhyQVIvbm4zSkVpSXdkaDRRdW9VK3RBN05vS25LQkdMRGg2RGpNa1lTL0RzR3ZZeUpnRmVRSklvU2RMSEVScElrUXI5T1Q0NE1aZE10VWR1SDFwRjFiQTdrc3U2TGp2Qy92YmlRbHhWWnNURHJnSkVwRFAraUNReFBITEV3MU1Lc2tNL3BuY3lLN3A4Zjcyakp5RkpodmpzNUVjdkx4R2VzbURhVyt3dTlOMVMyMzFYc0ZJUjFoNlpNZnpCb0d5dDZJS0N2R1BZdGZyMTkvWlVoczdXcnIzdGJQOGFSY0haQU5RTG04R1dGN2hJV2RtM1l0R1BEYlJkSHBiRFJidGhQczRzdTAyMWJSMGprNy85Mm9hYzIvcTZvckZnd28weUN6QlUyN0F3WWRrRE1kTkhRK1pEVFlNZ2hEYW1TcHE1UTdBMDVLRWhzd0Vsc3dPM2xnMjM5ZUhuTndlWjdCWU5ONFBTRGR3K25IeU1YT0JhMm4vMXNzbmNzbms3SHh4cTN2VWt5a3lxVjNxdXJ6cStvcmxOc3FucGVwODU3VlYxWDhVR3FGK0RNQVg3bWZhb3U5SlJTNCttQjFPbjBRUHFQNFA5NHNyZVVFa2lxZFBaNlZkT0FDTURtUm5ZbEw1MW1teHZZSVovS2ZQTjI4Z25rUTBtZ1J6T1ZLWVJoTEFrWVFlOHBtQURoYnh4TEZMUEJsRWtGL0l5b3B2b3lmUzFSZnpLUUJNTHFJejdWN2F2YUM3SWhJMXpvK1BmTy9DdWpqa0tJYmM5VEpyTzJNY2FPWU9QOEVLaXFadk9OODcxNnZUYzNQaStVNEUwMm9ZWEtMQkpsOFNTU0pma2srL0RTU2FJU3BLQ1RTTUhLU1lRRmdWTmFZUmxlVm1EelkycDRzTGZVMVpsSmU1d2lTWkthTzBzWVI2aCt1U3FucUZPWWZFWnBJTUtydUVhVkloZUV4NEFSMk1iWnV3ejI0THBkU3JJUEZIRDIweGgxemxEYUNmdHJKZHZ3dzhsUVJMdVcwVjVLbllEK0ZIdTdwOWdNY002a1NyMUpMT29Ca3Fmc29oZ0Y4bnhNaG5GeFZBOEVOZnl3Q1llY1ZGUDJYWGxmOUtBUTZrVFRhRk5sQm9tQ0pJalNjU1FSUVNMSDRDTWpRVVRDQ254a2pNa1M3QWhlQnVLQkZ5TmhqTWJIQnZwU3lYQm5wRlBYVUFpSEtQdTBHU0FQY29oUmhBRkdNWVlLK1VKZXlMRHRFRHNlWUdkQ3JJMVE2eW5vdVZvbjRGKy81dGpWNjZlbjExOTk3TVZyajA1TlQwOGR2ZlkxbCt6YTNnZC90dS82VkxYUXBuQzJTZC9pTWlDaGg3V3JYY0FMWjc2ejZncGV3UHVvK1VuV1VUOVRqYmU0SEl1UDc5LzhVdmdwK1RJcW9oM29kbFNxZEkzTFJFUjRIdWltQ0dNQnVPeEpFQllrRE9LRGRPVEc2dzVkc21WK3BKeHM3NVNsY0RmT2w5bUx3ZnRsTTBBQncvRHFZZjUrOERlQjJVZm1wSE1LNTZBSmExb2VjdHZLU3NSdENydW8yN0k4WE1oTGJyTXB6TnU1dDR3MDNOTWJWSG5XbzNpZ3N5WGU0Mjl0NytoTXRxZTYyMVF6dlQ3VmlVa3VVVkVzTWR6WjFtdktwQ3R0YUczZHlmWmtWMGQ3bTkwVGIrbFVGT1BLRHRGU0tva2NMcVNjYjNWWVJqb2F6NlN5QjdPcFREeWExcTNjUXFvUDk2YnhBK2xlSEFubTRuaDAvYmFaa2FGTXE4OE9CemNWTitRU01kdXdyZGIyWEhlNml5cjVaQ1FtdDZ6eitZeEFXMHVoVXR3VUROdSsxc3pReU15MjlVWmM3dCtvMEs1MGQ2NzlPcjl0QmRxVGtZbE16NVp3TkJyZTBwT1ppR1RqTUh2OXlYaEhYM1pnSUp0cUFWYUMrRHo5T0l4TkNVV0JpazlXeG1BdVloQ0FrQWdmaGh4SGhKeVFRUm9TaFNYWUNZeC9DZUppUEVaUU9oRXJ4QXQ4YmtaSlZQR0lEYndNYnA2VEJTRFlNT3pnTUJwaEgwVzR5ZGthNnRBMzZoM2gxNmQ2ZWpoMUxLV2Nma2tTRXJLQjM1ZUp5MGFKeklidEd3T2hVdXJzSWp1TGY1MHFuVmFsSWQwUXFKSXF1YnpuYWFDVnYvUm81VFRhVTlsSm1iZ0pVdVlLaUR0SWtJbXdvbU1aS2FLc3JHaEFLeVZ4Q1hhaXRBdzBWRm9jNkhjcDUvaEkvL1RBOUxuMDA2anhHdmRWMkNSU21vNkZwdU5DOC9sVjlKUVJITnNncjJvdU45TFdYM0tLWkxNNTkzd0RtUjNrczVCdmZnSW5XVFUwQTNhaGNKNlJBaG13Mmc4NzBLVXdsZDVTZWRQeHc4UTBGamRORHZWMHRJZE5TVVA0a3IxRTE0UjVLb3MrSW1FVEFYdzRIbEJ0eFM4SkZrV2FpYlJqSVd4QXRXR3VCTEdtNjlvUzdEUjlHZW1hdm5qWnlxNmRsVXAvZnlwbGd5aDU5VlVySnk4N2VXRC96a3QzWFZyWlVkbStNTmMvM1Q4MU9wenFTL1VXODNIb1NEdXBRa2RpWHhnNmNtVFFIUXZWc2NINGR3TnR6dVBWcHllYWpnZXpUY2ZTQlQ3RXN3UFVNQ2pia05GYTBYRllhWkp0bm1TYkVOdThVQ3ZoMDJlL3h2YWtuMjBieXArQmM4UHN5SG1hR3ZpUXUzZnJuSGMzbmp0ZmVkTDdCZGdRV2kvWGVYNmEzSUxhVUEvYWgvWldkcS9Eb3B4ckowUUEwVjFTbUloMEhNbWlJb3ZIMlBnR1FVaFpnZUV2RUZGWVFaeGJvQnF6d0dqWGpzMXpNNVh5WUdjaG5Rd0ZVQnR1VTJ2TWdwRk1nQ2dSb1AvUnlLRExOUmpUYUpJalIxengwcXNEMFhPNGw5UkYwV0V1aVpKb1JNYS8zajIzc2RpWmw0UTJNV0FzcTNSaEg2L1l2WEZ1cVA2U1ZKRDR2clVMaGxtbU4yUUtSRlBDcW9GcGkxMktKOHNwVEVyazVueXVNck80TUVQcEFjTVdrNExVeFNvZWVXMHU3MHpWdnM4eExJbCthcHJVSDhuNTlEQ3czNERwVTFTZm1vL2JBWXdCc2hZcVNQaU5BL1RzNTRLS0xFN1JSaXZ3QzRLSTV4bmhPZ25kVFRBSVVaSUxUQ1VPVEJrSVhQVDdPakx0TGFHZ0wrcVBqakYya3dOS0pvTXNrY0F3cG9DcFpQSkRJRStFNUpHbTNoS2VjK2IxWEU1M0ZrdzVGUlZPeGRLeW80TGdPSkJPcDNXNmpjbDIyNmllSmw4TVdsYnc3RmhrSUpNWm1BTUJNZDJmZVp4SmZ5OHl5UkUxeUV2dHFBdDFWTklpSUFlQTBTQU9nWGlFZ0NNaWRDU1p5SFVrdXBKZDNZT1NGT25PaFd0eTBNaXc5MDNoa3dLcFphd2ZOK0o4NGZNaitiT0ozTWpPc1JzTnY3bDRvSHR2M3ZRWjIzb3JxWUl6TUhYTit2WFh2SnB0b2wyNTBaRjgxOVpLYVZDV2xJR1dHSXk5ZEd0SG9ZLzhZTk5OOTk2MGlXOWN6UHl2NUJueUZSRHR0WSt6Qnd0aTFtTTIvRklVWUREMFdoNmJWa2pGYjROSmQ3WFZycEgzYXdCYm5MK2dTZFY1UWdPMlUzdmZmcFFGcWpWUkdlVXZTV1JTRTRRNHZWYnE5RHJmUVZCM1YwZGZ2aS9SR2drYUdzcVNMSzBESjhhbStTajF4dTRxY2lBQnVRSFd6N29IMkkvV1d1enAyYngxLzY3WkRkc0tiVnF5Wk92QzVYcWc1UHoxcDFXREtKV2xDc1hHdDR0dHorM2JQQStJU1N4MTM3L25XMjM1M2xTNzdyZU45bVRwR3o1YUJCRkN0ZHkrZUVENEc1RHRNcWluMHNuVUhpZVpwb01BRFdaNkVLYjdPSUpSZTFzNDVMZDBUUkZSQmlZam01SloyeDFKWmJ1aGxJRzNHQUhCRmJvUkJMY1ByMmpxVTZyK0UxMTlpdW9yc281Rml2OUtDb2o0VTFRVThGYm5BSWNnODg0bitmNTlzbVJvK0ZPeTdNeFJDK0NaaDgrWTNCa0cycklSSFVSdnJmaDNiN1lrRUxrbUJqcGFSWUdRK2EwZlVYY3VWK0l5WnYydlVQN2trc3FvejBrUk9QNlIxcTBmMGFCQk81S3g3STdFdFJxOXhBME9IS2kweGlJRUhkaTN1SFhEZEhrb2s0NzB4SG9NSFlWSldQT1VQMzJlUmtYMk1kekxLTHpDaFFhbEtzckR4K01NSUFxbjRJakxzQ0JzQUMxaVNpTzVBS2ZZcFo0bUJrWUIvL1JrREJkOXNuN29jVXJuYVVoOS9ISTlIcnJUK1E2dlVoUlc5Y1Rsc20yRUw0L3JLMC9RaURJdlkrWHhRNVJvcXZOdExiQ3RCV3FWQ0oxWGxDY09VVkhUY0Y2TDRqZXVhbXNvMW5tYkpsZjkwdU9YS3dFamZHZjlnWUFJd3EvN2pSQ1hpeDhWbmhKYTRDdU5vVXZRd3hXckRTdDBISXZLTk5BOEFiNlJEWitnbDgyYWt5cWNFYWx5V09ZVDVBb05KQjJxRUFxNEVBUm5oZ3Z4QVM1Q2IydXQ5RGRlSUI1blYxQlJPbmIrU3c1VVducExGeDNZdDJmbjlzM3ptMmFtSm9jR1MyTzlZOFZjdTg3bWQxVTVBYjNlaTJFK3kxRk9hYmkwUE94S3paeGFEaGQ2TWM1WU9BUXpiZ29QOVdLdXFRaFhDV2UyU2ozTExnbHR4NE5BUi9GanNaQVZrdHRDZW9kWk9uTG5aYUdZYVE3RURVdVRiVE9zZEc4cGpPbEtmRHlQNTNWZDZTZ0FVVHMyTlhYczFXd3pZcWlqQnVCcGRVSlYrU2F2R3FPcThhYjhValllcGUwUmYvbE5OMjBRRmlZMmJkcmNGMnRKdGRrK1hSZkQ2VVJwb21PMk8wSzdqdUwyS2FCLzAzQzdhNmFBSEk5VFhWUEhOYldnYXVPcXB0TnhScC9WbW81enRaeDFCN29mM1ZONVk4d0l5d0VKbVFyQk1MbFdXdnhSTFNTSnRrNGtJa29yY1N0Q2c0RDBCTExrRlltdzdGTmhpZ2lMcjd2eitsT1hyK3pldWFGU0ZVanZ2ZnZPKzE5My82dHVPWFhIOVhkY0ExTFc1U2NQZ3BTMSs5SXQ4NVVkRzNhY1QxeHRaVnBmRngxejhZbExSUmM0eHYrSDI3OTRBOU9nbkcrRFcyK01wZE94ODIxdzYwdGVMVWoxZzdOL1ZDL0RBS3pkQXcvOTk3UUJXaXJWZEYwMlNuTjkzeTYwVXJsa2ZJQVFDc0lGb1VENWxPTTZFeXNFR0FBd3AyVkprR0dLSVUyVnRCVVlQNVNvTU9VVVVWU1drS0l3SktVd1RlQ094ZmxOVEJ2WTExUG9TTFpGUTF6VlpSTzdEais0OHR1VG53V3VKSy9EcTJhTmF2Q0NTaTdIU1BiaXI2WktlWUJWYndYWVpYQkZCc0FyNTcyNitrZU1rY0RtdEs0NmY4ZVp5cUNxTHdJNXZKTWYzS2xxVEw5VkFGVDJrMUtLcWNXY1h6SjB4aFJuY0pPL3FtbTRuUGN5cWFiQU5qZTRsVXpGeGVqY2M4TG55ZmRoRG1XQjFtMnRMQUJLazJSQk9rNkJ6c21TZUF4Z3B5eVNZOURoTXZUZ0d1cVFYRWZBMzFuczZNbjFKQlBSaUQ4YnlKWUhWQkNHY0ZQSEFCTExqd1NaR2o2QlBYVzhMRlJsT09IenBkUVpKMWx5RlQ5Zk92dDEyMWIvVEE3TFI2U0l0QWYyajFCekE3eFhwVlFpRC9MM2U0UjEwcmFFRDhpNjlvUksxRnRVOVpkV0hCOWtUU29sVDQ3M2VDMUJBMmcvT2xTNXlBK1BEa05ERnFnZzArTkFjZ0c2QXZGVmlLREFHNnBZUGNXR2l5Q0R0Q082N3lueTk1VFlkWXVTc0gvZjlxMXpzeHRteHNkS1hUa1FUc01CVXhNR3BBRTJNa2JLWVp5dVl5VlB3Y09NSjhPZXNhUW1BMVd4bEZBM1dweGZQM2FhUE9OMnpQUHNzNzJuamxIZnc0NmZoODc0bTA1S2YwVmo5QVZWTGNMdVFGMVBkb0MyL0xrUkkzZERmMjFObGJqWWF4djRCOXo4a2pKc0xnejNKc25IVXFXemIyWjZzVjlSK3UrdXJXT1o2YzNleC9BdFBtQ3E2a0hGN2M4SGhjZUVMcEF4bDlGaFp0Zm9iQ01xc1VETTJMR0JLRlNZWnhLeUtoRDF1SVpaYnlKOEhHR3FZbm9NS1ZTaUNsT3V5VlNTbVJZZXhwNjZvbU9xeUhRSmRsUmVSaktWRnc4ZXdHamwwZ09IRHg3ZXN3dW82MVNwdXlNZGo3bFdORDcvR3BrWUxnd1BGWUQxTVJWSEZucXhwdXVBRGxXWW9va1ZJa25vM1NqSUgyemNEVUlmUjFpQjlUQjA5d2lYMEpua0lybGl1U3VpNC8vSVRYVjBURzFoRzN4eVhwTG1BNnFScEFsYjloMFltUGFMMmRoVUxDdjZ4OGVXL2JLZG9FbURCaHNhbWVveU5KSXlzYWxvaCtqZk5MakhVcUZSdTBtZGcrT1hqWTFkZGlQYjRIK0crNi92NkZnUFAvSWJOTm15dldYUzF4c2F0dnhDdWhTNktOTFNFamtRNkV1SmZtczQxR2ROWnVGdi9mUWwwZlprOUpKb2YxcTByUUZmYWV2WUNyL2xqU3RqMVhGL1B4LzNXYlFKYU9MUnl1RWNWc1gxV0ZHWjVVbEQ4SEdPQS9aU0JWRmxjNENlUWpMVXlkb0swUWxpaGpZWS9nWldGVVZkZ3AzS0RBR3FzamczQzVoczYreXV1VjJWNmZIUnZ0NUVXeXdTdExuOG5NVlprOHZQNWFwU3M4WjF3dFhaTU9qeHE4SXdVd01XdUg2dnFpM2x3SmRMa0F6Vk5Yd0hzblFESDZNM2NMTEZ4eThqWHZpUzV6cUNvZkxnL29OZk83aC9jQWdLQjQ1T1RZNnVlNDVyUlBIWkgyKytmZlBtMng5a0cveGpUdTNnMmtWVmJ5ZzY5Sm1CMFltcG8zQjl1WHFqY2lqWThSeWxSVFgrYWU5cTJDQkVhelk5WDVPVThVRGx6ZTBtU05mMzNMbThVOVQwVzA4dFZFU3FIbDBaN1JkbFJad1hnOFN6UGlFY3FOb01iS3hyZ3I3aXg1b1BxMVJUVnl4TVRSRGNxQUo5TGt1U0RIMHV5d3hneWRJaTArcmNkKzhiWHZmcVY5MTQvYlhYckxiOHVUWmJmNS9kcDNHZFRvaDlnY0VhNGVIOVg5WE5ld3pwWE4xOEU2OHFYK0JZZW9YdDhWM1BVaU1idnkrZU5mRHVrQ2ozcFo5TjkwbFNLSjdOeHZFbllPdjhjVjB0c2RZR3h3ejZKVlkrejRZRURGcGtkeXRTWTA2U2l1bSt2blJSa3JKeFp6Zi9qUS9Iczg3dTJnMTNybEY2OWlYUFZ1M1I3eEhXQ3pHVVErbEtndU4vemhBQVRNSEg1MnFBWUxnY2pJYVpJWG9FaGpSUTdSRmN0MGV2TXFCejY3VHlTY1BBS1NPcDQ0eGhsR0Yva1JMeVJYM2IvRkZmU0xsSVQrcU9udENkSCtzNmJvWENrSzRmVUN5ZEtMNW96RHI3WDdxbEhOQTlXOTg3Z0I2WFFQWVpCeXk1SDQxVmhqdVNQb0VnNEhFTTlYS3d3UmdaT2FrSU1nQ0tJNU1UZ3dOenM1WHBpWTJURzBlR0I4WUh4ek5wanRqekNwQk9IMENJYUpBWnpmTUtBeE13TlptZGN6aGZHR0hzMm5MdG5WQUZhRUtxY3U2MFc3Q3c0RUxBd29pU2QzRWo5SVRnSy9VNiswV2dtM0VsK0dWWlB0NjFycnlvS09YK3diSEI3YnBpQkhiUkJOMFZNQlJ0KzlEWVlIOVpNYmVmL1V0WFZZT2Y0WHVjK1RNNUtKLzJFejhoeERKbHYvUm5zdndmdWsyR1FFZ3hnbE10emkrVmtQSUhmazNmV1I1ZGliVm9kUE5nZGlaK3JhNWYyMVpKRDI2bVdrdHNaWFJreDdmWlBhdi84TmNWNWVud1VKZ1FVZGRBdnZtaEVxS2VQT25TelhHMEJiRDVOZWoyeXExSU5nMVRObUFPR3lxUXcrTklwWVlLSEUwVXhGTklRVUFBZFdaQTlWbWFid1ZaeUpRdGt4bFlLVExvQ2p3MEVnUzB4UFpJQURGQ1FNSWlSa2NQWDNySjh0NGQyK1pucDllUGo1WUhlN3VMK1VSYkhNaXA0WkZUbTJ0UkxreE9jMnlpMlkyQ0ZrZHdyMWdHZld3L1YycnZad3kvWG1UbXczNlFIWDdNeEEvOGZsdmZEeElwdlpFUlk5ZzhyM3RDSlQ3b1NxUlZpNnQyUzlOOXZPS2plZ0Mvand0dlAwNlYrZzBicE5PcTFkVjViMDBtclp0aVVkVVc4aVhBZUdHVVI1ZTVpbzhzbTVMNEN1aE5JaEpCQkY0bW5vQ21CQzJ4Sy9iRFJXUnJheVhETlNNdjJlaEF4WXBGMG9sSVBwWVBqZzNJVXRTVFdRdjVQZ0VZbE52MzZXZzZ3NmFGaTZOQmdNMEwyMEZJLzRuZk5nMnRuMnFHSGRxY0twRW5SODg4RzB5WTRnazVGU0pid21ueGhKUWpBNmtTREE5dFhOTVZyWlI2ZkZzNEUzQ3VEVWFqUWZ4UUc1ZFJwWnF0cDQ1aFFVN1ZpU1o0V2pjRDBLc2tBMkkxbWQyRXlncGpHQmpUSmRoUnZLeENFUy9Xa2VwTEk5S3FzYjZSQjZTYkVLTHlDbytGeDg3K0Z4ZEtGZmpTWjYvNkpqT1ZmSk45OUpjc0NkSnFZM2JWOCtGNTIzVmxnTTFQZUFVLzlYeTk2Tkk5Vjc1UlVSQU5BZTVicU15R3NZSktXRkpBd2dINGNnb2FVU3pDQk1RWTJLNENuRmZGaWlRcFM3QlRHSE5WcE1YaDh1UkVlV1o0SnR6Wm1yZHpLVTFxYmVDZjYycHYrY29rRm55Y2krblB1eElMMmZieUJaWHJ1RnppQ2lldmV1NWxDaWNpbDAxTWNpc0tvQXlnbkFsMHNMTGZCKzg4VjdWVHFGZ1dGRmtBa1Z0VUJJN21GRUJ6ZGJORms3bGlhSkNnMFpIQmlhR0ozbEkrbDJpUGhHRWVCa2lBcXdXeithb2xmd1RldThBTWh3cG5hRU1lbmd1Tk5COVh1UVQ1MmpOQjIvbTFiWC9USGdoZ0h3emQ3TDlic2wrK1I1YmQzWlpWUndQaDl2YXU5blp5TTdhZFg4RVYzN1J0N0tjUjdldkF6eGNzR1ZyNFpYZTNaZFhSbyt5cXJuWlBabU0ydUFqUWpXRTBoL2FoSStobWRCZDZxUElIek5Rd1BkSlhFQ1g1MHYwNzVrVlZNekd4YnJtS21FU2F2K01rOU1VY0FsWmpFZk80WGRVZUJMQkFNZGNmS0ZneU1OY2c2RmoxWTR1bzFvb1BtNkpvTHNIT1pGb0VVMXlNUlFsNi9XdHZ2KzJHNjQ1ZGZjVmxGeDNZczJ2cjVvMHpFMk9ENjdvN1UrM1JmQ3huTXp0dGhFU0NxNDJhSFA5NXFnVnA5VXpOS2hkd3h2cGR6NU1mT1UvRnM3S0lNMnpiM3BsMVdya1VWV0hiRitwUzJiTUd2WThWNytQRmwxMUw3czNHTlZFRzRleHBVZTVzeDF2aTJmdmc0RVA4TjViZ1lBMFo4TmFYV2VmYVhYOXpqWEJNMkkxTVpBTy9pS04yMUl0R0dFNHRHRVFIb2FnUG8xbkRncUlHYlBzNDBnajhPNGFJQVA4WUpCVWxRVHprZWQwZGd0dFJWYUdIVEJnQnhnSlNWVFpCc0lrM0p4SVlqWlFUdllsU0t0bmUxdG9TanpFUGhXREE5dnNzVlVZbU5obVZEVForT2hXbncvVy9nK0VzRG1jTDNJdGh4TlhYRGdwaFRsWW04RTRtd1pJdnAvdWNmM0lPNGwzT0U5WC9UejFGL3U1TC9vQS9iUGdBWkZNdEVFbGVyR2pCYU1lWGhOMTk2VE9mNE5kZGhOZWYvVVM2aS84bHVrOVVORE1RYmJkc002UmJlUHBIZGlCbUJRRHMxWFUrZGIzcDFaVWpKakVZMTVHQTZ5REpFZ21NZDd6aXB6NUJScW9tcXlzMjFoUkZXNEtkcGl6cldOR1V4VVlsNmN0UmlRWTRHVm5OUURxYkxFTU5ycWU4dnBuaE5MZHY5Z0RBMFJxWElhOXY1RTIvd0hOYzgvRXAyTjYrZHB1djhKTUdiMGkrSDlCZlpFY3ZlbVordm5HK3d1MzgzT0ovMmp2M291Y1R3RGRQMWR0V2JXbzNBYStLQW5yb3JPUkJDQmZ4U2FEYkl2UG80Q1lwY29TZ1RLcTFwZXE0SWJ0OWxGL2ZyRUFERWpBQ1RLaldHVVBDdm0vbnV3T204N25jNkdpT0xPUkhBc1pYNUpCVmFIa1VJT1dQdTNQZk1RUGN5QWhuOFQrWmdadStJcHZxZTFvS1ZzaXprVEVlMm8zYUt5MVp6REdEYTlUMEhxcTlLeXd3aVlqQmdocFI1KzQ3TWpjekFCeUl1QVk4N09LRThwRHdsNEtmdm9QRzFST1Uvb2tzMG1MWHJyc3lIWnBpT0krRUxTdnM3eXgyK3ZHUjF0N2RDM05MNUNwVmtOOUI2UWsxVHQ4QlVyMnhOTGV3dTZmZE9SMGVIUW41YlVDK1J3QVZkR1R1MnRYdFliQkhoYUlROXpCWUhkaElqTU9mQkNtN0FZTnhaNnFYY0R2am5zQWpRcHRoT0Q4QThPVjhYOWVINnlETUZ3TVFkcENCczg4WTdReUJNU1RXYm5nbzdPeC8rYUp4RXdhTGg4TGNaN3RiK0xJd2lPYVJYYkZxcHVHZ1RaaEpPRExNaEFRR3FpeFhRVFhNbUNkWFFza2NjTEZlNUczeWhTdzNjRnZ1V1Y3WFMxd2doZmZRcVBxVW5vd1ovOW95TzlkQ1dteTdCYjg3UGpjTHhVQ2doVkFpQjFRaEhORFYva3ltWCt4LzNldjZuVXRaVVZoMzUydjcveTBSaXE3ZnZiUDlyeWw5Z0dMbGN4cU9ab3lmc1h1UUZyZ0YvbE4rRDdoeG5OQ0FtdXd3WkVBaTdCN3NEczVLLyt0ZXUwNWt4Zjgzc1h2WFJEQ2EvRFI4TkUrL3l2VHZqSXBzUUcvLzJBaFdOVHkvOVNNbUNPbURycWY1RlVBNnFLYlM0eUxSNFFKSlJ0SmxCa2l5bWlwcks0Z3F6TSs1NXR6Y1doa1F1TTN5bFZ4MG9KTE9wRENxVEkrUERRMVdLVTdBYndKSWswU1V4TW1hYW9wTDg5NCt1NXBtUkp2bUdUT05zUmtJNG93cnpEQTkvVXFtTCtQOE10MmZXVW1WWExtMTVHY3liRytTUEFrMXpxT3hSTFNkUm0xdHE1NkprUzhYWXBsTXJPQnVTOGwxakdhc1MvVzhhT3RPa1htZzR1L290bk5BTUFEVGZ5NUpBeEZ0cXhIMXI5WmJoNENEVGFOTEt4Y1B3TEFZN3lHU25FOFE0Rkx6d0txd0pETHRLajZoWXFSaHhzT1loUU1rUFpEcHVCb0pNUzBTeFV5TnhCd1cxMDhPRC9YMWRoWXpxWlo0dUQzUzdyb3Q2dWR6VzFTWTBNYUV0MkJkUm5DN3FpNHZzQTVrU3A1Zi85NnhxeWVucHlldlBuYm0ycVBNZi9Ib3RiL25ZdmpiTlBXMFl1aCtYZk1iZ0JrVkEvWkNEMnRRYThrTFAzTzlMNXhycWFyU2dtS3BkQnMxZWNta3A2bHEwcnBmemsvSlE5eG5jd3hwSHgvcTZZanBSQ2gxYzlkc0FkNGh5RXdMVENFOE1weVhCRmVqd1d6V01LRWlETHNOZVMycngzazhYdElpOVB1eS9FTWxxdlhvUkgzeUwyV0IvTWtQbFpqS2pqNytjWVdvUGREaWg3Sno2N2dlSmZjTEpsRCtpUEFXd1NCWDVlQ2s4N3dTcHM3UFZJSG1sRGo5NFEvVjZBczRxb3BxQjQycFAvd2hqU3M1QlNUSHVCYkVMUlpjZS9aN1JraXdpR0dRakJGcXRHSFZkWXZISzljczd5U2F2bEFoVkNYem9sblhJaHBWTFNMaVNrVG10ODFVaUNEdWNnVml3NGZuNmtQR2xTOCt5UHkzWnpkTWpwZHJLc05Bbjh1TnJZWkFqMmFWNGZuY2VadDl1TXNYT01hNzhMeHVsMUkvZ1JsQzFINDlBTmo1emxRcG9QY3pBeFdiT0tXMzZ0VHptM2dmUTAxcmw4bXhnTDZmS1EvMjY0RWI2MFZtMldDemlkc3dMcTJwRG02b0c3dHFKZVRwRSs3blBqMVpvTlozVi9VSjhCMU9JcGhTekRkRUJ2SWppL0pKNW00SmpGQWhKNUdpTUo4TEhab21WelVGVGk3ajFjMWUxczBPSEtqbzBkaG9LRFlhRFZPcHJSdWZZd1k2eHdvMDRybFNyTklsTmwyVUp6YWx6d0MwZkk0NVRFZlZXVFhHSlpJWWxLSXEvbnZtOHJ1cURsclI1M2g3VEJMdWRTNHloWk9xNmJsTlAyTHlRK2Y5ZWJjYXY0TlZPMGZkNnE3cVpYR0d1V3J5ZDRMNWVhRUsyZzY0NnlTK3BSS05Ha0Npamw4MTF5OVM1Ykl1SXB2Q2ZCS2s4YTBmOFVHdjdoVkRqSUFoZ1htM0t2QVB2alZSWUZEVFk4aXZTckwvY0JoTHBpeGRnWHdxOWUxR3FwK3FTM0VyWmtRa2lreVpNdGRJSnFYYlVVMlFaWHpBRmRSYlhSK05mUzk5YzlVdkhmK3Q3bDdaLy9KdXJFcm1zVmQwWnhnZHM4djdkKzVnWnNiT29tVmhkTzNWVjE2eGN1amdnZjBubDAvdTJiVmozODU5V3hkbXRtL1l2bjVpckRKZUtRK1Vlb3FqbmFPRm5KV3cydjArRjRTMG5BdEN6Z3M2Y05aamR5NWREOG1GYkJnZ0tMREY3RG0xSUtZTXNuM0VjeUNwTlFoSDVBYndnZ3RmOGdWOVlkMERLK0hrSlM1WU9mdDdRN0lHeUdHOE5aVnFIeGl3dytFSCt4VEFFMzNkdytXZXpzNTBBUmVlUFhpQStkRWNnRlk2OHhLV1Z3TWM1M1BuNHBwZzFBbzRNeFZKVnNSM0tWcTZQM1hKUWlnVmVyK3UvSkdpRGU4Y2Z2K0RYZE9kNjJWVjN1cTEwRVVKTmNScTFXZ3ZWaXNSYnRGWndMcTZqQlY5WjhXejVXejlpQVZqYWJLQkdPdXFvdXFIZ2ZDcXloV05sRm5WQlhWRkEzbU0wV0sycjFKakdJOUp1TWY2dGU4aEgzdDVONmxNTlYrdkhIOGxONERSbFdWbXBaY3lKVm4vRGFha0N3V09YZGcwOUwvcStQN0tOWXN2eC9oemhMVzlzcmI1VEczek1OY2F5SHdNUk1nZElGTjBvQ0cwQ1MyaEs5SGRsVGRrV2lSQkVEZU1EM1NKa256NXdkMWJSRlVEdVl1RklpSVh3VEhmVlNLQXNDQWZ0M1cvb0dycUtiT21KUElwbGlCcG1yVEVDNUsyYkdCTjBoYjM3WjJiSFM3bmM1SHdvWXYzWHJudnl1MkxzMHR6UzFPVDVVM0RtM3A3Y2tQNW9VUmJ1Q1BTRVEwRkFneDdjWnBmV0VYa2g2U21BQ0dsNlRpZFhTV2h5VXJUY1NkZTNSNS9QU3dhMGh2S3NBbUw0aFkxcHY2UmlIdWNNOXhmV3VUKzBrL3hjb1g1YTFlS3JMeDZnei9TMElJY0RrdHdOMGxpZDkyaXdzM01OOVhiUHRsODdYa3JPYS9tT3J3SFVBK2FaSkczR1k1U3NRUW51THg3YmhSRWI0bWdrYUhTWk85a3ZpUFpobnBJaitLQjZYTFZVWTVCV0I2cXdrUDN6dlZMYmRZbWtCK2RpR2VKSW1zV29WZ1k2c2x2NmxURW1FUkpOZzRuWEhmMGJNeEpVQjFHM0IvRU16b2V6c1lUVVg4d0l2dURwUVdOdGsvbUlnRzE2SThsdmFIS0IrMlRPZ2lGYkpEU0dvWmtNbjh2S3FHZGxXMFJMSkFvQUZzRjVubEdJTXdrSkluU1BPV0szZFZPeUxJWHB5T0pQRUlIbzJJaG5XeUpCUURBb1JJdThUaEdRT3k1NFhJaHgvd2Z1T05FaHZua1NnRGx1VFBGNE1DSUZLNDVWUWpCM0V6VWVSNW9URHk2TWRlM3M3ZDM1NkdkZmM3M3lsTzgzRGZUajdPOU8xWjJRUG5uN2ZIN3RIRHl2cFlFYjlPN3MxOS9zTWlLdlYwUG1QMnNOVFNyK1JYM3dIYzhpTG9xaFNCOHh3ekdoTXlqbWxNdXFxTDRwVjBUNC9sc3I4akRpMWc0MEhBMUhvakhEYkh2Qmx6SHd5dUZxbExvd3JGRGpSKzFrQmVLT1VzUCtXSXR1VXhIMzB4WFFkWkdwcm9LZ3FDR0orS2E5TE4wTHlDOWo1VnNzOWllN083c3ZxRzcySk5vN3pRRHZSUHAzbGhiS1UzQzZmN2hJbjdNQ3BoQlg4SUlqV2U2RjhLUlluNUNVN0kzYlI2NU5DdW9ncXkxRzJKZnd1ak50dndpR1BSRjBoM3hUY1hCdmJHV2x0amV3ZUttZURZVDhZWHRXQ0RlbXNySG1UTlQ2M0JYMGhzTDBDL1BrTWRnTEJRcUhZajVoTElJR3VaY0k3Z2VTU3dvandpTDVWeTVuQnZrR285eVhWOEd2RmtSZUdqQXFvR2NaZDVYVTl6eGhUd1Q5VHUvOGtjaS9uaFNuaFhiN1Y1L05Pckhaa05OT3BJZ1IrS3NvdUNQRktMT2g0TXhYdlNPOGU1Z0xGSHp3YnNIdm0wY0pPcEJ0Qkh0WWZZckZ1SWlVcFdybEVTZ2x5dVNxMXBramxVbWxuV3NVaG5ZRStaUUhuWlZMSi92d0dqWDlzMXpNMU5qdzczZEhZTWdhbVFTYlNIWExCckhjV3ROTDVQcUcrYXFSQzRyTmNQNXFqZDMzUjY2NmxnNDlrSXBkV095OXdXbXVDTy9ZS2JQVGR6YjVFWjg1ZGtQNllIUkl2NXFjZFIySHZCc2xJQXhQdWNoRFRnbUQyNWphR1JiWGZFM3hocU5mUTZnL21UbjZHZ24vaHNHOWJsMTFPS281cGYxc2p2My8wMzRQUGs3Nk1IZVNyZXJQNEpKZmtyRTNIZ3NNcGMwK09DSVJXRW1Xb01CblR2YVMxNThseGZSenJWZDBYcUUrM0F0RHVkOVoxOExzdm9uUUZabndaUlBVSXAzdWJHUlVHV1NPL1NBSHo4U281OEVPTkJOcWZPNDE0aEZYSDVTaS9rQjdRWlg2eVRTcUpkUjQzd3VtUkFGZ3VmWjgzRjZMTUVjeHNLU3hFSkhsOW1FWHN4bU1NcjBabnZiV2x4MWczdytkUVBtQVpJd2NxT1lPU3JuQzVoTmM5WndyYUJJcDVORk5WNHllcmpiYVUrazhVRW80SDlPcEZubFd0R1F6Z0FQb2t3bm5QYnV3ODczMGduOHo5MkhSM21kaHdsWmpnZnlaY0F0SFl3K2ViUUlDVlZscUNoeUV4bGpNa1JjSEFuR3k3WWt4YnRkTnc4Z1RCSXpFRXREekRxV1lZcEhPWnl2anNzeS9qNTBKUDRMUlpMRFp4N1ZBeUlWSG00MW5BOWxMKzF3UHF3RVRldzZQSEtMMkVPbWFXRXpxTDdEWjJyTy81Tks0RW5aMU1Wbm4yWEV3ZE1ML2JzUUpwOUFNWlJDUlJhTEhIYmphR0FlaWtoaUFScHVESkxzK2k3S2RSL05UTG9sbnN1bWk1bGllMnM4MVpJcUQxTHVvZG1MR3pUTWpIYkN4NEFQSVdUTFhNS3Y3Y01qbHd3N24yZlRIMDhOWHpMaTg3VzArSHhQZis5N3JWMWRyWHlMZnp4NitWakVmL2FOL3NqWTVhT2QrWTcyUkVmZSthdlR2Vk85T0gyNmJ4SjZXdmpOYjJEekM2QnJFUmpwL1doRFpScWVlRlhRTGZLTTN1ZStRSzRqRnUzdTZ1alA5U2ZhbzlsWXRqWEVYNEFGNVdlNHI0ckwwQWU0djhvcVh6NmgwV05RK0ZIcGJaZGUvbytYWC9xMmtpaldpcXFqaksrTWVWNTA0NDJ1ZnhmZmx5OFc4L2RkVElOS3RXaC9vKzV1aHc5NkxXSGo4Ymt2Q0VDMUFmVWVxT3hEcXFDZTFEQWlsQ0RtYlNvVENrSTZ2SlNNaitud3dnb0xpU1FyelVrdE9vc0ViVnVjM1RRNU50aGYzTmU1dDVhYW8wQUtSdDErSW51cE9ZWWJ2RTFYRTcyTXkvZzRqK1Q5d21pZHIyYkJkWlhrcm9Zc0ltY2JRckJ0WXhzalpIOVFkY2NOT044N3RIOXBlSlNTZ0RtdSs0bThjMnBtY3hLSXl0VnVPRFdXYXdIWGhJVllteGh1OFExdVNIbEk1d0hkQWRmcG96ZUpvNGFOaDRZRzl1Ni93Z2o2dFBuYnNoMHhlaTFjMmttWnRCbGpHOG9VRlZCWDAva3hPMjRJdU9Fa1dsOFpyM2wweU15dzd5bytSZWk4SlFUZHVNeUVjNjd2TE9ZejZiYldjQ2xTdWtDQXRqTEFTUTB6YTFpTThqQVBVcEFrcG5Bd3d2b01CRVlld3hUQnY5NDF0Nm5ZMlZuY05QZnVhbUhYeEpFSmNrRFJpVHkxZTByR09qMUFKbzUwQklwQjAxUW9UYmEzcDRJNnVYZlZKYnl3RTY3VFFpb3REQThYRkMya3dhSHpYYzNNOXZjVXU4UkVlemFmTFZUeEtYdjNEalNBS21nTFlKT3JLbGZxV01JREdFa3RNTnNYZ0pHSzg3cEpxS2dDdnoydVlWVTlBVk5Id1JMQzBvb3NBTmNWUmJURUM0aU5MeVF1YnBqQmFQZXVuZHRuTjg1czJiQmwvZVRJY0c5UG9pMGF0bjJLaERwd2g4dGthNlllaFhVSmorK09OdkhiZEtiUVMxeXFIUW1QUU5Nc0Y4QUdvaEU1bXJVOS9DaHhseVViTGlVLzJoOFVvNjI1WU40Q2VDOWJ1VkJIYTFRTUx0ZWthT2VmN0VBNFNqUnErS095ZktjUkN0cXlIRytoR25uOTF6OFV5eGlPbUkxLzRPdlV3TDlPek1aYWJaOUVxZVQzdDhabUUzVzVXbGJpYVkyMlJJSjIyRlJrMlE1R1dxaWVlc2I1WlNZR0dDWDBtWGdXVzhicWNaVkdaZWIzbnMwUXlRMUtmQVZwQVByN0Nqa1laZWxJK29KcEFCcElVcUc4VnZEL0dzTnI1c1RNekluWHNVMldJMTUxeGZWMFdHdE1uZjJSMXhRMlorN2tKbmVUcnJnT0ZlNVlJcitBOXpWUkRtMUdCOURWTEZZaUNNUnAwL3BoQWFQS1dCYm8wZVVIaWF6czNrSkVTWnBIcm04akFGNktZYWJKbU9tWEVZc0pnUGtHaUl2Tk55YVdpTUtpM3pweTVhR0w5eTF0WDB5MXg4Sld6cDhycWt4K1gyV3M5SERvT1dRcU40MEh5dHkvTURJSU5Cem9VeGdHRUVnd1ROczVqYmtzZ3kvZ3YwYis1UTJpUVdQK2EyUWFZaG9GK2lXT3JWNE5SZWZRT29JalJJTC9lQjBocEFOVFFKQTlCUDVKVU93QVhqOXEwRHJjTGNMQk4vbEJEelVJZVlOSTVXdjhNV3Jzek1idll3b0xKOFZ2RFNjUEtSaVhDQ2tSbUcwNGk0VjFSTUJSQXJoTklPc0VuQ1dpOHhjMTk0UXJHeHdWYUUyV2FvNWJ1cjV5TW9BdHlRSlFKL21razhnbitrNHlwaTdDSnlCWXcwUTc3c2VhQVArT3FWalE0ZDh4cE9zbmJJUHdkRlJzai9DeXlVeG9pMjRJMHhvaFM1dWovRSt3UEJpVTJqbHdhQXhMaUs1V05oVHFBaVd2aithYXp6Y2Q1NXFNOWMzSHpjWi9QRlIzQ3VzQTh2K3dtNW5pWWVBR3ZsV0h6aHRjemZUREhxOFlnejNJcXcrN3RjNFhxcUozQVArKzUya0dRdnhsOWRxWlduRnI3U3AyTHlaNWVZY1B3ZUduYXovSUJHRG5iOTI5OXhpYkExVXZ0c0NMZFdFZlAxU3ZydHJ2WFA4S0EzV2pVYlN2c2tka3daZUtRSlRqbERFdGhRZEdzRkJtNW5haUlJR3JPYm1tcnU3N1hlcnhtUmdORHZTTWxrYnpXUlpnYTNiN3V0MUlDTDA1RWdLNnVSNzdZSjJUN3dHdmNsSDdkZGQ4WjlmYzBueG41enplZjJXeHBVZnJhZjEwUzhubzBiS2hLNm84ditSY1dvL253Ly9RT2I5N3ZxdHpmbW11ODhiTXBsaGJXMnlUbjFseUJqaFAvMnFxNUJnOFZtL3FHbWlQcW1QODdlZU04ZnZSMHhYcjZFSVJLT3pPZnIvQUF1cGRjL0Y2Ry9zc3kzZEZ3QjhXTEJSRVZ2Q3lFRWFtU3Joa0N3eEMxQlhDaFZ0Tkpwd1NzMzJWRkxkV0p0bjF2cE8vM2VVSEtvUFhuV0pSZnErNzh6V3Z2dTNXbTI0OGRmOTE5MTk3emVITEc0MW5wUzRlamg1d1RXZVJOVHdwTCtSTkgveGR6MS9BaU8ybXR2Q3MwV2YvV1dNQWxvVlBhUFhTNStyeDcvWFNVMDJOZUdsbERXczMvb2ZWeHV2YVRXNnMzZE9GdGkrbkVyOTFiUU01bnorTlByR1Z5bnFGeUFJenFjRzhZZEhiSjZnYmlrN3JvZWd2bFhJcDJKVFpvbk9OYkNpTi9mamNhZDN1U1YzRFhJQStmZmF6M0RmSUJpRjQ0b3lUNnZIaTBvbHVHMDZFZFF4cDRibERmZ0xkazhML1l0Z3ZsbEliR1RIWXlGS2lySkVUWmJneWlMeVVLTWpMaUlLOGhDaUl2eFNxdlZQWi9UUEFUWVFOK2gzMjJPR21ZL3NDeDhMYno1czg2anhsOGkyWHZzRlhlYnptMytSY1cvT0Z3bW5QQzhvMi9nKytwOUw4SGszSHdaZDh6eHNDK3RtdmM1MU9yeDRvdUVGdmJnRGM2ZC82VlJ2aXE5aTdya1BaU3NwVHh4S211QkdKNjk3RlhJQVNVWUJ1VEZYQWZJVkhHaFExRFN6VHEySXBRQm80cmZMeEQ4bytHWDlRa3Y2TTVScmNJeE5Ka2o0ZythVjEwZWhGMGVubzJWa1N0cjZ1S2FJb1B5NzVZU3QrN1lPeWpEOEVqVDhnc2ZZVzhVbTgzQjlaRDFkRXoveUpGUkVHQkxqQUx6MHV3d1U2cXVudjNIY0plaHE4bzVYRE0yUHJPdUZMNFhrVnd4Y1RGZm00U1EzNGhxSU1HQjBqQVREWUlTVHBXRlFra1gxZVJIWXoxL3BsQm5iUllua28xeEVPRVRRMU1iU3h2SkhwOFhLRGlkWlFOcHhsWHBKMTF3TXB2VG84TXBlMjA4M3AwWENUOWFMWnVpRzgvY3hIbVZwQzJPNkhkL3lTUU00NDVIYkg0QVRtMTBES25KdGRUMndnTy9qVzUxbVIrV2VmaXJvWCtPSGk2RGFCT0wvVTFSdTh4Ry9PbmRDR04yemMxUEpqZkpqMzFTVDM5SEt0UWZoSWVZQjVlZ1dia3VYQVI1UUxERHpWOG1Dd1V3d1J1UFpYOXBkSDdyUEorbmpkZ1pEOGVLUzNNNWRJQnhjakhSM2Q2MFkzVU4ybUcwYjZ1enM2Z3AyNWNEcVY2KzRiVjJoUThMR3hlZVpQMkZhdzIzVlZFbjFhcjJZcnFpUkhpVjkxS3BvdVJrUlJwYllXajJpV0lCcG1TclFVL0ZsTnI4Y0ozaU9VVUpUUFdLWjdkTTBJZ2xSTHk4SkRMWmh5d2t2S0VrMjJ0cllHbU1vNUo4bVpRcTdtNmwzTnNCa3FuS2UraFBOREk3bmhnYWdVQ1NuUVJyak5lZGpLV3M0anVyNVgxTVZuVWx1VHo4SityNjQzMVc5SnVmWE9EdWR0aG9HdjltVXRmTFZoT0crenNrZStTdWxYNWFqY0x3aXZDUVJlSXdqOWN2U0hYMVhWcjBveGlkWFpOcXVUWXFHdlNsSFpiU3Q5VlhIcE1zZC8vZkF0K3dGYjcwVGZyZmczendENkdWc0g2S2NYRTU3aklRNlN5VHJFWXFlVXc5QTNoSWlIbWVlOG9DQ2hCb1pVRnhpcURCZ2VZRFJnVyt2V2o3VEFoUU1ORjBvaU9mNXlyZ1NpeVMrU2o3K0NxMWc2RDhiOXRtMmQzYmgrb2p5WVNmdjdBLzN1UE5QV2tsTWE3R0ZNNDhjODlKbXkxWFVIQVBEVm5GQ25XUkFoUC9KUTBBK1luZlpuSDdJQStWb0p2eXhhNGN4NEpteUpzcitDU2VoWmd4NWtrT2RnemQ0S0c5SVBHT3A3L09wTVBPdDhLTzRQMllhbFVFbTFqT0Q2WWpHUkNoaVdLbEc1TmVkcm1XTVhKV29oZWJ6a1lmZFdjak1nV2ViZnZhWENzQ3B6NG9iUnF2RThueXpJbjlNbW9GK3k3RVo5eU11VXpjaEZqSWJMQSt0S1BaM0ZWSHRMTkJUd0dhcUNjamluZTg1UXpKRW1tK1pxSUpDd1lTb0h2WHhEUEJkdW9ad2ZWa0lSNWh5UmthUFZBbjQvTGlnNkhoWU16Um1sZ2wvck40SWtZTFlkZ2lLK21KZWRyMnArSWdVU2JvRENDKzRPSDZMS1p6UmZtMmI0NDBIbjgzeG5xTmlLL2NTTmZ3aTd1NnFPT2tNV2tZNVNMQmRSbzY4dXN3cWhtbEZvTkRaa2kxTE0wMDR6NWJUTWROT2VFMjk5SUdUdzg0ekR0RXFLZGZackxLL1dub0R5YkdRNitwd1NjTDhzeGoyU2hHWFZ4clo2VXFQS1Y4TGhyeWhVYzg2d2o5ZVFMNGpaQkhwWWxtR1dZeFZWeVljb1ZKMmV1SFVQYzh0a1J6YVZqRVZkVllseVBsVkpFSytLSWFrUmtMWDhETi9nZkZlTnEzL0svSkRpZEs5c3k5K0dmYmUybG8raDg1anpqNVErU2x0b2w2cnVrK1h2ODRzODIrdkhoRDhHZVhNZWJheFVabG04eHp6TDhZbTgxeUFnZVJMWDJiSlpkQ0Zvdy9UNHlMcStkQ29lUmZOa1htblF6M0xheitrK2k2UmtadFpoTDFZZHF0aEp3cWsvVjUvQnBHdTAxNVh0WGl6OEh2QUNVMVAxaGM4ZDNUSzVmQmtoRXlQakR5OXR2bnRFdzJxUlJ0U2h1K2M2Y3NOekVaOGFLYjVoY2Z5YW9xR0xQdXR1UGVEWDhZcm1JemFMc2JyTG90UlFObytGZkoxakh6MjgvUTlIMTFjR2VxSExpaFFyUFVsYmphU1AzRDdka1p0YjdDbnFmdDBJNkpPNjM2ZmhRNGI5UHlmVE5jdXFMeTNUblQ1ZjFyN2ZRYVJ6YmE3QzVXUVdNSHVzRW5aelRyTlJ5L0x5SUlNWUFzTVJMRkczWitNWmZsZFRBaTB5YTRXb2N4UVkxQ05tTzU4Yjl3Z2ZCTjZhUUNWRVAxWXFoaWdwZFdOSjd1WHNuZzhLTDNzd1Y4MERIZTdGVW00S3V5NWFmSm9LeDV5YnpkWkExRno1dzQ2OHJsMjFhL2RsaDVhWFh0K1JsMG1yODhmNGRsdlZONnhjY1gwb0ZjWVAvQk9RYnd0L3h3cUlMWGRkc25KMDVkSEJzcWExdDkyeWE4L0YyWXhsWFBvMExmZ3ZtcHdLaUswaFo3dkozNWw5MzcvZ09Lc2Q1ZUg3ampLTEV1WGpYcEZZSXB5VHVxeUpxbFNkd092Nmk0VmtBcVB5VVAvb3V0R2U3a0pmc1MrYlNlU1QrVkFBdGVOMjR6eFo3YXBlRjRVOHJrYUREWjVUWUpQNzZQcXBVVTJlRkczanZXYm81R3RmZmV6bzVEU2VuanA2ekhsSHNyZDN1bFQ2NHFxZElJMk5YbnI1RFVlTytBTHZNZnpDdEt5dHgrTlE4OU1yVmtiR0hZTTFxWlRZZHJyWDNUYjVWbmVpQ1dhRHFtbDRLWXUwWkxtQnpsWDE5blF4Wlc5NW9HdWlaNkl4NjZ0NmZuWHZHbGxmZzJrZU91RUZrdktVVEM4djQrc3g1NVR1QnpLUGJSMC93RXZFLzdMVHZqN2swNUpaM2ZKcHFZem1xL3FhdkVDZUlWOWJuU3NPMjB3enpZUTBQQndoenpTTVp2TFJzOHRzck9OdGFwTGlYU3haSE92SHQwQS9EZ0gvUFlFZVpGbEs3MzN0clRDVVdPSWQ3cC9DNlQ4V3E1bnlPR09RZ1RISThwRTMzM2ZQM2JlLzZ1YWJGdWF5Zm9XRlNQRE80b29yUmpKNVhvNWhWMERtbVdMNm1DTklnWVZHOERaZXZNUndub2RNOUdLZTVJTzFkZ010b2p5dXdwVzkyV25Qd09XS05td3NSbXRaVityWnlXcEp6YXBxemEvYUFTc3E2WUlTcTJ5SXQ0WHRsanRpbVZCbk1CNmdxaFJVK2pVZ3FxTFpsdCs1S3hkdnZiMG4wOUxWODZyYmU3dW9odnRMeVd4ZjZaYWJldklxTllwSnVmRVc0VnhYUGhha0N0eWhWOGFTTHN1QlNLWlUySjFMUkw1MVFKYUhnUi92MndPYllWbmVzOHM5M3JYUFBYNVFKcFM1VXNhQ2VpUStPeGUvSTZaS0FsVkRtcWtTcGQ4d0xVVTJRMUdmR2RMaGNXNit1ZFNYVGNEalJMQy85L1pYOVhTMVpPQnhJa1JnZ1FKSzlSYS9Gd0Y2VDBQVW9rVHBsU3pacExMdGk2alVEUGtqUDFsMmYvYWlQZkFZa2wvZXZjczkzclZma3Roak5XTkh4aC9tMGFYb21zcFZSalhqcTJZQ0pCUlVZQkorckNKZFZQVVZ4U0plTkxPUDJRemxKZGpKZEJsUm1TNXVXYWdIa3UzZXNYRHBsa3NaYSsyZkg1Zy9WNnRqcjQ2WmZGbUpZSlVHaC9hbWRtdlhQd2JReW5iMVBRSDk3S1djemZ6cE9lV0FsN0c2MXJDcFF1aFpGY1pjQ3lPN295RmlETmgwWTV3WmZxMnQzODNqeWhyanlEejdEWXNqNjYrVW1LOUZtS1dmbUs5N0s0aXJBc3FxNFdSU1F6aFpzMTU0ZFRnWitXNlQ3WVRXckNyNHcrZVlQNVpxcGhGVXRWVkcrUE5WTTgrZnFoeG5rYmI5UlNKTE94Y0lqN0pWSzZORUlkSjhMU3VYQVZ1V2Jvb0pFbTU0andyalhGSEpPWG01V21JRXJWNzNJRlpvcVdVN050ZUlvcTNxKzVRbS9DUFYxUWZjQzZqWk5iVVovcER2Tm9iRmF0QUJqN0VLTHpEVythdDZPcElYNnNXaWw4ZjJoYWE0VnkvVXRUSHV0VzRjZW1FdGc1RjZIbnZSM2VpZDZPSEtXMFBWK1JhSXloRXhMQlBHdkcyWWRXM1lSa0ZxQjFkOExVWmNpOG5VMUlscVVYV2xGVnQrdjdVRU84dS9qUHlXZi9IZWU1b3ozcDErMjRQMzMvUE9lOS81dWp0ZWRjdXB1NisvKytWbnZXdGZZMjVLVFZhZjVwd0R6Y2ZOVnFJTHRmK2Q1dmJaNy9MWnh6YVk4SGwzdDk1UWZCa05mbXNxc05hbWtUS3N0WGtaMUtLYVovUnYrWmdwOEJGenRISVlHYkp4RXBtU0lwbk1aNXhJQ2prbVlrSWxRby9wbUFvUzVXSFFrb0NPSWFSS1NEM0c4RFRMRHNYQ0kyQm1hcHE2aEZSVlc0YXBxaTF1MnpLN1lmMEVTSzZESFRDN09rTFo4b0FsdFhmbm1xWDNMTTgxemdOVXV2bHFHb05sNWswZ2NlWUxueERFam15WWkwNWxnRWlGWnVrZnZ6YkFJalNoSjBGbUQvejRrRStucDRFRG5hYTZkZEZJZDIvZjN2blpYZVFlcithU2RjdGpleGZtaWwyc0dlRVh1c0orNExWVm82Q09uU0I5bHlpK1N3MzBIV2hydTdHejg4MURjRVNEWS92NzRXQjJZVytRNG4rdXRhN21JSEh6VEk3emZPeU0yQ3FjMklxVUVJbTQ0VDdJamZhUmo3RDVNOURmVldTcmlmakhBK1BudDBSSTJWWGprN2xRZUtUS2sxZmNsTkNzeWROOCtQU25TZ0Z5MnczTUJOT3ZCM282OGlYRDlobmRuWkcrN3RhdTN2M3JObWFLSmZ3WlFEcHplcUEzaWU4MTdHQnY4aWxtcDdoaDhKSzJCSnk0RTdDUkpsbW1URFVyMTczakJXNm1hTUR5U2JRUnpWYzI5UU5Vd1R5WHhrbkZYUnlDa3RxQ0FPY3VEakcxSG9UalZVdERxQzlqYVFocFZaNmtQRU85emFGTjBmT3RETEhPOHhWaWdVN1gwaGdPYWRBdVJxOTFvNXJPc3pMRUhhb0sxM0JqTDNkVE9zMVBIM1VYaHVoaUMwUFVzT0FYeUtQQXk1aW1wZVlIMGZ6YTBXQXd3alF0dVFabHhZaW5yR0F3RVo5MHZrQnBGNkR0WDhpMmpMOEJoUzVLei81QWphZnhOTk5UVVBydmtvUy96VHd6VytqWjcycWVMb0w4RzgvOTM2aGhUa2FZaGxseXBmUHFEekIzVDdiQVVZWTg2SnlDTjN2QTFXMndIOFhqbEhZcjBZMzRYdmdkL0NZNGdIUE8welN1d2daYUthZzVGL0VHdEl4MlZCWjNMVmdTeUJFVEE3azJrWWhrbm1VUDVzL0F4N1lnTjJoMldFWmhjb1RsRWQ2L3RIWEx6RlI1S0p0cHppTzhPbU53eEZVL3d0ZlA5K0VHS1p3UGlseFR3bUNaRHhQY2tGMTRpSWQxTXVJZ2ZORDVscVVZdFpUQmgvU0lkZVorM0tscWhGWXorVDYrWWtZRHd1OUhXTHJmc01yVEFCdEFkb3FxZWVad05XRXdwWThmMG1XZjh4MHRKUFNzMWZKS0k2QTBOdzFIY1RmL2NTOWpNUHR4NGJyVm1ZVlh6Rml3T3EvdUVyNHNyQU9zZVIzeVZZd3NSck1NY25YdzlOd2MyVFFCbnpydVlRQW02cW9EbEdxb3VBdHpodG15S3Z4S0YvbWNGL2g0TnhzZWNlK2RKM3JSWjZ1U0phcHRtN2UycFdMQjlnZGJDMzJsVkFCa3I0Z3lyS3NTdld4UHU1MHZsdzRWczdFM0R4Ujh2djZCK1UzM0RmWExCajQ0Tkx2eHJuVTltbVoyRmkxVmE5MnlwUzBWRHlZZWJDbjBsOW9pL0E1bGdEVTBHR2pydlBpU3ptejh3YklkS1BiTG9pZ1FRZFRhSWxhOGRmdk94SU54UzdkOUFjMEhIMnZZc0JYMTJrdGExYmhHelVnSWZ2SHVEYk9ESTZGUWRtaWQ2RGZKay8wK1gzR2dTMnNsZ2lHb2FsdkVqTGZ1Z0Z1MEdFYkFDT2tXU0RRQVQ2aHBoK3dXMndxSDRnOE96YysreVoxSHp3ZzNrZStCdkRSV0dlNW1uc256aUJNd2xzUWRDOGVSSUp5UXNFaUl1QVE3a1N3enk5MGlmSm8rMURjU2o3YkpUSVhLTy85OER0WWpMbzEycVRrMzgrRHJtTThZa2J4Vlpwd3pkWEp6dFVxMWF3NHVENC9LUU1WTWl5ajNuTG9KLzRjZ0tMSUt6YU1xbTdkc21iSGFZamMwSW9qRDVlV0xqdW4rZ0hudmp6Zk9Jdk04UGhVc0UrRTcwUlBvcytqdjBWT1Z2MjZweW9QdGNwdllLbkZ4a0lJNG1ES1NXa0txQ1lIWlFNYWZscXlnVFh3aHk3ZVNqK1VpSFZJb0hBNHRlY1ZRZURrZUplRlFlUEh6VDMzMEkrOSsxNE1QbkpzWCtla3ZQdlgzbi8vN1QzMzhJNS85NkdjLzhMNTNQZkh1SjA2LzdZRjNQdmpPM3k1ZmN1Ry9RWEw4djYzOXF1Vkd6cjZaNnlJZlovNUluVjRSQk1raXErQnF5ditCQnE5QUVuM3FwVTkvN2dKeTZrdGZYZVd6UTJRSDZtZHpOR2ZCb0kxakVTQnRTU0o0Vm1LT2I2ZUl1eXdFNGN0Q0NFd3R5K1pvUCtvZlR1U0xiSTV5NVpIZ0xZWGhRcmFSS1p6QTBTRGZKWmwrdllyMCtwam1IZitMb2hqaTlobkJwM0xEMU56Rm9qL2tJenVPaXY2QUpRN3h1aE9xVDB5ZkVxM1hpYklmai82aHFuRXM5azFnTDRibS9NM3pzTmZwcmJ4T285ditQNnF0eWhHNjJ0L3BPNVcyTitLZ1pZSVFkWFJsb1ZKTXlhSzB2SE8wUCthWGdTak9iLzFJK1A4Szd5ZU1mci9KKzZsNW5jR09USnZuL1lSL0srK25acFQ5U3MvWHZKK3lhM3Mva2Y4OCs1OU1ROEdDUnczbmdiVmlDdTk3MlpYRmdXZzY5aVQ4SCtEZXlSUnVqRC9NUEVPcjJnL25wN1htVjlaS1Q3N01PaXlHN0dqVURybmJiTndOYUkxbkVjL05kRzVPKy8yVkpVczBpU0h4bFRDQmZZRXdabXQrNnBPQTI1L1VWYUlvUjM3YlRFeU5jQ1I5Z2VOWDNENzZPMU1yQ1NETEp6bjRtK2NXbkRYTGJDMG01NVBjdFdlZVMvUnJsdGtVbGIxWW44ZFc5UzliL1kxWk9WaGNtbnFLRVNZM2lwb3R6eUNJTE9NYnBkSVM3Q1M2ckdFcTBjVkxEdTdkdlcxTHVXcmxNZ0QzTm52dnBadHdyTFRhMGJiY2pKTXZkUDUwZlJrcW9kaW9oRHp6bmZvWjhneWMrUkEvczZRSHp1Yk9kdzNaWGpOL2VRdFgyZm8zMWlEVWE5V2R2eDhCR3hNV2djNFhYSURPWXgwblNpek9UMVhkT0Q5MW1mZnhtdjMzTy9iUC8yei8zVlBydHZIZnBnT1pmUG91d0Y2dHFCc0ZLLzY2dlhFcU1jaXpicmxPQnhIWlM4bHJZUThROTJLV3RZYW5rWUx6TEtBelFuekx3TXR3MnZJVC9WK29KRndzbWpIOVowcVEvbHlQbTlLeUlDay8xNGx0NG5SRU9paEdvNExnL0lxcTRWYjZ1QnhRblorYkVabCtRSkkrUU9XSWljTnFRSDZjdG9hQm5aaHE5VG4vc2dHUDFwWTk0bmhVOVlCdW40dExtVGM0QjhKNEdiOEY1Tm5yQVc2Q1hJdkhvUHkzUFB5UW5IVnVaa0QwWmhmeTR1SHFwb3RXNVlHM2t3UHdXNmxLdTRCZGZ6b0FVVXZjdVl5aHFjVmdNQnBnbUZ0MXpiRDg1NklOdUZ0NGEvMFhHUFJ0K0FWOHhya2VudVl0SGtyK0lwUkgrRk41V1BndmhXK1JUOVN5QUd5cHpBTVJvQ3BGNm5GRVZFMGwybkVrYXVJcGxpQVFTeXdQSkp4R21LNGdPTldvRjl1OVk4czhET3JSYURBOGF1dE1JK2FxTnhvVlBabStac2Y1Q3psNE5oL2pid0ZLNE5sY1lPd1pmbW5XQlJFc2Y4djNBZjkvQzBicktCdVU1RXRjSDFsUGNRY1VrV3ZCZ0NMK0c2VnpWRFVkMXM1Uk5XbU82UWxpOURsVjVVR0wzNnFKYzQ5N2t3Q0ljbjBVczdIeEJ6Q0d1OUZtcmhYejFsYUNFY0tTSUNqQW00NGpSVGtoWWlSSmJoU3J0S3d5WGRMaXpIUkhLRnZLZG9Tek9ZM0ZJQUNTYlhkTkZDdyszZXNhbnUxWTVnRUtYa2Z4dE1jUnp2anJDa1dlNzVoRnI3TmVGRDc5TGhwOFN0V3VVMEhlK3JEa2x6NU1EZXU0cGo3bGF2emNjNWFoUGk3NVlaenJQblpLTThWM3lmaGFkbmpTTzVTa1dsTjZ2cnZBTDhpUEszNVV6ZUg3MHdhZXZaZkZxUUdObEU4aVJWQk9zWG5FS0NMd2ZYaC9abUZ1OXRuWnRyVlFKWVc4UTg1MWVsMUYyczVSa1RaN0h1YWJja2E3YTZ6K2xQTk0vdTBOZTFzOWQrRzJ4dnJHZFEyZDAycmdOYXo4bWlCOXB5U1JtMm9mMzdtMk5qWndxa1lBOFVOMUYyS3lUSFhyRkQ5eFBldHgxMmpvNmxKdjR1dnBEcUZyM1F3OUhYeHhiMWVweEdJaUVibEN4anlpaGRubW1aTWJZcTV4MmFabTVPUzVyUTVVb2pZSVFEMmQyWFJyekQ5a0Q3bkNEazl4M29Rc2MweEhVb3NBdDBQTUdXT3FzWUl2MUxvTXM0ajVEN05aNUx4aGZuSnNFNCtBejI4b2xyYjJ1TUh3K2NxR3Jqb2IyQ1lXOHErWnh6SnpTblgrczNPK1JJVGk1aDQzdHQ3NTFXSmxLdHRSczVjTmtjdFIzTXZldm9ndXFnQnp4TWpHZkpsQnhoQlljbWNaeEhZc3JoaUtMbWtnK2hGaHlTc0tUR1VoRUJZb09qRTQwTnF5ZVdIVDR1eGlZMnIzbnE2V2RhM3JDaVpQcGNCY1RGZ2NuNndrQU5RcjdxcDB3d1htNDlhMENDRVBLRkhPNzZvaFJJbllPbkY0TWovZlBuWEZXRGpScWtnVmFoTG44T1RoaVRZQmh3VlRyVkN4UEEySEU0ZWY5TWRpNldqMHFsVTczRTdGZGNOaksyUHhpTG50eFBSSUgvV0xRaFN1dzFtb0hPbFhwSTJxQ1Q4akpNZFdybDhaZTVGZGs0NDFidXN5Q0NFUG9RRHE4aksySDBVM1ZhNlBZVmtjN0NZQ0ttSmQyTE9WYVByR0NVSlZhWjR0WVNNakFlZzR5eVlvQWcwM3libXAxQ1JDcFhQeUlvZURoNi9ZNzZWc0h5bjNsZGpxTDhHdWNGZW1iRnZBcjNOMkF4aktjbitHdFd5dXE3SVV2RXpyNDJvYkxiTkJNZ1FTejc3UWJTY3NQLzdLbFF5aHZLdGFhemlmOE5iVG5PUzVkNS8wTUVqUlcra0FOb3NYYzZ2dUJwaytpeXZadVBNR2RxMUlZMjE0TWh1L2todDVlZFVMY05WTFdpWWZ2VmlrOGdadUFYWjk2TjRKTkhBRzVTdFp3Wk5ub1B1WXZweU5WRXdXQ1pvY0cxcUhac2lNeUd3aExqQjNYYUM1bGpJYTRjNXl2Wmk5KzRnYmZPdDZUOWZpbUNPTmdjL1h3SFR6SE9RMlQrMi9qSkR4a2FHN3R2aENQbVAycGx4RTlVWG1SenBUMng0Yzl2emkvSmJ1L0lubVc5c3RicVFpazRBNVp2aUl2SGtxMXpGOSs1RjBsQWFMdzgxT2NhaUswUnB6dGkraFc1SGowcktMRWRZb1NMckhFYUtDZ0E2RGNLQVRWVCtPdEJDbVNLTjhCUkNpQ3VTeU1OYVJJZW5HU29ENUhabU1LNWpJTDV2K0ZlUlRMTjlTa09WN3Q1aHJuYzluTFNQTFp3SFF2NlR4OXBRTjVmL08reCtvak96Zk8rUEJ5QnV1TzNYaTZpT1hYWHJvNHIyMzdyK1ZyWWxWV1pwWk9oZE9sZ2NqTEJJL3ZEb2tzem1KYi9QcXNPY2s3UjBNcjE1amxwMnNMNTRXYmxLckFkLzM0b3VGenpkS04yZWZ4UWM1ZjNvdmk5NEpOb2c5bitCVkJqOTl0dElmMEVPNkhmSHZCN2IxeEtPTWQ3M21Ca2FoK2ZKS3I3a1JpdVJiVmNrLzRIeXZ6aElmWDFQQlJhNTZnZDg4Nm8vWVJoQVk1NTBCUFFpTU5lby83ZFZzaTBBeDZ0bGNiaEw2VVlybmE1OURpNVhOQ1pndGN4TnNsYTE1b2hBV3dZN1llZ1VBb0hoOElFTlU1NlIySkdpMDNGOHE1bHBpdGdVeWFvcWtxRHVuMXJOQXZ5alErSElJT210OXd5cWNTZ0lYd2xKVFR1RWNkenpOVHdPZ21DSnVhcDF2Ymd1T1hqb3lzS3N2dEMzSUYrWGN1V2xtT3lHNlNUN0cxdDNpYVJ1UHBrck9kNGloM2FmcEpCT0phTVdKY2lvY3hEKzJ5ZkJGZzZJd2VuQlFodjczRnV2czZYclRMcXJhOUQxOFVla0gyUTBxS3N6R0czenJSb3Q2cE5RZUxSb2Uxdmk0OEFXT05acDhNQzJkK1hnSXJ0YkpZaXVhTnFnWlFQVHZ4Y0tmbnZtQUZjQVUzMlFIZ1EzN3cvZzJpZ09DRkdqUm5NVlF3dms1L3o3aDFpaCtVbXNKZUZqakhXUi9BOVk0VlY4ZVlwa1ovV3BZdzF2OWs1dmF2THpDSFBMc3hmY3lkSEd2QzJhNFlZMmIyTHFVcDFiaG53a1hiWFNwMFZVKzA1dFlGaFhLZmFZVjdQckdjZnNhRWJ6VXhxN1g5T1RFNk1qUUlQT2NibXU5a05kaDFIM0k2c0l6bmhmMTBGcmUxRXltWHN1ak92VXc5L2lTSHBiZC84T3lERFdQdUc1Z2o4RC9oeVczVWx6VHlUcGJ2OGE5RVd2UHJtT1ZqMGh3UzduczN0bkxlL001bnZlbVZPbHkvUWJobzU5aTNvWENFc3Q5czh4UzRLQnowdDRFMDJ2bHNlREhjcFhnekpBN3ZLdzNMRUhGTHZnRVQ3aVdHSmIxNXV4cmRkdUhPMkwwazI0VU1kN0Q4TTR1MTVwY3ozclRhQmZQZ256QklnMEVpVWc4NDZNSWtqeGZSd0hvS09iUkdRSVBqVmNVN2dmTk1ocUpDano2N0liMVBIcVV2UUpJby9BS2FvT2RnL0cwK3FJS3c1R2FqRy96eFJXYTgzeTR3UWxOR1ZuL3pIbkFDQVNNUnl4TmN6N3BSaXJqT1RVUzBrRjB0VjZjQ2RpZXVQNmNFVlkyTUx6M2VoYmtTMXBUcFpqUVk4R3JoaU9xOHlrM0JoclBRNE5IOUhESXdDZE15NW5jNUk4OVUwM2tvYW96YXF5V3lPTTFwdHFJZmNJb2g4cG9GckFQVzBPUUVub1NxWko2cWhxWklXc0VLYTVpcU5sVkhLTTlPN2N1Ykt4TWpBNzJkeGV6S1JEY0xSVEdZYjJhN0trUi9ua2kxTytJanladUIwQWppdTlVQTdjYndTRDUwMWNLalBBSHIvUHA5SEVZeUkrcmhuV0NTLzlQdndKdzVQa2hNejZBVVErcXNCVk1LbVVpYy9kWk43ZWpDSndBZ0kzTEFjZ2FIRUFnQTMyRmptUWlIdlZicWtKNmhCN09BY0pTdXN4WENFK3cxWnBxcGttWEE0U2JSczY1eFA4cGN0UXgrbllQOU82YU1JaW03S0FHOWwyOFlkTWk1d0ZWMGwvNjM0ejA2N3FRaVlZTmovVC9COTEzY0hCNVZCQXlNMTJ5NXFPYmIwZ21HZW0vYitlaEt0SEhKNEJydkZFRlVlb0cvN3FSR3VVbkhoYTZFK1NwQmJSVTJiVXVBbXlRWmVJQW9DZnJoS2lZaGM2ejlGSWduUXQwUlhOaG44Ym0zaktqR0h5ZHRObE5sYW1KOFpIaHZsSkh0aVhtWDdBWFhGdUZzUWIyWTRsUlE1R294UmF5S25oSjQ5eXFTSmg1NXVjTFhsV0k1NlFZNUdGQkxOU0hmTkU1cUJpdTI1N2VDZjgxY3lSVEhDUEVEbWNIc21HYmtMRmladFRRZERqS3h0dXdydUFQS0JwcEEzbjZYZldNZi9oME5tN0dhU0tMb2JsTmxVU1FuUWdrRldxemUzVWtLSnpPd2kzK1VWRlY1UitoVVBkTGlaTlhvYmJWL0JFamQxbDU0YVdXbGVmMjZYOWRlM2w0dkd2VEhMbnR2QXUrMTM3N1NEVSt3bDBaSENwWHhVZEFML2RpajFuS3drS1QwL2d0RGF1UDEvSXdEMWJYVm1jTU9JSVJ5d25vcWYzY2hkV0toVXc2SG1OM2x6RDNtUmQ0NkFSYjdYNkVyVHpBVitDcDV6YUFCeEErNVRoRk82anBGNzM1c2UxYnIydHI4Ky83L1YwTHN4dEdNWEpYM1Ruem5ZM1gzM1g5UnI0Sll6UzZZWFpoOSsvdjliZTFYYjlsKzN2dnUxalhBbmJ4TjRndnRZTy90OUZydU9GNi9zeDNDUDhnVEhEZVhhNE1sTEVnbG9CQnRjTm9GTnpWN1BrS1h5ZnJuMlptZW14a29JL2xWNDI3Nnpvd1lhd1crOEV4VG9HbDFLN3FCUnV5cTFZUjRIQmp1blUzVzkzRWdkdHV1dW0yUDAvQ256K0gwcTEvbm9MU01aMStVekVNWlp1cWErbzNWTjFVdnFGcXBySk5NVFFWVHBESGxxdnRiL3RvS3BGSWZaU1ZuSDlWZFoxK1F6RjF1RVRUMVdwcnVKZXFHUXJuMFE5eS9uY0RlbVBsZFFrWWRVS0JwUnU1Ykk1bzZ2SU9vQU5pN2MweDg0cGpJOE9QTmRXQTY0OWIyREJWd3p5R1RQTUVCWUFsSWxWRlMyNEpxY3UyVHhkVXBBSUhPSEh0a2NOWFhINFJzd29zem03YU1ETXhOalRRMDkxWlRBTTNZSndmQnRrTitBYStWRTYyNWppVUxkZUt0U3dtTmY4aGx1ellLOWF3UTgwVGFUQmNLOVpXVkt2NUdKVUhhOFVxeG5qc1RYc3BUU3NCK2FIakR5a0tLeXh4V3I4RXBiU2lzRnBlMlBzbVJ1bmZ0RmRSa3RTV0h6cjVFQ3NFNVNXK0hPc1NWQ1VwZmZENFF6UWdRV0hQbTVqWjZ4Rlc3ZDREcXRPVTdtWFYra3Y4WUJJYUgzdElDVXBKOW9QQXZOMGZoRE1QSEgvSS9lVjlWVWRRTm1hL0svd3Y4aHpNc3dsVXJPVFlZcTFoSmwyNkdxYXFrcDBjU1NZRytoTVR5WWxPbG5remw2OHVlY1dUYnJLeHVrcG5kQjRhNHdxaGJ4T2t6bEwzbG0zTFUrTWpwY3ZmM2R2ZjJwcTExSnRVblp6OTRQSzJ6ZDJsb2lKMUNicDZrNlZ1ditqQTRwYnVFclJlZEV4dFlYSFB3bHhuVnlTYzE0L3QzcnV5ZVZvTlNFSWYwVlg4NmE3T3VZVTkyK2RNN1NiVkVQb0VxY1FxSGx1WTdleXE1bkt5eWMwZ2pjVFJEblM0Y25sdk1ob0IyUUp2QmU2QnlMeUtNY2hpbUsrM0RsSVpPZ2I5SWlFaUhVZFVvcWMwbUxNS1p1c21RQlhhemJSenkyejV4TVhXRmtWZW1CdGNWK3FHb1pScTJkRzZ3KytUNDBvOHdKWmV4M0k0T3pUaWVUaldZL2xaOWxIbTNlcHIwbEpQRVI3bnAxaUVjWmM4ZDl4SzRKRXA0c1lCeGZFa3h2bUVySXBMa2lHR0pXbE9EVytlWHI5TndpV055bHNsUzl3cVU2MUhXbi9aYU9XYTFuWkZHdHZmVjc0c2EyZ3hnVWlkeHlibmIxK1U1RnoyamZoNnhUU1ZXMVg1OVNBcmlIQWpRNXkvVGxidnkyWnVXZEJzNVNKSnVvajZ0WkdMeXh0SHgyYjY5bzJKVWk1dm1lMmlMSFhEVTh6ZFBMOXpidFB1aHRpT0VqSmg1SlRSTm5RWXpWWTJJQkIrbVFJV3BGOTBuQ25ma0hBTVVJc2ljRjAveTFkN2pFZEpFbkdWZXJ1MXRUVWNiUXZiUEJqUWRhVHlCUGZwcHRUM3VYb1N2NkZDUTNLLzh5VDZHeExPMDU0a0FIVTRaVHZUWitNdnkvS3VLZGVyYW9wSHJ6aWRJN3R0QWY3dUdxVzBWbFRJZjYyYnQ0bGY4TSt2Ky85THUzN2Zwb0VvN0xOOWQ0NS9KN0ViTzNiYXBvbVRxaXFsYWVNV2lsU2xMS0dnVXBZaUtxRUNxanBCcVVDdEVDQWhRRXdWTEJWQy9BTXNuVUJpb1VJTXFBSW1aZ1lHMkJBcmxWaEl5anNuYVpNS3djRGk5ODVuZnhmSnp2bDc5cjN2VVZxcWdzUEhxeVhwYTZHc0lnMHBZWUdRWUV3QlZ3MERndDRRVWkvSGgvb1lQZ1Eza3cxWm9rbVdKb08zT3BHYmJuMERrQ1VwUXQ0ZkpJRTIxVEtERHFOUnhnSkNDaUdNMHJnR3o0VFBRamJTWmFqQU5YaUt6bFo2czBrMXhtT0pHMFFhWFZ2bWRXMWpsamZWUENLbUMxRWtxWjU2bmpoenJqS3JJSmhaVjBRK0RxUUpjWXRKT1NHd3NvR0xuRVoxcXVuTG5NN2VBbDNtVEpVUWM0bDl0NkVhb3BlQWc2bW1vYmF4elhuR05sbE91dyt3cDl0aHVaWC9SdTM4blg4SFZFMnkvRS9FK2ZsSzZmaFVXRWJjazhjUDd0KzhjVzFsNGZ5SjZ0VE04WmxqRStWS1dCa2U2aTlrUE5zeURVVW1tSlhhak9ybTV1eXVpRHlNaDlrOUwzZUFMTzlIWWxHQ1NSQTlvU2RSUTVhaXZSR0o4Ykt2QzR5YlFJVE9pR054VDh1NC9YRSsyaFVwbnJGMFlEYlJXcXhwTWFiZTRnTEN4d1ZlY1R3SDVzNjNUV2VCVUFrTEw3RkVweVg4NndkYm1pQm9XS3I1dW1WNVZwSi9xQ2ZCV3ZXN0ZBZDlvb2hrcEpDZzMvRzlubUhIR3l5S1JNSWVxOFdkOFRBR2FxM2duajVYbFRQNTBzQ2hnV1luLzhyUVhjTndkYU5sWTZRV1l5UHhQMG1zZGpMeW92WnRXNS9UazhDODVuUzd6YTF0QW9wZzhCS0dPMXVJbzBSUGwyTGFicEFia1JIRlBqc3pCY1BJQUpJbm1OZGlVdHJXNHNQVFk2eEtZeTkwUjdIM2JtMzNoWEJCVUxnOFYySTVUOTIyS29pTjRyWndHOEJjZlZGQWtUWXJtSlk0cTUyeWZNdU45Q25LSFd1TS81enBOeDV4Umo2aWovdzllV2xKbGtmbGJyQkt0enlpS0dDVkVia2JMT3djbFQ5ZGYvZnR3MVZ5Ni9YTzFwMHZPdXZOS0syandPMXNQMXJiWGwzZC9zNDIrMXJtNjV6T1RiRFZia2NVbUNLNUFRVGJhcXNRMklHOFNVYnNTNGVMZ1pVQTlxTWp2U0dlQy9OZm5Na09oSEc0cTlqNm55SXJWNG9hTC9sSVUyR0U1WndXOXZJSEdnb2pTSFJ6bHBOTldUbTA0MmRjUCtWWm1aSnZlNDZmMWt6WjlWSnAyd3ZtZk10TGVXbmZGeUZnWDgrVkUvV2pwdU9ZNkgyaW5MdGlFSUtJS09tVUYzbVdRMUN2eXlyOFcwV0J5ZzRWTWFVRzdFVndGUGNialBsa1V3QUFBSGljWTJCa1lHQUE0a2I5dCtmaitXMitNbkF6dndDS01GeldMaEtDMGYvLy9zOWlmc2NjQk9SeU1EQ0JSQUZpOHd5OUFBQjRuR05nWkdCZ0R2cWZCU1JmL1AvNy94ZnpPd2FnQ0Fyb0JBQzIvZ2diQUhpY1kzN0J3TUJNTnY3L2ozeTllSEEyamRSQzNQeWZKbTRlampqeS8xOFFEUURoSW9JeUFBQUFBQUFBQUZ3QXVnRVlBZGdDV0FNQUEyWUQ3QVJ3QlRvRmxnWWFCdm9Ib2dmK0NGUUlkZ2phQ1NnSi9Bck9DODRNY0F6ZURZWU9XZzhDRUFJUVRoRDJFY0FTTUJMS0UxQVQzQlRXRldvV0lCWnNGc1FYRWhlT0dEb1l4aGt3R2VnYWxodnVIUEFkdmg0MEhxSWZPaCtRSURJZ2hDRHlJVVlocGlJV0lzQWpQaVBzSkdRbEtpWWFKcHdudWlnZ0tKUXBDaWx3S2dZcWJpcnNLOG9zUkN5T0xQSXRmaTMwTGh3dWJpN29MMm92akRDT01VUXhsREpDTTF3MEFqUjBOUG8xT0RWdU5pQTIzRGRHT0s0NUZEbzRPdWc3akR3c1BJQTh0anowUFk0K0VqNm9QeXcvemtDVVFRcENLRUsyUXV4REtFT3VSQUJFa0VVc1JiSkdSa2FFUnF4SEJrZUFTR0JJMGtsOFNqNUx2a3drVEp3QUFRQUFBSWtBMEFBTkFBQUFBQUFDQUU0QVhnQnpBQUFBMFF0d0FBQUFBSGljZFpETlNzTkFGSVhQMkIrMUJSVUZ0ODVLS3RMMEIzUWhGQXFWZHFPYkl0MUtHdk5YMGt5Wm1SYjZHcjZERCtOTCtDeWVwbE9SaWdtVCtlNjU1OTY1R1FEbitJTEE5cm5qMnJMQUVhTXRIK0FRUGNjbDZvK095K1FueHhYVThlSzRTdjNWY1EyM2lCM1hjWUYzZGhEbFkwWXpmRGdXT0JPbmpnOXdJcTRjbDZnM0haZkpQY2NWWElwbngxWHFnZU1hSnNJNHJ1TmFmQTdVWXEzVE9MR3lNYmlSM1hiblhrN1hVbEZLY3orVC90SW1TaHZabDVIS2JaaGx5Z3ZVM0VUTk5GQzVHWWZ4TXZQMUx0enRrMUNiVk9XeTQ3VjMwaWpNUSszYjhHM1QzYXppcnJXUmpMU2F5NkhyS3hkYXpjTEFlb20xaTRkVzYvZDVHRUJoZ1RVMFVsNVZBZ3VKQnRVYjdsMjAwY0U5YVVxSHBIUHJTcEhEUjBiRng1SVZTWkV4alB0Y0VhT2Nha2hIUnZZUThEdG5Qa0tUdFVHUk54alRFYk0rWXhmOUo3c2ZUK2pldU5JaWxwekw0M1Q3cmhGZGVlSDBpd25lZm1ZM1dQRzBMbFhMbXMyVXVwaEtZcmczcitSOWJISXpLZ0YxcjdnVlMvVUJMYjcvL044M2dyT0NSd0I0bkcxVDUzOGpOUkQxUzdiWTZRY0hITDEzQXBjRURvNTI5TjU3TjdJMDYxVzhLeW1TMW81RDd4eC9OU01uNFhjZjJBK3lkelh6M3BzM003Mmwzdkd6MHZ2LzV6S1dzSXdNT1FxVTZHT0FGYXhpRGV2WXdDYTJjQVpYNFdxY3hUVzRGdGZoSEs3SERiZ1JOK0ZtM0lKYmNSdHV4eDI0RTNmaGJ0eURlM0VmN3NjRGVCQVBZUnNQNHhHY3h3NTJzWWRIOFJndTRIRThnWXQ0RWsvaGFUeURaM0VKeitGNXZJQVg4UkpleGl0NEZhL2hkYnlCTi9FVzNzWTdlQmZ2NFgxOGdBL3hFVDdHSi9nVW4rRnpmSUV2OFJXK3hqY1k0bHNJakNDaFFLZ3dSZzJOZlV6UW9JV0JoY01CUEFJaU9rd3h3eUhtT01KMytCNC80RWY4aEoveEMzN0ZiL2dkZitCUC9JVy9jUm4vOVBJOVpXTllGa3Jsc3JHQkJzNXJTU05ySjFsTmplc2JHNC9mdkoyRm9uT05GWXRJT1NuRzNuWXVyRnBIWmxqWlJwSGY4bnBjeDZGbzlOZ01JeDNHMG5tck9oblhEem9LVVZzT0pGTGxUSGlqelRqckF2bDhrYlBHUExyU1VxU2dyTFl0OWFVMTBRc1pTOWFXQWpQaFhNaWtkZk5jdDJKTVdTTHVCNHFSb1VKeFpHMnJUZUZKV3E4R3dyTmVaV2RtV1haeFV4dk9qNnlvZFkySXRKNHlTWjJJSGdTdGFOam9FTXVFWWJ0WUhIUmNkVmp6bEtMVjRpNGJLeXZMWUxSekZEUEgvS3V5QzlHMnd5U3JYUEIxcmhBeENsbVhTc3lubW1hWk5wWGRPbVVYNDJHbHFWRzVFeUZTRnF5UHkwNVZMTm54M3l5S01Pa3ptTGRUMGF3R0s3Vm9RaTA4Rlk2c2E2alFrWTJWaGFLR09IMGs1R1I1SkV4T3JkQk5OdUphMkcxS3RQa2liYUJFcUVkV2VGWEVXcGhKeUtObFhTdW52bTd2bE1GcFk3Z0ZycmJSNWpRbEU4dFJwNU1yYS90Y25hN21pemFla1h4RC9vckdacVIwTEJveFo3djZQRExXNnpqZkNsRVl4WVJETzlvbkdVT1p1SmlxZjJ6VnhiMXlJVFl4ZDFKU0NLV255bE9vTnh1cXJweWJMTFV1bDF4R3pQaU1PYkcvUGt0UnE1NWFPMDBOTXhPR2FWdmg1MzN1VGRleXhrSjVVY1d3ZnZKZFVXUTZKdUcyUzhvYVBhRitRajRlNHBya1pKWFBxYmNtSVJkMDZGaC9scER6bERQUG94ZzFsQzFtZHVITzlzNUcxQTBOWlNveWpjVlozcFk2S1I1MVRXcUxXc3hLT3ZxVm1DWlhhTzJFWWpIbnAzeEpSVkhwaGwzTlVqa2JwemphS09ZWmRQempXUWoxRTNucWRjYlJsUEYzK3grbjZkb1IrVk5PWHNtVlk4VDBQamdoNmh4dkt3bGZWdGJ6MnFrVlE3UGhUQ2NCbTZjNDNNTkVXblFtZ2ZCQ3AzbnNESGMwY3piRUpaN3J3QkN5WHVia292TDJpQmRQMmpZNUh0TEdKY1c4a2xyTzJMOXpTZ2RwTzc1aUNhcHJTUE1VaE8zenV4dFNHRW5OdHRTZUphbVRvZGk5ME92OUM4eDYwN2dBQUhpY1kvRGV3WEFpS0dJakkyTmY1QWJHblJ3TUhBekpCUnNaV0owMk1UQXlhSUVZbTdtWUdEa2dMRDRHTUl2TmFSZlRBYUEwSjVETjdyU0x3UUhDWm1adzJhakMyQkVZc2NHaEkySWpjNHJMUmpVUWJ4ZEhBd01qaTBOSGNrZ0VTRWtrRUd6bVlXTGswZHJCK0w5MUEwdnZSaVlHRndBTWRpUDBBQUE9JykgZm9ybWF0KCd3b2ZmJyksXG4gIHVybCgnZGF0YTphcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07YmFzZTY0LEFBRUFBQUFQQUlBQUF3QndSMU5WUXJEK3MrMEFBQUQ4QUFBQVFrOVRMekkrSUVuN0FBQUJRQUFBQUZaamJXRnc3VGdEc1FBQUFaZ0FBQWpTWTNaMElBYlYvd1FBQUsvc0FBQUFJR1p3WjIyS2taQlpBQUN3REFBQUMzQm5ZWE53QUFBQUVBQUFyK1FBQUFBSVoyeDVabEVaeWQ0QUFBcHNBQUNaT0dobFlXUUpZU2ZGQUFDanBBQUFBRFpvYUdWaEIwQUQxZ0FBbzl3QUFBQWthRzEwZUJXaC8vb0FBS1FBQUFBQ0pHeHZZMkV4SGxwbUFBQ21KQUFBQVJSdFlYaHdBaWtNb0FBQXB6Z0FBQUFnYm1GdFpiOWFvdDRBQUtkWUFBQUN6WEJ2YzNSZ3FOTXpBQUNxS0FBQUJicHdjbVZ3NVVFcnZBQUF1M3dBQUFDR0FBRUFBQUFLQUI0QUxBQUJSRVpNVkFBSUFBUUFBQUFBQUFBQUFRQUFBQUZzYVdkaEFBZ0FBQUFCQUFBQUFRQUVBQVFBQUFBQkFBZ0FBUUFHQUFBQUFRQUFBQUFBQVFQbEFaQUFCUUFBQW5vQ3ZBQUFBSXdDZWdLOEFBQUI0QUF4QVFJQUFBSUFCUU1BQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVVHWkZaQUJBNkFEb2h3TlMvMm9BV2dOU0FKWUFBQUFCQUFBQUFBQUFBQUFBQlFBQUFBTUFBQUFzQUFBQUJBQUFBbUlBQVFBQUFBQUJYQUFEQUFFQUFBQXNBQU1BQ2dBQUFtSUFCQUV3QUFBQUJBQUVBQUVBQU9pSC8vOEFBT2dBLy84QUFBQUJBQVFBQUFBQkFBSUFBd0FFQUFVQUJnQUhBQWdBQ1FBS0FBc0FEQUFOQUE0QUR3QVFBQkVBRWdBVEFCUUFGUUFXQUJjQUdBQVpBQm9BR3dBY0FCMEFIZ0FmQUNBQUlRQWlBQ01BSkFBbEFDWUFKd0FvQUNrQUtnQXJBQ3dBTFFBdUFDOEFNQUF4QURJQU13QTBBRFVBTmdBM0FEZ0FPUUE2QURzQVBBQTlBRDRBUHdCQUFFRUFRZ0JEQUVRQVJRQkdBRWNBU0FCSkFFb0FTd0JNQUUwQVRnQlBBRkFBVVFCU0FGTUFWQUJWQUZZQVZ3QllBRmtBV2dCYkFGd0FYUUJlQUY4QVlBQmhBR0lBWXdCa0FHVUFaZ0JuQUdnQWFRQnFBR3NBYkFCdEFHNEFid0J3QUhFQWNnQnpBSFFBZFFCMkFIY0FlQUI1QUhvQWV3QjhBSDBBZmdCL0FJQUFnUUNDQUlNQWhBQ0ZBSVlBaHdDSUFBQUJCZ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU1BQUFBQUFad0FBQUFBQUFBQUlnQUFPZ0FBQURvQUFBQUFBRUFBT2dCQUFEb0FRQUFBQUlBQU9nQ0FBRG9BZ0FBQUFNQUFPZ0RBQURvQXdBQUFBUUFBT2dFQUFEb0JBQUFBQVVBQU9nRkFBRG9CUUFBQUFZQUFPZ0dBQURvQmdBQUFBY0FBT2dIQUFEb0J3QUFBQWdBQU9nSUFBRG9DQUFBQUFrQUFPZ0pBQURvQ1FBQUFBb0FBT2dLQUFEb0NnQUFBQXNBQU9nTEFBRG9Dd0FBQUF3QUFPZ01BQURvREFBQUFBMEFBT2dOQUFEb0RRQUFBQTRBQU9nT0FBRG9EZ0FBQUE4QUFPZ1BBQURvRHdBQUFCQUFBT2dRQUFEb0VBQUFBQkVBQU9nUkFBRG9FUUFBQUJJQUFPZ1NBQURvRWdBQUFCTUFBT2dUQUFEb0V3QUFBQlFBQU9nVUFBRG9GQUFBQUJVQUFPZ1ZBQURvRlFBQUFCWUFBT2dXQUFEb0ZnQUFBQmNBQU9nWEFBRG9Gd0FBQUJnQUFPZ1lBQURvR0FBQUFCa0FBT2daQUFEb0dRQUFBQm9BQU9nYUFBRG9HZ0FBQUJzQUFPZ2JBQURvR3dBQUFCd0FBT2djQUFEb0hBQUFBQjBBQU9nZEFBRG9IUUFBQUI0QUFPZ2VBQURvSGdBQUFCOEFBT2dmQUFEb0h3QUFBQ0FBQU9nZ0FBRG9JQUFBQUNFQUFPZ2hBQURvSVFBQUFDSUFBT2dpQUFEb0lnQUFBQ01BQU9nakFBRG9Jd0FBQUNRQUFPZ2tBQURvSkFBQUFDVUFBT2dsQUFEb0pRQUFBQ1lBQU9nbUFBRG9KZ0FBQUNjQUFPZ25BQURvSndBQUFDZ0FBT2dvQUFEb0tBQUFBQ2tBQU9ncEFBRG9LUUFBQUNvQUFPZ3FBQURvS2dBQUFDc0FBT2dyQUFEb0t3QUFBQ3dBQU9nc0FBRG9MQUFBQUMwQUFPZ3RBQURvTFFBQUFDNEFBT2d1QUFEb0xnQUFBQzhBQU9ndkFBRG9Md0FBQURBQUFPZ3dBQURvTUFBQUFERUFBT2d4QUFEb01RQUFBRElBQU9neUFBRG9NZ0FBQURNQUFPZ3pBQURvTXdBQUFEUUFBT2cwQUFEb05BQUFBRFVBQU9nMUFBRG9OUUFBQURZQUFPZzJBQURvTmdBQUFEY0FBT2czQUFEb053QUFBRGdBQU9nNEFBRG9PQUFBQURrQUFPZzVBQURvT1FBQUFEb0FBT2c2QUFEb09nQUFBRHNBQU9nN0FBRG9Pd0FBQUR3QUFPZzhBQURvUEFBQUFEMEFBT2c5QUFEb1BRQUFBRDRBQU9nK0FBRG9QZ0FBQUQ4QUFPZy9BQURvUHdBQUFFQUFBT2hBQUFEb1FBQUFBRUVBQU9oQkFBRG9RUUFBQUVJQUFPaENBQURvUWdBQUFFTUFBT2hEQUFEb1F3QUFBRVFBQU9oRUFBRG9SQUFBQUVVQUFPaEZBQURvUlFBQUFFWUFBT2hHQUFEb1JnQUFBRWNBQU9oSEFBRG9Sd0FBQUVnQUFPaElBQURvU0FBQUFFa0FBT2hKQUFEb1NRQUFBRW9BQU9oS0FBRG9TZ0FBQUVzQUFPaExBQURvU3dBQUFFd0FBT2hNQUFEb1RBQUFBRTBBQU9oTkFBRG9UUUFBQUU0QUFPaE9BQURvVGdBQUFFOEFBT2hQQUFEb1R3QUFBRkFBQU9oUUFBRG9VQUFBQUZFQUFPaFJBQURvVVFBQUFGSUFBT2hTQUFEb1VnQUFBRk1BQU9oVEFBRG9Vd0FBQUZRQUFPaFVBQURvVkFBQUFGVUFBT2hWQUFEb1ZRQUFBRllBQU9oV0FBRG9WZ0FBQUZjQUFPaFhBQURvVndBQUFGZ0FBT2hZQUFEb1dBQUFBRmtBQU9oWkFBRG9XUUFBQUZvQUFPaGFBQURvV2dBQUFGc0FBT2hiQUFEb1d3QUFBRndBQU9oY0FBRG9YQUFBQUYwQUFPaGRBQURvWFFBQUFGNEFBT2hlQUFEb1hnQUFBRjhBQU9oZkFBRG9Yd0FBQUdBQUFPaGdBQURvWUFBQUFHRUFBT2hoQUFEb1lRQUFBR0lBQU9oaUFBRG9ZZ0FBQUdNQUFPaGpBQURvWXdBQUFHUUFBT2hrQUFEb1pBQUFBR1VBQU9obEFBRG9aUUFBQUdZQUFPaG1BQURvWmdBQUFHY0FBT2huQUFEb1p3QUFBR2dBQU9ob0FBRG9hQUFBQUdrQUFPaHBBQURvYVFBQUFHb0FBT2hxQUFEb2FnQUFBR3NBQU9ockFBRG9hd0FBQUd3QUFPaHNBQURvYkFBQUFHMEFBT2h0QUFEb2JRQUFBRzRBQU9odUFBRG9iZ0FBQUc4QUFPaHZBQURvYndBQUFIQUFBT2h3QUFEb2NBQUFBSEVBQU9oeEFBRG9jUUFBQUhJQUFPaHlBQURvY2dBQUFITUFBT2h6QUFEb2N3QUFBSFFBQU9oMEFBRG9kQUFBQUhVQUFPaDFBQURvZFFBQUFIWUFBT2gyQUFEb2RnQUFBSGNBQU9oM0FBRG9kd0FBQUhnQUFPaDRBQURvZUFBQUFIa0FBT2g1QUFEb2VRQUFBSG9BQU9oNkFBRG9lZ0FBQUhzQUFPaDdBQURvZXdBQUFId0FBT2g4QUFEb2ZBQUFBSDBBQU9oOUFBRG9mUUFBQUg0QUFPaCtBQURvZmdBQUFIOEFBT2gvQUFEb2Z3QUFBSUFBQU9pQUFBRG9nQUFBQUlFQUFPaUJBQURvZ1FBQUFJSUFBT2lDQUFEb2dnQUFBSU1BQU9pREFBRG9nd0FBQUlRQUFPaUVBQURvaEFBQUFJVUFBT2lGQUFEb2hRQUFBSVlBQU9pR0FBRG9oZ0FBQUljQUFPaUhBQURvaHdBQUFJZ0FBQUFEQUFBQUFBUENBZElBREFBWkFDWUFPa0EzQ0FRSEFnWUZBQUVCQUZRSUJBY0NCZ1VBQUFGWUJRTUNBUUFCVEJzYURnMEJBQ0VnR2lZYkpoUVREUmtPR1FjR0FBd0JEQWtGRkNzVE1oNEJGQTRCSWk0Qk5ENEJJVEllQVJRT0FTSXVBVFErQVNFeUhnRVVEZ0VpTGdFMFBnR2FIelVmSHpVK05SOGZOUUY1SHpVZkh6VStOUjhmTlFGNUlEVWZIelUvTlI4Zk5RSFJIelUrTlI4Zk5UNDFIeDgxUGpVZkh6VStOUjhmTlQ0MUh4ODFQalVmQUFBQUFRQUEvN2NEbXdNRkFDOEFORUF4QUFJQkFtOEFCUUFGY0FNQkFRQUFBVlFEQVFFQkFGZ0VCZ0lBQVFCTUFnQXFKeUlmR2hjU0R3b0hBQzhDTHdjRkZDc0JJVEkyUFFFMEppTWhJaVkxRVRRbUt3RWlCaFVSRkFZaklTSUdIUUVVRmpNaE1oWVZFUlFXT3dFeU5qVVJORFlDUVFFOURCRVJEUDdEQ1FvU0N6b0xFZ29KL3NNTUVSRU1BVDBKQ2hJTE9nc1NDZ0VrRWdzNkN4SUtDUUU5REJFUkRQN0RDUW9TQ3pvTEVnb0ovc01NRVJFTUFUMEpDZ0FBQUFBQkFBRC8rUU5YQXNFQUx3QW9RQ1VDQVFBQkFHOEZBUU1FQTNBQUFRUUVBVlFBQVFFRVdBQUVBUVJNRXhNZkV4TVdCZ1VhS3dFM05qUXZBU1lpRHdFR0lpOEJKaUlQQVFZVUh3RVdGQThCQmhRZkFSWXlQd0UyTWg4QkZqSS9BVFkwTHdFbU5BSlUrZ2tKSmdrWENmd0ZFQVg4Q1JjSktBa0ovQVVGL2drSktBa1hDZndGRUFiN0NSY0pLQWtKK2dVQmF2d0lGd2tvQ1FuOEJRWCtDUWtvQ1JjSit3WVFCZjRKRndrb0NRbjhCZ2I4Q1Frb0NSY0ovQVVRQUFVQUFBQUFBd3dDaWdBbkFEY0FSd0JYQUdjQWRFQnhZRkJBTUFRRENWaElPQ2dFQ0FRQ1J3QUJBQUlKQVFKZ0VBRUFEdzBMQXdrREFBbGdBQU1BQkFnREJHQU9EQW9EQ0FVSENGUUFCUUFHQndVR1lBNE1DZ01JQ0FkWUFBY0lCMHdDQUdSaVhGcFVVa3hLUkVJOE9qUXlMQ29pSHh3YUZ4VVVFZzhOREFvSEJRQW5BaWNSQlJRckFTRWlCaDBCSXlJR0ZCWTdBUlVqSWdZVUZqc0JGU01pQmhRV093RVZGQll6SVRJMk5SRTBKZ0VVQmlzQklpWTlBVFEyT3dFeUZoVVhGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlJjVUJpc0JJaVk5QVRRMk93RXlGaFVDemY2SUdTUVVFQmdZRUJRVUVCZ1lFQlFVRUJnWUVCUWxHQUY0R1NZbC9zY0ZCU2dFQmdZRUtBVUZVQVVGRkFRR0JnUVVCUVZrQlFVb0JBWUdCQ2dGQlZBRkJSUUVCZ1lFRkFVRkFvb2pGeFlYSVJoa0Z5RVlaQmNoR0JJWEp5a1pBZUFZSHY1bUJBWUdCTndGQlFVRjNBUUdCZ1RjQlFVRkJkd0VCZ1lFM0FVRkJRWGNCQVlHQk53RkJRVUZBQUlBQVArUUF5c0RMd0F4QUVFQVBrQTdBQUlCQUFFQ0FHMEdBUUFGQVFBRmF3QURBQUVDQXdGZ0FBVUVCQVZVQUFVRkJGZ0FCQVVFVEFJQVB6dzNOQ01oR2hjUkR3QXhBakVIQlJRckpTTWlKajBCTkRZM05qYzJOell1QVNjbUJnY0dCdzRCS3dFaUpqYytBVGMrQVJjZUFSY1dGeFlPQVFjT0FSMEJGQVlYRkFZckFTSW1QUUUwTmpzQk1oWVZBaUpnQ3hCSE9pUWFJZ1lGSjBjckh6c1lKZ1lDRHd4Z0RSRUJCakFuTG5OQVRvWW9LUU1ETVY0K0RSQVRFeEVNWUFzU0VndGdEQkYzRUFzZFBXUVVEUnNxTHl0Tk1BRUJGaFVqTWdrTUVnMDJZU2NyTFFFRFVVSkVUMEo1WEJjRkZRd2REQkhLQ3hJU0MyRUxFUkVMQUFBRUFBRC9rQU9iQXl3QUp3QTNBRWNBVndCalFHQU9BUUFBRFFJQURXQUFBUUFDREFFQ1lBQU1BQXNFREF0Z0FBTUFCQW9EQkdBQUNnQUpCUW9KWUFnQkJRQUdCd1VHWUFnQkJRVUhXQUFIQlFkTUFnQlZVa3hLUkVJOU9qVXlMQ29pSHh3YUZ4VVVFZzhOREFvSEJRQW5BaWNQQlJRckFTRWlCaDBCSXlJR0ZCWTdBUlVqSWdZVUZqc0JGU01pQmhRV093RVZGQll6SVRJMk5SRTBKZ01VQmlNaElpWTlBVFEyTXlFeUZoVTNGQVlqSVNJbVBRRTBOak1oTWhZVk54UUdJeUVpSmowQk5EWXpJVElXRlFOTy9iOGZMamtaSVNFWk9Ua1pJU0VaT1RrWklTRVpPUzRmQWtFZ0xTMm1Dd24rOHdnTEN3Z0JEUWtMSmdzSS9xWUpDd3NKQVZvSUN5Y0xDZjVaQ0FzTENBR25DUXNETEMwZ09pRXlJSm9oTWlHWklUSWhPaDh1TFNBREFpQXQvWElKQ2dvSkpna0tDZ2wwQ1FzTENTWUpDZ29KbWdrS0NnbHpDUXNMQ1FBQUFBQURBQUFBQUFPYkFyZ0FEd0FmQUM4QVFVQStBQUVHQVFBREFRQmdBQU1IQVFJRkF3SmdBQVVFQkFWVUFBVUZCRmdJQVFRRkJFd2lJQklRQWdBcUp5QXZJaThhRnhBZkVoOEtCd0FQQWc4SkJSUXJBU0VpSmowQk5EWXpJVElXSFFFVUJnTWhJaVk5QVRRMk15RXlGaDBCRkFZRElTSW1QUUUwTmpNaE1oWWRBUlFHQTM3ODdBd1JFUXdERkF3UkVRejg3QXdSRVF3REZBd1JFUXo4N0F3UkVRd0RGQXdSRVFKRkVRdzVEQkVSRERrTUVmN2hFZ3M2Q2hFU0N6b0tFZjdlRVF3NURCRVJERGtNRVFBQ0FBRC9rQVBDQXkwQUh3QkVBRWhBUlFBRUJnUnZBQVlGQm04SUFRVUFCVzhDQ1FJQUJ3QnZBQWNCQjI4QUFRTURBVlFBQVFFRFdBQURBUU5NQWdBL1BqWXpMaTBxS1NJaEdoY1NEd29IQUI4Q0h3b0ZGQ3NsSXlJR0hRRVVCaU1oSWlZOUFUUW1Ld0VpQmhVUkZCWXpJVEkyTlJFMEpnRW1JZ2NCQmhRZkFSWXlQd0UyTWhZVkVSUVdPd0V5TmpVUk5EWWZBUll5UHdFMk5DY0RwVG9MRWhFTS9ZWU1FUklMT2dzUkxSOERBaUF0RXY1WENCZ0kvdndJQ0NrSUdBaHNCUkVNRUFzNkN4UVdDbXdKRndrb0NBaitFZ3ZBREJFUkRNQUxFaElML3Z3Z0xTNGZBUVFMRWdJbUNBaisvQWdZQ0NnSkNXc0dDd2orYUFzU0V3b0JsZzBKQ1dzSkNTZ0pGd2dBQXdBQS81QUR3Z01zQUJRQUtRQS9BRVJBUVFBRUF3VURCQVZ0QUFVQ0F3VUNhd1lCQUFBREJBQURZQWNCQWdFQkFsUUhBUUlDQVZnQUFRSUJUQllWQVFBNk9USXZJQjhWS1JZcEN3b0FGQUVVQ0FVVUt3RWlCd1lIQmhRWEZoY1dNamMyTnpZMEp5WW5KZ01pSnlZbkpqUTNOamMyTWhjV0Z4WVVCd1lIQmdNbVBRRTBKaXNCSWdZZEFSUWZBUll5UHdFMk5DY0I5SDFyYVQwL1B6MXBhL3BzYUQ0L1B6NW9iSDFkVVU0dkx5OHZUbEc2VVU0dkx5OHZUbEVjQnhJTE9nc1NDSTRKRndrb0NRa0RMRDgrYUd6NmJHZytQejgrYUd6NmJHZytQL3pZTHk5T1VicFJUaTh2THk5T1VicFJUaTh2QVZZSURia0xFaElMNlFrTWpna0pLQWtYQ1FBQUF3QUEvL0lENkFMTEFDZ0FUd0I3QUMxQUtqb0dBZ1FBQVVjQ0FRQUVBRzhBQkFFRWJ3TUJBUVVCYndBRkJXWjBjVjVkU2tjM05SOGRLUVlGRlNzQkpqVTBOelkzSmljbUl5SUhEZ0VWRkJjV0ZSUUhCZ2NHQndZSEhnRTdBVEkyTnpZM05qYytBU1VtSnlZMU5EYzJOVFFtSnlZaklnY0dCeFlYRmhVVUJ3WVdGeFlYSGdFN0FUSTJOVFluSmdVbUp5WTFORGMrQVRVMEppY21JZ2NPQVJVVUZoY1dGUlFIQmdjR0J3WUhGQll6SVRJMk5TWW5KaWNtQVRJcEdoa3NFQnNkSkNrZkhTQXJIQWtOSVQwZ0tRRUNKUjVBQnc0RUZTa2NMZzBHQWlvaERBb2NLeDhkSHlva0hSd1JMQmthS1FjSERHUWtCQTRIUUI0bEFTY2cvdFVrRGd3aEZ4a2lJQ05hSXlBaUdSY2hDdzRsU0NBdkFTNGhBWkFoTGdFV0V5VVpBVGc5VFVFM05DSWJEeEVWRTBRb1FpVWVHQkVNRVE0YkhTVXJJU29JQnlZZkZoZ0dHakVQRHd3U0hCb25RQ2hFRXhVUkR4c2lORGRCVFQwTUdRWXdRd2NJS2lFckpSMXhFQkVPRWgwZkZqc2lMRW9WRnhjVlNpd2lPeFlqR1JRTUVSQWZHU1F2SXpJeUl5QWFGeFlPQUFBQ0FBRC90d1BDQXdVQUZ3QW5BRHhBT1FBQkF3RnZCUUVBQkFJRUFBSnRBQUlDYmdZQkF3UUVBMVFHQVFNREJGZ0FCQU1FVEJrWUFnQWhIaGduR1NjU0R3b0hBQmNDRndjRkZDc0JJU0ltTHdFdUFTc0JJZ1lWRVJRV015RXlOalVSTkNZbklTSUdId0VXTXlFeUZ4WTJOVFFtQTNYK1N4UWtDME1MSkJXRElDd3NJQU1DSUMwdElQNHdCUVVESGdZTUFhY2lHUVlNTFFKRkZSRjBFaFF0SVAxTUlDMHRJQUgwSUMyYUNRVTBDd3dEQ0FjZ0xRQUFCQUFBLzhvRG13THlBQThBSHdBdkFEOEFVMEJRQ0FFQUFBRUNBQUZnQ1FFQ0FBTUdBZ05nQ3dFR0FBY0VCZ2RnQ2dFRUJRVUVWQW9CQkFRRldBQUZCQVZNTWpBaUlCSVFBZ0E2TnpBL01qOHFKeUF2SWk4YUZ4QWZFaDhLQndBUEFnOE1CUlFyQVNFaUJoMEJGQll6SVRJMlBRRTBKZ2NoSWdZZEFSUVdNeUV5TmowQk5DWURJU0lHSFFFVUZqTWhNalk5QVRRbUp5RWlCaDBCRkJZeklUSTJQUUUwSmdOKy9Pd01FUkVNQXhRTUVSRU0vWVlNRVJFTUFub01FUkVNL1lZTUVSRU1Bbm9NRVJFTS9Pd01FUkVNQXhRTUVSRUM4aElMT2dzUkVRczZDeExuRVF3NURCRVJERGtNRWY0ekVnczZDeElTQ3pvTEV1WVJDem9NRVJFTU9nc1JBQUFBQndBQUFBQURJQUtLQUE4QUh3QXZBRDhBVHdCZkFHOEFqa0NMYldVQ0RReE1SRHcwTENRZEZRMEZDZ0FCWFZVQ0N3b0RSd2dHQkE4Q0JRRU5BQTBCQUcwU0NSRUhFQVVERGdnQUNnMEFDbXNVQVF3QURRRU1EV0FUQVFvTEN3cFVFd0VLQ2d0WUFBc0tDMHhoWUZGUVFFQXdNQ0FnRVJBQkFHbG5ZRzloYjFsWFVGOVJYMEJQUUU1SVJqQS9NRDQ0TmlBdklDNG9KaGtYRUI4Ukh3a0hBQThCRHhVRkZDczNNekkyTlJFMEppc0JJZ1lWRVJRV0FTTWlCaFVSRkJZN0FUSTJOUkUwSmdFeU5qVVJOQ1lyQVNJR0ZSRVVGanNCTWpZMUVUUW1Ld0VpQmhVUkZCWXpJekkyTlJFMEppc0JJZ1lWRVJRV013VWhJZ1lkQVJRV015RXlOajBCTkNZRElTSUdIUUVVRmpNaE1qWTlBVFFtM0RJSURBd0lNZ2dNREFJNE1nZ01EQWd5Q0F3TS92NElEQXdJUEFnTURBaTBDQXdNQ0JRSURBd0k4QWdNREFnVUNBd01DQUdhL2RBSURBd0lBakFJREF3SS9kQUlEQXdJQWpBSURBeStEQWdCTmdnTURBait5Z2dNQVY0TUNQN0tDQXdNQ0FFMkNBeitvZ3dJQVRZSURBd0kvc29JREF3SUFUWUlEQXdJL3NvSURBd0lBVFlJREF3SS9zb0lERHdNQ0JRSURBd0lGQWdNQWdnTUNCUUlEQXdJRkFnTUFBQUFBQU1BQUFBQUF5RUNkd0FjQUN3QVZnQlZRRkl4QVFRR0pSMENBZ01DUndBRkJ3WUhCUVp0QUFZRUJ3WUVhd2dCQUFBSEJRQUhZQUFFQUFNQ0JBTmdBQUlCQVFKVUFBSUNBVmdBQVFJQlRBRUFVVTlKUmtGQU5UTXBKeUVmRkJJQUhBRWNDUVVVS3dFaUJ3WUhCaFVVRnhZUEFRWVdQd0UyRnhZek1qYzJOelkwSmljbUF4UUdLd0VpSmowQk5EWTdBVElXRlRjT0FSMEJGQVlyQVNJbVBRRTBQZ0UzTmk0Q0J3WUhEZ0VyQVNJbU56WTNQZ0VYSGdJWEZnWUI5RkpHUXlncEpnVURIQVFTREZnSkNFaFdVa1pES0NsU1EwWTBEQWdVQ0F3TUNCUUlEQWdEQlF3SUZBZ01HeW9IRUFVaUxoUU5Bd0lLQnhVSkRBRUlHaEV0R1I4MUlBRUNMUUoySmlWQVFVeElRUWdJV1F3UkJCOERCU29tSlVCQm1JRWxKdjQrQ0F3TUNCUUlEQXdJYXdFRkJCQUlEUTBJRUJZbER3c1ZMaDhCRWcwUEJ3a1BDU1laRVJJQkFTQTFIeWRBQUFQLy92KzNBK3NEQ1FBT0FCY0FKd0E0UURVZ0FRTUVBVWNBQkFNRWJ3QURBQUlCQXdKZ0JRRUJBQUFCVkFVQkFRRUFXQUFBQVFCTUVBOGtJaDBhRkJNUEZ4QVhPUVlGRlNzbEFTNEJCZ2NCQmg0Qk15RXlQZ0VsSWlZME5qSVdGQVkzRkFZckFTSW1QUUUwTmpzQk1oWVZBOTMrUndzbEpRditTQTBHSUJjRGNCZ2hCdjRKR1NFaE1pRWhJUXNJVFFrTEN3bE5DQXNoQXNjVERnNFQvVGtXTWlJaU1rWWhNaUFoTUNLdENRb0tDZm9JQ3dzSUFBQUNBQUQva0FQQ0F5MEFIUUFxQUNSQUlRUUJBZ01DYndBREFRTnZBQUVBQVc4QUFBQm1IeDRsSkI0cUh5b3JNd1VGRmlzbEZSUUdJeUVpSmowQk5EYzJQd0UyRnhZek1qWTNOaDhCRmhjV0Z4WUJNaDRCRkE0QklpNEJORDRCQThJM0p2MGVKVGRRT1hRTUVBMU1XU3RWSmcwUERFMHVRQ0FuL2pJK2FqMDlhbnhxUFQxcUZ5b2xPRGNtS2t0QUxUTUdCUWN5R2hnSEJRWWhHeVFuTHdMZ1JIV0tkVVJFZFlwMVJBQUFBUUFBLyt3QzJ3TE1BQXdBQ3JjQUFBQm1Fd0VGRlNzbEVUUStBUmNCRmhRSEFRWW1BUTBPRkFrQmx3d00vbWtPSFFvQ3FBb09BUWYrc3dnZkNmNnZDZzRBQUFBQ0FBRC9rQVBDQXpBQUl3QXZBRHRBT0FBQkFBRnZBZ1lDQUFBREJBQURZQWNCQkFVRkJGUUhBUVFFQlZnQUJRUUZUQ1lrQWdBcktpUXZKaThlR3hZVERBb0FJd0lqQ0FVVUt5VWpJaVk5QVRRbkppY21Cd1lIRGdFZEFSUUdLd0VpQmgwQkZCWXpJVEkyUFFFMEpnVWpJZ1lYSGdFeU5qYzJKZ04xQ2hzb0xDeEpTMWRSUlVKTkp4d0tIeTBSQ3dOaUN4SXQvcjI4Q1F3Q0IwQlVRQWdCRE5jb0hOMVdTVWNvS1FNRUxTdVBVOVVjSmk0Z0hRc1FFUXdkSHkzVER3Z29OVFluQ1E0QUFBRUFBUCtRQThRRExBQWlBQ3hBS1FBRkFBVnZCQVlDQUFJQWJ3QUNBUUp2QXdFQkFXWUJBQjBjRlJRUURnc0tCd1FBSWdFaUJ3VVVLd0VqRVJRR0t3RWlKalVSSXhFVUJpc0JJaVkxRVNNaUppY21Od0UyTWhjQkZnY0dBNjVnQ2duQUNRdm1Dd25BQ0F0Z0Jnc0JCQWdCdXdVU0JBRzZDQVFEQVV2K1dRa0xDd2tCUi82NUNRc0xDUUduQmdVTUNnRzZCZ2IrUmdnT0N3QUFBQVFBQVArUUE4SURMQUFWQUN3QVF3QmFBSk5BRUZKSkRnVUVBQUU3TWlRYkJBTUNBa2RMc0FsUVdFQVpCZ0VCQUFGdkJ3Z0NBQUlBYndVSkFnSURBbThFQVFNRFpodExzQXBRV0VBZEFBWUJCbThBQVFBQmJ3Y0lBZ0FDQUc4RkNRSUNBd0p2QkFFREEyWWJRQmtHQVFFQUFXOEhDQUlBQWdCdkJRa0NBZ01DYndRQkF3Tm1XVmxBR3hnV0FnQlpWa3hMUWo4MU5DSWhGaXdZTEF3TEFCVUNGUW9GRkNzQklUSTJMd0UzTmpRdkFTWUdEd0VuSmdZVkVSUVdCeUVpQmg4QkJ3WVVId0VXTWo4QkZ4NEJOalVSTkNZWEVSUVdQd0VYRmpJL0FUWW1Md0UzUGdFbUl5RWlCaWNSTkNZUEFTY21JZzhCQmhRZkFRY09BUll6SVRJMkFqa0JLQThHQzE2dENBaEhDQlFKcldJTEdSU0EvdGdQQmd0ZXJRY0hSd2dVQ2E5aUJoRU1GV0laQzJDdkNCWUhSd1lCQjYxZUNBSUtDZjdYQ2hKTkdndGdyd2NXQ0VjSEI2OWVDQVFLQ2dFbUNoY0JoUmtMWUs4SUZnZEhCZ0VIclY0TUJ3Nysxd29TVFJvTFlLOEhGZ2hIQndldlhnZ0VDZ29CSmdvWEgvN1lEd1lMWHEwSEIwY0lGQW10WWdjU0RCV0FBU2dQQmd0ZXJRZ0lSd2NWQ2E5aUJoQU1GQUFEQUFEL3BBUEFBeG9BTEFBNUFGMEFsa0FPSEFFSENEb0JCQWMvQVFVRUEwZExzQkZRV0VBdUFBQUNBRzhKQVFjSUJBZ0haUVlCQkFVRkJHTUtBUUlBQ0FjQ0NHQUFCUUVCQlZRQUJRVUJXUU1CQVFVQlRSdEFNQUFBQWdCdkNRRUhDQVFJQndSdEJnRUVCUWdFQldzS0FRSUFDQWNDQ0dBQUJRRUJCVlFBQlFVQldRTUJBUVVCVFZsQUdpNHRXMWxXVTFCT1NVZEVRVDQ4TkRNdE9TNDVLQ1VkQ3dVVkt5VTBOamMyTnpZM05qYytBUzRCRGdFSEJoY1dGeFlYRmdjR0J3WUhOZ2NHQndZSEJoNEJNeUV5TmljdUFRRWlEZ0VVSGdFeVBnRTBMZ0VYRkFZckFSVVVCaXNCSWlZOUFTTWlKajBCTkRZN0FUVTBOanNCTWhZZEFUTXlGaFVCcFJnVURoUUdIQlFMSkEwdFpvQmhGQmdORFRJWkRBNEtCaEVORlFjclNpYzVDd2NaT2lZQlJ3c0xCeVFuQVRRK2F6NCthM3hyUGo1ck53d0pPQXdKSmdrSk93a0pDUWs3Q1FrbUNRdzRDUXlMSmxRakdSY0lIUllRTll0MVFnTklPMFJFU1M4WUdpQWNFUThMQ3dRVklSNHRPeVJGS3hZSUttZ0JIVDVxZkdvL1BtdDhhajc2Q0FzNkNBc0tDVG9LQ1NjSkNqb0pDZ3NJT2dzSUFBQUpBQUQvdHdPYkF3VUFEd0FmQUM4QVB3QlBBRjhBYndCL0FJOEFpRUNGR0F3VkJoSUZBQTBIQWdFRUFBRmdHaEFYQ2hRRkJCRUxBZ1VDQkFWZ0dRNFdDQk1GQWdNREFsUVpEaFlJRXdVQ0FnTllEd2tDQXdJRFRJS0FjbkJpWUZKUVFrQXlNQ0lnRWhBQ0FJcUhnSStDajNwM2NIOXlmMnBuWUc5aWIxcFhVRjlTWDBwSFFFOUNUem8zTUQ4eVB5b25JQzhpTHhvWEVCOFNId29IQUE4Q0R4c0ZGQ3NUSXlJR0hRRVVGanNCTWpZOUFUUW1BeU1pQmgwQkZCWTdBVEkyUFFFMEpnTWpJZ1lkQVJRV093RXlOajBCTkNZQkl5SUdIUUVVRmpzQk1qWTlBVFFtQXlNaUJoMEJGQlk3QVRJMlBRRTBKZ01qSWdZZEFSUVdPd0V5TmowQk5DWUJJeUlHSFFFVUZqc0JNalk5QVRRbUF5TWlCaDBCRkJZN0FUSTJQUUUwSmdNaklnWWRBUlFXT3dFeU5qMEJOQ2I2Y3hraElSbHpHU0VoR1hNWklTRVpjeGtoSVJsekdTRWhHWE1aSVNFQkczUVlJU0VZZEJnaElSaDBHQ0VoR0hRWUlTRVlkQmdoSVJoMEdDRWhBUnR6R1NFaEdYTVpJU0VaY3hraElSbHpHU0VoR1hNWklTRVpjeGtoSVFNRklSbHpHU0VoR1hNWklmMlpJUmx6R1NFaEdYTVpJUUV6SVJoMEdDRWhHSFFZSVFFMElSbHpHU0VoR1hNWklmMlpJUmx6R1NFaEdYTVpJUUV6SVJoMEdDRWhHSFFZSVFFMElSbHpHU0VoR1hNWklmMlpJUmx6R1NFaEdYTVpJUUV6SVJoMEdDRWhHSFFZSVFBQUFBVUFBUCtRQTVzRExBQVJBQ0VBTVFCQkFGRUFZRUJkT2pJQ0FnZ0JSd0FDQ0FjSUFnZHRDd0VBQUFFREFBRmdBQU1BQmdVREJtQUFCUUFLQ1FVS1lBQUpBQWdDQ1FoZ0FBY0VCQWRVQUFjSEJGZ0FCQWNFVEFJQVQweEhSRDg4TnpRdkxDY2tIeHdYRkF3S0J3VUFFUUlSREFVVUt3RWhJZ1lkQVNFeUZoVVJNekkyTlJFMEpnTTBKaU1oSWdZVkVSUVdNeUV5TmpVQkZBWXJBU0ltUFFFME5qc0JNaFlWRXhRR0l5RWlKajBCTkRZeklUSVdGVGNVQmlNaElpWTlBVFEyTXlFeUZoVURUdjRNSHk0QnppQXRKaUF0TFpNdElQNE1JQzB1SHdIMElDMytwZ3NKbVFrTEN3bVpDUXVhQ3duK3pRa0xDd2tCTXdrTFRBb0ovb0FKQ3dzSkFZQUpDZ01zTFNBbkxTRDk1aTBnQWtFZ0xmN3lJQzB0SVAyL0h5NHVId0c3Q1FvS0NTWUpDZ29KL3FZSUN3c0lKd2dMQ3doekNRb0tDU1lKQ3dzSkFBTUFBUC9kQThJQzN3QVBBQ01BTEFCTFFFZ0FBd1lGQmdNRmJRZ0JCUVFHQlFSckFBUUNCZ1FDYXdBQUFBWURBQVpnQndFQ0FRRUNWQWNCQWdJQldBQUJBZ0ZNSlNRU0VDa29KQ3dsTEI4ZUZ4WVFJeElqTlRJSkJSWXJBVFFtSXlFaUJoVVJGQll6SVRJMk5TY2hJaVkzRXpZeUh3RWVBVDhCTmpJZkFSWUdBeUltTkRZeUZoUUdBOEl0SVB6K0h5MHRId01DSUMzSS9kSVJFUW1wQmhVR1pnVVdCVk1HRlFhWUNBMUNJQzB0UUMwdEFwSWdMUzBnL1pnZ0xTNGZUUjRQQVNZS0NxOEpBZ2wzQ1FueURoa0JXaTFBTFMxQUxRQUFBQUFEQUFEL2tBUENBeXdBQWdBeUFGY0FYa0JiRUFFQkFnRkhBQVlEQ0FNR0NHMEFDQWNEQ0FkckNnRUhBZ01IQW1zQUNRRUpjQXNCQUFBREJnQURZQVFCQWdFQkFsUUVBUUlDQVZnRkFRRUNBVXdGQTFkV1RrdEdSVUpCT2prdEtpVWlIUm9WRWcwS0F6SUZNZ3dGRkNzM05SVUJJU0lHRlJFVUZqc0JNalk5QVRRbUt3RWlKalVSTkRZeklUSVdGUkVVQmlzQklnWWRBUlFXT3dFeU5qVVJOQ1lETnpZMEx3RW1JZzhCQmhRZkFSWXlQd0UyTWhZVkVSUVdPd0V5TmpVUk5EWWZBUll5bWdMYi9QNGZMUzBmNXdrS0NnbWpEQkVSREFKNkRCRVJES01KQ2dvSjV5QXRMY1FwQ0FqekNCZ0k4QWtKS0FnWUNGa0ZFUXdRQ3pvTEZCWUtXUWdhc1F3WUFvY3RJUDFMSUMwTENVMElDeEVNQWVBTUVSRU0vaUFNRVFzSVRRa0xMaDhDdFNBdC9ZMG9DUmNJOHdnSThRZ1hDU2dKQ1ZnR0N3aitwd3NTRWdzQldRMEpDVm9IQUFBREFBRC9rZ09sQXlvQURBQllBR1VBZEVCeEtSd0NDUUlPQVFFQVQwSUNCd2dEUndRQkFnTUpBd0lKYlFvQkFBa0JDUUFCYlFBQkNBa0JDR3NBQndnRkNBY0ZiUUFGQmdnRkJtc0FBd0FKQUFNSllBc0JDQWNHQ0ZRTEFRZ0lCbGdBQmdnR1RGcFpBUUJnWDFsbFdtVlRVVXBIUUQ0dEt5UWhHUmdIQmdBTUFRd01CUlFyQVNJT0FSUWVBVEkrQVRRdUFRRW5OalFuTno0Qkx3RXVBU01pRHdFbUx3RXVBU3NCSWdZUEFRWUhKeVlqSWdZUEFRWVdId0VHRkJjSERnRWZBUjRCTXpJL0FSWWZBUjRCT3dFeU5qOEJOamNYRmpNeU5qOEJOaVlGSWk0Qk5ENEJNaDRCRkE0QkFmWWxQaVFrUGtvK0pDUStBVzlIQlFWSEVna01Id2dlRVFZUFdUSS9FQVFqR0Q0WUl3UVFPamxZRUFZUkhnZ2ZEQWdUUndVRlJ4SUpEQjhJSGhFTkNWZ3lQeEFGSWhnK0Z5UUVFRVF6VXc0SkVSNElIUTBJL2xvNllUazVZWFJoT1RsaEFlTWtQa285SkNROVNqNGsvd0E4R2s0YVBBOHVGRFlPRUFNaExSUmJGaG9hRmxrU0x5QUVFQTQyRkM4T1BDTThJendQTGhRMkRoQURJUzBVWFJjZEh4ZGRGekFoQkJFT01nOHRTemxnZEdFNU9XRjBZRGtBQUFBQUF3QUEvNDhEd2dNc0FDTUFSQUJSQUdoQVpTVUJDUVE5QVFjSkFrY0FBUW9BQ2dFQWJRQUVBd2tEQkFsdEFBZ0hDSEFBQmdBS0FRWUtZQUlMQWdBRkFRTUVBQU5nREFFSkJ3Y0pWQXdCQ1FrSFdBQUhDUWRNUmtVQkFFeExSVkZHVVVBL09qZ3ZMaDRjR0JZVEVRc0tCd1FBSXdFakRRVVVLd0VqTlRRbUt3RWlCaDBCSXlJR0hRRVVGanNCRlJRV093RXlOajBCTXpJMlBRRTBKZ0VuTmpjMk5UUW5KaWNtSWdjR0J3WVVGeFlYRmpNeU56WTNGeFl5UHdFK0FTVWlMZ0UwUGdFeUhnRVVEZ0VDVkhNTENFMEpDM01JQ3dzSWN3c0pUUWdMY3drS0NnRmQzU1FURkRVelYxclFXbGN6TkRVelYxbG9Qanc0TWQwSkZ3a29DUUg5NVVsN1NVbDdrbnRKU1hzQjVYTUpDZ29KY3dzSlRBa0xjd2tLQ2dsekN3bE1DUXYrQ05zeU9EcythRnBYTXpVMU0xZGEwRnBYTXpVVUV5VGRDQWdvQ1JtOFNYdVNlMGxKZTVKN1NRQUFDQUFBQUFBRERBS0tBQThBTHdBL0FFOEFYd0J2QUg4QWp3Q1FRSTBkRFFJQUFvaUFXRkFFQ2d0NGNFaEFCQWdKYUdBNE1BUUdCd1JIQkJNQ0FnRUFBUUlBYlFBQkVnRUFBd0VBWUFBREVRRUxDZ01MWUJBQkNnOEJDUWdLQ1dBT0FRZ05BUWNHQ0FkZ0RBRUdCUVVHVkF3QkJnWUZXQUFGQmdWTUVSQUJBSXlLaElKOGVuUnliR3BrWWx4YVZGSk1Ta1JDUERvME1pb25JaDhhRnhBdkVTOEtCd0FQQVE4VUJSUXJBVE15TmowQk5DWXJBU0lHSFFFVUZpVWpJZ1lkQVJRR0t3RWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtQVJRR0t3RWlKajBCTkRZN0FUSVdGVFVVQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVkJSUUdLd0VpSmowQk5EWTdBVElXRlRVVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZBWWJjQ0F3akdZd1pJd3dCVWhRRUJpOGgzQ0V2QlFVVUdTTWpHUUc0R1NNai9wME1DQlFJREF3SUZBZ01EQWdVQ0F3TUNCUUlEQXdJRkFnTURBZ1VDQXdCR0F3SXlBZ01EQWpJQ0F3TUNNZ0lEQXdJeUFnTURBaklDQXdNQ01nSURBSVNEQWdvR1NNakdTZ0lERVlGQlNnaEx5OGhLQVVGSXhuK1Voa2pJeGtCcmhrai9sSUlEQXdJRkFnTURBaFFDQXdNQ0JRSURBd0lVQWdNREFnVUNBd01DTndJREF3SUZBZ01EQWhRQ0F3TUNCUUlEQXdJVUFnTURBZ1VDQXdNQ0FBQUFBQUJBQUQvb3dNOUF4Z0FKUUFoUUI0QUF3RURid1VCQVFJQmJ3UUJBZ0FDYndBQUFHWVRGVFVURnhVR0JSb3JOd1lVRndFV01qY0JOalF2QVNZaUR3RUdJaVkxRVRRbUt3RWlCaFVSRkFZaUx3RW1JZ2U1REF3QklBd2ZDd0VpREF3MURCOExXd2NVRHhjUFRSQVhEeFFIV3dzZkMvNExIZ3YrNVFzTEFSc0xIZ3MwQ3d0WkJ3NExBZ2NQRnhnTy9ma0xEZ2RaQ3dzQUFBUUFBUCtjQTZVRExRQXhBRG9BUXdCWEFEbEFOaVFmRHdNQ0FBRkhBQVVBQlc4QUFBSUFid1FCQWdFQ2J3Y0RCZ01CQVdZOE96TXlSa1ZBUHp0RFBFTTNOakk2TXpvaUlRZ0ZGQ3NsSmdjQkxnRVBBUTRCRnhNV0ZBOEJKZ2NPQVFjR0ZoY1dOejRCTnpZbUp6YzJNaDhCRGdFWEhnRVhGamMrQVNjdUFRVWlKalEyTWhZVUJpRWlKalEyTWhZT0FRTVdNajhCTmlZbk53Y21Md0VtQmc4QkJoUVhBdzh0THY1WEJCRUdEeGtIRThzR0JtMHFNVFZNQndjMU1ETTVNMDRMQnd3U1VRZ2VDRkVTREFjS1RqUTVNekExQncxTy9iWVpJU0V5SVNFQjJ4a2hJVEloQVNLcEJoTUdtaEFDRUFJQ0FnNE5CaEFGcVFZRzlnc1JBalFHQXdVTUV6NGEvdklIRkFlUkVBb0xVRFU0WUJnYUNnaEpNeU5CR1d3TEMyd2NRQ0V6U1FnS0doaGdPRGRQMXlFeUlTRXlJU0V5SVNFeUlRSFNCd2ZLRlRRVkFnSUVDd29FQWdiaEJ4UUlBQVVBQVArUUE4SURMQUFqQURvQVNnQmFBR29BZTBCNEFBWU5EQTBHREcwQUFRd0pEQUVKYlFBSkNBd0pDR3NBQkFNRWNBQUhBQXNLQnd0Z0FBb0FEdzRLRDJBQURnQU5CZzROWUFBTUFBZ0FEQWhnQWhBQ0FBTURBRlFDRUFJQUFBTllCUUVEQUFOTUFRQm9aVjlkV0ZWUFRVZEZQejA2T0RVekxpc29KaDRjR1JZVEVRd0tCd1FBSXdFakVRVVVLeVVqTlRRbUt3RWlCaDBCSXlJR0hRRVVGanNCRlJRV093RXlOajBCTXpJMlBRRTBKaVUwTmpzQkVUUW1JeUVpQmhVUkZCWXpJVFUwTmpzQkFSUUdLd0VpSmowQk5EWTdBVElXRlJNVUJpTWhJaVk5QVRRMk15RXlGaFUzRkFZaklTSW1QUUUwTmpNaE1oWVZBNlZYRVF3NURCRlhDeElTQzFjUkREa01FVmNMRWhMKzNoRU1NQzBnL2VVZkxTMGZBYWdSQzFmK3Bnc0lkQWdMQ3doMENBdm5Dd24rcGdnTEN3Z0JXZ2tMVEFvSi9sa0lDd3NJQWFjSkNuZFhDeElTQzFjUkREa01FVmNMRWhJTFZ4RU1PUXdScEFzU0FhY2dMUzBnL2VVZ0xUQU1FUUc3Q1FzTENTWUpDZ29KL3FZSkNnb0pKZ2tMQ3dsMENRc0xDU1lKQ2dvSkFBQUFBZ0FBLzdjRHlBTUZBQlVBSmdCaFM3QUtVRmhBSXdBQkFBQUJZd1VCQXdJRUFnTUViUUFFQkc0QUFBSUNBRlFBQUFBQ1Z3QUNBQUpMRzBBaUFBRUFBVzhGQVFNQ0JBSURCRzBBQkFSdUFBQUNBZ0JVQUFBQUFsY0FBZ0FDUzFsQURoZ1dJUjRXSmhnbUV6a3lCZ1VYS3dFMEppTWhJaWNtTHdNbUp5WXJBU0lHSFFFaEZ5RWlEZ0VYRXg0Qk15RXlOamNUTmlZRFRpMGcvdVlRRVEwTUNqQUlDZ3dSRkVrZ0xRSzBPUHpjRXg0TkJHNEdJQlFDU2hVaEJHNEZKUUl5SUMwS0J3c0tPZ29MQndvdElLMU5GU0lTL213VEZ4Y1RBWlFjTFFBQUFBQUZBQUQvdHdQQ0F3VUFEd0FmQUM4QVB3QlBBRjVBV3dzQ0NnTUFBQU1FQUFOZ0RBRUVBQVVHQkFWZ0RRRUdBQWNJQmdkZ0RnRUlBUUVJVkE0QkNBZ0JXQWtCQVFnQlRFSkFNakFpSUJJUUFnQktSMEJQUWs4Nk56QS9NajhxSnlBdklpOGFGeEFmRWg4S0J3QVBBZzhQQlJRckFTRWlCaFVSRkJZeklUSTJOUkUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lISXlJR0hRRVVGanNCTWpZOUFUUW1CeU1pQmgwQkZCWTdBVEkyUFFFMEpnY2pJZ1lkQVJRV093RXlOajBCTkNZRHBmMzVEQkVSREFJSEN4SVMvV2ZVQ3hFUkM5UUxFaElMMUFzUkVRdlVDeElTQzlRTEVSRUwxQXNTRWd2VUN4RVJDOVFMRWhJREJSRU0vT3dNRVJFTUF4UU1FUkVNWUFzU0VndGdEQkhuRVF0aEN4RVJDMkVMRWVZU0MyQU1FUkVNWUFzUzV4SUxZQXdSRVF4Z0N4SUFBQVFBQVArUEE4SURMQUFKQUJNQU5BQkJBRWhBUlJVQkJ3QXRBUVVIQWtjQUJnVUdjQUFFQUFnQkJBaGdBZ0VCQXdFQUJ3RUFZQWtCQndVRkIxUUpBUWNIQlZnQUJRY0ZURFkxUERzMVFUWkJGU2tiSmhFbElBb0ZHeXNCTXpJMlBRRTBKaXNCTVNNaUJoMEJGQlk3QVFFbk5qYzJOVFFuSmljbUlnY0dCd1lVRnhZWEZqTXlOelkzRnhZeVB3RStBU1VpTGdFMFBnRXlIZ0VVRGdFQmJlY0pDZ29KNTNNSUN3c0ljd0pOM1NRVEZEVXpWMXJRV2xjek5EVXpWMWxvUGp3NE1kMEpGd2tvQ1FIOTVVbDdTVWw3a250SlNYc0JjUXNKVEFrTEN3bE1DUXYrZXQweU9EcythRnBYTXpVMU0xZGEwRnBYTXpVVUV5VGRDQWdvQ1JtOFNYdVNlMGxKZTVKN1NRQUVBQUFBQUFNTkFuZ0FFZ0FpQURJQU93QmFRRmNQQVFNQlJnQUZCd1lIQlFadENRRUdBd2NHQTJzQUF3UUhBd1JyQUFRQ0J3UUNhd2dCQUFBSEJRQUhZQUFDQVFFQ1ZBQUNBZ0ZZQUFFQ0FVdzBNd0lBT0Rjek96UTdMaTBtSlI0ZEZoVUtDUUFTQWhJS0JSUXJBU01tQndFR0ZCOEJGakkzQVQ0Qkp6VTBKZ01IQmlJdkFTWTBQd0UyTWg4QkZoUTNCd1lpTHdFbU5EOEJOaklmQVJZVU55SW1ORFl5RmhRR0F0RGJFeEgrOUJFUjFCRXlFZ0VQQ0FnQkkvRU9CaEFHaUFZR0RnWVFCb2dHU2c0R0VBYUlCZ1lPQmhBR2lBWXlGUjBkS2gwZEFuWUJFZjd6RVRJUzFCRVJBUkFJRmdyU0dTUCtTQTRHQm9nR0VBWU9CZ2FJQmhCS0RnWUdpQVlRQmc0R0JvZ0dFS1FkS2gwZEtoMEFDQUFBQUFBRElBS0tBQllBSmdBMkFFWUFWZ0JtQUhZQWhnQ1VRSkVGQVFFQVB6Y3ZKd1FGQmw5WFQwY0VDUW9OQVFJT2QyY0NEUUlGUjM5dkFnSUJSZ0FDRGcwT0FnMXRFUUVBQUFFREFBRmdFZ0VEQ0FFR0JRTUdZQWNCQlF3QkNna0ZDbUFMQVFrUUFRNENDUTVnRHdFTkJBUU5WQThCRFEwRVdBQUVEUVJNR0JjQ0FJT0JlM2x6Y1d0cFkyRmJXVk5SUzBsRFFUczVNekVyS1NBZEZ5WVlKUkVQQ2djQUZnSVdFd1VVS3dFaElnWWRBUlFXTXlFeUZoVVJGQll6TWpZMUVUUW1CU0lHRlJFVUZqTWhNalkxRVRRbUl3Y1VCaXNCSWlZOUFUUTJPd0V5RmhVWEZBWXJBU0ltUFFFME5qc0JNaFlWQnhRR0t3RWlKajBCTkRZN0FUSVdGUmNVQmlzQklpWTlBVFEyT3dFeUZoVUhGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlFMay9zQVpJd1lFQVNJWkl3WUVIU2tqL2hzWkl5TVpBVUFaSXlNWjhBd0lGQWdNREFnVUNBemNEQWlNQ0F3TUNJd0lETndNQ0JRSURBd0lGQWdNM0F3SWpBZ01EQWlNQ0F6Y0RBZ1VDQXdNQ0JRSUROd01DSXdJREF3SWpBZ01Bb29qR1FvRUJpTVovc29FQmlrZEFVb1pJNHdqR2Y2c0dTTWpHUUZVR1NPTUNBd01DQlFJREF3SUZBZ01EQWdVQ0F3TUNIZ0lEQXdJRkFnTURBZ1VDQXdNQ0JRSURBd0llQWdNREFnVUNBd01DQlFJREF3SUZBZ01EQWdBQUFBSEFBRC9hZ05yQTFJQURRQVJBQlVBR1FBZEFDNEFOd0IwUUhFbkRBSUxBQUZITHdFQVJRd09BZ3NBQ2dBTENtMEFDZ0lBQ2dKckFBSURBQUlEYXdBREFBUUZBd1JlQUFVQUJnY0ZCbDRBQndBSUNRY0lYZzBCQUFBTVNBQUpDUUZZQUFFQkRRRkpIaDRCQURjMUhpNGVMU0FmSFJ3Ykdoa1lGeFlWRkJNU0VSQVBEZ2tHQUEwQkRROEZGQ3NUSWdZVkVSUVdNeUV5TmpVUkNRRWhGU0VWSVJVaEZTRVZJUlV6RlNNQkZTTW5KaWNtSnlZM0Z4WVhGaGNXTXdNVkZCY1dGeFk3QVZBaEx5OGhBc3NoTC83Wi9sb0JVZjZ2QVZIK3J3RlIvcS9Bd0FMTnlCQVNFQlVNRHdFQ0F3Z0tFaFlmWEFjS0V4Y2t5QU5TTHlIOHVDRXZMeUVDV3dFOS9iZ2hLaUVxSVNvaEFnc1BCQWNLRFJJWEhRNFJEUlFMRGdFLzVCRVNHQTRTQUFZQUFQL2RBOElDM3dBUEFCOEFMd0EvQUU4QVh3QnBRR1lOQWd3REFBQURCUUFEWUFBRkRnUUNBUVlGQVdBUUNBOERCZ0FKQ2dZSllCRUJDZ2NIQ2xRUkFRb0tCMWdMQVFjS0IweFNVRUpBTWpBaUlCSVFBZ0JhVjFCZlVsOUtSMEJQUWs4Nk56QS9NajhxSnlBdklpOGFGeEFmRWg4S0J3QVBBZzhTQlJRckFTTWlCaDBCRkJZN0FUSTJQUUUwSmlrQklnWWRBUlFXTXlFeU5qMEJOQ1lCSVRJMlBRRTBKaU1oSWdZZEFSUVdCeU1pQmgwQkZCWTdBVEkyUFFFMEppa0JJZ1lkQVJRV015RXlOajBCTkNZSElTSUdIUUVVRmpNaE1qWTlBVFFtQVJmVUN4RVJDOVFMRWhJQ2cvMzVEQkVSREFJSEN4SVMvZTRCUmd3UkVReit1Z3dSRVh2VUN4RVJDOVFMRWhJQ2cvMzVEQkVSREFJSEN4SVN6UDY2REJFUkRBRkdEQkVSQXQ4U0Mvb01FUkVNK2dzU0VnczZDeElTQ3pvTEV2N01FUXc2Q3hFUkN6b01FWm9SRFBvTEVoSUwrZ3dSRVF3NURCRVJERGtNRWNBU0N6b0xFaElMT2dzU0FBQUNBQUQva0FOMUF5d0FGd0FsQUNsQUpnTUJBUVFCYndBRUFBUnZCUUVBQWdCdkFBSUNaZ0lBSWlBYkdoSVBDZ2NBRndJWEJnVVVLd0VqSWlZOUFUUW1JeUVpQmhVUkZCWXpJVEkyTlJFMEpqY25KaUlHSFFFVUZqc0JNalkwQTFiWEppc1NEZjdCSlRnNEpRSklKamNTRE13R0ZBNG5HcVFJRFFIbEt5WFlEUkkzSnYwZUpUZzRKUUhaRFJKMXpBWU5DYU1hSnc0VUFBRUFBUCtRQThJRExBQXJBQjFBR2lNQkFnQUJSd0FCQUFGdkFBQUNBRzhBQWdKbUhTb1ZBd1VYS3dFdUFROEJCaUl2QVNZMFB3RTJKaWNtSXlJR0J3WVhGaGNCRGdFV0Z4NEJNalkzQVJZWEZqYytBVFUwQTdZREVBaWNDQmtKYmdnSW5nWUVDQ2dxVVlZaUpBb0hEUDZZRlE0T0ZSQXBLQ2tRQVdZYkxsSklSbFFDWndrREJwd0lDRzRKR1FpY0JoQUZERlJHU0ZJc0hmNmFGVGczRkJBUkVSQUJaZ3dIQ2lRaWhsRXJBQUFBQVFBQS82UURLQU1aQUNVQUlVQWVBQUFDQUc4RUFRSUJBbThGQVFFREFXOEFBd05tRXhVMUV4Y1ZCZ1VhS3dFMk5DY0JKaUlIQVFZVUh3RVdNajhCTmpJV0ZSRVVGanNCTWpZMUVUUTJNaDhCRmpJM0F4d01EUDdnREI4TC90OExDellNSHd0YkJ4UVBGdzlORHhnUEZBZGFEQjhMQWI0TUhRc0JHd3NML3VVTEhRdzBDd3RaQnc0TC9ma1BGeGtOQWdjTERnZFpDd3NBQUFBQUFRQUEvNGNEeXdNekFFY0FFVUFPQUFFQUFXOEFBQUJtRXhFQ0JSWXJKUlkyUHdFK0FSWVVEd0VPQVNZdkFTNEJOamNCUGdFV0h3RWVBUVlQQVE0QkZ4WVhIZ0UyUHdFK0FTWW5JeTRCQmdjQkRnRVdId0VlQVRZL0FUNEJMZ0lHRHdFR0ZCY0JVd2dYQ2NBTEh4Z003QnBGUmhvQ0doRVJHZ0dpR1VaRkdnSWFFaElhQWdnQ0JoSUpBeFVTQ3drd0lpSXdCRENDZ2pEK1h6QWlJakFETVlDQk1POGVGQmM5VWxBZHZRZ0lrQWdCQjhFS0FSY2lET2thRVJFYUFocEdSUm9Cb1JvU0Vob0NHa1ZHR1FJSUVna2ZKQXdHRVF3S01JS0NNREFpSWpEK1lEQ0NnVEVFTUNJaU1PMGVVbEU3RXhjZnZBa1pDQUFEQUFEL2tBT2JBeXdBSHdBdkFFSUFtN1UzQVFrS0FVZExzQTFRV0VBekF3RUJBQUFCWXdBSkNnZ0tDUWh0QkFJTEF3QUFCUVlBQldFTUFRWUFDZ2tHQ21BQUNBY0hDRlFBQ0FnSFdBQUhDQWRNRzBBeUF3RUJBQUZ2QUFrS0NBb0pDRzBFQWdzREFBQUZCZ0FGWVF3QkJnQUtDUVlLWUFBSUJ3Y0lWQUFJQ0FkWUFBY0lCMHhaUUNFaUlBRUFRRDg2T1RRektpY2dMeUl2R2hjU0VBME1DUWdGQkFBZkFSOE5CUlFyQVNNMU5DWWlCaDBCSVRVMEppSUdIUUVqSWdZZEFSUVdNeUV5TmowQk5DWVhJU0lHRlJFVUZqTWhNalkxRVRRbUFSVVVCaUltUFFFSEJpSW1ORDhCTmpJV0ZRTk9ZQ0l2SXY3eUlUQWlZQ0F0RVF3REZBd1JMUkQ4N0F3UkxoOEN0Q0F0RWY2a0dCNFhIUWdYRVFwTEN5SVlBc3NuR0NJaUdDY25HQ0lpR0NjdEh6RUxFUkVMTVNBcytoRUwvaWdmTGkwZ0FkZ0xFZjVaQXd3WEdBN0JId2dTRmdwTERCY1FBQUFBQUFNQUFQK1FBOElETEFBVUFCMEFQd0JmUUZ3eUFRWUhPaXdDQlFZbUhnSUVCUU5IQUFRRkFRVUVBVzBBQVFGdUNRRUFDZ0VDQXdBQ1lBQURBQWNHQXdkZ0FBWUZCUVpVQUFZR0JWZ0lBUVVHQlV3V0ZRRUFQVHcyTkM4dUtTZ2lJQm9aRlIwV0hRc0tBQlFCRkFzRkZDc0JJZ2NHQndZVUZ4WVhGakkzTmpjMk5DY21KeVlITWhZVUJpSW1ORFlURkFZckFTSW1QUUUwTmpJMlBRRTBKaUltUFFFME5qc0JNaFlkQVJRV01oWVZBZlIrYTJrOFB6ODhhV3Y4YkdnOVB6ODlhR3grR1NFaE1pRWhlUW9KbWdjTUN4QUxDaEFNQ3doMEJ3d0tFQXdETEQ4OWFHejhiR2c5UHo4OWFHejhiR2c5UCtraE1pQWhNQ0wrYkFnSkNRZ25CdzRKQ0UwSURRa0lKd2NPRFFpYUNBa05DQUFBQUFBREFBQUFBQVBvQXBRQUZBQXBBRGtBQ3JjMExDUVlDd0lETFNzQkp5WUdCd01HRkJjVEhnRS9BVDRCTHdFM05pWUZBeTRCRHdFT0FSOEJCd1lXSHdFV05qY1ROalFCSnlZR0J3TUdGaDhCRmpZM0V6WW1BVG90Q2hZSTN3WUc0UWNYQ2l3TEFnbTB0Z1lEQXA3aEJ4Z0pMQXNDQ2JlM0J3SUpMQW9XQ09FRy9uZzZDeGNDandNTkN6b01GZ09PQXd3Q1p5VUhBZ24rNXdjVkNQN3BDUU1JSlFjWkNPSGhDUmZ3QVJjSkJBa2tDQmdKNGVFSUdRY2xCd01JQVJrS0V3RWFEZ01OQy8zZURCUUREZ0lNREFJaURCUUFBQVVBQVArUUE1c0RMQUFQQUM4QVB3QlBBRjhBYlVCcVdGQUNDZ3RJUUFJSUNRSkhCQTBDQWdFQUFRSUFiUUFCREFFQUF3RUFZQUFEQUFzS0F3dGdBQW9BQ1FnS0NXQUFDQUFIQmdnSFlBQUdCUVVHVkFBR0JnVllBQVVHQlV3U0VBSUFYRnBWVWt4S1JVSThPalV5S2ljaUh4b1hFQzhTTHdvSEFBOENEdzRGRkNzQklUSTJQUUUwSmlzQklnWWRBUlFXSlNNaUJoMEJGQVlqSVNJbVBRRTBKaXNCSWdZVkVSUVdNeUV5TmpVUk5DWURGQVlqSVNJbVBRRTBOak1oTWhZVk5SUUdJeUVpSmowQk5EWXpJVElXRlRVVUJpTWhJaVk5QVRRMk15RXlGaFVCVVFGSEN4RXRJT1lnTFJFQ0NUQUxFaTBnL29BZ0xSSUxNQjh1TGg4Q3RDQXRMWk1MQ1A1WkNRc0xDUUduQ0FzTENQNVpDUXNMQ1FHbkNBc0xDUDVaQ1FzTENRR25DQXNDYXhJTFZ5QXRMU0JYQ3hKMEVndFhJQzB0SUZjTEVpMGcvVXNmTGkwZ0FyVWdMZjFmQ1FzTENTWUpDZ29KY3dnTEN3Z25DQXNMQ0hNSUN3c0lKd2dMQ3dnQUFBQUFBZ0FBLzQ4RHdnTXRBQ01BUndDSFM3QUtVRmhBSXdBQUJRQnZBQVVCQlc4REFRRUdBVzhBQmdRR2J3QUVBZ1J2QUFJSEFtOEFCd2RtRzB1d0MxQllRQjhBQUFVQWJ3QUZBUVZ2QXdFQkJBRnZCZ0VFQWdSdkFBSUhBbThBQndkbUcwQWpBQUFGQUc4QUJRRUZid01CQVFZQmJ3QUdCQVp2QUFRQ0JHOEFBZ2NDYndBSEIyWlpXVUFMRnhnNEZCZzRGeFVJQlJ3ckFUWTBMd0VtSWc4QkJoUWZBUll5UHdFMkZoVVJGQlk3QVRJMk5SRTBOaDhCRmpJM0FTY21JZzhCQmlZMUVUUW1Ld0VpQmhVUkZBWXZBU1lpRHdFR0ZCOEJGakkvQVRZbUFoRUlDTnNKRnduZENBZ3BDQmNKUlFrWUVRdzVEQkVZQ1VVSkZ3a0J6eWdKRndsRkNSZ1JERGtNRVJnSlJRa1hDQ2tJQ04wSkZ3bmRDQUVDSGdrWENkMElDTjBKRndrb0NRbEZDUWtOL21nTEVoTUtBWmdOQ1FsRkNRbitxQ1lKQ1VVSkNRMEJuQXNTRXdyK2FBMEpDVVVKQ1NvSkZ3bmRDQWpkQ1JrQUNBQUEvMm9EYXdOU0FBMEFIZ0FuQURnQVFBQk9BRllBYndGM1FCY1hEQUlEQUcxblJqQUVDQWRoS2dJR0RRTkhId0VBUlV1d0QxQllRRlVFRkFJREFBSUFBd0p0QUFJSEFBSUhheElMQWdjSUFBY0lhd0FRQ1FVR0VHVVZBUVVOQmdWakFBOEpDQTlTQUFrUUNBbFVHUTRZREJZRkNBQU5CZ2dOWUJNQkFBQU1TQkVYQ2dNR0JnRlpBQUVCRFFGSkcwdXdFVkJZUUZZRUZBSURBQUlBQXdKdEFBSUhBQUlIYXhJTEFnY0lBQWNJYXdBUUNRVUpFQVZ0RlFFRkRRWUZZd0FQQ1FnUFVnQUpFQWdKVkJrT0dBd1dCUWdBRFFZSURXQVRBUUFBREVnUkZ3b0RCZ1lCV1FBQkFRMEJTUnRBVndRVUFnTUFBZ0FEQW0wQUFnY0FBZ2RyRWdzQ0J3Z0FCd2hyQUJBSkJRa1FCVzBWQVFVTkNRVU5hd0FQQ1FnUFVnQUpFQWdKVkJrT0dBd1dCUWdBRFFZSURXQVRBUUFBREVnUkZ3b0RCZ1lCV1FBQkFRMEJTVmxaUUVWWVYxQlBRa0U2T1Nrb0RnNEJBR3hwWkdOZ1hscFpWMjlZYjFOUlQxWlFWa3RJUVU1Q1RqMDdPVUE2UURVeUxTd29PQ2s0SnlVT0hnNGRFQThKQmdBTkFRMGFCUlFyRXlJR0ZSRVVGak1oTWpZMUVRa0JGU01uSmljbUp5WTNGeFlYRmhjV013TVZGQmNXRnhZN0FRRWpGUlFHSWlZOUFUUTJPd0V5RmhRR0p5TVZNekkyTkNZWEl5SW1QUUUwTmpzQk1oWVVCaWNqRlRNeVBnRW1NeU1WTXpJV0ZBWXJBUlVVQmlJbVBRRTBOanNCTWhVV0JsQWhMeThoQXNzaEwvN1pBU2ZJRHhNUEZRc1BBUUlEQ0FvU0ZSOWRCd29URnlUSS9YNDBCZ29IQ2djNkd5QWdIVEl5RVJVVmtpOEhDZ29ITHlzMk5Td3BLU0VuQVNmY1dsa0VCUVVFV1FjS0J3c0hZQW9CQmdOU0x5SDh1Q0V2THlFQ1d3RTkvc0VQQkFjS0RSSVhIUTRSRFJRTERnRS81QkVURnc0Uy9rRkFCUVlIQktBSENpRXdJRjFJRkNBVXFBc0htUWNLTmxBMnFKSXFQeWs5QmdrR1N3VUdCd1NnQndvTEJBVUFBQVVBQUFBQUF3d0NpZ0FQQUM4QVB3QlBBRjhCQ1VBV0hRMENBQUpJQVFzSldBRUhDMUJBT0RBRUJnY0VSMHV3RGxCWVFEd0VEUUlDQVFBQkFnQnRBQXNKQndrTFpRQUhCZ2tIWXdBQkRBRUFBd0VBWUFBREFBa0xBd2xnQ2dnQ0JnVUZCbFFLQ0FJR0JnVllBQVVHQlV3YlM3QWZVRmhBUFFRTkFnSUJBQUVDQUcwQUN3a0hDUXRsQUFjR0NRY0dhd0FCREFFQUF3RUFZQUFEQUFrTEF3bGdDZ2dDQmdVRkJsUUtDQUlHQmdWWUFBVUdCVXdiUUQ0RURRSUNBUUFCQWdCdEFBc0pCd2tMQjIwQUJ3WUpCd1pyQUFFTUFRQURBUUJnQUFNQUNRc0RDV0FLQ0FJR0JRVUdWQW9JQWdZR0JWZ0FCUVlGVEZsWlFDTVJFQUVBWEZwVVVreEtSRUk4T2pReUtpY2lIeG9YRUM4Ukx3b0hBQThCRHc0RkZDc0JNekkyUFFFMEppc0JJZ1lkQVJRV0pTTWlCaDBCRkFZckFTSW1QUUUwSmlzQklnWVZFUlFXTXlFeU5qVVJOQ1lCRkFZckFTSW1QUUUwTmpzQk1oWVZGeFFHS3dFaUpqMEJORFk3QVRJV0ZSY1VCaXNCSWlZOUFUUTJPd0V5RmhVQmh0d0lEQ01aakJrakRBRlNGQVFHTHlIY0lTOEZCUlFaSXlNWkFiZ1pJeVAreFF3SUZBZ01EQWdVQ0F4a0RBZ1VDQXdNQ0JRSURHUU1DQlFJREF3SUZBZ01BaElNQ0NnWkl5TVpLQWdNUmdVRktDRXZMeUVvQlFVakdmNVNHU01qR1FHdUdTUCtaZ2dNREFoa0NBd01DR1FJREF3SXZnZ01EQWkrQ0F3TUNKWUlEQXdJQUFZQUFBQUFBeFlDZndBVUFDUUFOQUJFQUZRQVpBQ0hRSVFpR2dVREF3UkNPaklxQkFVR1lscFNTZ1FKQ2dOSEFBQUJBRzhBQVFRQmJ3QUVBd1J2QUFJREJnTUNCbTBSQ3hBRENRb0pjQTBCQXdnQkJnVURCbUFQQnc0REJRb0tCVlFQQnc0REJRVUtXQXdCQ2dVS1RGWlZSa1UyTlNZbEZoVmVYRlZrVm1ST1RFVlVSbFErUERWRU5rUXVMQ1UwSmpRZUhCVWtGaVFYRkJJU0JSY3JBU2NtSWc4Qkp5WWlEd0VHRkI4QkZqSS9BVFkwQlNFaUpqMEJORFl6SVRJV0hRRVVCZ2NoSWlZOUFUUTJNeUV5RmgwQkZBWWhJeUltUFFFME5qc0JNaFlkQVJRR0J5TWlKajBCTkRZN0FUSVdIUUVVQmlrQklpWTlBVFEyTXlFeUZoMEJGQVlCMGhVRURBV0VOUVFNQlJVRUJFb0pHQW1aQkFFcy92d0lEQXdJQVFRSURBd0kvc0FJREF3SUFVQUlEQXorUUNnSURBd0lLQWdNREFnb0NBd01DQ2dJREF3QnNQN0FDQXdNQ0FGQUNBd01BbVVWQlFXRU5RVUZGUVFNQlVvSkNaa0VEWXNNQ0NnSURBd0lLQWdNdEF3SUtBZ01EQWdvQ0F3TUNDZ0lEQXdJS0FnTXRBd0lLQWdNREFnb0NBd01DQ2dJREF3SUtBZ01BQUFDQUFBQUFBTWdBcEFBTEFBOEFEcEFOeUlCQWdBQlJ3RUZBZ0FBQWdNQUFtQUdBUU1FQkFOVUJnRURBd1JZQUFRREJFd3VMUUlBTnpRdFBDNDhKaVFmSEFBc0Fpd0hCUlFyQVNNaUpqVTJOelkzTmpjMk56WW1KeVlPQVJVVUZ4NEJGeFlYRkFZckFTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ0xrYmhrakFnY0dDZzRDQ0FFRE5Dd21SQ2tIQkJnRkNBSWpHVzRaSXd3SUFqQUlEQ01ZL2g0SUN5TVpBWkVaSWdzQk5pTVpIaGNRRXhZR0VCTXRTQW9JSFR3bEZoSUpLQkFZSHhrakl4a29DQXdNQ0NnWkk3UUxDQUVaSXlNWkFRZ0xBQUFBQUFFQUFQK1FBOElETGdBdEFGQkFUUllCQXdJWEFRRURCd0VBQVNJREFnUUFJd0VGQkFWSENBRURBVVlBQWdNQ2J3QURBUU52QUFFQUFXOEdBUUFFQUc4QUJBVUVid0FGQldZQkFDZ25JUjhhR0JJUkRBb0FMUUV0QndVVUt5VWlCZ2NsTmpVbkpSNEJNekkrQVRRdUFTSU9BUjBCQlNZaklnNEJGQjRCTXpJM0JSVVVIZ0V5UGdFMExnRURFeVZCRi83bkFnSUJHUmRESlM5UUxpNVFYbEF2L3Q0MVBpOVFMaTVRTDBFd0FTTXVUMkJQTGk1UTZ4MFpqQW9WSDR3YUhpNVFYbEF2TGxBd0M1SW9MbEJlVUM0cWtBMHdVQzR1VUdCUExnQUNBQUQva0FQQ0F5d0FMQUJhQUNwQUp4TUJBZ0FpQVFFQ0FrY0FBQUlBYndBQ0FRSnZBQUVEQVc4QUF3Tm1WRkU3T2lZakxnUUZGU3NCSmljbU5UUTJOejRCTlRRbUp5WWpJZ2NHQnhRWEhnRVZGQVlIQmhRWEZoY1dKeFk3QVRJMlBRRTBKeVlGSmljbU5UUTNQZ0UxTkNZbkppSUhEZ0VWRkJZWEZoVVVCd1lIQmdjR0J3WWRBUlFXTXlFeU5qMEJOQ2NtQXlnbERnc1VEeGdhSlNJa0wwRXFKd1lLTno0cUp3TURDUlU3R1FvRjZTRXVMeUwrdFMwUkRTZ2RIeXNwSzNNcktDd2VIU2tORWk0N0lTNFlIQzBoQWhVaE1EWW9BYVVPRWcwVER4NE1GRG9pSzBnVkZpZ21Pd29ISTNWSk4xOGpBd2tEQmdvZERBUXZIZ3d1SXhydUV4TVBGaUVrR1VRb00xVVlHaG9ZVlRNb1JCa2pJaFlQRlJFWUVoa2JJQ1laSUMwdUh4czJLaDhBQUFBQUFRQUFBQUFDMndLbEFDMEFKMEFrQUFBRkFRRUNBQUZnQkFFQ0F3TUNWQVFCQWdJRFdBQURBZ05NTlNVMU5TVXpCZ1VhS3dFMU5DWWpJU0lHSFFFVUZqTXlGZ2NERGdFckFTSUdIUUVVRmpNaE1qWTlBVFFtSXlJbU54TStBVHNCTWpZQzJ4Y1Evdk1RRmhZUUdSOEdSUVFkRVM0UUZ4Y1FBUTBRRmhZUUdSOEdSUVFkRVNFV0hnSm1HUkFXRmhBbkVCWW5GLzZ1RXhnV0VDY1FGaFlRSnhBV0p4Y0JVaE1ZSGdBQUFBVUFBUCtRQTRnRExBQVpBQ01BTXdCREFGTUFYa0JiVEVROE5BUUlDUUZIQUFFQUJBQUJCR0FGQWd3REFBQURCZ0FEWUEwQkJnc0JDUWdHQ1dBS0FRZ0hCd2hVQ2dFSUNBZFlBQWNJQjB3bUpBRUFVVTVKUmtFK09UWXVLeVF6SmpNakloNGNGQkVNQ2djRUFCa0JHUTRGRkNzQkl6VTBKaXNCSWdZZEFTTWlCaDBCRkJZeklUSTJQUUUwSmlVME5qc0JNaFlkQVNNRklTSUdGUkVVRmpNaE1qWTFFVFFtQVJRR0t3RWlKalVSTkRZN0FUSVdGUk1VQmlzQklpWTFFVFEyT3dFeUZoVURhL0F0SUhRZkx2QUxFaElMQXU0TEVoTCtSQXNKVFFnTGRBRmsvYXdMRWpnb0FjNG9PQkgra0FvSkpna0xDd2ttQ1FyQkN3a21DUW9LQ1NZSkN3S1NUU0F0TFNCTkVnczZDeElTQ3pvTEVqa0pDd3NKT2NFUkMvNDhLVGc0S1FIRUN4SCtXUWdMQ3dnQkRnZ0xDd2orOGdnTEN3Z0JEZ2dMQ3dnQUFBRUFBUC92QThJQ3pRQWpBQzVBS3dBQkFBRnZBQUlEQW5BRUFRQURBd0JVQkFFQUFBTllBQU1BQTB3Q0FCNGJFeElMQ2dBakFpTUZCUlFyQVNFaUpqOEJOalF2QVNZaUJ3RUdGQmNCRmpJL0FUWTBMd0VtTmpNaE1qWTlBVFFtQTZmOWdRMEpDYmdKQ1NvSUdBaityd2dJQVZFSUdBZ29DUW00Q1FrTkFuOExFaEFCbUJnSXVRa1hDQ3NJQ1A2dENCZ0kvcThJQ0NrSUdBaTVDaGdRQ3pvTUV3QUFBd0FBLzVBRHdnTXNBQlFBSVFBdUFEcEFOeVlsSHg0RUF3SUJSd1FCQUFBQ0F3QUNZQVVCQXdFQkExUUZBUU1EQVZnQUFRTUJUQ01pQVFBaUxpTXVIQm9MQ2dBVUFSUUdCUlFyQVNJSEJnY0dGQmNXRnhZeU56WTNOalFuSmljbUFUUTNOamMyTXpJV0Z3RXVBUUVpSmljQkhnRVZGQWNHQndZQjlIMXJhVDAvUHoxcGEvcHNhRDQvUHo1b2JQNHBMeTlPVVYwNFpTditIUjRoQVZvNFpTc0I0eDRoTHk5T1VRTXNQejVvYlBwc2FENC9QejVvYlBwc2FENC8vakpkVVU0dkx5RWUvaDByWmY3ZUlSNEI0eXRsT0YxUlRpOHZBQUFBQUFJQUFBQUFBOElDeXdBTkFDUUFLa0FuQUFFREFXOEFBd0FEYndBQUFnQnZBQUlFQkFKVUFBSUNCRmdBQkFJRVREY1RHVFVSQlFVWkt3RVdNamNCTmljbUl3VWlEZ0VYQlRRbUJ3RUdJaWNCSmlJR0ZTWWRBUlFXTXlFeU5qVUIzd2dZQ0FHekJ3VUdGZnlrQ3hJRUNBT1dHd3orckNOZkpQNnVCeE1OQVMwZkF3SWdMUUVQQ0FnQmxBME5EZ0VORXdtY0R3MEsvc1lnSGdFOEJnMExCTnpjSUMwdUh3QUFBQU1BQVAveEF4VUN1QUFZQUNBQUtBQkJRRDRWQVFNRUFVY0FBQUFGQkFBRllBY0JCQUFEQWdRRFlBWUJBZ0VCQWxRR0FRSUNBVmdBQVFJQlRDSWhHaGtsSXlFb0lpZ2RHeGtnR2lBMU13Z0ZGaXNCTkM0Qkl5RWlCaFVSRkJZeklUSStBVFUwSnlZbk5qYzJBeU0xTXpJV0ZBWURJelV6TWhZVUJnTVZOMTAyL3NJUUZoWVFBVDQyWFRjUER4b2FEdy9LM3Q0Yktpb2IzdDRiS2lvQjVUaGlPUllRL1lVUUZqbGlPQ2ttSkIwZUpDYit1NW91UGk0Qklab3ZQQzhBQUFQLy93QUFBKzRDcFFBV0FDTUFNQUJDUUQ4SEFRUURCUU1FQlcwQUJRSURCUUpyQUFBQUF3UUFBMkFHQVFJQkFRSlVCZ0VDQWdGWUFBRUNBVXdsSkJnWEt5b2tNQ1V3SGgwWEl4Z2pHeFFJQlJZckFTNEJKeVlpQnc0QkJ3WVVGeDRCRnhZeU56NEJOellGSWk0Qk5ENEJNaDRCRkE0QkF5SU9BUlFlQVRJK0FUUXVBUVBrTFpkZll0WmlYNWN0QkFRdGwxOWkxbUpmbHkwSi9nYzZZRGs1WUhSaE9UbGhPaVUrSkNRK1NqNGtKRDRCYjF5TUppZ29Kb3hjQ0JNSFhJd21LQ2dtakZ3UjB6bGdkR0U1T1dGMFlEa0JXaVErU2o0a0pENUtQaVFBQWdBQS81QUR3d010QUNjQVZnQlpRRllBQ1FNSmJ3b0JBQUlJQWdBSWJRQUlCZ0lJQm1zQUJnRUNCZ0ZyQ3dVQ0F3Y0JBZ0FEQW1BQUFRUUVBVlFBQVFFRVdBQUVBUVJNS1NnQ0FFMU1SVVE4T1RNd0tGWXBWU0lmR2hjU0R3b0hBQ2NDSnd3RkZDc0JJeUlHSFFFVUJpTWhJaVkxRVRRMk93RXlOajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtQVNJSEJnY0dCd1lXT3dFeU5qYytBVGMyT3dFeUZnOEJCaFFmQVJZeU53RTJOQ2NCSmlJUEFRNEJId0VXQmlNRHBUb0xFaEVNL1lZTUVSRU1UUXNTRWd1Ukh5MHRId01DSUMwUy90NWVWMVEyT0FnQ0VnMDZDeEFDQmxBK1FVa2ZEUWtKYVFrSktBa1hDQUVHQ0FqKy9BZ1lDQ2dKQWdsckNRa05BUkVSRE5NTUVSRU1BWlFMRVJJTE9nc1NMU0Q5NVNBdExoOEJGd3dSQVRRME1sVlhZd3dURHdwSGVTTWtHQWhzQ0JnSUtRZ0lBUVFJR0FnQkJBZ0lLQWtYQ1d3SUdBQUFBQU1BQUFBQUF5QUNpZ0FVQUMwQVBBQTlRRG9GQVFNQ0JBSURCRzBHQVFBSEFRSURBQUpnQUFRQkFRUlVBQVFFQVZnQUFRUUJUQllWQVFBb0ppSWhIQnNWTFJZdEN3b0FGQUVVQ0FVVUt3RWlCd1lIQmhRWEZoY1dNamMyTnpZMEp5WW5KZ2N5SGdFVkZBY2pJZ1lIRGdFaUppY3VBU3NCSmpVMFBnRVRGajRCTnpZM05pWUhCZ2NPQVJZQjlGRkdSQ2dwS1NoRVJxSkdSQ2dwS1NoRVJsRTdaanNDV1FjTEFnWStVajRHQVFzSVdRSTdaaVFTS0JNTkRRY0lDQjhkSFNBVEN3S0tLU2hFUnFKR1JDZ3BLU2hFUnFKR1JDZ3BVRHRtT3dvVUNRZ25OalluQndvVUNqdG1PLzdhQ2cwak1Dd29LZ1FlSFNNbUl5Y0FBQVVBQUFBQUF5QUNpZ0FrQURJQVFBQktBRlFBWjBCa0N3RUZBVElCQUFVYUFRUUFTQUVKQ0FSSEN3MENDQVFKQkFnSmJRb0JDUWx1QWdFQkJ3RUZBQUVGWUFZRERBTUFCQVFBVkFZRERBTUFBQVJZQUFRQUJFeENRUUVBVWxGUVRrVkRRVXBDU2owOE56WXVMQjRjRnhVUkR3Y0ZBQ1FCSkE0RkZDc0JJelltSnlZaklnWUhCZ2NtSnk0Qkl5SUhEZ0VYSXlJR0hRRVVGak1oTWpZOUFUUW1JU0luTGdJM05qTXlGaGNXRlRjR0J3WWpOVFEzUGdFeUZ4WUdGeU1STXpJMlBRRTBKZ1VWRkJZN0FSRWpJZ1lDNUZjVEJCY2JKUk1tRGdVRkJBWU9KUlFrR3hjRUUxZ1pJd3dJQWpBSURDUCsyUkVTRlJjQ0NnZ01FQmNHQm9BTUZCTVJCZ1laR2dnS0FvUFNyQmdpRFA0RUl4bXEwZ2dNQWZRZVJSZ2JFUThGQ0FnRkVCQWJHRVVlSXhrb0NBd01DQ2daSXdZSEdTRUtDQm9XRXhFVkRRY0dCaEVURmhvSUN5RGIvdklpR01BSURCUytHU01CRGd3QUFBTUFBQUFBQXlBQ2lnQVVBQ0VBTlFCTFFFZ2pJZ0lGQkFGSEFBUURCUU1FQlcwQUJRSURCUUpyQmdFQUFBTUVBQU5nQndFQ0FRRUNWQWNCQWdJQldBQUJBZ0ZNRmhVQkFEQXZKeVVjR3hVaEZpRUxDZ0FVQVJRSUJSUXJBU0lIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtQXlJdUFUUStBVEllQVJRT0FTYzFOQ1lyQVNJR0hRRVVId0VXTWo4Qk5qUW5BZlJSUmtRb0tTa29SRWFpUmtRb0tTa29SRVpSUVc1QlFXNkNia0ZCYmlNTUNCUUlEQWxnQmhBR0RnWUdBb29wS0VSR29rWkVLQ2twS0VSR29rWkVLQ245NUVGdWdtNUJRVzZDYmtIOGdBZ01EQWlNRFFoZ0JnWU9CaEFHQUFVQUFBQUFBdTRDaWdBTkFDVUFTUUJaQUdrQVlFQmRFd0VBQWtROU5nTUJBRUE1SXdNSEFXSmFBZ1lIVWtvQ0JBVUZSd0FDQUFKdkFBQUJBRzhJQVFFQUJ3WUJCMkFBQmdBRkJBWUZZQUFFQXdNRVZBQUVCQU5ZQUFNRUEwd1FEbVprWGx4V1ZFNU1JQjBZRlE0bEVDVW9DUVVWS3dFbkppSUdIUUVVRmpzQk1qWTBCeU1pSmowQk5DWXJBU0lHRlJFVUZqTWhNalkxRVRRbUpUOEJNalUzTmpJZkFSWXpGeDRCRHdFR0ZSY1dCaThCSmc4QkJpWS9BVFF2QVNZMkFSUUdJeUVpSmowQk5EWXpJVElXRlRjVUJpTWhJaVk5QVRRMk15RXlGaFVDNm9RRURBZ1lFR29HQ0JTTUdTTU1DTWdaSXlNWkFYd1pJd3orWGpFQ0FSWUNCUUVXQWdFeEFnSUNKQUVJQVFVQ0xBSUNMQUlGQVFnQkpBRURBVGdNQ1A3OENBd01DQUVFQ0F3b0RBaisxQWdNREFnQkxBZ01BZ0tFQkFnR2FoQVlDQXhRSXhtTUNBd2pHZjRnR1NNakdRRXNDQXhlQndFQkxRSUNMUUlIQVFVQkl3RURNUUlEQVJjQ0FoY0JBd0l4QXdFakFnVCtzd2dNREFnVUNBd01DR1FJREF3SUZBZ01EQWdBQUFnQUFQK1FBOElETEFBUEFCOEFMd0EvQUU4QVh3QnZBSDhBY2tCdkVnRU9CUTV2QmdFRkR3VnZBQThFRDI4SEFRUUFCRzhJQVFJQkNnRUNDbTBRQVFvREFRb0Rhd2tCQXdzQkF3dHJBQXNMYmhFTUFnQUJBUUJVRVF3Q0FBQUJXQTBCQVFBQlRISndZbUJTVUhwM2NIOXlmMnBuWUc5aWIxcFhVRjlTWDBwSkZ4Y1hGeGNYRXpVekV3VWRLd0UxTkNZckFTSUdIUUVVRmpzQk1qWVhKaUlQQVFZVUh3RVdNajhCTmpRbkFSWXlQd0UyTkM4QkppSVBBUVlVRnlVbUlnOEJCaFFmQVJZeVB3RTJOQ2NCSmlJUEFRWVVId0VXTWo4Qk5qUW5KU01pQmgwQkZCWTdBVEkyUFFFMEppVWpJZ1lkQVJRV093RXlOajBCTkNZQkl5SUdIUUVVRmpzQk1qWTlBVFFtQVRRU0M5UUxFUkVMMUFzU0pBZ1lDSllKQ1NnSkZ3bVdDQWdCRHdnWUNKWUpDU2dKRndtV0NBaitoQWtYQ1NnSkNaWUlHQWdwQ0FnQk9RZ1lDQ3NJQ0pZSkZ3a29DUW4rd3pvTEVoSUxPZ3NTRWdHSjFBc1NFZ3ZVQ3hJUy9tRTZDeElTQ3pvTEVoSUJRVG9MRWhJTE9nc1NFa3NJQ0pZSkZ3a29DUW1XQ0JnSUFROElDSllKRndrb0NRbVVDQmdJdkFrSktBa1hDWllJQ0NrSUdBait5UWdJS1FnWUNKWUpDU2dKRndsSkVndlVDeElTQzlRTEV2b1NDem9MRWhJTE9nc1NBWlFTQzlRTEVoSUwxQXNTQUFBQUFBTUFBUC9kQThJQzN3QU1BQ3NBT0FCV1FGTUVDUUlDQXdjREFnZHRDQUVBQndFSEFBRnRBQUVHQndFR2F3QURBQWNBQXdkZ0NnRUdCUVVHVkFvQkJnWUZXQUFGQmdWTUxTd1BEUUVBTXpJc09DMDRKaU1lR3hZVERTc1BLd2NHQUF3QkRBc0ZGQ3NCSWc0QkZCNEJNajRCTkM0QkpTTWlMd0V1QVNzQklnWVBBUTRCS3dFaUJoVVJGQll6SVRJMk5SRTBKZ0VpTGdFMFBnRXlIZ0VVRGdFQjlDcEhLU3BHVkVjcEtVY0JWMlFvR2l3S0xCdThHaTBNTEFvakZHTWZMUzBmQXdJZ0xTMytYejVyUGo1cmZHcytQbXNCMFNsSFVrY3FLVWRVUmlsMElrUVlIQndZUkJBU0xTRCtNaUF0TGg4QnppQXQvZ3crYTN4cVBqNXFmR3MrQUFBQUNBQUEvNUFEbXdNc0FBOEFId0F2QUQ4QVR3QmZBRzhBandES1FBNW9TQ2dEQkFWUU1CQURBZ01DUjB1d0RWQllRRDBSQVE4T0RnOWpFaEFWQXc0QUV3QU9FMkVVQVFBTkNRSUZCQUFGWUF3SUFnUUxCd0lEQWdRRFlBb0dBZ0lCQVFKVUNnWUNBZ0lCV0FBQkFnRk1HMEE4RVFFUERnOXZFaEFWQXc0QUV3QU9FMkVVQVFBTkNRSUZCQUFGWUF3SUFnUUxCd0lEQWdRRFlBb0dBZ0lCQVFKVUNnWUNBZ0lCV0FBQkFnRk1XVUF6Y1hBQ0FJcUhnb0I5ZkhsNGRYUndqM0dQYkdwbFlseGFWVkpNU2tWQ1BEbzFNaTBxSkNJZEdoUVNDZ2NBRHdJUEZnVVVLd0VoSWdZVkVSUVdNeUV5TmpVUk5DWUJGQVlyQVNJbVBRRTBOanNCTWhZVk5SUUdLd0VpSmowQk5EWTdBVElXRlJNVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZFeFFHS3dFaUpqMEJORFk3QVRJV0ZUVVVCaXNCSWlZOUFUUTJPd0V5RmhVVEl6VTBKaUlHSFFFaE5UUW1JZ1lkQVNNaUJoMEJGQll6SVRJMlBRRTBKZ04rL093TUVTNGZBclFnTFJIOTR3b0pUUWdMQ3doTkNRb0tDVTBJQ3dzSVRRa0t3UXNJVFFrTEN3bE5DQXNMQ0UwSkN3c0pUUWdMd0FzSVRRa0tDZ2xOQ0FzTENFMEpDZ29KVFFnTFlHQWlMeUwrOGlFd0ltQWdMUkVNQXhRTUVTMEIwUkVML2lnZkxpMGdBZGdMRWY1WkNBc0xDRTBKQ3dzSmRBa0xDd2xOQ0FzTENQN3lDQXNMQ0UwSkN3c0pkQWtMQ3dsTkNBc0xDUDd5Q0FzTENFMEpDd3NKZEFrTEN3bE5DQXNMQ0FHVEp4Z2lJaGduSnhnaUloZ25MUjh4Q3hFUkN6RWdMQUFEQUFEL3R3UENBd1VBRHdBZkFDOEFRRUE5QndJR0F3QUZBUVVBQVcwREFRRUJiZ2dCQkFVRkJGUUlBUVFFQlZnQUJRUUZUQ0lnRWhBQ0FDb25JQzhpTHhvWEVCOFNId29IQUE4Q0R3a0ZGQ3NUSXlJR0ZSRVVGanNCTWpZMUVUUW1LUUVpQmhVUkZCWXpJVEkyTlJFMEppY2hJZ1lkQVJRV015RXlOajBCTkNiZG1nc1JMQ0JxREJFUkFyejl2d3dSRVF3Q0VTQXRFanY4L2lBc0VRc0RZZ3NTTFFJTEVReitGaUF0RVF3Q0dnd1JFUXo5NWd3UkxTQUI2Z3dSK2kwZ1F3c1NFZ3RESUMwQUFBQUVBQUQveWdPYkF2SUFEd0FmQUM4QVB3QTJRRE1BQUFBQkFnQUJZQUFDQUFNR0FnTmdBQVlBQndRR0IyQUFCQVVGQkZRQUJBUUZXQUFGQkFWTU5UVTFOVFUxTlRJSUJSd3JBVFFtSXlFaUJoMEJGQll6SVRJMk5SVTBKaU1oSWdZZEFSUVdNeUV5TmpVUk5DWWpJU0lHSFFFVUZqTWhNalkxRVRRbUl5RWlCaDBCRkJZeklUSTJOUU9iRVF6ODdBd1JFUXdERkF3UkVRejg3QXdSRVF3REZBd1JFUXo4N0F3UkVRd0RGQXdSRVF6ODdBd1JFUXdERkF3UkF0VUxFaElMT2dzUkVRdXREQkVSRERrTUVSRU0vbXdMRWhJTE9nc1NFZ3NCSVFzUkVRczZEQkVSREFBQUJBQUEvOG9EbXdMeUFBOEFId0F2QUQ4QU5rQXpBQUFBQVFJQUFXQUFBZ0FEQmdJRFlBQUdBQWNFQmdkZ0FBUUZCUVJVQUFRRUJWZ0FCUVFGVERVMU5UVTFOVFV5Q0FVY0t3RTBKaU1oSWdZZEFSUVdNeUV5TmpVSE5DWWpJU0lHSFFFVUZqTWhNalkxQXpRbUl5RWlCaDBCRkJZeklUSTJOUk0wSmlNaElnWWRBUlFXTXlFeU5qVURteEVNL093TUVSRU1BeFFNRVhNU0MvM1NDeElTQ3dJdUN4SW5FUXorSUF3UkVRd0I0QXdSbWhFTS9Pd01FUkVNQXhRTUVRTFZDeElTQ3pvTEVSRUxyUXdSRVF3NURCRVJEUDVzQ3hJU0N6b0xFaElMQVNFTEVSRUxPZ3dSRVF3QUFBQURBQUQvandQQ0F5d0FEd0FmQURFQUkwQWdBQU1CQTI4QUFRSUJid0FDQkFKdkFBUUFCRzhBQUFCbUhoY2FGeElGQlJrck54Y1dNamNCTmpRdkFTWWlCd0VHRkFFR0ZCOEJGakkvQVRZMEx3RW1JZ2NCQmhZL0FUWS9BVFkwTHdFbUlnOEJCZ2UzcXdZUEJnR3JCUVdwQmhBRi9sTUdBZ1VGQmFvRkVBVXhGeGRiRno4WC9VVUNGUTdTQ2djRUJBYXRCUkFFQkFZRTBLc0dCZ0dzQmhBRnFnVUYvbE1HRGdJUEJSQUZxZ1VGTUJZOUYxc1hGL3llRGhZRE1nTUhCQVFRQmEwR0JBUUdDd0FBQUFBRkFBRC9rQVBDQXl3QUR3QVRBQ01BTXdCREFHaEFaVUU1TVNrRUJnY0JSd2tCQndRR0JBY0diUTBJREFNR0FnUUdBbXNBQVFBREJRRURYZ0FGQ3dFRUJ3VUVZQUFDQUFBQ1VnQUNBZ0JZQ2dFQUFnQk1OVFFsSkJVVUFnQStPelJETlVNdUt5UXpKVE1lR3hRakZTTVRFaEVRQ2djQUR3SVBEZ1VVS3dVaElpWTFFVFEyTXlFeUZoVVJGQVlsSVJFaEFTRWlKajBCTkRZeklUSVdIUUVVQmdFaklpWTlBVFEyT3dFeUZoMEJGQVloSXlJbVBRRTBOanNCTWhZZEFSUUdBNXY4c2hBV0ZoQURUaEFYRi96SUF3TDgvZ0o3L2d3SUN3c0lBZlFKQ2dyK2RuTUlDd3NJY3drTEN3RjQ1d2dMQ3dqbkNRb0tjQmNRQTA0UUZ4Y1EvTElRRjAwREF2N3lDd2x6Q1FvS0NYTUpDLzZBQ3dqbkNBc0xDT2NJQ3dzSTV3Z0xDd2puQ0FzQUFBQUNBQUQva0FPdUF5d0FEd0E4QUJGQURnQUFBUUJ2QUFFQlpqVXlBZ1VXS3hNMEppc0JJZ1lWRVJRV093RXlOalVCQmdjR0p5WW5MZ0VuSmljbUJ3WUhEZ0VWRVJRV056WTNOaGNXRnhZWEZoY1dGeFkzTmpjK0FUVVJOQ2F0RVF3NURCRVJERGtNRVFMbE55NHBKUjRoRTB3V0pDUXJNVGhDQ0FzUkNFSTNNQ3NrSkJNcEpSVWhJQ1VyTHpvSENCTUREd3NTRWd2OG5nc1NFZ3NERVIwTENRVUVEd291Q2hFSENRVUdGd0lRQ2Y1QUNnc0VGZ1FFQ1FnUkNoa1dDZzREQkF3TklBUU9Cd0cvQ2dzQUFBQUFBd0FBLzQ4RGlBTXRBQmNBTHdBL0FDNUFLd0FFQlFSdkFBVURCVzhBQXdBQ0FRTUNZQUFCQUFBQlZBQUJBUUJZQUFBQkFFd1hIeHNiR3hJR0JSb3JKUVVHSWljbEpqUS9BVFl5SHdFV01qOEJOaklmQVJZVUp3VUdJaWNsSmpRL0FUWXlId0VXTWo4Qk5qSWZBUllVTFFFbU5EY2xOaklYQlJZVUJ3VUdJZ041L3BZT0l3NyttQXNMVlFRTEJOc2dTeC9jQkFzRVZRc0wvcFlPSXc3K21Bc0xWUVFMQk5zZ1NpRGNCQXNFVlF2K1QvNlhEQXdCYVE4akRnRnBEQXorbHc0alpzNElDTTRHRndZd0F3TjlFaEo5QXdNd0JoZmh6Z2tKemdVWUJUQURBMzBSRVgwREF6QUZHQlRPQlJjR3pnZ0l6Z1lYQmM0SEFBQUFCQUFBQUFBRElBSXdBQThBTUFCQUFGQUEya0FRU1VFQ0JnYzVNUUlFQlM0QkFnUURSMHV3R1ZCWVFERUFCd01HQXdkbEFBUUZBZ0lFWlFnQkFBQURCd0FEWUFBR0FBVUVCZ1ZnQ1FFQ0FRRUNWQWtCQWdJQldRQUJBZ0ZORzB1d0dsQllRRElBQndNR0F3ZGxBQVFGQWdVRUFtMElBUUFBQXdjQUEyQUFCZ0FGQkFZRllBa0JBZ0VCQWxRSkFRSUNBVmtBQVFJQlRSdEFNd0FIQXdZREJ3WnRBQVFGQWdVRUFtMElBUUFBQXdjQUEyQUFCZ0FGQkFZRllBa0JBZ0VCQWxRSkFRSUNBVmtBQVFJQlRWbFpRQnNTRUFJQVRVdEZRejA3TlRNaUlSQXdFakFLQndBUEFnOEtCUlFyQVNFaUJoVVJGQll6SVRJMk5SRTBKZ0VqSWlZMU5qYzJOelkzTmpVMEp5WTBOaklXRlJRSEJoVVVGeFlYRmhjV0JqY1VCaXNCSWlZOUFUUTJPd0V5RmhVMUZBWXJBU0ltUFFFME5qc0JNaFlWQXVUK0lCa2pJeGtCNEJrakkvN3ByQTRVQVJRT0hoQUdCQTRWSWpvaUZRNEVCaEJBQVFJVTNBd0lXZ2dNREFoYUNBd01DSllJREF3SWxnZ01BakFqR2Y3ZUdTTWpHUUVpR1NQK3JCa1FGQkVNRGdjSUJRa09EQk05S0NnZUlCSU1EZ2tGQ0FZYkpROGFSZ2dNREFnZUNBd01DRkFJREF3SUhnZ01EQWdBQXdBQUFBQURHd0oyQUNVQUxnQTNBRXBBUndBQ0FBTUFBZ05nQUFFS0FRQUZBUUJnQUFVQUJBY0ZCR0FKQVFjR0JnZFVDUUVIQndaWUNBRUdCd1pNQVFBMk5USXhMU3dwS0NBZEdoY1VFZzhNQ1FjQUpRRWxDd1VVS3dFaE1qWS9BVFltSXlFbkxnRXJBU0lPQVJZN0FSTWVBVE1oTWo0QkppTWhJaVluTlNZMkJ4UVdNalkwSmlJR0Z4UVdNalkwSmlJR0FhZ0JKd2NMQVRZRERBcitPQWdERUFvd0RCTUNFZzBjWGdNUUNnRmNEQk1DRWczK3pnb1FBZ1VTSGgwcUhSMHFIZkFkS2gwZEtoMEJYZ2dIdmdvUEhBb01FQmtUL3NJS0RCQVpFd3dKQVE0WTVoVWRIU29kSFJVVkhSMHFIUjBBQUFJQUFBQUFBeUlDVEFBTEFDQUFKRUFoQUFFQUFXOEFBQUlBYndBQ0F3TUNWQUFDQWdOWUFBTUNBMHc0R0RRUkJBVVlLd0VXTWpjQk5pWWpCU0lHRndVMEpnOEJCaUl2QVNZR0ZSRVVGak1oTWpZMUlnSG5CZzhHQVJzRkJ3NzkwQXdNQ0FKVEVnZmNGajhYM1FjU0l4a0I0QmtqQVFFc0JRVUJCZ2tSQVJFSmJ3b0lCOHdWRmN3SENBcisvQmtqSXhrQUFBQUNBQUQva0FQQ0F5d0FGQUFzQURSQU1RWUJBQVVBYndBRkF3VnZBQU1FQTI4QUJBSUVid0FDQVFKdkFBRUJaZ0VBS0Nja0l5QWZHQmNMQ2dBVUFSUUhCUlFyQVNJSEJnY0dGQmNXRnhZeU56WTNOalFuSmljbUV3RUdJaThCSmpRL0FUWXlId0VXTWo4Qk5qSWZBUllVQWZSK2EyazhQejg4YVd2OGJHZzlQejg5YUd5RS90b0pHUW1oQ1FrcUNSa0lWUVlSQnRjSkdRZ3JDZ01zUHoxb2JQeHNhRDAvUHoxb2JQeHNhRDAvL3FYKzFnZ0lwQWdhQ0NvSkNWWUdCdDhKQ1NvSkdRQUFBQUVBQVArMUE1MERCUUJIQUVOQVFFVUJBd0FCUndZQkFBTUFid0FEQkFOdkFBSUZBUVVDQVcwQUFRRnVBQVFGQlFSVUFBUUVCVmdBQlFRRlRBSUFRajg2TnpFdklTQVpGd0JIQWtjSEJSUXJBU01pQmgwQkZBWW5KaWN1QVFjR0J3NEJCd1lXRng0Qk16STJOejRCTHdFdUFRY09BU2NtSnk0Q056WTNQZ0V6TWhZWEZoY1dCaXNCSWdZZEFSUVdNeUV5TmpVUkxnRURmamtNRVEwS0NRdEl3V2hLUEZoaEFnSTdOenFXVkVtSE53b0JDU2dJRmdrMGgwWWtKVFpHRmc4SkZpaUVURHBxS0F3TEJBOE9od3NTRUFzQllBb1BBaEVEQlJFTWhnNElDQXdIU1RrVUR5azVzbVZPbFRnOVFESXVDUmtKS0FnQkJ5d2ZFUWtXSVdaN1B5UWxSa3dzS0FzUUN3d1NDendMRUE4S0FWNE1FUUFFQUFEL3lnT2JBdklBRHdBZkFDOEFQd0EyUURNQUFBQUJBZ0FCWUFBQ0FBTUdBZ05nQUFZQUJ3UUdCMkFBQkFVRkJGUUFCQVFGV0FBRkJBVk1OVFUxTlRVMU5USUlCUndyQVRRbUl5RWlCaDBCRkJZeklUSTJOUWMwSmlNaElnWWRBUlFXTXlFeU5qVVJOQ1lqSVNJR0hRRVVGak1oTWpZMUV6UW1JeUVpQmgwQkZCWXpJVEkyTlFPYkVRejg3QXdSRVF3REZBd1JtaEVNL1lZTUVSRU1Bbm9NRVJFTS9ZWU1FUkVNQW5vTUVab1JEUHpzREJFUkRBTVVEQkVDMVFzU0VnczZDeEVSQzYwTUVSRU1PUXdSRVF6K2JBc1NFZ3M2Q3hJU0N3RWhDeEVSQ3pvTUVSRU1BQUFBQUFFQUFBQUFBMklDUlFBTUFCaEFGUUlCQUFFQWJ3QUJBV1lDQUFnSEFBd0NEQU1GRkNzVElUSWVBUWNCQmlJbkFTWTJvQUtvQ2c0QkIvNnpDQjhKL3E4S0RnSkZEaFFJL21nTURBR1lEUjBBQWdBQS80Z0Rxd010QUI0QUxRQUl0UzBvRkFnQ0xTc0JCUVl1QVRVUk5DWUhEZ0VIQmhjZUFSY1dGeFkzUGdFM05qVTBKeTRCQlNVK0FTY21KeVluSmdZVkVSUVdBMnYrZGcwYkVoY05ZSlVrSmdzS1oxRlNZVjVZVklNa0pnWUNHLzZkQVhzUkNRdENZR055RkNBVkFaRFpCd1lWRGdIWURoSUVHb1pkWUdoZ3BETTFDZ29kSEhkUlUxd2pJZzRNWDhvSUp4QmJQRDRTQkJzVS9rNE5EQUFBQUFBRUFBRC9zd1BDQXdVQUhRQW1BQzhBT0FCQlFENElBUUFEQUc4SEJRSURBZ052Q3dZS0JBa0ZBZ0VDYndBQkFXWXhNQ2duSHg0QkFEVTBNRGd4T0N3ckp5OG9MeU1pSGlZZkpoUVNBQjBCSFF3RkZDc0JJZ2NHQndZVkZCY1dEd0VHRmo4Qk5oY1dNelkzTmpjMkppY21KeVlCSWlZME5qSVdGQVl6SWlZME5qSVdGQVl6SWlZME5qSVdGQVlCOUg1cmFEMCtPQW9HUEFRUkRLWU5GRytCZkd0b1BEOEJQejVvYS82Y0h5NHVQeTB0eHg4dUxqOHRMY2NmTGk0L0xTMERCVGs0WDJKelptWVBFcU1NRUFNL0JnbzlBVG80WDJMb1kyQTNPdjRNTGo4dExVQXRMajh0TFQ4dUxqOHRMVDh1QUFBQUF3QUEvNUFEd2dNc0FCUUFLUUE3QUVKQVB3WUJBQUFEQkFBRFlBZ0JCQUFGQWdRRllBY0JBZ0VCQWxRSEFRSUNBVmdBQVFJQlRDd3FGaFVCQURVeUtqc3NPeUFmRlNrV0tRc0tBQlFCRkFrRkZDc0JJZ2NHQndZVUZ4WVhGakkzTmpjMk5DY21KeVlESWljbUp5WTBOelkzTmpJWEZoY1dGQWNHQndZVElTSUdCd1lYSGdFeklUSTJOelluTGdFQjlIMXJhVDAvUHoxcGEvcHNhRDQvUHo1b2JIMWRVVTR2THk4dlRsRzZVVTR2THk4dlRsRnIvbkFMRUFJREF3RVJDd0dRQ3hBQ0F3TUNFQU1zUHo1b2JQcHNhRDQvUHo1b2JQcHNhRDQvL05ndkwwNVJ1bEZPTHk4dkwwNVJ1bEZPTHk4QmxBOEtIeU1MRGc4S0lDSUtEd0FBQUFBQkFBRC84QUxiQXRBQURBQUt0d0FBQUdZVEFRVVZLd0VSRkE0Qkp3RW1ORGNCTmhZQzJ3NFVDUDVvREF3Qm1BMGRBckw5V0FvT0FRY0JUUWtmQ0FGUkNnNEFBQU1BQVArT0E4SUROQUEzQUc0QWtnQThRRG1LZ1hnREJRQUJSd0FDQXdKdkFBTUVBMjhBQkFFRWJ3QUJBQUZ2QUFBRkFHOEFCUVlGYndBR0JtYU5qSWlIZTNwMmRVaEdJeEFIQlJZckpTSW5KaWNtQmc4QkRnRW1KeTRCTmo4Qk5qYzJGaGNXRnhZWEhnRS9BVFl2QVNZbkppY3VBUVlIQmc4QkRnRVdGeDRCTmo4Qk5pWUJQZ0VtSnk0QkJnOEJCaFlYRmhjV05qOEJQZ0VXRng0QkJnOEJCZ2NHSnlZbkppY3VBUThCRGdFZkFSWVhGaGNXRnhZMk56WTNGemMyTkM4QkppSVBBU2NtSWc4QkJoUWZBUWNHRkI4QkZqSS9BUmNXTWo4Qk5qUW5BYzRSRWc0WEJRc0RCeGhBUWhrY0ZSRWFmeGdpRkNrVEdSSUlDUVVUQnpBS0NBd0hCQTBjSmxCUkpSa2JleXdpR2lvc2Vuc3VLZ2dLQVRBdEh5TXZMWGQxTENZSkNBd29Id1lMQXdjWVFFSVpIQlVSR244VkpTb21HQk1JQndVVEJ5NEdBUVVMQmdZU0ZpSXRKMUlsSGhiVldRWUdOZ1lQQmxaVEJnOEdOZ1lHVTFFR0JqWUdEd1pSVmdZUEJqWUdCcElHQWdnQkFnTUlHQk1MRmhsRlJobC9HQWtGQXdnSkZBb05DUUlITUF3TkRnY0dEUlFYRHcwVUN4dDdMSFoyTFM4akhpNHFDQllCRUM1N2Vpd3FHaUlzSmdrV0FnTUtBUUlEQnhnVEN4WVpSVVlaZmhZTERCSUlGQWdPQ0FJSExnVU9CZzBJQmhFUEZna0lEUlFRRnVaWUJnOEdOZ1lHVzFNR0JqWUZFQVpTVVFZUEJqWUdCbEZYQlFVMkJnOEdBQUFBQUFVQUFQK1FBOElETEFBUEFCOEFMd0JIQUY4QWFrQm5EQUVBQUFFQ0FBRmdDZzBDQWdBRENRSURZQkFCQ1FBTEJBa0xZQWNPQWdRQUJRWUVCV0FQQVFZSUNBWlVEd0VHQmdoWUFBZ0dDRXhLU0RJd0lpQVNFQUlBV2xkU1QwaGZTbDlDUHpvM01FY3lSeW9uSUM4aUx4b1hFQjhTSHdvSEFBOENEeEVGRkNzQklTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ01oSWdZZEFSUVdNeUV5TmowQk5DWUhJU0ltUFFFMEppc0JJZ1lkQVJRV015RXlOajBCTkNZRElTSW1QUUUwSmlzQklnWWRBUlFXTXlFeU5qMEJOQ1lEcGZ5ZUN4RVJDd05pQ3hJU0MvMWZEQkVSREFLaEN4SVNDLzFmREJFUkRBS2hDeElTQy8wU0RCRVNDem9MRVJFTEEySUxFaElML1JJTUVSSUxPZ3NSRVFzRFlnc1NFZ01zRWd0Z0RCRVJER0FMRXVjU0N6b0xFaElMT2dzUy9uOFJERGtNRVJFTU9Rd1J3QkVNaGd3UkVRejZDeElTQ3pvTEVnR0JFUXVIQ3hJU0Mvb0xFaElMT2dzU0FBQUNBQUFBQUFMdUFvb0FGd0FsQURCQUxRVUJBd0VWQVFJQUFrY0FBUU1CYndBREFBTnZCQUVBQWdCdkFBSUNaZ0lBSWlBU0R3b0hBQmNDRndVRkZDc0JJeUltUFFFMEppc0JJZ1lWRVJRV015RXlOalVSTkNZM0p5WWlCaDBCRkJZN0FUSTJOQUxhakJrakRBaklHU01qR1FGOEdTTU1DSVFFREFnWUVHb0dDQUd1SXhtTUNBd2pHZjRnR1NNakdRRXNDQXhVaEFRSUJtb1FHQWdNQUFBQUJRQUFBQUFERmdLS0FCY0FKd0EzQUVjQVZ3QndRRzBGQVFFQU1DZ0NCZ1ZRU0FJSkNnMEJBZ2xBT0FJSEFnVkhDd0VBQUFFREFBRmdEQUVEQUFVR0F3VmdBQVlBQ2drR0NtQUFDUWdCQWdjSkFtQUFCd1FFQjFRQUJ3Y0VXQUFFQndSTUdoZ0NBRlJTVEVwRVFqdzZORElzS2lJZkdDY2FKeElQQ2djQUZ3SVhEUVVVS3dFaElnWWRBUlFXTXlFeUZoVVJGQlk3QVRJMk5SRTBKZ2NoSWdZVkVSUVdNeUV5TmpVUk5DWUZORFk3QVRJV0hRRVVCaXNCSWlZMUZ4UUdLd0VpSmowQk5EWTdBVElXRlRjVUJpc0JJaVk5QVRRMk93RXlGaFVDMnY3QUdTTUdCQUVpR1NNR0JBb1pJeU9sL3NBWkl5TVpBVUFaSXlQK3V3d0l5QWdNREFqSUNBendEQWpJQ0F3TUNNZ0lEQ2dNQ1BBSURBd0k4QWdNQW9vakdRb0VCaU1aL3NvRUJpTVpBVlFaSTR3akdmNnNHU01qR1FGVUdTTmtDQXdNQ0JRSURBd0k4QWdNREFnVUNBd01DR1FJREF3SUZBZ01EQWdBQ1FBQS81QUR3Z01zQUE4QUh3QXZBRDhBVHdCZkFHOEFod0NmQUpaQWt4UUJBQUFCQWdBQllCSVhCaFlFRlFZQ0J3VUNBeEVDQTJBY0FSRUFFd2dSRTJBUEdnd1pDaGdHQ0EwTEFna09DQWxnR3dFT0VCQU9WQnNCRGc0UVdBQVFEaEJNaW9oeWNHSmdVbEJDUURJd0lpQVNFQUlBbXBlU2o0aWZpcCtDZjNwM2NJZHloMnBuWUc5aWIxcFhVRjlTWDBwSFFFOUNUem8zTUQ4eVB5b25JQzhpTHhvWEVCOFNId29IQUE4Q0R4MEZGQ3NCSVNJR0hRRVVGak1oTWpZOUFUUW1CU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZaEl5SUdIUUVVRmpzQk1qWTlBVFFtQVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWWhJeUlHSFFFVUZqc0JNalk5QVRRbUJ5RWlKajBCTkNZckFTSUdIUUVVRmpNaE1qWTlBVFFtQXlFaUpqMEJOQ1lyQVNJR0hRRVVGak1oTWpZOUFUUW1BNlg4bmdzUkVRc0RZZ3NTRXYzYWhnd1JFUXlHREJFUkFRS0hDeElTQzRjTEVSRUJBb2NMRWhJTGh3c1NFdjNhaGd3UkVReUdEQkVSQVFLSEN4SVNDNGNMRVJFQkFvY0xFaElMaHdzU0VndjlFZ3dSRWdzNkN4RVJDd05pQ3hJU0MvMFNEQkVTQ3pvTEVSRUxBMklMRWhJRExCSUxZQXdSRVF4Z0N4TG5FZ3M2Q3hJU0N6b0xFaElMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTL244UkREa01FUkVNT1F3UkVRdzVEQkVSRERrTUVSRU1PUXdSRVF3NURCSEFFUXlHREJFUkRQb0xFaElMT2dzU0FZRVJDNGNMRWhJTCtnc1NFZ3M2Q3hJQUFBQUFCQUFBLzVBRHlRTXNBQThBSndBL0FFOEFhRUJsQUF3R0RHOEFEUVVIQlEwSGJRQUhBZ1VIQW1zRUFRSUlCUUlJYXdzQkNBTUZDQU5yQUFNQUJRTUFhd0FBQ1FVQUNXc0FBUW9CY0FBR0FBVU5CZ1ZnQUFrS0NnbFVBQWtKQ2xnQUNna0tURTFLUlVJOU96WTFORE1rRlJFVUpCUWpOVElPQlIwckpUUW1JeUVpQmgwQkZCWXpJVEkyTlFNaklnWWZBUll5UHdFMkppc0JORFkzTmpNMUlnY09BUVVtSWc4QkJoWTdBUlFPQVNNVk1qYzJOelkxTXpJMkp4TTBKaU1oSWdZZEFSUVdNeUV5TmpVQmdSSUwvdDhMRVJFTEFTRUxFdVZlRHdzSW1nWVBCcG9JQ3c1Yk55c3VMMVZIUlZFQ2lBWVBCcG9JQ3c1ZE1WZzVWVWhHS0NwZUR3c0lBaElML3Q4TEVoSUxBU0VMRW9FTEVoSUwxQXNTRWdzQi9oTUlvQVFFb0FrU0wxa2NISFFwS1kwMEJBU2dDQk01VnpCMEtTbEZTRlVUQ0FIakN4SVNDOVFMRWhJTEFBQUNBQUQvdHdPYkF3VUFEd0E2QUR4QU9RQURBQU52QndFQUFnQnZCQWdDQWdVQ2J3QUZBUVZ2QUFFR0FXOEFCZ1ptRWhBQ0FESXdLaWdqSVJvWEVEb1NPZ29IQUE4Q0R3a0ZGQ3NUSXlJR0ZSRVVGanNCTWpZMUVUUW1CU01pSmowQk5DWXJBU0lHSFFFVUJnY0dJeUlHRlJFVUZqTVdGeFlYRmhjV016STNOamMyUFFFMEpzcGdEQkVSRERBZ0xSSUNlWE1mTGkwZ01Bc1NMQ1FtTFF3UkR3d3JLUll2S3hzcUxsY3hReUlvTFFHK0VReitSZ3NTTGg4Qmlnd1JFeTRmd0NBdEVReHpNMTBjSGhFTS9vQU1FUUlLQlE0TkJnZ0tEaVVyVC9BZ0xRQUFBQUFDQUFEL2tBUENBeXdBSHdCREFFZEFSREFCQlFZQlJ3QUdCUVp2QndFRkFBVnZBZ2dDQUFRQWJ3QUVBUVJ2QUFFREF3RlVBQUVCQTFnQUF3RURUQUlBUGowMU1pb3BJaUVhRnhJUENnY0FId0lmQ1FVVUt5VWpJZ1lkQVJRR0l5RWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtQlJZeU53RTJOQzhCSmlJUEFRWW1OUkV1QVNzQklnWVZFUlFHTHdFbUlnOEJCaFFYQTZVNkN4SVJEUDJHREJFU0N6b0xFUzBmQXdJZ0xSTCtNUWdZQ0FFRUNBZ3BDQmNKYkFnWUFSUUtPZ3NTR0Foc0NSY0lLUWdJL2hJTHdBd1JFUXpBQ3hJU0MvNzhJQzB1SHdFRUN4Si9DUWtCQkFnWENTZ0pDV3NKQ1EwQm1nc1NFZ3YrYUEwSkNXc0pDU29KRndnQUFBQUFBUUFBQUFBRHd3S2tBQmNBSkVBaEFBSUFBbThBQUFFQWJ3QUJBd01CVkFBQkFRTllBQU1CQTB3WEV4TVdCQVVZS3lVQkpqUS9BVFl5SHdFV01qY0JOaklmQVJZVUJ3RUdJZ0Z2L3NNSUNDb0pHUW51QmhFR0FkTUpHUWtxQ0FqOTRBa1pJUUUvQ1JrSUt3Z0k4UVVGQWRjSkNTb0lHZ2o5MmdvQUFBRUFBUCsxQXU4REJRQVhBQkZBRGdBQUFRQnZBQUVCWmg4V0FnVVdLd1VCSmpRM0FUWXlId0VXRkFjQkJoUVhBUllVRHdFR0lnS1MvbkFKQ1FHUUNCb0lLZ2tKL3NNSUNBRTZDQWdyQnhkREFZb0pHUWdCaXdnSUt3Z2FDUDdLQ0JrSi9zb0lHZ2dxQndBQUFBUUFBUCtRQThJRExBQVZBQ3dBUWdCWUFFOUFURkZJRGdVRUFRQTdNaVVjQkFJRUFrY0hDQUlBQVFCdkFBRUdBVzhBQmdNR2J3QURCQU52QUFRQ0JHOEZDUUlDQW1ZWUZnSUFWMVJMU2tFK05UUWpJaFlzR0N3TUN3QVZBaFVLQlJRckFTRWlCaDhCQndZVUh3RVdNajhCRnhZMk5SRTBKZ0VoTWpZbUx3RTNOalF2QVNZaUR3RW5KZ1lWRVJRV0pSRTBKZzhCSnlZaUR3RUdGQjhCQndZV015RXlOZ0VSRkJZL0FSY1dNajhCTmpRdkFUYzJKaU1oSWdZRHEvN1ZEZ2NNWHEwSEIwY0lGQW12WGdzV0R2eVBBU2tKQ2dJSVhxMElDRWNIRlFtdFlBMFhFZ09KRmd0ZXJRY1ZDVWNIQjY5ZURBY09BU2dKRGZ4bEdRdGdyd2dXQjBjSUNLMWVDd1lQL3RnS0ZBTXNGZ3RlclFjVkNVY0hCNjllREFjT0FTZ0pEZnhrREJJSFlLOElGZ2RIQ0FpdFhnc0dELzdZQ2hVWEFTc09Cd3hlclFnSVJ3Y1ZDYTllQ3hZT0EzSCsyQThHQzE2dEJ3ZEhDQlFKcldBTkdCTUFBQUFBQWdBQS80WUR5d014QURzQWNRQVBRQXdqQVFCRkFBQUFaaVFCQlJVckpTOEJKaWNtQmc4QkRnRW1KeTRCTmo4Qk5qYzJGeFlYRmhjZUFUOEJOaWNtSnlZWEppY21KeVlHQndZUEFRNEJGeFlYRmhjV05qOEJOalFtQVNZbkpnWVBBUVlXRnhZWEZqOEJQZ0VXRng0QkJnOEJCZ2NHSnlZbkppY3VBUThCRGdFWEZoY1dGeDRCTmpjMlB3RTJOelltQWdzb0R4RUpCUTRFQ1J4SlN4d2dHQk1ka2hzbkx5MGdFZ29KQmhZSE5nc0pCUWhoVXgwUkpqVXRYaWdqR0kweUp3OFBNREpIUkl3ME1BWU1BVm8wUlVPR01Td0tDZzBwS0E0SkNodEtTaHdnR1JNZWtob25NQzBjRmdvSkJoWUhOUVlCQlFnVEVod3BYRjBwSXhtU05SRVNLREFHQkFRREFnTUVDaHdXRGhrYlRsQWVraGtPQ3hFUEVnb1BDZ0lJTmd3UkJ3bHNYUnNKR1FvSURSWVVHSTB5aDBKRk16Y1VGQ00wTVFRUURRSzBNQThQS0RJcUNoc0NBd3dEQ1FrY0ZnMFpHMDlRSHBJYURBd1NEQlFMRGdzQ0NUWUZFQWdORVJRUkdoRU9GUlFaa2pSSFJZc0FBQUVBQVAvYkEzVUMzZ0F2QURsQU5pc0JBd0VCUndBQUJBQnZBQUVDQXdJQkEyMEFBd051QlFFRUFnSUVWQVVCQkFRQ1dBQUNCQUpNQUFBQUx3QXZOeGtYSEFZRkdDc0JKaWNtSnlZL0FUWTBMd0VtSWdjQkJoUVhBUll5UHdFMk5DOEJKalkzRmhjV0Z4WVhGQlk3QVRJMkp5NEJKeVlCY1FJREJRSUNCV3NKQ1NnSkZ3aisvQWtKQVFRSUZ3a29DUWxwQ1FnS2FscFlOamdHRWdzNkRRNENCNGh3ZFFIMkF3TUhCZ2tGYXdrWENTb0pDZjc4Q0JjSi92d0lDQ2tJR0Foc0NCWURCRFkxV0Z0ckN4QVNEWXJsUTBVQURRQUEvNUFEbXdNc0FBOEFId0F2QUQ4QVR3QmZBRzhBZndDUEFKOEFyd0MvQU04QXdFQzlHZ0VBQUFFQ0FBRmdIUVljQkJzRkFnY0ZBZ01JQWdOZ0lBd2ZDaDRGQ0EwTEFna09DQWxnSXhJaUVDRUZEaE1SQWc4VURnOWdKaGdsRmlRRkZCVVZGRlFtR0NVV0pBVVVGQlZZR1JjQ0ZSUVZUTUxBc3JDaW9KS1Fnb0J5Y0dKZ1VsQkNRREl3SWlBU0VBSUF5c2ZBejhMUHVyZXd2N0svcXFlZ3I2S3ZtcGVRbjVLZmlvZUFqNEtQZW5kd2YzSi9hbWRnYjJKdldsZFFYMUpmU2tkQVQwSlBPamN3UHpJL0tpY2dMeUl2R2hjUUh4SWZDZ2NBRHdJUEp3VVVLd0VoSWdZZEFSUVdNeUV5TmowQk5DWUZJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZRkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUZJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lEZnZ6c0RCRVJEQU1VREJFUi9ZMnREQkVSREswTEVoSUJLYTBNRVJFTXJRc1JFUUVvclFzU0VndXREQkVSL1kydERCRVJESzBMRWhJQkthME1FUkVNclFzUkVRRW9yUXNTRWd1dERCRVIvWTJ0REJFUkRLMExFaElCS2EwTUVSRU1yUXNSRVFFb3JRc1NFZ3V0REJFUi9ZMnREQkVSREswTEVoSUJLYTBNRVJFTXJRc1JFUUVvclFzU0VndXREQkVSQXl3U0MyQU1FUkVNWUFzUzV4SUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFc0FTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hMQkVRdzVEQkVSRERrTUVSRU1PUXdSRVF3NURCRVJERGtNRVJFTU9Rd1J3QklMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWdBQUFRQUFBQUFETkFKUEFEQUFPVUEySlE0Q0FBRVpBUVFBQWtjdEJRSUJSUVVCQkFBRWNBSUJBUUFBQVZRQ0FRRUJBRmdEQVFBQkFFd0FBQUF3QURBMkhpWW9CZ1VZS3lVaUp5WW5Bd2NPQVNzQklpWTlBVFEyT3dFM1BnRWVBUmNUTno0QkhnRWZBVE15RmgwQkZBWXJBU0ltTHdFSERnRUI2Z2NIREFST1FRTVBDVm9JREF3SVJsd0VFQlFQQWs5b0JCQVNEZ1EwV2dnTURBaHVDUThFSVhBRURvSUVCaEFCT0pVSkNnd0lGQWdNMUFrS0Fnd0svc1RuQ1FvQ0N3aDREQWdVQ0F3S0NFMzNDQW9BQ0FBQUFBQUREQUtLQUE4QUh3QXZBRDhBVHdCZkFHOEFqd0RZUUJ5RkFSTU9EUUVGQUdoZ1NFQW9JQVlFQlZoUU9EQVlFQVlDQXdSSFM3QVZVRmhBUFJFQkR3NE9EMk1TRUJVRERnQVRBQTRUWVJRQkFBMEpBZ1VFQUFWZ0RBZ0NCQXNIQWdNQ0JBTmdDZ1lDQWdFQkFsUUtCZ0lDQWdGWUFBRUNBVXdiUUR3UkFROE9EMjhTRUJVRERnQVRBQTRUWVJRQkFBMEpBZ1VFQUFWZ0RBZ0NCQXNIQWdNQ0JBTmdDZ1lDQWdFQkFsUUtCZ0lDQWdGWUFBRUNBVXhaUUROeGNBRUFpWWVDZ0gxOGVYaDFkSENQY1k5c2FtUmlYRnBVVWt4S1JFSThPalF5TENva0lod2FGQklLQndBUEFROFdCUlFyQVNFaUJoVVJGQll6SVRJMk5SRTBKZ0VVQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlRVVUJpc0JJaVk5QVRRMk93RXlGaFVYRkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZSTWpOVFFtSWdZZEFTTTFOQ1lpQmgwQkl5SUdIUUVVRmpNaE1qWTlBVFFtQXZqOStBZ01JeGtCdUJrakRQNlFEQWdvQ0F3TUNDZ0lEQXdJS0FnTURBZ29DQXlNREFnb0NBd01DQ2dJREF3SUtBZ01EQWdvQ0F5TURBZ29DQXdNQ0NnSURBd0lLQWdNREFnb0NBd29NaGNoR0xRWElSZ3lHU01NQ0FJSUNBd2pBYTRNQ1A3VUdTTWpHUUVzQ0F6KzZBZ01EQWdvQ0F3TUNHUUlEQXdJS0FnTURBaTBDQXdNQ0NnSURBd0laQWdNREFnb0NBd01DTFFJREF3SUtBZ01EQWhrQ0F3TUNDZ0lEQXdJQVFRVUVSY1hFUlFVRVJjWEVSUWpHUlFJREF3SUZCa2pBQUFHQUFEL3R3T2JBd1VBRHdBZkFDOEFQd0JQQUY4QVYwQlVEZ1FOQWd3RkFBRUFid1VEQWdFR0FXOFJDaEFJRHdVR0J3WnZDd2tDQndkbVVsQkNRREl3SWlBU0VBSUFXbGRRWDFKZlNrZEFUMEpQT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBFZ1VVS3dFaklnWVZFUlFXT3dFeU5qVVJOQ1loSXlJR0ZSRVVGanNCTWpZMUVUUW1JU01pQmhVUkZCWTdBVEkyTlJFMEpnRWpJZ1lWRVJRV093RXlOalVSTkNZaEl5SUdGUkVVRmpzQk1qWTFFVFFtSVNNaUJoVVJGQlk3QVRJMk5SRTBKZ0VYclF3UkVReXRDeElTQVNtdERCRVJESzBMRVJFQktLMExFaElMclF3UkVmMk5yUXdSRVF5dEN4SVNBU210REJFUkRLMExFUkVCS0swTEVoSUxyUXdSRVFNRkVReit1UXNSRVFzQlJ3d1JFUXordVFzUkVRc0JSd3dSRVF6K3VRc1JFUXNCUnd3Ui9qTVNDLzY1REJFUkRBRkhDeElTQy82NURCRVJEQUZIQ3hJU0MvNjVEQkVSREFGSEN4SUFBQUFBQmdBQUFBQUR3Z0tsQUE4QUh3QXZBRDhBVHdCZkFFUkFRUUFDQVFKdkN3RUpDQWx3QUFFQUFBTUJBR0FBQXdZQkJBVURCR0FIQVFVSUNBVlVCd0VGQlFoWUNnRUlCUWhNWFZwVlVrMUtOVFUxTlRVMU5UVXlEQVVkS3hNVUJpc0JJaVk5QVRRMk93RXlGaFVoTkNZaklTSUdIUUVVRmpNaE1qWTFCVFFtS3dFaUJoMEJGQlk3QVRJMk5TVTBKaU1oSWdZZEFSUVdNeUV5TmpVRk5DWXJBU0lHSFFFVUZqc0JNalkxSlRRbUl5RWlCaDBCRkJZeklUSTJOWm9TQ3pvTEVSRUxPZ3NTQXlnU0MvMWZEQkVSREFLaEN4TDgyQklMT2dzUkVRczZDeElDMnhJTC9hd01FUkVNQWxRTEV2MGxFZ3M2Q3hFUkN6b0xFZ01vRWd2OVh3d1JFUXdDb1FzU0FrNExFUkVMT2d3UkVRd01FUkVNT2dzUkVRdlRDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDOU1MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMQUFBQUFBWUFBQUFBQThJQ3BRQVBBQjhBTHdBL0FFOEFYd0E4UURrQ0FRQURBUUVFQUFGZ0JnRUVCd0VGQ0FRRllBb0JDQWtKQ0ZRS0FRZ0lDVmdMQVFrSUNVeGRXbFZTVFVvMU5UVTFOVFUxTlRJTUJSMHJFelFtS3dFaUJoMEJGQlk3QVRJMk5TVTBKaU1oSWdZZEFSUVdNeUV5TmpVRk5DWXJBU0lHSFFFVUZqc0JNalkxSlRRbUl5RWlCaDBCRkJZeklUSTJOUVUwSmlzQklnWWRBUlFXT3dFeU5qVWxOQ1lqSVNJR0hRRVVGak1oTWpZMW1oSUxPZ3NSRVFzNkN4SURLQklML1Y4TUVSRU1BcUVMRXZ6WUVnczZDeEVSQ3pvTEVnTGJFZ3Y5ckF3UkVRd0NWQXNTL1NVU0N6b0xFUkVMT2dzU0F5Z1NDLzFmREJFUkRBS2hDeElDaUF3UkVRdzZDeEVSQ3pvTUVSRU1PZ3NSRVF2VEN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0M5TUxFaElMT2dzU0VnczZDeElTQ3pvTEVoSUxBQUFBQVFBQS82QUR3Z01iQUNzQUUwQVFBZ0VBQVFCdkFBRUJaajRlTXdNRkZ5c0JFeDRCTXlFeUZnWVBBUTRCRnhNV0RnRXZBU1lpRHdFR0xnRTNFelltTHdFdUFUWXpJVEkzRXo0QkZnSVBXQU1QQ1FFaERoQUNDK29JQlFOY0JBMFlDK2tIRXdqckN4a05CVmdEQlFmckN3SVJEUUVoRmdWYUJCY1hBd1ArOHdnSkZSc0lyUVlTQ2Y3ckRSWUdDS29GQmFvSUJoWU5BUlVKRWdhdENCc1ZFUUVQRFFrTEFBQUFBUUFBLzdZQzd3TUZBQmNBRVVBT0FBRUFBVzhBQUFCbUh4WUNCUllyQ1FFV0ZBY0JCaUl2QVNZME53RTJOQ2NCSmpRL0FUWXlBVmdCamdrSi9uSUlHUWtxQ1FrQk9Ra0ovc2tKQ1NvSUdBTDkvbllJR2dqK2Rna0pLZ2dhQ0FFMkNCb0lBVFlJR2dncUNBQUFBUUFBQUFBRG13SlpBQmNBSUVBZEF3RUJBZ0Z2QUFJQUFBSlVBQUlDQUZnQUFBSUFUQk1URnhJRUJSZ3JDUUVHSWljQkpqUS9BVFl5RndFV01qY0JOaklmQVJZVUE1UCtkZ2dhQ1A1MkNRa3FDUmtJQVRZSUdnZ0JOZ2dhQ0NvSUFmeitjZ2tKQVk0SUdnZ3FDUW4reHdrSkFUY0pDU29JR0FBQUFBUUFBUCsyQTlVQ3VBQWtBRFFBUkFCVUFFcEFSd01CQUFnSkNBQUpiUUFDQ1FvSkFncHRBQVFLQkhBQUJRQUdBUVVHWUFjQkFRQUlBQUVJWUFBSkFnb0pWQUFKQ1FwWUFBb0pDa3hTVDBwSE5UVTFPQmNURlRnUkN3VWRLeVVtSWc4QkJpWTlBVFFtS3dFaUJoMEJGQVlpTHdFbUlnOEJCaFFmQVJZeVB3RTJOQ2NCTkNZaklTSUdIUUVVRmpNaE1qWTFGVFFtSXlFaUJoMEJGQll6SVRJMk5SVTBKaU1oSWdZZEFSUVdNeUV5TmpVQjFRZ1lDRVVKR0JFTU9nc1JEQkFGUlFrWENTb0pDZDBKRnduZkNBZ0IxUklML1RnTEVSRUxBc2dMRWhJTC9ma01FUkVNQWdjTEVoSUwvcmtMRWhJTEFVY0xFdThJQ0VZSUNRMytDeEVSQy80SkNnVkdDQWdyQ0JnSTNRa0ozd2dZQ0FIVkRCRVJERGtNRVJFTXJRc1JFUXM2Q3hJU0M2MExFaElMT2dzU0Vnc0FBUUFBLzVFRHdnTXJBRWtBUEVBNUFBSUJBbThEQVFFQUFXOElBUVlGQndVR0IyMEFCd2R1QkFFQUJRVUFWQVFCQUFBRldBa0JCUUFGVEVFL0pCUWpMU01rRlNNbENnVWRLd0VuSmdZZEFTTWlKajBCTXpJK0FTOEJKaUlQQVFZV093RVZGQVlyQVRVMEpnOEJCaFFmQVJZMlBRRXpNaFlkQVNNaUJoOEJGakkvQVRZbUt3RTFORFk3QVJVVUhnRS9BVFkwQTd5Z0NCUEFDUXB4Q1EwQkJhNEZFQVd1Q0F3T2JRb0p3Qk1Jb0FRRW9BZ1R3QWtLY1E0TUNhMEZFQWF0Q0FzUGJRb0p3QW9OQktBR0FXeXRDQXNQYndvSndBb05CS0FGQmFBSUU4QUpDbkVPREFpdUJSQUZyZ2dNRG0wS0NjQVRDS0FFQktBSUU4QUpDbkVKRFFFR3JRY1FBQUFBQlFBQS83Y0Q2QU1GQUE4QUh3QXZBRDhBVlFBOVFEb0FCZ0FHYndBSEF3ZHdBQUFBQVFRQUFXQUlBUVFKQVFVQ0JBVmdBQUlEQXdKVUFBSUNBMWdBQXdJRFRFMUxKelUxTlRVMU5UVXlDZ1VkS3dFMEppTWhJZ1lkQVJRV015RXlOalVETkNZckFTSUdIUUVVRmpzQk1qWTFFelFtSXlFaUJoMEJGQll6SVRJMk5RRTBKaXNCSWdZVkVSUVdPd0V5TmpVQkpnWWRBU01pQmgwQkZCWTdBUlVVRmo4Qk5qUW5BK2dSRFA2NUN4SVNDd0ZIREJGTkVRejZDeElTQy9vTUVVMFJEUDY1Q3hJU0N3RkhEQkgrTXhJTE9nc1NFZ3M2Q3hMK21na1NmUXNTRWd0OUV3aWZCUVVDZFFzU0VnczZDeElTQy81c0RCRVJERGtNRVJFTUFTQU1FUkVNT2dzUkVRc0JsQXdSRVF6ODdBd1JFUXdDV0FnTERuQVJERG9MRVhJT0RBbXRCZzhHQUFBQUFnQUEvN2NEZFFLNEFBOEFOQUJzUzdBUlVGaEFKQVVCQXdRRGJ3QUVBZ1J2QndFQ0FBQUNZd1lCQUFFQkFGUUdBUUFBQVZrQUFRQUJUUnRBSXdVQkF3UURid0FFQWdSdkJ3RUNBQUp2QmdFQUFRRUFWQVlCQUFBQldRQUJBQUZOV1VBWEVSQUNBQ3dwSXlFYkdCQTBFVFFLQndBUEFnOElCUlFySlNFaUJoMEJGQll6SVRJMlBRRTBKaVVtSnk0Qk5SRTBOanNCTWhZVkVSUWVBUmNXUGdFMUVUUTJPd0V5RmhVUkZBY0dCd1lEV1AwNEN4SVNDd0xJQ3hJUy9vUkhQRGxFRmhBbkVCWW1RaWd0U3l3V0VDY1FGaWNtUUVJcUVRczZEQkVSRERvTEVVMEVKeVo5UndFR0VCWVdFUDc0S1VjdEFnTW9TU3dCRFJBV0ZoRCs4MHhBUGlNa0FBQUFCUUFBQUFBRE5BSmlBQmtBTVFBNkFFTUFUQUJiUUZnTEFRRUFFUUVDQXdKSEFBQUJBRzhKQVFFSUJnSUVBd0VFWUF3SEN3VUtCUU1DQWdOVURBY0xCUW9GQXdNQ1dBQUNBd0pNUlVROE96TXlHeHBKU0VSTVJVeEFQenREUEVNM05qSTZNem9zS2hveEd6RW5EUVVWS3dFbU56WTFOQzRCSXlJR0J4NENGUlFITmpjMkh3RVdOaWNCSWc0QkZSUVhGZzhCQmhZL0FUWVhGak15UGdFMExnRUhJaVkwTmpJV0ZBWXpJaVkwTmpJV0ZBWXpJaVkwTmpJV0ZBWURGd0lFR3p0bFBDWkhIVDVqT1JVZUd3Y0ZRQWdOQXY1bFBHVTdIQU1CRlFNTkNVQUlCRFUvUEdVN08yVzBFQmdZSVJjWFp4QVlHQ0VYRjJjUUdCZ2hGeGNCSFFnRU1UWTVZRGtaRmcxTmJqODNMd2dRQkFNWEF3MEpBU001WURrM01BY0ZRd2tOQXhjQ0F4ODVZSEpnT2ZvWUlSY1hJUmdZSVJjWElSZ1lJUmNYSVJnQUFBQUFCZ0FBQUFBREFnS1VBQklBS2dBNkFFb0FXZ0JvQUhWQWNoZ0JCZ1F6S3dJREFDZ0JDd05UU3dJS0MwTTdBZ2dKQlVjQUFBWURCZ0FEYlFBRURBRUdBQVFHWUFjTkFnTUFDd29EQzJBQUNnQUpDQW9KWUFBSUFBVUNDQVZnQUFJQkFRSlVBQUlDQVZnQUFRSUJUQlVUWldOWFZVOU5SMFUvUFRjMUx5MGxJaDBhRXlvVktpSTFFUTRGRnlzbEVTSUdGUkVVRmpNaE1qWTFJeUluSmljbUFTTWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTlBVFFtSlRRMk93RXlGaDBCRkFZckFTSW1OUmNVQmlzQklpWTlBVFEyT3dFeUZoVTNGQVlyQVNJbVBRRTBOanNCTWhZVk55Y21JZ1lkQVJRV093RXlOalFCSWhrakl4a0JMQmtqOENzUkhnNFFBY3hrR1NNTUNLQVpJeU1aQVN3Wkl3eit1QXdJUEFnTURBZzhDQXpjREFpMENBd01DTFFJRENnTUNOd0lEQXdJM0FnTVRGd0VEQWdZRUVJR0NOd0JRQ01aL29RWkl5TVpCQWdZSEFFOEl4bGtDQXdqR2Y2RUdTTWpHZkFJRENnSURBd0lGQWdNREFqd0NBd01DQlFJREF3SVpBZ01EQWdVQ0F3TUNLUmNCQWdHUWhBWUNBd0FBUUFBLzdVRG53TUZBRUVBSmtBakF3RUFBUUJ2QUFFQ0FnRlVBQUVCQWxnQUFnRUNUQUlBUERrME1RQkJBa0VFQlJRckV6TXlGaDBCRkJZM05qYytBUmNXRng0QkZ4WUdCdzRCQnk0QlBRRTBOamMrQVRjMk56WXVBU2NtSnlZR0J3WUhCaFk3QVRJV0hRRVVCaU1oSWlZMUVUUTJham9MRVEwS0NRdEl3V2hKUGxkaEFnSTZOelNHU2c4VUR3eEZkU1VXQ1E4V1J6Y3BJRTJTTmd3TEJBOE9od3NRRGd2K25nb1BFUU1GRVF5R0RnZ0lEQWRKT1JRUEtUbXlaVTZWT0RkQUJnSVNEVGtNRHdJR1NUNGxKRDk3WmlFWENCTW9OZ3NRQ3d3U0N6d0xFQThLQVY0TUVRQUFBQUFHQUFEL3R3UENBd1VBRHdBZkFDOEFQd0JVQUhnQS9rdXdFVkJZUUZ3QUFRb0lDZ0VJYlFBQUNBTURBR1VBQ1FJTEFna0xiUUFLRkFFSUFBb0lZQUFERVFFQ0NRTUNZUlVCQ3dBTUJRc01ZQklCQkFBRkRRUUZZQUFOQUJBR0RSQmdBQThIRGc5VUV3RUdBQWNPQmdkZ0FBOFBEbGdBRGc4T1RCdEFYUUFCQ2dnS0FRaHRBQUFJQXdnQUEyMEFDUUlMQWdrTGJRQUtGQUVJQUFvSVlBQURFUUVDQ1FNQ1lSVUJDd0FNQlFzTVlCSUJCQUFGRFFRRllBQU5BQkFHRFJCZ0FBOEhEZzlVRXdFR0FBY09CZ2RnQUE4UERsZ0FEZzhPVEZsQU4xZFZRVUF5TUNJZ0VoQnpjWEJ1YVdaaFgxNWNWWGhYZUU5TVIwUkFWRUZVT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmTlRNV0JSWXJBUlVVQmlNaElpWTlBVFEyTXlFeUZnRWhNalk5QVRRbUl5RWlCaDBCRkJZRklTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ0V6RlJRV093RXlOalVSTkNZckFTSUdIUUVVRmhNaklnWWRBUlFXT3dFVkl5SUdIUUVVRmpzQk1qWTlBVFFtS3dFMU16STJQUUUwSmdQQ0VndjkrUXdSRVF3Q0J3c1MvZHdCV2dzU0VnditwZ3dSRVFJVC9ma01FUkVNQWdjTEVoSzQvcVlNRVJFTUFWb0xFaEw5UURBU0N4UUxFUllRVndzUkVhK2tDeEVSQzMxekVCWVdFS01NRVJFTWZYUVFGaFlDMVRvTEVSRUxPZ3NTRXY3ZUVnczZDeElTQ3pvTEVxMFJERGtNRVJFTU9Rd1J3QklMT2dzU0VnczZDeElDWi9BTUVSRU1BUmNRRmhFTUV3c1Mvb0FTQ3hNTUVVMFhFSm9RRmhFTUV3c1NUUllRbWhBWEFBUUFBUCtRQTNVRE1BQWdBQ0lBTWdCR0FFeEFTUjRCQUFGR093SUdCQUpIQWdjQ0FBRUVBUUFFYlFBRUJnRUVCbXNBQXdBQkFBTUJZQUFHQlFVR1ZBQUdCZ1ZZQUFVR0JVd0NBRGcxTUMwb0pSb1lFUTRKQ0FBZ0FpQUlCUlFyRXpNeVBRRTBQZ0VYSGdJVk5SUTdBVEk5QVRRbkppY21Cd1lIRGdFSEhnRW5GUVUwSmlNaElnWVZFUlFXTXlFeU5qVWxGZ1lyQVNJbVB3RXVBVDRDSGdFVkZBWUgxRTBUT0Y4M01sRXZGRTBUTEN4SlMxZFFSRUZPQWdJTERRSzFMU0Q5bUI4dUxoOENhQ0F0L3RnQ0RBcU1DZ3NDSWhZV0NpZzdOU0FWRXdIbEVRSTJXek1FQXpoYU13WVJFUUpXU1Vjb0tRTUVMQ3FMVVFnSkVRaWpJQzB0SVA2U0h5NHVIMEFKRUE0TGN3OHhPQ2dMRmkwZEZ5Z01BQUFBQVFBQS83Y0R3d01GQUJjQUdFQVZBZ0VBQVFCdkFBRUJaZ0lBRGdzQUZ3SVhBd1VVS3dFaElnNEJGd0VXRlJFVUZqc0JNalkxRVRRM0FUWXVBUU9oL0tvT0VnRUlBWFVSRXd3NkN4QVZBWGtJQVJJREJSSWFDdjVNRkI3KzZ3d1JFUXdCRlJzWEFiUUtHaElBQVFBQUFBQURuQUpYQUJjQUlFQWRBd0VCQWdGd0FBQUNBZ0JVQUFBQUFsZ0FBZ0FDVEJNVEZ4SUVCUmdyTndFMk1oY0JGaFFQQVFZaUp3RW1JZ2NCQmlJdkFTWTBWUUdLQ0JvSUFZb0pDU29JR2dqK3lnZ2FDUDdLQ0JrSktnZkFBWTRKQ2Y1eUNCa0pLZ2tKQVRzSkNmN0hDUWtxQ1JjQUFnQUEvNUFEd2dNc0FCUUFSQUE2UURjSUFRQUZBRzhIQVFVR0JXOEFCZ01HYndBREFnTnZCQUVDQVFKdkFBRUJaZ0VBUERzNE56UXpKQ01nSHh3YkN3b0FGQUVVQ1FVVUt3RWlCd1lIQmhRWEZoY1dNamMyTnpZMEp5WW5KZ01YRmhRUEFRWWlMd0VtSWc4QkJpSXZBU1kwUHdFMk5DOEJKalEvQVRZeUh3RVdNajhCTmpJZkFSWVVEd0VHRkFIMGZtdHBQRDgvUEdsci9HeG9QVDgvUFdoc0lKWUdCallGRUFXV0JoQUZsZ1lRQlRZR0JwWUdCcGdHQmpZRkVBYVlCUkFHbGdVUUJUWUdCcFlFQXl3L1BXaHMvR3hvUFQ4L1BXaHMvR3hvUFQvK0k1WUdFQVUyQmdhV0JnYVdCZ1kyQlJBR2xnVVFCcGdGRUFVMkJnYVlCUVdXQmdZMUJoQUZsZ1lRQUFFQUFQL3ZBOEVDelFBakFDMUFLZ0FDQXdKdkFBRUFBWEFBQXdBQUExUUFBd01BV0FRQkFBTUFUQUlBSGhzVEVnc0tBQ01DSXdVRkZDc1RJVElXRHdFR0ZCOEJGakkzQVRZMEp3RW1JZzhCQmhRZkFSWUdJeUVpQmgwQkZCWkJBbjhOQ1FtNENRa3FDUmNJQVZFSkNmNnZDQmNKS0FrSnVBa0pEZjJCQ3hFUEFTUVlDTGtJR0FnckNBZ0JVd2dZQ0FGUkNBZ3BDQmNKdVFvWUVBczZEQk1BQUFBQUFnQUEvNUFEd2dNc0FDTUFTZ0JLUUVjQUF3VUNCUU1DYlFBQ0JBVUNCR3NJQVFBQUFRWUFBV0FBQmdBRkF3WUZZQUFFQndjRVZBQUVCQWRZQUFjRUIwd0NBRVZDUFRvMU1pMHFIaHNURWdvSEFDTUNJd2tGRkNzQklTSUdIUUVVRmpzQk1oWUhBUVlVSHdFV01qY0JOaFlkQVJRV093RXlOalVSTkNZREJ3WWRBUlFHSXlFaUpqVVJORFk3QVRJMlB3RTJKaU1oSWdZVkVSUVdNeUV5TmpVUk5DWURxZjZRREJJU0RKZ09DZ3IrdVFrSktBa1hDUUZHQ1JZVUN6Z0xFZzc2UVJJUkMvNXNEQkVSRE4wTUZRZENDQWtOL29NZkxTMGZBaHNnTFJnRExBNExPZ3dWRmduK3Vna1hDU2dKQ1FGSENBa05tQXNWRkF3QmJnME8vanhFRUJqYkRCRVJEQUdVQ3hFSkNVRUpHQzBnL2VVZ0xTNGZBWDBOQ1FBQUJRQUEvN2NENkFNRkFCVUFKUUExQUVVQVZRQkxRRWdBQ0FJSWJ3QUpCUWx3QUFJQUF3QUNBMkFHQ2dJQUJ3RUJCQUFCWUFBRUJRVUVWQUFFQkFWWUFBVUVCVXdCQUZOUVMwaERRRHM0TXpBcktDTWdHeGdRRGdBVkFSVUxCUlFyQVNNMU5DWVBBUVlVSHdFV05qMEJNekkyUFFFMEppVTBKaU1oSWdZZEFSUVdNeUV5TmpVRE5DWXJBU0lHSFFFVUZqc0JNalkxRXpRbUl5RWlCaDBCRkJZeklUSTJOUUUwSmlzQklnWVZFUlFXT3dFeU5qVUJPM3NUQ0o4RUJKOEpFbnNNRXhNQ29SRU0vcmtMRWhJTEFVY01FVTBSRFBvTEVoSUwrZ3dSVFJFTS9ya0xFaElMQVVjTUVmNHpFZ3M2Q3hJU0N6b0xFZ0dyY1E4TENLMEdFQVd0Q1F3T2JoRUxPZ3dSeWdzU0VnczZDeElTQy81c0RCRVJERGtNRVJFTUFTQU1FUkVNT2dzUkVRc0JsQXdSRVF6ODdBd1JFUXdBQXdBQS81QURkUU13QUFFQUxBQkFBRWhBUlVBMUFnWUFBVWNBQWdFQUFRSUFiUVFIQWdBR0FRQUdhd0FEQUFFQ0F3RmdBQVlGQlFaVUFBWUdCVmdBQlFZRlRBTUNNaThuSkI4ZUdSY1FEZ2tIQWl3RExBZ0ZGQ3NURlFVaE5UUStBVGMySGdFWEhnRTdBVEkySnk0Qkp5WUhCZ2NPQVFjVklnWVZFUlFXTXlFeU5qVVJOQ1lERmdZckFTSW1Qd0V1QVQ0Q0hnRVZGQVlId0FKby9nd3ZVakl1VVRzTUFnb0hUd2dNQVE5Y1FrUk1VRVJCVGdJZkxpNGZBbWdnTFMzN0Fnd0tqQXNMQXlJWEZRd29PelVnRlJNQjlnaFdXak5ZT0FNRElrRXFCZ29QQ0Vsekh4OERCQ3dxakZCZUxTRCtraDh1TGg4QmJpQXQvb1VKRUE4S2N4QXhOeWdMRmkwZEZ5Z01BQUlBQUFBQUF6UUNnQUFQQUVnQVZFQlJNUllDQndJQlJ3QUVBZ1J2QmdzQ0Fna0JCd01DQjJBRkFRTUFDQUFEQ0dBS0FRQUJBUUJVQ2dFQUFBRllBQUVBQVV3UkVBRUFSVVJBUGpzNk56WXZMU1FqR2hnUVNCRklDZ2NBRHdFUERBVVVLeVVoSWdZZEFSUVdNeUV5TmowQk5DWVRJZ1lWRkJZWERnRW5MZ0VuTkRjK0FUVTBKaUlHRlJRV0Z4WVZEZ0VIQmlZblBnRTFOQ1lpQmhRV014Y2VBVE1oTWpZL0FUSTJOQ1lDeC81YUJ3d2pHUUZVR1NNTEtSa2pDd29OTnlJb09RSUNFUlVqTWlNVkVRSUNPU2dpT0F3S0N5TXlJeU1aSEFFTEJ3R3FCd29DSEJrakk2QUxDQUVaSXlNWkFRZ0xBWm9qR1EwWkNCNGpBUUk1S0JFSUJ4NFRHU01qR1JJZkJ3Z1JLRGtDQWlRZUNCa05HU01qTWlQV0J3a0pCOVlqTWlNQUFBQUFBUUFBQUFBREdRSjZBQndBR0VBVkFnRUFBUUJ2QUFFQlpnRUFGQklBSEFFY0F3VVVLd0VpQndZSEJoVVVGeFlQQVFZV1B3RTJGeFl6TWpjMk56WXVBU2NtQWV4U1JrTW9LU1lGQXh3RUVneFlDUWhJVmxKR1F5Z3BBVkZFUmdKNUppVkFRVXhJUVFnSVdRd1JCQjhEQlNvbUpVQkJtSUVsSmdBQUFBRUFBQUFBQTJZQ1JRQU1BQmhBRlFBQkFBRnZBZ0VBQUdZQ0FBZ0hBQXdDREFNRkZDc2xJU0l1QVRjQk5qSVhBUllHQTBqOVdBb09BUWNCVFFrZkNBRlJDZzUzRGhRSkFaY01EUDVwRGgwQUFnQUEvNDhEd2dNekFCMEFLZ0FrUUNFQkFRSUJGZ0VBQWdKSEFBRUNBVzhBQWdBQ2J3QUFBR1lvSnlJaEdSZ0RCUlFyQlFFMk56WW5MZ01IRGdFSEJoNENGeFkzTmpjQkZqSS9BVDRCQVRRK0FUSWVBUlFPQVNJdUFRTzYvdjRvRVJNS0MxdU5wVTVMY1J3Y0VGYUpVVWhGUWpnQkFBa1hDU2dKQWZ6WVEzS0dja05EY29aeVF4VUJBRGhDUlVoU2lWVVFIQnh5U2s2bWpGd0xDaElSS1A4QUNBZ29DUmtCM2tOeVEwTnlobkpEUW5JQUFnQUEvMzhEMFFNN0FCUUFSQUExUURJMUFRTUVMUUVBQXgwQkFRQURSd0FFQXdSdkJRRURBQU52QWdFQUFRQnZBQUVCWmtFL09UY3lMeW9uSWg4WkZ3WUZGQ3NCSmljbUJ3NEJCd1lYSGdFWEZqYytBVGMySnlZREZBWXJBU0lHSFFFVUJpc0JJaVk5QVRRbUt3RWlKajBCTkRZN0FUSTJQUUUwTmpzQk1oWWRBUlFXT3dFeUZoVURPMWw1ZFhWNXNSOGZIeCt4ZVhWMWVMRWdIeDhmYXdzSTFBY01EQWROQ1FzS0NkTUpDdzBIMHdrS0RRZE5Cd3dLQ2RRSERBS2xXQjhmSHgreGVYVjFlYklnSGg0Z3NubDFkWG4rN0FrTEN3alRCdzBMQ2RNSkNnc0pUUWNNQ2duVUJ3d0xDTlFKQ2d3SEFBRUFBUCtTQThJRExBQnpBSVZBZ2g0VkFnRURKd3dDQUFGaFJnSUtDVmhQQWd3S0JFY0FCQU1FYndVQkF3RURid2NCQVFBQmJ4QUJDZ2tNQ1FvTWJRNEJEQTBKREExckFBME5iZ2dHQWhJRUFBa0pBRlFJQmdJU0JBQUFDVmdSRHdzRENRQUpUQUVBYm14bVpXTmlXMXBWVWsxTVJVUkNRVHM1TkRJc0t5a29JU0FiR0JNU0N3b0lCd0J6QVhNVEJSUXJBU00zTmpRdkFTWWlEd0VqTlRjMk5DOEJKaUlQQVRVMEppc0JJZ1lkQVNjbUlnOEJCaFFmQVJVakp5WWlEd0VHRkI4Qkl5SUdIUUVVRmpzQkJ3WVVId0VXTWo4Qk14VUhCaFFmQVJZeVB3RVZGQlk3QVRJMlBRRVhGakkvQVRZMEx3RTFNeGNXTWo4Qk5qUXZBVE15TmowQk5DWURwWXRWQ0FnaEJ4SUdsRzJVQndjaEJ4SUdWQklMT2dzU1ZBY1NCaUVIQjVSdGxBY1NCaUVIQjFXTEN4RVJDNHRWQndjZkNCRUdsRytVQndjZkNCTUdWQkFMT2dzVVZBZ1JCaDhJQ0pKdGxBZ1NCUjhJQ0ZPTEN4SVNBWmhVQ0JFR0lRY0hsRzJVQ0JJRklRZ0lWWXNMRWhJTGkxVUlDQ0VIRWdhVWJaUUhCeUVIRWdaVUVnczZDeEpVQnhJR0h3Y0hsR3VVQnhNRkh3Y0hWWXNNRlJZTGkxVUhCeDhIRWdhUWJaUUhCeDhJRVFaV0VnczZDeElBQUFBQ0FBRC8yZ1BGQXQwQUhRQTdBQ2hBSlE0QkFRQVZBUUlCQWtjQUFBRUFid01CQVFJQmJ3QUNBbVlmSGpJd0hqc2ZPeWtFQlJVckpTWTNOalUwSnlZbkppTWlCd1lISGdFWEZoVVVCelkzTmg4QkZqWW5BU0lIQmdjR0ZSUVhGZzhCQmhZL0FUWVhGak15TnpZM05qUW5KaWNtQTVjREJTa3RLMHBOV0Q0Nk55MWlvaTR3R3hzakRnbDFDUXNDL2F0WVRVa3JMU2dIQlNvREN3bDFEZ2xPVzFsTVNpc3RMU3RLVFA0TkNraE1VMGhHS1NvV0ZTWUxhMUpWWUVrL0NSSUZBeThDQ3drQnZDb3BSa2hUVGtZTkNuVUpEQU12QXdVdEtpbEdTS1ZJUlNrcUFBQURBQUFBQUFNUkFuWUFCUUFaQUU4QVpVQmlMaDhYRmdBRkJBRkxDd0lDQUFKSENRRUJCd1FIQVFSdEJnRUVBQWNFQUdzQUFnQUZBQUlGYlFBSUJRaHdDZ0VEQUFjQkF3ZGdBQUFDQlFCU0FBQUFCVmdBQlFBRlRCc2FCd1pJUmpNeExTc25KaUlnR2s4YlR4QVBCaGtIR1JJTEJSVXJBUVlWSXpRM0pTTWlCaDBCRkI4QkZqSS9BVFkwTHdFMU5DWW5JZ2NPQVE4Qkl5SUdId0VXTWo4Qk5pWXJBVFUrQWpNeUZoY1dCdzRDQndZbUp5WVBBUVlXRng0Qk56NENOelluTGdFQkdRRThBUUVtSGdZSkJGUUZEQVFWQlFWR0NSVkpQejFOQlFFdENnZ0dTd1VPQkVzR0NBb3NCVDFoT0VCcUd4MEhCVGxYTHpWaEl3d0tHQU1DQlNsclBFZDdUQVVHSlNPRkFYSUhEUTBIZUFrR2d3VUdWQVFFRlFVTUJFZHhCZ21NSXlKM1NBb1JCMXNGQlZzSUVBbzNYRFZET0RsQkwxWTVCQVVsSmc0TkhRUUdCU3N1QVFGR2RrZFFSa1JTQUFBQUJRQUEvNUFEd2dNdEFBMEFIUUExQUUwQVpRQkZRRUlBQlFJRmJ3QUVBZ0FDQkFCdEFBQURBZ0FEYXdBR0F3Y0RCZ2R0QUFjQkF3Y0Jhd0FCQVc0QUFnUURBbFFBQWdJRFdBQURBZ05NR3hzYkZSY2NGUkVJQlJ3ckFTWWlCd0VHRkJZeU53RTJOQ2MvQVRZMEx3RW1JZzhCQmhRZkFSWXlKUjRCRnhZeU56NEJOelkwSnk0Qkp5WWlCdzRCQndZVUFTNEJKeVlpQnc0QkJ3WVVGeDRCRnhZeU56NEJOelkwQXg0QkZ4WXlOejRCTnpZMEp5NEJKeVlpQnc0QkJ3WVVBaDRGRUFiK05SRWlMeEVCeXdZR1VUNElDQ2tJR0FnK0JRVTJCZy8rS1RkU0VRTVJBeEZST0FnSU4xSVJBeEVERVZFNEJ3TDVNVWNSQWhBREVFY3hCd2N4UnhBREVBSVJSekVJNFNZMERBRU5BUXMxSmdZR0pUWUxBUTBCRERVbEJnRytCZ2IrTkJFdUloRUJ5d1lRQlRZK0NCZ0lLUWdJUGdZUEJqWUZ1aEZST0FnSU4xSVJBeEVERVZFNENBZzNVaEVERWY2U0VFY3hDQWd4UnhBREVBTVFSekVIQnpGSEVBTVNBYW9NTkNZR0JpVTFEQUVOQVFzMkpRWUdKalVMQVEwQUFBVUFBUCtsQTl3RElRQWpBRE1BUUFCTkFKZ0JWa0FnSVJNTUNRSUZDQUFzQVEwSGRXMENEZzJTVHdJUURDUUJCaEFaQVFVR0JrZExzQkpRV0VCUEN3RUpBQWx2QkFJUkF3QUlBUUJqRXdvU0F3Z0JBUWhqQUEwSERnY05EbTBBRGc4SERnOXJBQkFNQmdZUVpRTUJBUUFIRFFFSFlRQVBBQXdRRHd4Z0FBWUZCUVpVQUFZR0JWa0FCUVlGVFJ0THNCeFFXRUJPQ3dFSkFBbHZCQUlSQXdBSUFHOFRDaElEQ0FFQkNHTUFEUWNPQncwT2JRQU9Ed2NPRDJzQUVBd0dCaEJsQXdFQkFBY05BUWRoQUE4QURCQVBER0FBQmdVRkJsUUFCZ1lGV1FBRkJnVk5HMEJQQ3dFSkFBbHZCQUlSQXdBSUFHOFRDaElEQ0FFQkNHTUFEUWNPQncwT2JRQU9Ed2NPRDJzQUVBd0dEQkFHYlFNQkFRQUhEUUVIWVFBUEFBd1FEd3hnQUFZRkJRWlVBQVlHQlZrQUJRWUZUVmxaUURGQ1FUVTBBUUNXbElTQ2VYZHhiMTVjU0VkQlRVSk5Pem8wUURWQU1DNG9KaDBiRlJRUUR3c0tCZ1VBSXdFakZBVVVLd0VqRlJZT0FTSXVBVGMxSVJVV0RnRWlMZ0UzTlNNaUJoVVJGQll6SVRJMk5SRTBKZ01VQmlNaElpWTFFVFEyTXlFeUZoVWxJaVk5QVRRK0FSWWRBUlFHSVNJbVBRRTBQZ0VXSFFFVUJnRTFOQ1lqSmljdUFUOEJQZ0VYRmhjeU5qUW1KeVluSmpVME5qYytBVDBCTkRZN0FUSVdIUUVVRmpNV0Z4NEJEd0VPQVNjbUl5SUhCaFFXRng0QkZBWUhEZ0VkQVJRR0t3RWlKZ1BPWGdJTEdCc1lDd0w5d2dJTEdCc1lDd0plQmdjSUJRTzBCUWdIU1FnRi9QTUZDQWdGQXcwRkNQMGNEaFFVR3hRVEFvd09FeFFiRkJUK2dBY0ZKU0lFQkFFS0FRc0dKU2dZSEJzZk1CZ2JMQ2NFQmdnRkd3VUlCd1VkR3dVRkFna0JDd1VmSWhrTUNoMGtNU290S2dRR0NBVWJCUWdDdVE4T0dROFBHUTRQRHc0WkR3OFpEZzhKQnYwSkJRZ0lCUUwzQmduOVNnVUlDQVVDQ1FVSUNBVjdGUTVWRGhNQkZBNVZEaFVWRGxVT0V3RVVEbFVPRmYycUd3VUlBdzhDQ0FVbUJnWURFUUVTSHhZTEVCVVpKU015Q2dFSEJSd0ZDQWdGRndVSUFnb0NDUVVrQmdVQ0RRa0lHaFVORVRCSk5na0JCd1VnQlFnSUFBQUFBQUwvL2YreEExOERDd0FrQURFQU1FQXRIaFVNQXdRQ0FBRkhBQVVCQVFBQ0JRQmdBd0VDQkFRQ1ZBTUJBZ0lFV0FBRUFnUk1GUmNVSEJRWkJnVWFLeVUwTHdFM05qUXZBU1lpRHdFbkppSVBBUVlVSHdFSEJoUWZBUll5UHdFWEZqSS9BVFkzRkE0QklpNENQZ0V5SGdFQ2dRcGxaUW9LTXdvZUNtVmxDeDRLTWdzTFpXVUxDeklLSGd0bFpRb2VDak1LMkhMRzZNaHVCbnE4OUxwKzRBNExaV1VMSFFzeUN3dGxaUXNMTWdzZEMyVmxDeDBMTWdzTFpXVUxDeklMalhYRWRIVEU2c1IwZE1RQUFBSUFBQUFBQXlBQ2lnQU9BRG9BT1VBMk9Bc0VBd0lBS2dFRUF3SkhCUUVBQWdCdkFBSURBbThBQXdRRGJ3QUVBUVJ2QUFFQlpnRUFNUzhuSlJRU0NBY0FEZ0VPQmdVVUt3RWlCaFFYRVJRV01qWTFFVFkwSmdVR0J3WW5JaWNtTHdFbUp5WUhCZ2NHRlJFVUZqYzJOeklYRmhjbUZ4WVhGak15TnpZM1BnRTFFVFFtQVFRWkl4UVlJUmNVSXdIMEhCMFpIQmNiRkIweEhCVWJHQndhRFJBS0dSc1hHaFViSlZVY0ZCc1hHeG9jSEFRR0NnS0tJelFTL2prUUdCZ1FBY2NTTkNOc0R3WUdBUVlFQ0E0SEFnUUNBZ29GRHY3K0Nnd0RDQUVFQXdjS0dBY0VCUWNIRHdJS0JRRVBCZ1lBQUFFQUFBQUJBQUNCTCszUFh3ODg5UUFMQStnQUFBQUEweXR5RWdBQUFBRFRLM0lTLy8zL2FnUHVBMUlBQUFBSUFBSUFBQUFBQUFBQUFRQUFBMUwvYWdBQUErai8vZi82QSs0QUFRQUFBQUFBQUFBQUFBQUFBQUFBQUlrRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENlAvK0ErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBMnNBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQURhd0FBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENlAvL0ErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRFdmLzlBK2dBQUFBQUFBQUFYQUM2QVJnQjJBSllBd0FEWmdQc0JIQUZPZ1dXQmhvRytnZWlCLzRJVkFoMkNOb0pLQW44Q3M0THpneHdETjROaGc1YUR3SVFBaEJPRVBZUndCSXdFc29UVUJQY0ZOWVZhaFlnRm13V3hCY1NGNDRZT2hqR0dUQVo2QnFXRys0YzhCMitIalFlb2g4Nkg1QWdNaUNFSVBJaFJpR21JaFlpd0NNK0krd2taQ1VxSmhvbW5DZTZLQ0FvbENrS0tYQXFCaXB1S3V3cnlpeEVMSTRzOGkxK0xmUXVIQzV1THVndmFpK01NSTR4UkRHVU1rSXpYRFFDTkhRMCtqVTROVzQySURiY04wWTRyamtVT2pnNjZEdU1QQ3c4Z0R5MlBQUTlqajRTUHFnL0xEL09RSlJCQ2tJb1FyWkM3RU1vUTY1RUFFU1FSU3hGc2taR1JvUkdyRWNHUjRCSVlFalNTWHhLUGt1K1RDUk1uQUFCQUFBQWlRRFFBQTBBQUFBQUFBSUFUZ0JlQUhNQUFBRFJDM0FBQUFBQUFBQUFFZ0RlQUFFQUFBQUFBQUFBTlFBQUFBRUFBQUFBQUFFQUNBQTFBQUVBQUFBQUFBSUFCd0E5QUFFQUFBQUFBQU1BQ0FCRUFBRUFBQUFBQUFRQUNBQk1BQUVBQUFBQUFBVUFDd0JVQUFFQUFBQUFBQVlBQ0FCZkFBRUFBQUFBQUFvQUt3Qm5BQUVBQUFBQUFBc0FFd0NTQUFNQUFRUUpBQUFBYWdDbEFBTUFBUVFKQUFFQUVBRVBBQU1BQVFRSkFBSUFEZ0VmQUFNQUFRUUpBQU1BRUFFdEFBTUFBUVFKQUFRQUVBRTlBQU1BQVFRSkFBVUFGZ0ZOQUFNQUFRUUpBQVlBRUFGakFBTUFBUVFKQUFvQVZnRnpBQU1BQVFRSkFBc0FKZ0hKUTI5d2VYSnBaMmgwSUNoREtTQXlNREUySUdKNUlHOXlhV2RwYm1Gc0lHRjFkR2h2Y25NZ1FDQm1iMjUwWld4c2J5NWpiMjF6WmkxcFkyOXVjMUpsWjNWc1lYSnpaaTFwWTI5dWMzTm1MV2xqYjI1elZtVnljMmx2YmlBeExqQnpaaTFwWTI5dWMwZGxibVZ5WVhSbFpDQmllU0J6ZG1jeWRIUm1JR1p5YjIwZ1JtOXVkR1ZzYkc4Z2NISnZhbVZqZEM1b2RIUndPaTh2Wm05dWRHVnNiRzh1WTI5dEFFTUFid0J3QUhrQWNnQnBBR2NBYUFCMEFDQUFLQUJEQUNrQUlBQXlBREFBTVFBMkFDQUFZZ0I1QUNBQWJ3QnlBR2tBWndCcEFHNEFZUUJzQUNBQVlRQjFBSFFBYUFCdkFISUFjd0FnQUVBQUlBQm1BRzhBYmdCMEFHVUFiQUJzQUc4QUxnQmpBRzhBYlFCekFHWUFMUUJwQUdNQWJ3QnVBSE1BVWdCbEFHY0FkUUJzQUdFQWNnQnpBR1lBTFFCcEFHTUFid0J1QUhNQWN3Qm1BQzBBYVFCakFHOEFiZ0J6QUZZQVpRQnlBSE1BYVFCdkFHNEFJQUF4QUM0QU1BQnpBR1lBTFFCcEFHTUFid0J1QUhNQVJ3QmxBRzRBWlFCeUFHRUFkQUJsQUdRQUlBQmlBSGtBSUFCekFIWUFad0F5QUhRQWRBQm1BQ0FBWmdCeUFHOEFiUUFnQUVZQWJ3QnVBSFFBWlFCc0FHd0Fid0FnQUhBQWNnQnZBR29BWlFCakFIUUFMZ0JvQUhRQWRBQndBRG9BTHdBdkFHWUFid0J1QUhRQVpRQnNBR3dBYndBdUFHTUFid0J0QUFBQUFBSUFBQUFBQUFBQUNnQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBaVFFQ0FRTUJCQUVGQVFZQkJ3RUlBUWtCQ2dFTEFRd0JEUUVPQVE4QkVBRVJBUklCRXdFVUFSVUJGZ0VYQVJnQkdRRWFBUnNCSEFFZEFSNEJId0VnQVNFQklnRWpBU1FCSlFFbUFTY0JLQUVwQVNvQkt3RXNBUzBCTGdFdkFUQUJNUUV5QVRNQk5BRTFBVFlCTndFNEFUa0JPZ0U3QVR3QlBRRStBVDhCUUFGQkFVSUJRd0ZFQVVVQlJnRkhBVWdCU1FGS0FVc0JUQUZOQVU0QlR3RlFBVkVCVWdGVEFWUUJWUUZXQVZjQldBRlpBVm9CV3dGY0FWMEJYZ0ZmQVdBQllRRmlBV01CWkFGbEFXWUJad0ZvQVdrQmFnRnJBV3dCYlFGdUFXOEJjQUZ4QVhJQmN3RjBBWFVCZGdGM0FYZ0JlUUY2QVhzQmZBRjlBWDRCZndHQUFZRUJnZ0dEQVlRQmhRR0dBWWNCaUFHSkFZb0FCVE5rYjNSekEyRmtaQVZqYkc5elpRbHdjbWxqWldKdmIyc0VhR1ZzY0FodWIzUmxZbTl2YXdSeWIzZHpCblZ3Ykc5aFpBVmpiRzlqYXdabmNtOTFjSE1MYjNCbGJsOW1iMnhrWlhJUWNtbG5hSFJmWVd4cFoyNWZkR1Y0ZEFkd2NtOWtkV04wRFhGMVpYTjBhVzl1WDJabFpXUUhkMkZ5Ym1sdVp3UjFjMlZ5QlhKcFoyaDBERzV2ZEdsbWFXTmhkR2x2YmdSb2IyMWxDR052Ym5SeVlXTjBCMkZrWkhWelpYSUVZWEJ3Y3dSamIzQjVCV2x0WVdkbEJHOXdaVzRJYzJWMGRHbHVaM01HZW05dmJXbHVCbkpsWTI5eVpBbGhjbkp2ZDJSdmQyNERZM1YwRDJsdWMyVnlkRjkwWlcxd2JHRjBaUTF2Y0dWdVpXUmZabTlzWkdWeUNYTnBaR1ZmYkdsemRBZDZiMjl0YjNWMEJuRjFiM1JsY3d4eVpXeGhkR1ZrWDJ4cGMzUUVaMlJ2WXdkemJtbHdjR1YwQkhCaFoyVUxZM1Z6ZEc5dFgyRndjSE1IWVhKeWIzZDFjQVpoZEhSaFkyZ0haR0Y1ZG1sbGR3UnBibVp2RUdsdWMyVnlkRjkwWVdkZlptbGxiR1FGY0dGemRHVUVjMjl5ZEFOd1pHWUdjbVZ3YjNKMEJIUmhjMnNJWVhCd2NtOTJZV3dMYzI5amFXRnNjMmhoY21VR2NHVnZjR3hsQm1sMFlXeHBZd1prWld4bGRHVUVZbUZqYXdOaVlXNEZaVzFoYVd3RVltOXNaQWR3Y21WMmFXVjNCWE5vWVhKbENXUmhjMmhpYjJGeVpBWjBhR0Z1YTNNRmRHOWtZWGtLWTI5dWRISmhZM1F0TVFkemNHbHVibVZ5QlhCb2IzUnZCV1YyWlc1MEIySjFhV3hrWlhJTWFuVnpkR2xtZVY5MFpYaDBFV05sYm5SbGNsOWhiR2xuYmw5MFpYaDBCR1ZrYVhRR2JHRjViM1YwQ0hCeWFXOXlhWFI1RUhOMFlXNWtZWEprWDI5aWFtVmpkSE1IWTI5dWRHRmpkQWhqZFhOMGIyMDVNd2RsYldGcGJDMHhCM04xWTJObGMzTUhjbVZtY21WemFBOXNaV1owWDJGc2FXZHVYM1JsZUhRRVpHOTNiZ1ZqYUdGeWRBUmphR0YwQldWeWNtOXlCR3hsWm5RTGNtVnRiM1psWDJ4cGJtc0hjM1Z0YldGeWVRaGtiMk4xYldWdWRBWmtjbUZtZEhNTmMzVnRiV0Z5ZVdSbGRHRnBiQWR5WlhCc1lXTmxCR3hwYTJVSVpHOTNibXh2WVdRRlkyaGxZMnNMWTJobGRuSnZibXhsWm5RR1pYaHdZVzVrQkd4cGJtc0ZjbVZ3YkhrRmRHRmliR1VFWm1WbFpBZGxkbVZ1ZEMweERuUnBiR1ZmWTJGeVpGOXNhWE4wRkhKcFkyaDBaWGgwWW5Wc2JHVjBaV1JzYVhOMEJHeHBjM1FJWm1GMmIzSnBkR1VNWTJobGRuSnZibkpwWjJoMEMyTm9aWFp5YjI1a2IzZHVCbVpwYkhSbGNnUnRiM1psRG5KcFkyaDBaWGgwYVc1a1pXNTBDWFZ1WkdWeWJHbHVaUWhtWldWa1ltRmphd1JtYVd4bEJIVnVaRzhVY21samFIUmxlSFJ1ZFcxaVpYSmxaR3hwYzNRRWJHOWphd3BtYVd4MFpYSnNhWE4wQ1dOb1pYWnliMjUxY0FWamJHVmhjZ2RtYjNKM1lYSmtDbTVsZDE5M2FXNWtiM2NQY21samFIUmxlSFJ2ZFhSa1pXNTBCblZ1Ykc5amF3dHZjSEJ2Y25SMWJtbDBlUVJ3YjNOMEFuVndCbk5sWVhKamFBTnVaWGNHWm5KdmVtVnVDR052YlcxbGJuUnpCbkpsWTJWdWRBbHRZV2RwWTNkaGJtUVlaR2x6WTI5MWJuUnpZMmhsWkhWc1pXbGpiMjV6TFRBeURtTmhibU5sYkMxamFYSmpiR1ZrQ0dOMWMzUnZiVEkyQUFBQUFBQUJBQUgvL3dBUEFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBWUFCZ0FHQUFZQTFML2FnTlMvMnF3QUN3Z3NBQlZXRVZaSUNCTHVBQU9VVXV3QmxOYVdMQTBHN0FvV1dCbUlJcFZXTEFDSldHNUNBQUlBR05qSTJJYklTR3dBRm13QUVNalJMSUFBUUJEWUVJdHNBRXNzQ0JnWmkyd0Fpd2daQ0N3d0ZDd0JDWmFzaWdCQ2tORlkwVlNXMWdoSXlFYmlsZ2dzRkJRV0NHd1FGa2JJTEE0VUZnaHNEaFpXU0N4QVFwRFJXTkZZV1N3S0ZCWUliRUJDa05GWTBVZ3NEQlFXQ0d3TUZrYklMREFVRmdnWmlDS2ltRWdzQXBRV0dBYklMQWdVRmdoc0FwZ0d5Q3dObEJZSWJBMllCdGdXVmxaRzdBQksxbFpJN0FBVUZobFdWa3RzQU1zSUVVZ3NBUWxZV1Fnc0FWRFVGaXdCU05Dc0FZalFoc2hJVm13QVdBdHNBUXNJeUVqSVNCa3NRVmlRaUN3QmlOQ3NRRUtRMFZqc1FFS1E3QUJZRVZqc0FNcUlTQ3dCa01naWlDS3NBRXJzVEFGSmJBRUpsRllZRkFiWVZKWldDTlpJU0N3UUZOWXNBRXJHeUd3UUZranNBQlFXR1ZaTGJBRkxMQUhReXV5QUFJQVEyQkNMYkFHTExBSEkwSWpJTEFBSTBKaHNBSmlackFCWTdBQllMQUZLaTJ3Qnl3Z0lFVWdzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUVTd0FXQXRzQWdzc2djTEFFTkZRaW9oc2dBQkFFTmdRaTJ3Q1N5d0FFTWpSTElBQVFCRFlFSXRzQW9zSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pDQ3dJRkJZSWJBQUc3QXdVRml3SUJ1d1FGbFpJN0FBVUZobFdiQURKU05oUkVTd0FXQXRzQXNzSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pMQWtVRml3QUJ1d1FGa2pzQUJRV0dWWnNBTWxJMkZFUkxBQllDMndEQ3dnc0FBalFySUxDZ05GV0NFYkl5RlpLaUV0c0Ewc3NRSUNSYkJrWVVRdHNBNHNzQUZnSUNDd0RFTktzQUJRV0NDd0RDTkNXYkFOUTBxd0FGSllJTEFOSTBKWkxiQVBMQ0N3RUdKbXNBRmpJTGdFQUdPS0kyR3dEa05nSUlwZ0lMQU9JMElqTGJBUUxFdFVXTEVFWkVSWkpMQU5aU040TGJBUkxFdFJXRXRUV0xFRVpFUlpHeUZaSkxBVFpTTjRMYkFTTExFQUQwTlZXTEVQRDBPd0FXRkNzQThyV2JBQVE3QUNKVUt4REFJbFFyRU5BaVZDc0FFV0l5Q3dBeVZRV0xFQkFFTmdzQVFsUW9xS0lJb2pZYkFPS2lFanNBRmhJSW9qWWJBT0tpRWJzUUVBUTJDd0FpVkNzQUlsWWJBT0tpRlpzQXhEUjdBTlEwZGdzQUppSUxBQVVGaXdRR0JaWnJBQll5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc1FBQUV5TkVzQUZEc0FBK3NnRUJBVU5nUWkyd0V5d0FzUUFDUlZSWXNBOGpRaUJGc0FzalFyQUtJN0FCWUVJZ1lMQUJZYlVRRUFFQURnQkNRb3Bnc1JJR0s3QnlLeHNpV1Myd0ZDeXhBQk1yTGJBVkxMRUJFeXN0c0JZc3NRSVRLeTJ3Rnl5eEF4TXJMYkFZTExFRUV5c3RzQmtzc1FVVEt5MndHaXl4QmhNckxiQWJMTEVIRXlzdHNCd3NzUWdUS3kyd0hTeXhDUk1yTGJBZUxBQ3dEU3V4QUFKRlZGaXdEeU5DSUVXd0N5TkNzQW9qc0FGZ1FpQmdzQUZodFJBUUFRQU9BRUpDaW1DeEVnWXJzSElyR3lKWkxiQWZMTEVBSGlzdHNDQXNzUUVlS3kyd0lTeXhBaDRyTGJBaUxMRURIaXN0c0NNc3NRUWVLeTJ3SkN5eEJSNHJMYkFsTExFR0hpc3RzQ1lzc1FjZUt5MndKeXl4Q0I0ckxiQW9MTEVKSGlzdHNDa3NJRHl3QVdBdHNDb3NJR0N3RUdBZ1F5T3dBV0JEc0FJbFliQUJZTEFwS2lFdHNDc3NzQ29yc0NvcUxiQXNMQ0FnUnlBZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZQ05oT0NNZ2lsVllJRWNnSUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQWpZVGdiSVZrdHNDMHNBTEVBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M0c0FMQU5LN0VBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M4c0lEV3dBV0F0c0RBc0FMQUJSV080QkFCaUlMQUFVRml3UUdCWlpyQUJZN0FCSzdBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlk3QUJLN0FBRnJRQUFBQUFBRVErSXppeEx3RVZLaTJ3TVN3Z1BDQkhJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJDd0FFTmhPQzJ3TWl3dUZ6d3RzRE1zSUR3Z1J5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc0FCRFliQUJRMk00TGJBMExMRUNBQllsSUM0Z1I3QUFJMEt3QWlWSmlvcEhJMGNqWVNCWVloc2hXYkFCSTBLeU13RUJGUlFxTGJBMUxMQUFGckFFSmJBRUpVY2pSeU5oc0FsREsyV0tMaU1nSUR5S09DMndOaXl3QUJhd0JDV3dCQ1VnTGtjalJ5TmhJTEFFSTBLd0NVTXJJTEJnVUZnZ3NFQlJXTE1DSUFNZ0c3TUNKZ01hV1VKQ0l5Q3dDRU1naWlOSEkwY2pZU05HWUxBRVE3QUNZaUN3QUZCWXNFQmdXV2F3QVdOZ0lMQUJLeUNLaW1FZ3NBSkRZR1Fqc0FORFlXUlFXTEFDUTJFYnNBTkRZRm13QXlXd0FtSWdzQUJRV0xCQVlGbG1zQUZqWVNNZ0lMQUVKaU5HWVRnYkk3QUlRMGF3QWlXd0NFTkhJMGNqWVdBZ3NBUkRzQUppSUxBQVVGaXdRR0JaWnJBQlkyQWpJTEFCS3lPd0JFTmdzQUVyc0FVbFliQUZKYkFDWWlDd0FGQllzRUJnV1dhd0FXT3dCQ1poSUxBRUpXQmtJN0FESldCa1VGZ2hHeU1oV1NNZ0lMQUVKaU5HWVRoWkxiQTNMTEFBRmlBZ0lMQUZKaUF1UnlOSEkyRWpQRGd0c0Rnc3NBQVdJTEFJSTBJZ0lDQkdJMGV3QVNzallUZ3RzRGtzc0FBV3NBTWxzQUlsUnlOSEkyR3dBRlJZTGlBOEl5RWJzQUlsc0FJbFJ5TkhJMkVnc0FVbHNBUWxSeU5ISTJHd0JpV3dCU1ZKc0FJbFlia0lBQWdBWTJNaklGaGlHeUZaWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUNNdUl5QWdQSW80SXlGWkxiQTZMTEFBRmlDd0NFTWdMa2NqUnlOaElHQ3dJR0Jtc0FKaUlMQUFVRml3UUdCWlpyQUJZeU1nSUR5S09DMndPeXdqSUM1R3NBSWxSbEpZSUR4WkxyRXJBUlFyTGJBOExDTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDBzSXlBdVJyQUNKVVpTV0NBOFdTTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDRzc0RVckl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUt5MndQeXl3Tml1S0lDQThzQVFqUW9vNEl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUs3QUVReTZ3S3lzdHNFQXNzQUFXc0FRbHNBUW1JQzVISTBjalliQUpReXNqSUR3Z0xpTTRzU3NCRkNzdHNFRXNzUWdFSlVLd0FCYXdCQ1d3QkNVZ0xrY2pSeU5oSUxBRUkwS3dDVU1ySUxCZ1VGZ2dzRUJSV0xNQ0lBTWdHN01DSmdNYVdVSkNJeUJIc0FSRHNBSmlJTEFBVUZpd1FHQlpackFCWTJBZ3NBRXJJSXFLWVNDd0FrTmdaQ093QTBOaFpGQllzQUpEWVJ1d0EwTmdXYkFESmJBQ1lpQ3dBRkJZc0VCZ1dXYXdBV05oc0FJbFJtRTRJeUE4SXpnYklTQWdSaU5Ic0FFckkyRTRJVm14S3dFVUt5MndRaXl3TlNzdXNTc0JGQ3N0c0VNc3NEWXJJU01nSUR5d0JDTkNJeml4S3dFVUs3QUVReTZ3S3lzdHNFUXNzQUFWSUVld0FDTkNzZ0FCQVJVVUV5NndNU290c0VVc3NBQVZJRWV3QUNOQ3NnQUJBUlVVRXk2d01Tb3RzRVlzc1FBQkZCT3dNaW90c0Vjc3NEUXFMYkJJTExBQUZrVWpJQzRnUm9vallUaXhLd0VVS3kyd1NTeXdDQ05Dc0VnckxiQktMTElBQUVFckxiQkxMTElBQVVFckxiQk1MTElCQUVFckxiQk5MTElCQVVFckxiQk9MTElBQUVJckxiQlBMTElBQVVJckxiQlFMTElCQUVJckxiQlJMTElCQVVJckxiQlNMTElBQUQ0ckxiQlRMTElBQVQ0ckxiQlVMTElCQUQ0ckxiQlZMTElCQVQ0ckxiQldMTElBQUVBckxiQlhMTElBQVVBckxiQllMTElCQUVBckxiQlpMTElCQVVBckxiQmFMTElBQUVNckxiQmJMTElBQVVNckxiQmNMTElCQUVNckxiQmRMTElCQVVNckxiQmVMTElBQUQ4ckxiQmZMTElBQVQ4ckxiQmdMTElCQUQ4ckxiQmhMTElCQVQ4ckxiQmlMTEEzS3k2eEt3RVVLeTJ3WXl5d055dXdPeXN0c0dRc3NEY3JzRHdyTGJCbExMQUFGckEzSzdBOUt5MndaaXl3T0NzdXNTc0JGQ3N0c0djc3NEZ3JzRHNyTGJCb0xMQTRLN0E4S3kyd2FTeXdPQ3V3UFNzdHNHb3NzRGtyTHJFckFSUXJMYkJyTExBNUs3QTdLeTJ3YkN5d09TdXdQQ3N0c0cwc3NEa3JzRDByTGJCdUxMQTZLeTZ4S3dFVUt5MndieXl3T2l1d095c3RzSEFzc0RvcnNEd3JMYkJ4TExBNks3QTlLeTJ3Y2l5ekNRUUNBMFZZSVJzaklWbENLN0FJWmJBREpGQjRzQUVWTUMwQVM3Z0F5RkpZc1FFQmpsbXdBYmtJQUFnQVkzQ3hBQVZDc2dBQkFDcXhBQVZDc3dvQ0FRZ3FzUUFGUXJNT0FBRUlLckVBQmtLNkFzQUFBUUFKS3JFQUIwSzZBRUFBQVFBSktyRURBRVN4SkFHSVVWaXdRSWhZc1FOa1JMRW1BWWhSV0xvSWdBQUJCRUNJWTFSWXNRTUFSRmxaV1ZtekRBSUJEQ3E0QWYrRnNBU05zUUlBUkFBQScpIGZvcm1hdCgndHJ1ZXR5cGUnKTtcbn1cbi8qIENocm9tZSBoYWNrOiBTVkcgaXMgcmVuZGVyZWQgbW9yZSBzbW9vdGggaW4gV2luZG96emUuIDEwMCUgbWFnaWMsIHVuY29tbWVudCBpZiB5b3UgbmVlZCBpdC4gKi9cbi8qIE5vdGUsIHRoYXQgd2lsbCBicmVhayBoaW50aW5nISBJbiBvdGhlciBPUy1lcyBmb250IHdpbGwgYmUgbm90IGFzIHNoYXJwIGFzIGl0IGNvdWxkIGJlICovXG4vKlxuQG1lZGlhIHNjcmVlbiBhbmQgKC13ZWJraXQtbWluLWRldmljZS1waXhlbC1yYXRpbzowKSB7XG4gIEBmb250LWZhY2Uge1xuICAgIGZvbnQtZmFtaWx5OiAnc2YtaWNvbnMnO1xuICAgIHNyYzogdXJsKCcuLi9mb250L3NmLWljb25zLnN2Zz8xMzA2NzY3NiNzZi1pY29ucycpIGZvcm1hdCgnc3ZnJyk7XG4gIH1cbn1cbiovXG5cbiBbY2xhc3NePVwic2YtaWNvbi1cIl06YmVmb3JlLCBbY2xhc3MqPVwiIHNmLWljb24tXCJdOmJlZm9yZSB7XG4gIGZvbnQtZmFtaWx5OiBcInNmLWljb25zXCI7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgc3BlYWs6IG5vbmU7XG5cbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB0ZXh0LWRlY29yYXRpb246IGluaGVyaXQ7XG4gIHdpZHRoOiAxZW07XG4gIG1hcmdpbi1yaWdodDogLjJlbTtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAvKiBvcGFjaXR5OiAuODsgKi9cblxuICAvKiBGb3Igc2FmZXR5IC0gcmVzZXQgcGFyZW50IHN0eWxlcywgdGhhdCBjYW4gYnJlYWsgZ2x5cGggY29kZXMqL1xuICBmb250LXZhcmlhbnQ6IG5vcm1hbDtcbiAgdGV4dC10cmFuc2Zvcm06IG5vbmU7XG5cbiAgLyogZml4IGJ1dHRvbnMgaGVpZ2h0LCBmb3IgdHdpdHRlciBib290c3RyYXAgKi9cbiAgbGluZS1oZWlnaHQ6IDFlbTtcblxuICAvKiBBbmltYXRpb24gY2VudGVyIGNvbXBlbnNhdGlvbiAtIG1hcmdpbnMgc2hvdWxkIGJlIHN5bW1ldHJpYyAqL1xuICAvKiByZW1vdmUgaWYgbm90IG5lZWRlZCAqL1xuICBtYXJnaW4tbGVmdDogLjJlbTtcblxuICAvKiB5b3UgY2FuIGJlIG1vcmUgY29tZm9ydGFibGUgd2l0aCBpbmNyZWFzZWQgaWNvbnMgc2l6ZSAqL1xuICAvKiBmb250LXNpemU6IDEyMCU7ICovXG5cbiAgLyogVW5jb21tZW50IGZvciAzRCBlZmZlY3QgKi9cbiAgLyogdGV4dC1zaGFkb3c6IDFweCAxcHggMXB4IHJnYmEoMTI3LCAxMjcsIDEyNywgMC4zKTsgKi9cbn1cbi5zZi1pY29uLTNkb3RzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDAnOyB9IC8qICfuoIAnICovXG4uc2YtaWNvbi1hZGQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMSc7IH0gLyogJ+6ggScgKi9cbi5zZi1pY29uLWNsb3NlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDInOyB9IC8qICfuoIInICovXG4uc2YtaWNvbi1wcmljZWJvb2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMyc7IH0gLyogJ+6ggycgKi9cbi5zZi1pY29uLWhlbHA6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNCc7IH0gLyogJ+6ghCcgKi9cbi5zZi1pY29uLW5vdGVib29rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDUnOyB9IC8qICfuoIUnICovXG4uc2YtaWNvbi1yb3dzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDYnOyB9IC8qICfuoIYnICovXG4uc2YtaWNvbi11cGxvYWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNyc7IH0gLyogJ+6ghycgKi9cbi5zZi1pY29uLWNsb2NrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDgnOyB9IC8qICfuoIgnICovXG4uc2YtaWNvbi1ncm91cHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwOSc7IH0gLyogJ+6giScgKi9cbi5zZi1pY29uLW9wZW5fZm9sZGVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGEnOyB9IC8qICfuoIonICovXG4uc2YtaWNvbi1yaWdodF9hbGlnbl90ZXh0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGInOyB9IC8qICfuoIsnICovXG4uc2YtaWNvbi1wcm9kdWN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGMnOyB9IC8qICfuoIwnICovXG4uc2YtaWNvbi1xdWVzdGlvbl9mZWVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGQnOyB9IC8qICfuoI0nICovXG4uc2YtaWNvbi13YXJuaW5nOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGUnOyB9IC8qICfuoI4nICovXG4uc2YtaWNvbi11c2VyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGYnOyB9IC8qICfuoI8nICovXG4uc2YtaWNvbi1yaWdodDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEwJzsgfSAvKiAn7qCQJyAqL1xuLnNmLWljb24tbm90aWZpY2F0aW9uOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTEnOyB9IC8qICfuoJEnICovXG4uc2YtaWNvbi1ob21lOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTInOyB9IC8qICfuoJInICovXG4uc2YtaWNvbi1jb250cmFjdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEzJzsgfSAvKiAn7qCTJyAqL1xuLnNmLWljb24tYWRkdXNlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE0JzsgfSAvKiAn7qCUJyAqL1xuLnNmLWljb24tYXBwczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE1JzsgfSAvKiAn7qCVJyAqL1xuLnNmLWljb24tY29weTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE2JzsgfSAvKiAn7qCWJyAqL1xuLnNmLWljb24taW1hZ2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNyc7IH0gLyogJ+6glycgKi9cbi5zZi1pY29uLW9wZW46YmVmb3JlIHsgY29udGVudDogJ1xcZTgxOCc7IH0gLyogJ+6gmCcgKi9cbi5zZi1pY29uLXNldHRpbmdzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTknOyB9IC8qICfuoJknICovXG4uc2YtaWNvbi16b29taW46YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYSc7IH0gLyogJ+6gmicgKi9cbi5zZi1pY29uLXJlY29yZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFiJzsgfSAvKiAn7qCbJyAqL1xuLnNmLWljb24tYXJyb3dkb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWMnOyB9IC8qICfuoJwnICovXG4uc2YtaWNvbi1jdXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZCc7IH0gLyogJ+6gnScgKi9cbi5zZi1pY29uLWluc2VydF90ZW1wbGF0ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFlJzsgfSAvKiAn7qCeJyAqL1xuLnNmLWljb24tb3BlbmVkX2ZvbGRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFmJzsgfSAvKiAn7qCfJyAqL1xuLnNmLWljb24tc2lkZV9saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjAnOyB9IC8qICfuoKAnICovXG4uc2YtaWNvbi16b29tb3V0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjEnOyB9IC8qICfuoKEnICovXG4uc2YtaWNvbi1xdW90ZXM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMic7IH0gLyogJ+6goicgKi9cbi5zZi1pY29uLXJlbGF0ZWRfbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIzJzsgfSAvKiAn7qCjJyAqL1xuLnNmLWljb24tZ2RvYzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI0JzsgfSAvKiAn7qCkJyAqL1xuLnNmLWljb24tc25pcHBldDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI1JzsgfSAvKiAn7qClJyAqL1xuLnNmLWljb24tcGFnZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI2JzsgfSAvKiAn7qCmJyAqL1xuLnNmLWljb24tY3VzdG9tX2FwcHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNyc7IH0gLyogJ+6gpycgKi9cbi5zZi1pY29uLWFycm93dXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyOCc7IH0gLyogJ+6gqCcgKi9cbi5zZi1pY29uLWF0dGFjaDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI5JzsgfSAvKiAn7qCpJyAqL1xuLnNmLWljb24tZGF5dmlldzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJhJzsgfSAvKiAn7qCqJyAqL1xuLnNmLWljb24taW5mbzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJiJzsgfSAvKiAn7qCrJyAqL1xuLnNmLWljb24taW5zZXJ0X3RhZ19maWVsZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJjJzsgfSAvKiAn7qCsJyAqL1xuLnNmLWljb24tcGFzdGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyZCc7IH0gLyogJ+6grScgKi9cbi5zZi1pY29uLXNvcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyZSc7IH0gLyogJ+6gricgKi9cbi5zZi1pY29uLXBkZjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJmJzsgfSAvKiAn7qCvJyAqL1xuLnNmLWljb24tcmVwb3J0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzAnOyB9IC8qICfuoLAnICovXG4uc2YtaWNvbi10YXNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzEnOyB9IC8qICfuoLEnICovXG4uc2YtaWNvbi1hcHByb3ZhbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODMyJzsgfSAvKiAn7qCyJyAqL1xuLnNmLWljb24tc29jaWFsc2hhcmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzMyc7IH0gLyogJ+6gsycgKi9cbi5zZi1pY29uLXBlb3BsZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM0JzsgfSAvKiAn7qC0JyAqL1xuLnNmLWljb24taXRhbGljOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzUnOyB9IC8qICfuoLUnICovXG4uc2YtaWNvbi1kZWxldGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzNic7IH0gLyogJ+6gticgKi9cbi5zZi1pY29uLWJhY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzNyc7IH0gLyogJ+6gtycgKi9cbi5zZi1pY29uLWJhbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM4JzsgfSAvKiAn7qC4JyAqL1xuLnNmLWljb24tZW1haWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzOSc7IH0gLyogJ+6guScgKi9cbi5zZi1pY29uLWJvbGQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzYSc7IH0gLyogJ+6guicgKi9cbi5zZi1pY29uLXByZXZpZXc6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzYic7IH0gLyogJ+6guycgKi9cbi5zZi1pY29uLXNoYXJlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2MnOyB9IC8qICfuoLwnICovXG4uc2YtaWNvbi1kYXNoYm9hcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzZCc7IH0gLyogJ+6gvScgKi9cbi5zZi1pY29uLXRoYW5rczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNlJzsgfSAvKiAn7qC+JyAqL1xuLnNmLWljb24tdG9kYXk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzZic7IH0gLyogJ+6gvycgKi9cbi5zZi1pY29uLWNvbnRyYWN0LTE6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0MCc7IH0gLyogJ+6hgCcgKi9cbi5zZi1pY29uLXNwaW5uZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0MSc7IH0gLyogJ+6hgScgKi9cbi5zZi1pY29uLXBob3RvOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDInOyB9IC8qICfuoYInICovXG4uc2YtaWNvbi1ldmVudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQzJzsgfSAvKiAn7qGDJyAqL1xuLnNmLWljb24tYnVpbGRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ0JzsgfSAvKiAn7qGEJyAqL1xuLnNmLWljb24tanVzdGlmeV90ZXh0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDUnOyB9IC8qICfuoYUnICovXG4uc2YtaWNvbi1jZW50ZXJfYWxpZ25fdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ2JzsgfSAvKiAn7qGGJyAqL1xuLnNmLWljb24tZWRpdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ3JzsgfSAvKiAn7qGHJyAqL1xuLnNmLWljb24tbGF5b3V0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDgnOyB9IC8qICfuoYgnICovXG4uc2YtaWNvbi1wcmlvcml0eTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ5JzsgfSAvKiAn7qGJJyAqL1xuLnNmLWljb24tc3RhbmRhcmRfb2JqZWN0czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRhJzsgfSAvKiAn7qGKJyAqL1xuLnNmLWljb24tY29udGFjdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRiJzsgfSAvKiAn7qGLJyAqL1xuLnNmLWljb24tY3VzdG9tOTM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Yyc7IH0gLyogJ+6hjCcgKi9cbi5zZi1pY29uLWVtYWlsLTE6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0ZCc7IH0gLyogJ+6hjScgKi9cbi5zZi1pY29uLXN1Y2Nlc3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0ZSc7IH0gLyogJ+6hjicgKi9cbi5zZi1pY29uLXJlZnJlc2g6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Zic7IH0gLyogJ+6hjycgKi9cbi5zZi1pY29uLWxlZnRfYWxpZ25fdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODUwJzsgfSAvKiAn7qGQJyAqL1xuLnNmLWljb24tZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODUxJzsgfSAvKiAn7qGRJyAqL1xuLnNmLWljb24tY2hhcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Mic7IH0gLyogJ+6hkicgKi9cbi5zZi1pY29uLWNoYXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Myc7IH0gLyogJ+6hkycgKi9cbi5zZi1pY29uLWVycm9yOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTQnOyB9IC8qICfuoZQnICovXG4uc2YtaWNvbi1sZWZ0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTUnOyB9IC8qICfuoZUnICovXG4uc2YtaWNvbi1yZW1vdmVfbGluazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU2JzsgfSAvKiAn7qGWJyAqL1xuLnNmLWljb24tc3VtbWFyeTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU3JzsgfSAvKiAn7qGXJyAqL1xuLnNmLWljb24tZG9jdW1lbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1OCc7IH0gLyogJ+6hmCcgKi9cbi5zZi1pY29uLWRyYWZ0czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU5JzsgfSAvKiAn7qGZJyAqL1xuLnNmLWljb24tc3VtbWFyeWRldGFpbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVhJzsgfSAvKiAn7qGaJyAqL1xuLnNmLWljb24tcmVwbGFjZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODViJzsgfSAvKiAn7qGbJyAqL1xuLnNmLWljb24tbGlrZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVjJzsgfSAvKiAn7qGcJyAqL1xuLnNmLWljb24tZG93bmxvYWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1ZCc7IH0gLyogJ+6hnScgKi9cbi5zZi1pY29uLWNoZWNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWUnOyB9IC8qICfuoZ4nICovXG4uc2YtaWNvbi1jaGV2cm9ubGVmdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVmJzsgfSAvKiAn7qGfJyAqL1xuLnNmLWljb24tZXhwYW5kOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjAnOyB9IC8qICfuoaAnICovXG4uc2YtaWNvbi1saW5rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjEnOyB9IC8qICfuoaEnICovXG4uc2YtaWNvbi1yZXBseTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODYyJzsgfSAvKiAn7qGiJyAqL1xuLnNmLWljb24tdGFibGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Myc7IH0gLyogJ+6hoycgKi9cbi5zZi1pY29uLWZlZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2NCc7IH0gLyogJ+6hpCcgKi9cbi5zZi1pY29uLWV2ZW50LTE6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2NSc7IH0gLyogJ+6hpScgKi9cbi5zZi1pY29uLXRpbGVfY2FyZF9saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjYnOyB9IC8qICfuoaYnICovXG4uc2YtaWNvbi1yaWNodGV4dGJ1bGxldGVkbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY3JzsgfSAvKiAn7qGnJyAqL1xuLnNmLWljb24tbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY4JzsgfSAvKiAn7qGoJyAqL1xuLnNmLWljb24tZmF2b3JpdGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2OSc7IH0gLyogJ+6hqScgKi9cbi5zZi1pY29uLWNoZXZyb25yaWdodDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZhJzsgfSAvKiAn7qGqJyAqL1xuLnNmLWljb24tY2hldnJvbmRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Yic7IH0gLyogJ+6hqycgKi9cbi5zZi1pY29uLWZpbHRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZjJzsgfSAvKiAn7qGsJyAqL1xuLnNmLWljb24tbW92ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZkJzsgfSAvKiAn7qGtJyAqL1xuLnNmLWljb24tcmljaHRleHRpbmRlbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2ZSc7IH0gLyogJ+6hricgKi9cbi5zZi1pY29uLXVuZGVybGluZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZmJzsgfSAvKiAn7qGvJyAqL1xuLnNmLWljb24tZmVlZGJhY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3MCc7IH0gLyogJ+6hsCcgKi9cbi5zZi1pY29uLWZpbGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3MSc7IH0gLyogJ+6hsScgKi9cbi5zZi1pY29uLXVuZG86YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Mic7IH0gLyogJ+6hsicgKi9cbi5zZi1pY29uLXJpY2h0ZXh0bnVtYmVyZWRsaXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzMnOyB9IC8qICfuobMnICovXG4uc2YtaWNvbi1sb2NrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzQnOyB9IC8qICfuobQnICovXG4uc2YtaWNvbi1maWx0ZXJsaXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzUnOyB9IC8qICfuobUnICovXG4uc2YtaWNvbi1jaGV2cm9udXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Nic7IH0gLyogJ+6hticgKi9cbi5zZi1pY29uLWNsZWFyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzcnOyB9IC8qICfuobcnICovXG4uc2YtaWNvbi1mb3J3YXJkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzgnOyB9IC8qICfuobgnICovXG4uc2YtaWNvbi1uZXdfd2luZG93OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzknOyB9IC8qICfuobknICovXG4uc2YtaWNvbi1yaWNodGV4dG91dGRlbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3YSc7IH0gLyogJ+6huicgKi9cbi5zZi1pY29uLXVubG9jazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdiJzsgfSAvKiAn7qG7JyAqL1xuLnNmLWljb24tb3Bwb3J0dW5pdHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Yyc7IH0gLyogJ+6hvCcgKi9cbi5zZi1pY29uLXBvc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3ZCc7IH0gLyogJ+6hvScgKi9cbi5zZi1pY29uLXVwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2UnOyB9IC8qICfuob4nICovXG4uc2YtaWNvbi1zZWFyY2g6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Zic7IH0gLyogJ+6hvycgKi9cbi5zZi1pY29uLW5ldzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgwJzsgfSAvKiAn7qKAJyAqL1xuLnNmLWljb24tZnJvemVuOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODEnOyB9IC8qICfuooEnICovXG4uc2YtaWNvbi1jb21tZW50czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgyJzsgfSAvKiAn7qKCJyAqL1xuLnNmLWljb24tcmVjZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODMnOyB9IC8qICfuooMnICovXG4uc2YtaWNvbi1tYWdpY3dhbmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4NCc7IH0gLyogJ+6ihCcgKi9cbi5zZi1pY29uLWRpc2NvdW50c2NoZWR1bGVpY29ucy0wMjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg1JzsgfSAvKiAn7qKFJyAqL1xuLnNmLWljb24tY2FuY2VsLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Nic7IH0gLyogJ+6ihicgKi9cbi5zZi1pY29uLWN1c3RvbTI2OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODcnOyB9IC8qICfuoocnICovXG5cbi8qIFRoZSBmb2xsb3dpbmcgaXMgY29waWVkIGZyb20gaWNvbnMvY3NzL3NiLWVtYmVkZGVkLmNzcyBhcyBsZXNzLXBsdWdpbi1jbGVhbi1jc3MgY291bGQgaGFuZGxlIGEgQGltcG9ydCAqL1xuQGZvbnQtZmFjZSB7XG4gIGZvbnQtZmFtaWx5OiAnc2InO1xuICBzcmM6IHVybCgnLi4vZm9udC9zYi5lb3Q/NDkzNDAyNDgnKTtcbiAgc3JjOiB1cmwoJy4uL2ZvbnQvc2IuZW90PzQ5MzQwMjQ4I2llZml4JykgZm9ybWF0KCdlbWJlZGRlZC1vcGVudHlwZScpLFxuICAgICAgIHVybCgnLi4vZm9udC9zYi5zdmc/NDkzNDAyNDgjc2InKSBmb3JtYXQoJ3N2ZycpO1xuICBmb250LXdlaWdodDogbm9ybWFsO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG59XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6ICdzYic7XG4gIHNyYzogdXJsKCdkYXRhOmFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTtiYXNlNjQsZDA5R1JnQUJBQUFBQUJYMEFBNEFBQUFBSkJnQUFRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJQVXk4eUFBQUJSQUFBQUVRQUFBQldQaWxKRW1OdFlYQUFBQUdJQUFBQU9nQUFBVXJRTmhtM1kzWjBJQUFBQWNRQUFBQUtBQUFBQ2dBQUFBQm1jR2R0QUFBQjBBQUFCWlFBQUF0d2lKQ1FXV2RoYzNBQUFBZGtBQUFBQ0FBQUFBZ0FBQUFRWjJ4NVpnQUFCMndBQUFxQ0FBQVAzTTQ0K08xb1pXRmtBQUFSOEFBQUFEVUFBQUEyQ0J1c0JHaG9aV0VBQUJJb0FBQUFIZ0FBQUNRSGx3TnhhRzEwZUFBQUVrZ0FBQUEvQUFBQW5JTkhBQUJzYjJOaEFBQVNpQUFBQUZBQUFBQlFTWlJObG0xaGVIQUFBQkxZQUFBQUlBQUFBQ0FBekF2U2JtRnRaUUFBRXZnQUFBRnpBQUFDaGYvRWpHNXdiM04wQUFBVWJBQUFBU0FBQUFHNkFSaTJsM0J5WlhBQUFCV01BQUFBWlFBQUFIdmRhd09GZUp4allHU09ZNXpBd01yQXdWVEZ0SWVCZ2FFSFFqTStZREJrWkdKZ1lHSmdaV2JBQ2dMU1hGTVlIRjR3dkZCbER2cWZ4UkRGSE1Rd0hTak1DSklEQU9MUUM3bDRuR05nWUdCbWdHQVpCa1lHRUhBQjhoakJmQllHRFNETkJxUVpHWmdZR0Y2by92OFBVdkNDQVVSTE1FTFZBd0VqRzhPSUJ3Q00rQWJUQUFBQUFBQUFBQUFBQUFBQUFBQjRuSzFXYVhNVFJ4Q2QxV0hMTmo2Q0R4STJnVm5HY294MlZwakxDQkRHN0VvVzRCenlsZXhDamwxTGR1NkxUL3dHL1pwZWtWU1JiL3kwdkI0ZDJHQW5WVlFvU3YybTkrMU05K3VlWHBQUWtzUmVXSStrM0h3cHByWTJhV1RuU1VnM2JGcU80a1BaMlFzcFUweitMb2lDYUxYVXZ1MDRKQ0lTZ2FwMWhTV0MyUGZJMGlUalE0OHlXcllsdldwU2J1bEpkOWthRCtxdCt2YlQwRkdPM1FrbE5adWhRK3VSTGFuQ3FCSkZNdTJSa2pZdHc5VmZTVnJoNXl2TWZOVU1KWUxvSkpMR20yRU1qK1JuNDR4V0dhM0dkaHhGa1UyV0cwV0tSRE04aUNLUHNscGluMXd4UVVENW9CbFNYdmswb255RUg1RVZlNVRUQ25ISmRwcmY5eVUvNlIzT3Z5VGllb3V5SlFmK1FIWmtCM3VuSy9raTB0b0s0NmFkYkVlaGl2QjBmU2ZFSTV1VDZwL3NVVjdUYU9CMlJhWW56UWlXeWxlUVdQa0paZllQeVdyaGZNcVhQQnJWa29PY0NGb3ZjMkpmOGc2MEhrZE1pV3NteUlMdWprNklvTzZYbktIWVkvcTQrT085WFN3WElRVElPSmIxamtxNEVFWXBZYk9hSkcwRU9ZaVNza1dWMUhwSFRKenlPaTNpTFdHL1R1M29TMmUwU2FnN01aNnRoNDZ0bktqa2VEU3AwMHltVHUyazV0R1VCbEZLT2hNODV0Y0JsQi9SSksrMnNackV5cU5wYkROakpKRlFvSVZ6YVNxSVpTZVdOQVhSUEpyUm03dGhtbXZYb2tXYVBGRFBQWHBQYjI2Rm16czlwKzNBUDJ2OFozVXFwb085TUoyZURzaEtmSnAydVVuUnVuNTZobjhtOFVQV0FpcVJMVGJEbE1WRHRuNEg1ZVZqUzQ3Q2F3TnM5NTd6SytoOTlrVElwSUg0Ry9BZUw5VXBCVXlGbUZWUUM5MjAxclVzeTlScVZvdFVaT3E3SVUwclg5WnBBazA1RG4xalg4WTQvcStaR1V0TUNkL3Z4T25aRVplZXVmWWx5RFNIM0daZGorWjFhckZkZ001c3orazB5L1o5bmViWWZxRFRQTnZ6T2gxaGErdDBsTzJIT2kydy9VaW5ZMnd2YUVHVDdqc0VjaEdCWE1BR0VvR3dkUkFJMjBzSWhLMUNJR3dYRVFqYklnSmh1NFJBMkg2TVFOZ3VJeEMybDdXc21uNHFhUnc3RThzQVJZZ0Rvem51eUdWdUtsZFR5YVVTcm90R3B6YmtLWEtycEtKNFZ2MHJBLzNpa1Rlc2diVkF1a1RXL0lwSnJueFVsZU9Qcm1oNTA4UzVBbzVWZjN0elhKOFREMlcvV1BoVDhML2FtcXFrVjZ4NVpISVZlU1BRaytORTF5WVZqNjdwOHJtcVI5Zi9pNG9PYTRGK0E2VVFDMFZabGcyK21aRHdVYWZUVUExYzVSQXpHek1QMS9XNlpjM1A0ZnliR0NFTDZINzhOeFFhQzl5RFRsbEpXZTFncjlYWGoyVzV0d2Zsc0NkWWttSyt6T3RiNFl1TXpFcjdSV1lwZXo3eWVjQVZNQ3FWWWFzTlhLM2d6WHNTODVEcFRmSk1FTGNWWllPa2pjZVpJTEdCWXg0d2I3NlRJQ1JNWGJXQjJpbWNzSUc4WU13cDJPK0VRMVJ2bE9Wd2U2RjlIbzJVZjJ0WDdNZ1pGVTBRK0czMlJ0anJzMUR5VzZ5QmhDZS8xTmRBVlNGTnhiaXBnRXNqNVlacThHRmNyZHRHTWs2Z3I2allEY3V5aWc4ZlI5eDNTbzVsSVBsSUVhdEhSeit0dlVLZDFMbjl5aWh1M3p2OUNJSkJhV0wrOXI2WjRxQ1VkN1dTWlZadEExTzNHcFZUMTVyRHhhc08zYzJqN252SDJTZHkxalRkZEUvYzlMNm1WYmVEZzdsWkVPM2JISlNsVEM2bzY4TU9HNmpMemFYUTZtVmNrdDUyRHpBc01LRGZvUlViLzFmM2NmZzhWNm9LbytOSXZaMm9INlBQWWd6eUR6aC9SL1VGNk9jeFRMbUdsT2Q3bHhPZmJ0ekQyVEpkeFYyc24rTGZ3S3kxNW1icEduQkQwdzJZaDZ4YUhicktEWHluQmpvOTB0eU85QkR3c2U0SzhRQmdFOEJpOEludVdzYnpLWUR4Zk1ZY0grQno1akJvTW9mQkZuTVliRE5uRFdDSE9ReDJtY05nanprTXZtRE9Pc0NYekdFUU1vZEJ4QndHVDVnVEFEeGxEb092bU1QZ2ErWXcrSVk1OXdHK1pRNkRtRGtNRXVZdzJOZDBheWh6aXhkMEY2aHRVQlhvd1BRVEZ2ZXdPTlJVR2JLLzQ0VmhmMjhRczM4d2lLay9hcm85cFA3RUMwUDkyU0NtL21JUVUzL1ZkR2RJL1kwWGh2cTdRVXo5d3lDbVB0TXZ4bktad1Y5R3ZrdUZBOG91TnAvejk4VDdCOElhUUxZQUFRQUIvLzhBRDNpY2hWZDdjRlRsRmIvbnU2L2RtK1R1M24zY20yeVNUWFkzMlp0SENiaFBtc1FRWXdTR0JwcUpHWVRnQUdXczBQQXdPandzYjhNVVgybENIYnVpUmxTR0pvelZqT1VoanVQSTFGcTFDRTUxS3RnT0Z0b3lhY0lmTkNQWU9wVDkwdlBkelVJUU10M2tudjFlOTN6bmQ5N0xBY2VOZC9JamZCc25jdEpoZ1lOcDFWb0FORkhqUitnQVBjbTNJVjEzamZSeStCR3VuK1U1bWN2aEhGeGVvNUtYYTdlSkFuREN0R3F2RnRBQUgvZkVON3hGNThGYjIrQW8vUUVjVGJFWmliSkordFNOTWVOcnY0V3Ztek80UXE2RUMzRkdveWRRV2x4VWtPLzFhTTdzWFhhOEt4NzE4aE9QZTRyeFZmYlpOb21tcmw2RlRaa243YnI5bU1rajNWWWVyVkdkTElQMFhSa0NYcGg0ckx0K1RuNlVmam56VEhFdGN1ZkdIK2IveXJkd0JPOTBjOG94cHlJaGF4NVp1NEczOHcya0JIU1ZUSWR3TTdoT3dRRHdkQWs0U0cycmIxZUJSUXY3NEQ3NkwyaUNBWHFOZHBDdnpYcFMyTzFyclNVRnV3bzU3b1p0YzlDMmRoNXRHN2REMGc2R0hXUTdnRUZIdndJRGpLL29xRVhvNkp5YnAxK3hJN2ZuZytiTi9zRks4TUZLK2p3ZC9pdzdvTS9EU2c1UlpkOHp1Um1jN1doTmxWOGg2Ri94WkNKcEpvM0VMSWdhdXBFMFpMMEV2TElrRzdJcE9TQmtoazNaVEliTnBFZVBKR0poRlZKcS92SzFHeXFuTy91ZDA2bzNyRjJlcjZZeVM5WFRjR2w2cGJWMHFuMXpPLzdEeEtGbEJqdGtMTHY1VUNyTGFtbDllL3VqQzBtYjVkT0RLS00rbFUralBjc25QZnpJdGZ3YnorTCsvckgrL3ErUnZ2UlNSay92SWkvbVFkSmhrZWxKUzZKQ3dkdy9BTmNPcEpmdkIySC9BYUE0T3NEOExLT2ZQYWdmQjVlUCt0R2RNa2RZR0VYRHlRWklSblJETDRhb0JvRjREWmhoU1g2YUZKb3YzTCswdjl5WFNoOENqc3hOeG1hTEtkSTBjTmVpQjJITnZYV3oxcWJmSTAxZHNibUV6SzNOOE9jNHZvKzhnZkxrSWY5Y1JTREl2enpnTlpQZUFLS0pHM0tjNzB1dk9IZU83THUyaSt3N2QyN0hRd2NIdTg1MVBUUnc4S0VNbnAvd2QvQXV6b3Q0M0RhR0o1YUlsQUNqdWxkTEl2V2dJNFhMWXM0clpaR3l5NjVJbVl0dXBqOTFRV0ZCbWVzeTZTNG9LeXRJYjcvc0tvdTQ2V2JZN2Nud1hJMDhQUmJQUEV0SE1YUkozU01GcDRPR05KelVaS1F1ZUJ4MjQ0dXV5MlhSTXJpQ3JHR0Z6d1c3NldaWExPUzZuTjdPZUpQdXk2NFF4NCtueDMvREwrT1o5WkpjTThiUlhYWFY3aHdlNDZnOEhndFhRMUFxQm85ZUI1R0VPMVlEb2FBc1lWeEZJNmhraE9HUlpCVU1iMlkvaGs3WndCc2VGWUkxQkxmOUFGY1UyMnFiWXBHK2h2dnZlR0tPUFcrZUlObEZmL25NS3Iwd1ZBL1dWcjZyU1BGN2NzODg4dUhJeCt1a3plOWVlV2Q3Vy9ZMUJYYmMwVjZ6U1ZXU2dod3U5THU4dmx4blk5aURHNjVnamxQeUZWVzBiZmhnL2ZvUExqTENUSFlkajUrcjRlb1F6OHhJVmRCbnU0NUhtd3pLRzdvQmovOE9YSEVTRUZLbnlBbkZkb2dKRlk4emVsVlc1dHdBQnorZUxQdGlYUEN6SFJ3Y3RxZ0MxeFpQTENqbmI1STNVeGRlUmo5V3VDRFh3QzFnTWRUU0dDa3JjSWdzaGlDS0dTd2Vjb0FrZ3djcEdqcWNxR05lVk1jTW9FVWp1dWdOeE4ybyszaElxa1pFTE5Bd0ZYaVRlQ0x1eG5uVURNbFI5dTJPdXNuekt5b2tRZ2lBUVA4aUhSSlYrWkRObHJmYUFzRndmRTdmK1ZRV0padWtkTjhOZDM0cTJDU2JtUFAwaGxlcmZFLzRxbDR4ZDNZOFJ0WnQ5dGxKanFKSTZkbVNmRWdVRDl1OVBNZkFwVGxsWG5jRVRFVVNnVFR1ak5BdkJVVUdJRTN3VFgxOWEydDlQVHhNKzdoYk1FZTRIekxNemJFWldjemxOekNMVTJLK0dSZWYxWUVzbWRlMWtGWEMvd0ZOaEVud2NqSUtFSGlZVUVHdXBZRm9CclJkM25FTDVsL1UxYlcyMXRYQkk3U1hkSGRIRWI4bzRsVVpGZnpaSWVHd3lZcGRKQ2RKbU5Xcnc4QjZCY2dCT0RrOFRNSzBDL1pZMjdlZWlSZkM4SEFLOXRBdXByZng4ZkhIK1YvelNjN0dhVndwVm5qVVd5aFE0TlpVd2ZLVm9PVFVTeFBPc0JuaFhLaGxGeWNtZEpsSExZWXdNN2dUU1Q1cHdoZlBuVDROTmFkUFAvYyt1QWk5U0hmU2l3UmMwSzNxZkllZzBoTlNya3ZvRVBLcS8zdUVmSEthZm00ZFhrVXZZV29hRXlBZnRvUHZXMEhIYzZyUTRjbURoTXJUTCtjY3ljcStoelJic2hPckY4b0RKamhwSGg3KzduNEd2MWFlMmFleFlleWdzdld1QkgyaW5JdHk5WnlqTVRjZW0xNVJGZ3FVR3JLSUwyQld4eXduQjRKaE04NklacVVjWUY1aGVCTlJCMFJCamhySmVBZ1RreG5TQXZGWUFyU0pDWC9JOEVPcG5oN0ZML29aRXQxNXdaSFFSM0FVRHN3WkhLUXZEZzZ1ZmZPMDN4Z0Z2MDdDWi96R0NObUs1enVzMTE0cDFXR1RubkJjUUFYcng0eE5nN0J0OFAwM1IwZjFVcUF2OXVrSnVvRHNHbUdURjFqdHVKNkRjcmtDcXpaSnJEWkJVQ1YraURSQURZSEpTZktOZTN0YVNmc1RyKzFlS0N6b2hTV1RNZ25wYmVzNTBOTm1FZnJIS2ZLY0RhdEJFUE5jU1lIRExoSE1jNENGb0Fhd3ZwaTN2NURVdFQzYVJoYXVYN2hueW90aGFWMTcrOGIyOW0rbXZOK3FqMlFSNmNhNjcwR016bHhGWkJpeHFJbFNPSTZXTWNvalhzMFR4Q0gwcXlwTjZVVkZPcHlkbDRLTmlrKzVvTHA4OEk3UHBWYlUwcHJhV3ZpODlpYWV1UlpQbDJvWGtLYzdsaXhQWU5pakdjdkRaaXpEZFVpRk5aNmlJZzk5VmgxS3BXQ3BhckdrczVIbEJlWGZ0UlpYN25vZDd5SmJVVTZEMlVLN1JVNTUwcGhmZ2FMMjZINi8zb2FEdlo3U1VnL0tXMlQ3Vm5VV3dkK0xuT3Eza3ljMzhaK3d0V2JKckUyV3VYenlSSVdOakN0OVNvVVBWVmhsamZlcURBQmpTLzNzRHB0NjA4d0tuWEdLOWw2TTlwNkI4Vk1aWVBHRGpvMU9GWjRGNFJDek5CK05KTEFzbDRBZnNDckx6Tnk0aEUxaVF1Y1hlNXhYRGJjMnY2MnJ0ck5saGxEUnZxS2hhV09sb0VrdElwSHFoNWJkOTByWFhLSHgwYjFMMnZiZU9kYzVqZnp1cXFwUGM4NmZYOVBTdWI2enBhWTJMb0U0WDFDbGVhM1F2SDdmMEw3MXpRM2ZuK3R5VDhRMUdTRlBXZjJ0SXFCY3lTRHFNcXBaSGRJRFZiVTlzR1pzN09QNkNsaEtUNlRPbmsweDN4MGYvejMvUy9JZnpHSmVqSGZsV0tIdWRxa2lxOUU2RXoyQVBWc3NDYXpGTUdSa3hlT2FuM1VZWWY3SlhJQm9PSTBkR09SQlYyNUZwREszNzJkTnBWVUFWWTFWbGZOMW95S0NCMHhESjl1OCtmbmVYOUV2b0pyMlFXV3d0TEx5cnFwczNDeTJZck1JT3dUbFdGV2dBT09UeFEzR1JqWk0zQlBOZ0l5OWpZRjZOZDB4a3kzSWt0ZWRhUS9namZVZlBwSU5tZDhxTXF1ZXVmSnFXUUdzZjdZdE5sRlNGUHRLbThMblRBUU5rdlRjVGxZME90blJqNkJENWtXUmwrbUFaTE5oemhqSC9QY3FqNzBtRjBBL0tzaVJlT2FuMkhOSmZ0UUVXRDJlRkdMU0NYNWllR1NFdU92Wmt5bWg5MDg5RVB4ZXJlZjRBMXRhbjFuVlNPclg5QjdvNlpySjMzUGNDOTBybnlHcEUzdWxIdnBDY1pYMytEME5uWHYyOTY2ckZab2VUTTNmOHNCeGI2YW5mSjEvblp6SDZKajREWXRhZCtKRlpoTGJQQ3dtcUlTb2JFWWJnSGhldTNUcHRkNTFzOXRYYkQ5eTVPb1IwdnYyMjF2SkdEay9SbDhmV3pTdi9naHdSNGEybmp3NWNERlR5OFozWUQ2L0UzK2hTb2Nsd3VxQldJZzJjNWVMYnRpeWJRTnNvWitzbzZmb2lVMXdoc0FxK3F6dExIM21iMmRnVmFhMzMybTlxMkZtc3gwdExWQ3NtSXFLN3FUaFJoYkdkSEJBMG0yV0VBZk1Bc09jQmRPeDJDK0Y0dVhGeFlzWTQ3YWlsbitPTENqdStNZkRCejIycGplMTkrNTJEWjNSYlkyemJld3l0ZU4rT29iWFhWb3k4K0QrZUFlb1E3YkhWTzhuVzNLZU9xOXVFNGozRHg5NS93ZTZvdEJFQUFCNG5HTmdaR0JnQU9KRFRyWU44ZncyWHhtNG1WOEFSUmd1ZFovMGd0RHpwZjcvL1ovSi9JSTVDTWpsWUdBQ2lRSUFiQ29OalFBQUFIaWNZMkJrWUdBTytwL0ZFTVg4Z29IaC8zY2dDUlJCQWVvQWtNWUdEZ0FBZUp4amZzSEF3SXlPNzJJUkErRUpRTHdBaUEyaE9CS0tGMEF3NHhrSVpsNEZwQ2RBTUZnZlZCMVRCQVF6RjBBeFNBd2tQd1hKbkRVSSt3Q1BaUm15QUFBQUFBQUFGZ0JDQUlvQXZnRHVBUklCTGdHQUFhWUJ2Z0h1QWc0Q09BSmlBc29ESWdPY0JCWUVLQVE0QklZRWxnU21CUXdGUGdWK0JhZ0YwZ1lDQmpZR2dnYWNCdG9ISmdkaUI0NEhyQWZ1QUFFQUFBQW5BRkFBQ1FBQUFBQUFBZ0FBQUJBQWN3QUFBQ2dMY0FBQUFBQjRuSFdReTByRFFCaUZUM3BSMnFLZ2d1dC9wUzJGOUFKRmNDSEZRcnNTb1l2dWt6Wk5VdEpNbVprS2RlY0QrSXEraGdzM25xU0RpR0RDSk44NS8yMW1BRnppQXg2T3o0anJ5QjRxVkVldTRCUjNqcXRVRDQ1cjVMSGpPbHA0ZEh4Qy84bHhFMTA4TzI3aENxL3M0TlVhVkJ1OE8vYlk2ZE54QmVmNGNseEZ6V3M0cnBIUEhOZHg3VjA0UHFGLzY3aUpoZGQxM01LTjl6WlJ1NE5PNDhSS2U5S1JZWDh3a3ZBZ2lsYWFCNWtFZTVzb2JXUXNhNVhiS011VXYxUmJFODZqZUo4RjJvUW1YRVRhcENxWGdkODM0U3pLSXgzWWFGVjBNUy94ME5xMXJMWGF5dFRWeTA2clRiUzBmbUx0N3I3WCs5MFhFeWpzY0lCR2loZ0pMQVJ0dWgzK2graGp3QXNYaE13UVpoNnpVdVFJa05FSnNHZEZVa1lNOVpoclRaWFRqWmlSa1gwcytkMHlIbUpPTjJaTnhrcGRPc1ZhMEMxVVdsWUtaL3FjWEVSbWpPUmxOQ2c3cm43Mll2RENUa082bGhPTHFicWNJcGorbVM4OFh4SGIwRm5TOTh0VFdycjM2UEg5WjcvZnhuZHZkd0I0bkcxTzJYTENNQkNMUWhwQ0NMVDB2dStXSjMrVTZ6aUppN0U5OXFhVXZ5K0dLWDJwSHJUU3pxeTBTWnJzVUNiL1k1NGtTREZBaGdQa0dLTEFDQ1hHcUREQkZJYzR3Z3pIT01FcHpuQ09DMXppQ3RlNHdTM3VjSThIUE9JSnozakJLOTd3am5uZUtFM1NGOVF4elgwclUrcUdVYXRBdVpOR0tKMExib1RVbWROOUdBamJUcmhXcldHZmZTRFZyRk83eUxRVmkwSitpNDZiVm1hMVhabTBkMVVudFdOQ2VhRmxYU25UMkwwSjFoTXpmQ2xaNzZaL0poNFdrVml0Zk42N09JYkNMaDBQWWVSVjIxSGNGRm8yVzdFcEVxSGFaVEs1ZExRZTE1WitTM0t5VEpxNjJJeEEzRlBWOEVDc3NYN0ZmVDNabWc4dUZ0R2xZbFZxK1NYMTlvTVJKNUtHbERXenZkcUhCc205NkFaQ3JMS1lXa2JhZFNmSkQyWUllUXg0bkdQdzNzRndJaWhpSXlOalgrUUd4cDBjREJ3TXlRVWJHVmlkTmpJd2FFRm9EaFI2SndNREF5Y3lpNW5CWmFNS1kwZGd4QWFIam9pTnpDa3VHOVZBdkYwY0RReU1MQTRkeVNFUklDV1JRTENSZ1VkckIrUC8xZzBzdlJ1WkdGd0FCOU1pdUFBQUFBPT0nKSBmb3JtYXQoJ3dvZmYnKSxcbiAgICAgICB1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxBQUVBQUFBT0FJQUFBd0JnVDFNdk1qNHBTUklBQUFEc0FBQUFWbU50WVhEUU5obTNBQUFCUkFBQUFVcGpkblFnQUFBQUFBQUFHQ0FBQUFBS1puQm5iWWlRa0ZrQUFCZ3NBQUFMY0dkaGMzQUFBQUFRQUFBWUdBQUFBQWhuYkhsbXpqajQ3UUFBQXBBQUFBL2NhR1ZoWkFnYnJBUUFBQkpzQUFBQU5taG9aV0VIbHdOeEFBQVNwQUFBQUNSb2JYUjRnMGNBQUFBQUVzZ0FBQUNjYkc5allVbVVUWllBQUJOa0FBQUFVRzFoZUhBQXpBdlNBQUFUdEFBQUFDQnVZVzFsLzhTTWJnQUFFOVFBQUFLRmNHOXpkQUVZdHBjQUFCWmNBQUFCdW5CeVpYRGRhd09GQUFBam5BQUFBSHNBQVFOZUFaQUFCUUFJQW5vQ3ZBQUFBSXdDZWdLOEFBQUI0QUF4QVFJQUFBSUFCUU1BQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVVHWkZaQUJBNkFEb0pRTlMvMm9BV2dOU0FKY0FBQUFCQUFBQUFBQUFBQUFBQXdBQUFBTUFBQUFjQUFFQUFBQUFBRVFBQXdBQkFBQUFIQUFFQUNnQUFBQUdBQVFBQVFBQ0FBRG9KZi8vQUFBQUFPZ0EvLzhBQUJnQkFBRUFBQUFBQUFBQUFBRUdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBLzJvRDZBTlNBQVVBQnJNRUFBRXRLeEVoQVJFRkVRUG8vcWIrekFOUy9xYitidndDamdBQUFBQUVBQUQvYWdQb0ExSUFBd0FIQUFzQUR3QU5RQW9OREFrSUJRUUJBQVF0S3hVUklSRUJFU0VSRXhFaEVRRVJJUkVCdHY1S0FiWjlBYlgrU3dHMWxnRzIva29DTXdHMS9rdjl6UUcyL2tvQ013RzEva3NBQUFBQUNRQUEvMm9ENkFOU0FBTUFCd0FMQUE4QUV3QVhBQnNBSHdBakFCZEFGQ0VnSFJ3WkdCVVVFUkFOREFrSUJRUUJBQWt0S3hVMU14VUROVE1WQXpVekZSTTFNeFVETlRNVkF6VXpGUk0xTXhVRE5UTVZBelV6RmZyNit2cjZmZnI2K3ZyNmZmcjYrdnI2bHZyNkFYZjYrZ0YzK3ZyOUV2cjZBWGY2K2dGMyt2cjlFdnI2QVhmNitnRjMrdm9BQUFBQUJnQUEvMm9ENkFOU0FBTUFCd0FMQUE4QUV3QVhBQkZBRGhVVUVSQU5EQWtJQlFRQkFBWXRLeFUxTXhVRE5UTVZBelV6RlJNMUlSVUJOU0VWQVRVaEZmcjYrdnI2alFKaC9aOENZZjJmQW1HVyt2b0JkL3I2QVhmNit2MFMrdm9CZC9yNkFYZjYrZ0FEQUFEL2NRUGVBMHdBQWdBR0FCTUFDcmNRQ2dZRUFRQURMU3NWRXdFRENRTStBaDhCRmc0Q0x3RW1SQUVTelFHbUFRUCtXd0VQQWpwUUdvTVpBanBRR29NYmp3RlgvdThCUWdHbS92eitXZ0x5Snp3Q0c0SWFVRG9DR1lNYkFBQUJBQUQvYWdQb0ExSUFDd0FHc3drREFTMHJOUWtCTndrQkZ3a0JCd2tCQVJmKzZkMEJGd0VYM2Y3cEFSZmQvdW4rNlVjQkZ3RVgzZjdwQVJmZC91bis2ZDBCRi83cEFBQUJBQUQvYWdQb0ExSUFDd0FHc3drREFTMHJOUkVoRVNFUklSRWhFU0VSQVdjQkdnRm4vcG4rNXRFQkdnRm4vcG4rNXY2WkFXY0FBQUlBQVA5cUErZ0RVZ0FuQURBQUNMVXVLaDRLQWkwckVUVTNOamNuTnhjMlB3RXpGeFlYTnhjSEZoOEJGUWNHQnhjSEp3WVBBU01uSmljSEp6Y21KemNVRmpJMk5DWU9BWllPR0dCdGRTa3ZFSndRTFN0MWJXQVlEcGFXRGhoZ2JYVXJMUkNjRUM4cGRXMWdHQTdOVkhwVVZIcFVBUkNjRUMwcmRXMWZGdzZXbGc0WFgyMTFLeTBRbkJBdktYVnRZQmdPbHBZT0dHQnRkU2t2WGp4VVZIaFdBbElBQkFBQS82Y0Q2QU1XQUFNQUJ3QUxBQThBRFVBS0RRd0pDQVVFQVFBRUxTc1ZOU0VWSlRVaEZTVTFJUlVsTlNFVkErajhHQVBvL0JnRDZQd1lBK2habkp6d25KenluSnp3blowQUFBRUFBUCs4QStnREFBQUdBQWF6QlFNQkxTc1JOeGNCRndFbm9xWUIvS1Q5WUtJQkJLS2tBZjZrL1dDa0FBQUFBQUlBQVA5cUE1QURVZ0FQQUJnQUNMVVdFQWNBQWkwckZSRXpKamMrQVRjeUZoY1dIUUV6RVFFaE5TNEJKeVlHQjRzQ0d5ZWFYRjZjSlJxVy9iSUJBQUpJTnpSR0JaWUNRcVpCV0dZQmJGTTdQMjM5dmdKQ2NEUklBZ0pJT2dBQUFBSUFBQUFBQTQ4Q3JRQUdBQTBBQ0xVTUNnUUNBaTBySlNFVkp6Y1ZJU1UxSVRVWEJ6VURqLzFpMzk4Q252eURBcDdmMzM5dnFLZHczM0J2cHFodkFBQUJBQUQvYVFNeEF4SUFGUUFHc3hNSUFTMHJFVFEyTWg4QkVUUTJNaFlWRVRjMk1oWVVCd2tCSmlRMEVQUWtNaVR6RWpJa0V2NTYvbmtTQVJzWkpCTHpBb0laSkNRWi9YN3pFaVF5RS81NkFZWVVBQUFCQUFEL2F3TXhBeFFBRlFBR3N3MERBUzByRVRRM0NRRVdGQVlpTHdFUkZBWWlKamNSQndZaUpoSUJod0dHRWlReUV2TWtNeVFCOUJJeUpBRmlHaElCaHY1NkVqUWpFdlA5Zmhra0pCa0Nndk1TSXdBRC8vMy9zUU5mQXdzQUR3QTNBRVFBQ3JkQk95c1RDd01ETFNzbE5UUW1Ld0VpQmgwQkZCWTdBVEkyRXpRdUFTTWlCd1lmQVJZek1qYytBVElXRlJRR0J3NEJGeFVVRmpzQk1qWTBOajhCUGdNWEZBNEJJaTRDUGdFeUhnRUI5QW9JYXdnS0NnaHJDQXFQUGx3eGlFY0pEVW9FQmdrRkhpVTRLaFliSXp3QkNnaHJDQW9ZRWh3S0hoUU0xM0xHNk1odUJucTg5THArVW1zSUNnb0lhd2dLQ2dGL01WUXVkdzRLTndRSEpoc2VFaFVhREJCQUpoUUlDZ29TSWdzUUJob2NLRkoxeEhSMHhPckVkSFRFQUFBQUEvLzkvN0VEWHdNTEFCNEFMZ0E3QUFxM09ESXFJaG9JQXkwckpUVTBKaXNCRVRRbUt3RWlCaDBCRkJZN0FSVWpJZ1lkQVJRV093RXlOZ00xTkNZckFTSUdIUUVVRmpzQk1qWUZGQTRCSWk0Q1BnRXlIZ0VDT3dvSE5nb0lzZ2dLQ2dnMU5RZ0tDZ2o2QndwSENnaHJDQW9LQ0dzSUNnRmxjc2JveUc0R2VyejB1bjVTV1FnS0FSNElDZ29JV1FnS3N3b0lXUWdLQ2dIOFdRZ0tDZ2haQ0FvSzRIWEVkSFRFNnNSMGRNUUFBQUFFQUFEL2FnT2ZBMUlBQ2dBaUFENEFUZ0FOUUFwTVFESWtHUThGQUFRdEt3RXpMd0VtTlNNUEFRWUhBUlFQQVFZaUx3RW1OanNCRVRRMk93RXlGaFVSTXpJV0JSVWhOUk0yUHdFMUl3WXJBUlVqTlNFVkF3WVBBUlUzTmpzQk5STVZJelV6SnlNSE14VWpOVE1UTXhNQ21XSW9CZ0lDQWdFQkJQN2FCcklGRGdleUNBZ05hd29JYXdnS2F3Z0tBZEwrdXM0SEJRWUlCZ3FDUXdFOXpnUUlCZ2dGQzR0MW9Tb2FpQm9xb0NlQVdvRUNibm9hQ1FJTENnb0cvVVlHQjdJRkJiTUpGUU1BQ0FvS0NQMEFDa3FDTWdFbkNnWUZBUUpBZ0RMKzJBUUtCd0VCQWtJQjlUdzhVRkE4UEFGeC9vOEFBQUFBQkFBQS8yb0Rud05TQUFvQUlnQXlBRThBRFVBS1JEUXdKQmtQQlFBRUxTc2xNeThCSmpVakR3RUdCd1VVRHdFR0lpOEJKalk3QVJFME5qc0JNaFlWRVRNeUZnVVZJelV6SnlNSE14VWpOVE1UTXhNREZTRTFFelkvQVRVSEJpY0dLd0VWSXpVaEZRTVBBUlUzTmpzQk5RS1pZaWdHQWdJQ0FRRUUvdG9Hc2dVT0I3SUlDQTFyQ2dockNBcHJDQW9DQktFcUdvZ2FLcUFuZ0ZxQkMvNjZ6Z2NGQmdRREFRWUtna01CUGM0TUJnZ0ZDNHN6ZWhvSkFnc0tDUWQvQmdleUJRV3pDUlVEQUFnS0NnajlBQXFST3p0UVVEczdBWEwramdLQ2dqTUJKd29GQlFJQkFRRUNRSUF5L3RrUEJnRUJBVUlBQUFFQUFBQUFBY3dDSmdBQ0FBYXpBUUFCTFNzQkN3RUJ6T2JtQWliK2NBR1FBQUFBQUFFQUFBQUFBY3dDSmdBQ0FBYXpBUUFCTFNzMUd3SG01cFlCa1A1d0FBQUFCUC8vLzRjRHF3TTNBQWdBRVFBZ0FDTUFEVUFLSXlFWkV4RU9CQUFFTFNzQklnWVFGaUEyRUNZbk1nQVNBQVFBRWdBRk5oWUhBd1lIQlNNaUpqY1ROamNETnljQjFaZlcxZ0V1MXRhWHdnRVNBdjdxL29EKzZnSUJFZ0dDRGhZRFdnUU8vc29HREJJRVdnUU5LL3UwQXN2Vy90TFcxZ0V1MW1qKzd2NTYvdkFFQVJnQmZnRWErQVFXRHY3S0RnUmFGQTBCTmc0RC90aEh0QUFBQVFBQUFBQUJrQUpFQUFJQUJyTUNBQUV0S3hFTkFRR1EvbkFDUk9ibUFBQUJBQUFBQUFHUUFrUUFBZ0FHc3dFQUFTMHJBUkVsQVpEK2NBSkUvalRtQUFVQUFQOXFBK2dEVWdBZkFDSUFKUUF6QUR3QUQwQU1OVFF2S0NRaklTQVhCd1V0S3dFeUZoY1JGQVlISVNJbUp6VWhJaVluRVRRMlB3RStBVHNCTWhZWEZUWXpEd0V6QVFjekZ6YzFJeFVVQmljakVTRTFORFlCRVNNVkZBWW5JeEVEc2hjZUFTQVcvZWtYSGdIKzBSY2VBUllRNUE4MkZ1Z1hIZ0VtSVVlbnAvNmJwNmR0c05ZZUYra0JIaFlDSnRjZUYrZ0NmQ0FXL1ZvWEhnRWdGcUFnRmdGM0ZqWVA1QkFXSUJhM0YzZW5BWDJud3JEcDZSWWdBZjZianhZMi9rNENnK2dXSUFIK21nQUFBQUwvL2YreEExOERDd0FNQUJrQUNMVVdFQVlBQWkwckFTSU9BaDRCTWo0QkxnSUJGQTRCSWk0Q1BnRXlIZ0VCclZPTVVBSlVpS3FHVmdST2pnRmJjc2JveUc0R2VyejB1bjRDamxLTXBJeFNVb3lrakZMKzBIWEVkSFRFNnNSMGRNUUFBQUFELy8zL3NRTmZBd3NBQ0FBVkFDSUFDcmNmR1E4SkJnSURMU3NCRkFZaUxnRTJNaFluSWc0Q0hnRXlQZ0V1QWdFVURnRWlMZ0krQVRJZUFRSTdVbmhTQWxaMFZwQlRqRkFDVklpcWhsWUVUbzRCVzNMRzZNaHVCbnE4OUxwK0FWNDdWRlIyVkZUMVVveWtqRkpTaktTTVV2N1FkY1IwZE1UcXhIUjB4QUFBQUFJQUFBQUFBbGdDZ2dBTEFCUUFDTFVRREFvRkFpMHJBUllVQndVR0pqVVJORFlYSlRJVkVSUWlOUkUwQVp3T0R2NldGaHdjRmdIY1NwWUJkZ29hQ3VRT0Vob0J1aG9TRGlnNi9pNDZPZ0hTT2dBQUFBSUFBQUFBQWxnQ2dnQU1BQlFBQ0xVU0Rna0VBaTByRXpRM0pUWVdGUkVVQmljbEppYzBNaFVSRkNJMXJnNEJiQlFjSEJUK2xBNnVscFlCWGc0SzVBNFNHdjVHR2hJTzVBcjJPanIrTGpvNkFBQUFBQUlBQUFBQUEzQUNmQUFMQUJjQUNMVVdFUW9GQWkwckFSWVVCd1VHSmpVUk5EWVhCeFlVQndVR0pqVVJORFlYQTJJT0R2Nk1GaDRlRmxJT0R2NllGQ0FnRkFGMkNod0krQTRRSEFIaUhCQU8rQW9jQ1BnT0VCd0I0aHdRRGdBQUFBSUFBQUFBQTNBQ2ZBQU1BQmtBQ0xVV0VRa0VBaTByRVRRM0pUWVdGUkVVQmljbEppVTBOeVUyRmhVUkZBWW5KU1lPQVhZVUlDQVUvb29PQWNZT0FXZ1VJQ0FVL3BnT0FWNE9DdmdPRUJ6K0hod1FEdmdJRGc0SytBNFFIUDRlSEJBTytBZ0FBQUFBQWYvKy83RURXUU1MQURBQUJyTXBJUUV0S3dFVkZBWXJBU0ltUHdFbUl5SU9BaDRETXpJMk56NEJId0VlQVFjT0FRY2lMZ0krQXpNeUZoYzNOaFlEV1JRUStoY1RFVTFTY0RwcVREQUVLRlJpUGtKMktRUVJCa3dGQWdZOHJsOVhvSEJJQkVCNG1GdFNtRDFJRUMwQ3cvb09GaTBRVFUwdVRHcDBha3d1T2pVR0FRVk5CQTRHU2xBQlJIU2VycDUwUkQ0NVNCSVRBQUFCQUFBQUFBTG9Bb29BQ3dBR3N3b0VBUzByTnlJbU5SRXpFU0UxRndjMVpDbzZqQUZzOFBESVBDZ0JYdjdLbHR6Y2xnQUFBLy8vLzhVRGxRTDNBQkVBRlFBZkFBcTNHeFlURWc0RkF5MHJKUllIRGdFSElTNEJKelEzQVQ0Qk1oWVhCeEV6RVFNT0FRY2VBVEkyTkNZRGlRd0JBVE1tL1NFbE5RRU5BWEFNS0RJcERJK0ZRaUFxQVFFcVFDb3BUUllYS0RJQkFUTW5GeFlDZlJVWUdCV2wvdFVCSy82UEFTa2lJQ2twUVNvQUFBUC8vZit4QTFrREN3QU1BQndBTGdBS3R5b2hHUkFHQUFNdEt3RXlIZ0VVRGdFaUxnSStBUk0xTkNZckFTSUdCeFVVRmhjek1qWW5FelFuSmlzQklnY0dGUk1VRmpzQk1qWUJyWFRHY25MRzZNaHVCbnE4d1FvSGF3Z0tBUXdIYXdjS0FRb0dCUWg3Q0FVR0Nnb0pad2dLQXd0MHhPckVkSFRFNnNSMC9VaHFDQW9LQ0dvSUNnRU14d0ZhQndNRkJRTUgvcVlHQ0FnQUF2Ly8vMm9Eb1FNTkFBZ0FJUUFJdFJrTEJnTUNMU3NCTkM0QkJoNEJQZ0VCRkFZaUx3RUdJeUl1QWo0RUhnSVhGQWNYRmdLRGxNeVdCSTdVakFFaUxEb1V2MlI3VUpKb1FBSThiSTZrakhBNEEwVy9GUUdDWjVJQ2xzcVlCb3orbWgwcUZiOUZQbXFRb281dU9nUkNacFpOZTJTL0ZRQUFBUUFBLzZ3RHJBTGdBQmNBQnJNRUFBRXRLd0V5RmhBR0l5SW5OeFl6TWpZUUppSUdCek1ISnpNK0FRSVVxdTd1cW81dVJsUmlmclMwK3JRQ2pyaTRmQUx3QXVEdy9xendXRW84dEFFQXRLNTh6TXltNmdBQUFBRUFBUDkvQStnRFBRQUpBQWF6QmdJQkxTc1JCUnNCRFFFVEpRVVRBWHQ5ZFFGNy9zdHUvczMreW5jQjF3SUJhUDZVQ056K2t1SFhBV2dBQUFJQUFQK0FBK2dEUFFBUkFDSUFDTFVnR1FvRUFpMHJFVE1GRXpjWEV3MEJFeGN2QVE4Qk54TW5Id0lQQVQ4QkZ5Yy9BUzhERHdGZUFSMWdIUjFZQVh2K3kxSWNUT2ZvVGgxYTQzR29GQWhDc0JHK1F4S3UxeFlJUUVZSUFkY0NBUTVhWFA3d0NOeis3bHM0cUtJMVdnRU9yZ2lCRGhYTGV3dUs0QTU5QkFJVnljY1ZBQUVBQUFBQkFBRENRajJBWHc4ODlRQUxBK2dBQUFBQTBvdkpTZ0FBQUFEU2k1OGEvLzMvYVFQb0ExSUFBQUFJQUFJQUFBQUFBQUFBQVFBQUExTC9hZ0JhQStnQUFQLzNBK2dBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQ2NENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQZEFBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQU9RQUFBRG9BQUFBekVBQUFNeEFBQURXUUFBQTFrQUFBT2dBQUFEb0FBQUFjd0FBQUhNQUFBRHFnQUFBWkFBQUFHUUFBQUQ2QUFBQTFrQUFBTlpBQUFDV0FBQUFsZ0FBQU53QUFBRGNBQUFBMWtBQUFMb0FBQURsQUFBQTFrQUFBT2dBQUFEckFBQUErZ0FBQVBvQUFBQUFBQUFBQllBUWdDS0FMNEE3Z0VTQVM0QmdBR21BYjRCN2dJT0FqZ0NZZ0xLQXlJRG5BUVdCQ2dFT0FTR0JKWUVwZ1VNQlQ0RmZnV29CZElHQWdZMkJvSUduQWJhQnlZSFlnZU9CNndIN2dBQkFBQUFKd0JRQUFrQUFBQUFBQUlBQUFBUUFITUFBQUFvQzNBQUFBQUFBQUFBRWdEZUFBRUFBQUFBQUFBQU5RQUFBQUVBQUFBQUFBRUFBZ0ExQUFFQUFBQUFBQUlBQndBM0FBRUFBQUFBQUFNQUFnQStBQUVBQUFBQUFBUUFBZ0JBQUFFQUFBQUFBQVVBQ3dCQ0FBRUFBQUFBQUFZQUFnQk5BQUVBQUFBQUFBb0FLd0JQQUFFQUFBQUFBQXNBRXdCNkFBTUFBUVFKQUFBQWFnQ05BQU1BQVFRSkFBRUFCQUQzQUFNQUFRUUpBQUlBRGdEN0FBTUFBUVFKQUFNQUJBRUpBQU1BQVFRSkFBUUFCQUVOQUFNQUFRUUpBQVVBRmdFUkFBTUFBUVFKQUFZQUJBRW5BQU1BQVFRSkFBb0FWZ0VyQUFNQUFRUUpBQXNBSmdHQlEyOXdlWEpwWjJoMElDaERLU0F5TURFMUlHSjVJRzl5YVdkcGJtRnNJR0YxZEdodmNuTWdRQ0JtYjI1MFpXeHNieTVqYjIxellsSmxaM1ZzWVhKelluTmlWbVZ5YzJsdmJpQXhMakJ6WWtkbGJtVnlZWFJsWkNCaWVTQnpkbWN5ZEhSbUlHWnliMjBnUm05dWRHVnNiRzhnY0hKdmFtVmpkQzVvZEhSd09pOHZabTl1ZEdWc2JHOHVZMjl0QUVNQWJ3QndBSGtBY2dCcEFHY0FhQUIwQUNBQUtBQkRBQ2tBSUFBeUFEQUFNUUExQUNBQVlnQjVBQ0FBYndCeUFHa0Fad0JwQUc0QVlRQnNBQ0FBWVFCMUFIUUFhQUJ2QUhJQWN3QWdBRUFBSUFCbUFHOEFiZ0IwQUdVQWJBQnNBRzhBTGdCakFHOEFiUUJ6QUdJQVVnQmxBR2NBZFFCc0FHRUFjZ0J6QUdJQWN3QmlBRllBWlFCeUFITUFhUUJ2QUc0QUlBQXhBQzRBTUFCekFHSUFSd0JsQUc0QVpRQnlBR0VBZEFCbEFHUUFJQUJpQUhrQUlBQnpBSFlBWndBeUFIUUFkQUJtQUNBQVpnQnlBRzhBYlFBZ0FFWUFid0J1QUhRQVpRQnNBR3dBYndBZ0FIQUFjZ0J2QUdvQVpRQmpBSFFBTGdCb0FIUUFkQUJ3QURvQUx3QXZBR1lBYndCdUFIUUFaUUJzQUd3QWJ3QXVBR01BYndCdEFBQUFBQUlBQUFBQUFBQUFDZ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUp3QUFBUUlCQXdFRUFRVUJCZ0VIQVFnQkNRRUtBUXNCREFFTkFRNEJEd0VRQVJFQkVnRVRBUlFCRlFFV0FSY0JHQUVaQVJvQkd3RWNBUjBCSGdFZkFTQUJJUUVpQVNNQkpBRWxBU1lCSndabWFXeDBaWElJZEdndGJHRnlaMlVDZEdnSGRHZ3RiR2x6ZEFad1pXNWphV3dHWTJGdVkyVnNCSEJzZFhNRFkyOW5EV0ZzYVdkdUxXcDFjM1JwWm5rQ2Iyc0ViRzlqYXdobGVHTm9ZVzVuWlFSa2IzZHVBblZ3REdobGJIQXRZMmx5WTJ4bFpBeHBibVp2TFdOcGNtTnNaV1FNYzI5eWRDMXVZVzFsTFhWd0RuTnZjblF0Ym1GdFpTMWtiM2R1Q0dSdmQyNHRaR2x5Qm5Wd0xXUnBjZ2RqYjIxd1lYTnpDWEpwWjJoMExXUnBjZ2hzWldaMExXUnBjZ1JrYjJOekRHTnBjbU5zWlMxbGJYQjBlUXRrYjNRdFkybHlZMnhsWkFaMGJ5MWxibVFJZEc4dGMzUmhjblFNWm1GemRDMW1iM0ozWVhKa0RXWmhjM1F0WW1GamEzZGhjbVFDWTNjS2JHVjJaV3d0Wkc5M2JnbGhkSFJsYm5ScGIyNFJZWFIwWlc1MGFXOXVMV05wY21Oc1pXUUdjMlZoY21Ob0EyTmpkd1J6ZEdGeUNuTjBZWEl0Wlcxd2RIa0FBQUFBQUFFQUFmLy9BQThBQUFBQUFBQUFBQUFBQUFDd0FDd2dzQUJWV0VWWklDQkx1QUFPVVV1d0JsTmFXTEEwRzdBb1dXQm1JSXBWV0xBQ0pXRzVDQUFJQUdOakkySWJJU0d3QUZtd0FFTWpSTElBQVFCRFlFSXRzQUVzc0NCZ1ppMndBaXdnWkNDd3dGQ3dCQ1phc2lnQkNrTkZZMFZTVzFnaEl5RWJpbGdnc0ZCUVdDR3dRRmtiSUxBNFVGZ2hzRGhaV1NDeEFRcERSV05GWVdTd0tGQllJYkVCQ2tORlkwVWdzREJRV0NHd01Ga2JJTERBVUZnZ1ppQ0tpbUVnc0FwUVdHQWJJTEFnVUZnaHNBcGdHeUN3TmxCWUliQTJZQnRnV1ZsWkc3QUJLMWxaSTdBQVVGaGxXVmt0c0FNc0lFVWdzQVFsWVdRZ3NBVkRVRml3QlNOQ3NBWWpRaHNoSVZtd0FXQXRzQVFzSXlFaklTQmtzUVZpUWlDd0JpTkNzUUVLUTBWanNRRUtRN0FBWUVWanNBTXFJU0N3QmtNZ2lpQ0tzQUVyc1RBRkpiQUVKbEZZWUZBYllWSlpXQ05aSVNDd1FGTllzQUVyR3lHd1FGa2pzQUJRV0dWWkxiQUZMTEFIUXl1eUFBSUFRMkJDTGJBR0xMQUhJMElqSUxBQUkwSmhzQUppWnJBQlk3QUJZTEFGS2kyd0J5d2dJRVVnc0F0RFk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGallFU3dBV0F0c0Fnc3NnY0xBRU5GUWlvaHNnQUJBRU5nUWkyd0NTeXdBRU1qUkxJQUFRQkRZRUl0c0Fvc0lDQkZJTEFCS3lPd0FFT3dCQ1ZnSUVXS0kyRWdaQ0N3SUZCWUliQUFHN0F3VUZpd0lCdXdRRmxaSTdBQVVGaGxXYkFESlNOaFJFU3dBV0F0c0Fzc0lDQkZJTEFCS3lPd0FFT3dCQ1ZnSUVXS0kyRWdaTEFrVUZpd0FCdXdRRmtqc0FCUVdHVlpzQU1sSTJGRVJMQUJZQzJ3REN3Z3NBQWpRcklMQ2dORldDRWJJeUZaS2lFdHNBMHNzUUlDUmJCa1lVUXRzQTRzc0FGZ0lDQ3dERU5Lc0FCUVdDQ3dEQ05DV2JBTlEwcXdBRkpZSUxBTkkwSlpMYkFQTENDd0VHSm1zQUZqSUxnRUFHT0tJMkd3RGtOZ0lJcGdJTEFPSTBJakxiQVFMRXRVV0xFRVpFUlpKTEFOWlNONExiQVJMRXRSV0V0VFdMRUVaRVJaR3lGWkpMQVRaU040TGJBU0xMRUFEME5WV0xFUEQwT3dBV0ZDc0E4cldiQUFRN0FDSlVLeERBSWxRckVOQWlWQ3NBRVdJeUN3QXlWUVdMRUJBRU5nc0FRbFFvcUtJSW9qWWJBT0tpRWpzQUZoSUlvalliQU9LaUVic1FFQVEyQ3dBaVZDc0FJbFliQU9LaUZac0F4RFI3QU5RMGRnc0FKaUlMQUFVRml3UUdCWlpyQUJZeUN3QzBOanVBUUFZaUN3QUZCWXNFQmdXV2F3QVdOZ3NRQUFFeU5Fc0FGRHNBQStzZ0VCQVVOZ1FpMndFeXdBc1FBQ1JWUllzQThqUWlCRnNBc2pRckFLSTdBQVlFSWdZTEFCWWJVUUVBRUFEZ0JDUW9wZ3NSSUdLN0J5S3hzaVdTMndGQ3l4QUJNckxiQVZMTEVCRXlzdHNCWXNzUUlUS3kyd0Z5eXhBeE1yTGJBWUxMRUVFeXN0c0Jrc3NRVVRLeTJ3R2l5eEJoTXJMYkFiTExFSEV5c3RzQndzc1FnVEt5MndIU3l4Q1JNckxiQWVMQUN3RFN1eEFBSkZWRml3RHlOQ0lFV3dDeU5Dc0FvanNBQmdRaUJnc0FGaHRSQVFBUUFPQUVKQ2ltQ3hFZ1lyc0hJckd5SlpMYkFmTExFQUhpc3RzQ0Fzc1FFZUt5MndJU3l4QWg0ckxiQWlMTEVESGlzdHNDTXNzUVFlS3kyd0pDeXhCUjRyTGJBbExMRUdIaXN0c0NZc3NRY2VLeTJ3Snl5eENCNHJMYkFvTExFSkhpc3RzQ2tzSUR5d0FXQXRzQ29zSUdDd0VHQWdReU93QVdCRHNBSWxZYkFCWUxBcEtpRXRzQ3Nzc0NvcnNDb3FMYkFzTENBZ1J5QWdzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUNOaE9DTWdpbFZZSUVjZ0lMQUxRMk80QkFCaUlMQUFVRml3UUdCWlpyQUJZMkFqWVRnYklWa3RzQzBzQUxFQUFrVlVXTEFCRnJBc0tyQUJGVEFiSWxrdHNDNHNBTEFOSzdFQUFrVlVXTEFCRnJBc0tyQUJGVEFiSWxrdHNDOHNJRFd3QVdBdHNEQXNBTEFCUldPNEJBQmlJTEFBVUZpd1FHQlpackFCWTdBQks3QUxRMk80QkFCaUlMQUFVRml3UUdCWlpyQUJZN0FCSzdBQUZyUUFBQUFBQUVRK0l6aXhMd0VWS2kyd01Td2dQQ0JISUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQ3dBRU5oT0Myd01pd3VGend0c0RNc0lEd2dSeUN3QzBOanVBUUFZaUN3QUZCWXNFQmdXV2F3QVdOZ3NBQkRZYkFCUTJNNExiQTBMTEVDQUJZbElDNGdSN0FBSTBLd0FpVkppb3BISTBjallTQllZaHNoV2JBQkkwS3lNd0VCRlJRcUxiQTFMTEFBRnJBRUpiQUVKVWNqUnlOaHNBbERLMldLTGlNZ0lEeUtPQzJ3Tml5d0FCYXdCQ1d3QkNVZ0xrY2pSeU5oSUxBRUkwS3dDVU1ySUxCZ1VGZ2dzRUJSV0xNQ0lBTWdHN01DSmdNYVdVSkNJeUN3Q0VNZ2lpTkhJMGNqWVNOR1lMQUVRN0FDWWlDd0FGQllzRUJnV1dhd0FXTmdJTEFCS3lDS2ltRWdzQUpEWUdRanNBTkRZV1JRV0xBQ1EyRWJzQU5EWUZtd0F5V3dBbUlnc0FCUVdMQkFZRmxtc0FGallTTWdJTEFFSmlOR1lUZ2JJN0FJUTBhd0FpV3dDRU5ISTBjallXQWdzQVJEc0FKaUlMQUFVRml3UUdCWlpyQUJZMkFqSUxBQkt5T3dCRU5nc0FFcnNBVWxZYkFGSmJBQ1lpQ3dBRkJZc0VCZ1dXYXdBV093QkNaaElMQUVKV0JrSTdBREpXQmtVRmdoR3lNaFdTTWdJTEFFSmlOR1lUaFpMYkEzTExBQUZpQWdJTEFGSmlBdVJ5TkhJMkVqUERndHNEZ3NzQUFXSUxBSUkwSWdJQ0JHSTBld0FTc2pZVGd0c0Rrc3NBQVdzQU1sc0FJbFJ5TkhJMkd3QUZSWUxpQThJeUVic0FJbHNBSWxSeU5ISTJFZ3NBVWxzQVFsUnlOSEkyR3dCaVd3QlNWSnNBSWxZYmtJQUFnQVkyTWpJRmhpR3lGWlk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGallDTXVJeUFnUElvNEl5RlpMYkE2TExBQUZpQ3dDRU1nTGtjalJ5TmhJR0N3SUdCbXNBSmlJTEFBVUZpd1FHQlpackFCWXlNZ0lEeUtPQzJ3T3l3aklDNUdzQUlsUmxKWUlEeFpMckVyQVJRckxiQThMQ01nTGthd0FpVkdVRmdnUEZrdXNTc0JGQ3N0c0Qwc0l5QXVSckFDSlVaU1dDQThXU01nTGthd0FpVkdVRmdnUEZrdXNTc0JGQ3N0c0Q0c3NEVXJJeUF1UnJBQ0pVWlNXQ0E4V1M2eEt3RVVLeTJ3UHl5d05pdUtJQ0E4c0FRalFvbzRJeUF1UnJBQ0pVWlNXQ0E4V1M2eEt3RVVLN0FFUXk2d0t5c3RzRUFzc0FBV3NBUWxzQVFtSUM1SEkwY2pZYkFKUXlzaklEd2dMaU00c1NzQkZDc3RzRUVzc1FnRUpVS3dBQmF3QkNXd0JDVWdMa2NqUnlOaElMQUVJMEt3Q1VNcklMQmdVRmdnc0VCUldMTUNJQU1nRzdNQ0pnTWFXVUpDSXlCSHNBUkRzQUppSUxBQVVGaXdRR0JaWnJBQlkyQWdzQUVySUlxS1lTQ3dBa05nWkNPd0EwTmhaRkJZc0FKRFlSdXdBME5nV2JBREpiQUNZaUN3QUZCWXNFQmdXV2F3QVdOaHNBSWxSbUU0SXlBOEl6Z2JJU0FnUmlOSHNBRXJJMkU0SVZteEt3RVVLeTJ3UWl5d05Tc3VzU3NCRkNzdHNFTXNzRFlySVNNZ0lEeXdCQ05DSXppeEt3RVVLN0FFUXk2d0t5c3RzRVFzc0FBVklFZXdBQ05Dc2dBQkFSVVVFeTZ3TVNvdHNFVXNzQUFWSUVld0FDTkNzZ0FCQVJVVUV5NndNU290c0VZc3NRQUJGQk93TWlvdHNFY3NzRFFxTGJCSUxMQUFGa1VqSUM0Z1Jvb2pZVGl4S3dFVUt5MndTU3l3Q0NOQ3NFZ3JMYkJLTExJQUFFRXJMYkJMTExJQUFVRXJMYkJNTExJQkFFRXJMYkJOTExJQkFVRXJMYkJPTExJQUFFSXJMYkJQTExJQUFVSXJMYkJRTExJQkFFSXJMYkJSTExJQkFVSXJMYkJTTExJQUFENHJMYkJUTExJQUFUNHJMYkJVTExJQkFENHJMYkJWTExJQkFUNHJMYkJXTExJQUFFQXJMYkJYTExJQUFVQXJMYkJZTExJQkFFQXJMYkJaTExJQkFVQXJMYkJhTExJQUFFTXJMYkJiTExJQUFVTXJMYkJjTExJQkFFTXJMYkJkTExJQkFVTXJMYkJlTExJQUFEOHJMYkJmTExJQUFUOHJMYkJnTExJQkFEOHJMYkJoTExJQkFUOHJMYkJpTExBM0t5NnhLd0VVS3kyd1l5eXdOeXV3T3lzdHNHUXNzRGNyc0R3ckxiQmxMTEFBRnJBM0s3QTlLeTJ3Wml5d09Dc3VzU3NCRkNzdHNHY3NzRGdyc0RzckxiQm9MTEE0SzdBOEt5MndhU3l3T0N1d1BTc3RzR29zc0RrckxyRXJBUlFyTGJCckxMQTVLN0E3S3kyd2JDeXdPU3V3UENzdHNHMHNzRGtyc0QwckxiQnVMTEE2S3k2eEt3RVVLeTJ3Ynl5d09pdXdPeXN0c0hBc3NEb3JzRHdyTGJCeExMQTZLN0E5S3kyd2NpeXpDUVFDQTBWWUlSc2pJVmxDSzdBSVpiQURKRkI0c0FFVk1DMEFTN2dBeUZKWXNRRUJqbG13QWJrSUFBZ0FZM0N4QUFWQ3NRQUFLckVBQlVLeEFBZ3FzUUFGUXJFQUNDcXhBQVZDdVFBQUFBa3FzUUFGUXJrQUFBQUpLckVEQUVTeEpBR0lVVml3UUloWXNRTmtSTEVtQVloUldMb0lnQUFCQkVDSVkxUllzUU1BUkZsWldWbXhBQXdxdUFIL2hiQUVqYkVDQUVRQScpIGZvcm1hdCgndHJ1ZXR5cGUnKTtcbn1cbi8qIENocm9tZSBoYWNrOiBTVkcgaXMgcmVuZGVyZWQgbW9yZSBzbW9vdGggaW4gV2luZG96emUuIDEwMCUgbWFnaWMsIHVuY29tbWVudCBpZiB5b3UgbmVlZCBpdC4gKi9cbi8qIE5vdGUsIHRoYXQgd2lsbCBicmVhayBoaW50aW5nISBJbiBvdGhlciBPUy1lcyBmb250IHdpbGwgYmUgbm90IGFzIHNoYXJwIGFzIGl0IGNvdWxkIGJlICovXG4vKlxuQG1lZGlhIHNjcmVlbiBhbmQgKC13ZWJraXQtbWluLWRldmljZS1waXhlbC1yYXRpbzowKSB7XG4gIEBmb250LWZhY2Uge1xuICAgIGZvbnQtZmFtaWx5OiAnc2InO1xuICAgIHNyYzogdXJsKCcuLi9mb250L3NiLnN2Zz80OTM0MDI0OCNzYicpIGZvcm1hdCgnc3ZnJyk7XG4gIH1cbn1cbiovXG4gXG4gW2NsYXNzXj1cInNiLWljb24tXCJdOmJlZm9yZSwgW2NsYXNzKj1cIiBzYi1pY29uLVwiXTpiZWZvcmUge1xuICBmb250LWZhbWlseTogXCJzYlwiO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG4gIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gIHNwZWFrOiBub25lO1xuIFxuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIHRleHQtZGVjb3JhdGlvbjogaW5oZXJpdDtcbiAgd2lkdGg6IDFlbTtcbiAgbWFyZ2luLXJpZ2h0OiAuMmVtO1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIC8qIG9wYWNpdHk6IC44OyAqL1xuIFxuICAvKiBGb3Igc2FmZXR5IC0gcmVzZXQgcGFyZW50IHN0eWxlcywgdGhhdCBjYW4gYnJlYWsgZ2x5cGggY29kZXMqL1xuICBmb250LXZhcmlhbnQ6IG5vcm1hbDtcbiAgdGV4dC10cmFuc2Zvcm06IG5vbmU7XG4gICAgIFxuICAvKiBmaXggYnV0dG9ucyBoZWlnaHQsIGZvciB0d2l0dGVyIGJvb3RzdHJhcCAqL1xuICBsaW5lLWhlaWdodDogMWVtO1xuIFxuICAvKiBBbmltYXRpb24gY2VudGVyIGNvbXBlbnNhdGlvbiAtIG1hcmdpbnMgc2hvdWxkIGJlIHN5bW1ldHJpYyAqL1xuICAvKiByZW1vdmUgaWYgbm90IG5lZWRlZCAqL1xuICBtYXJnaW4tbGVmdDogLjJlbTtcbiBcbiAgLyogeW91IGNhbiBiZSBtb3JlIGNvbWZvcnRhYmxlIHdpdGggaW5jcmVhc2VkIGljb25zIHNpemUgKi9cbiAgLyogZm9udC1zaXplOiAxMjAlOyAqL1xuIFxuICAvKiBVbmNvbW1lbnQgZm9yIDNEIGVmZmVjdCAqL1xuICAvKiB0ZXh0LXNoYWRvdzogMXB4IDFweCAxcHggcmdiYSgxMjcsIDEyNywgMTI3LCAwLjMpOyAqL1xufVxuLnNiLWljb24tZmlsdGVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDAnOyB9IC8qICfuoIAnICovXG4uc2ItaWNvbi10aC1sYXJnZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAxJzsgfSAvKiAn7qCBJyAqL1xuLnNiLWljb24tdGg6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMic7IH0gLyogJ+6ggicgKi9cbi5zYi1pY29uLXRoLWxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMyc7IH0gLyogJ+6ggycgKi9cbi5zYi1pY29uLXBlbmNpbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA0JzsgfSAvKiAn7qCEJyAqL1xuLnNiLWljb24tY2FuY2VsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDUnOyB9IC8qICfuoIUnICovXG4uc2ItaWNvbi1wbHVzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDYnOyB9IC8qICfuoIYnICovXG4uc2ItaWNvbi1jb2c6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNyc7IH0gLyogJ+6ghycgKi9cbi5zYi1pY29uLWFsaWduLWp1c3RpZnk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwOCc7IH0gLyogJ+6giCcgKi9cbi5zYi1pY29uLW9rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDknOyB9IC8qICfuoIknICovXG4uc2ItaWNvbi1sb2NrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGEnOyB9IC8qICfuoIonICovXG4uc2ItaWNvbi1leGNoYW5nZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBiJzsgfSAvKiAn7qCLJyAqL1xuLnNiLWljb24tZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBjJzsgfSAvKiAn7qCMJyAqL1xuLnNiLWljb24tdXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZCc7IH0gLyogJ+6gjScgKi9cbi5zYi1pY29uLWhlbHAtY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBlJzsgfSAvKiAn7qCOJyAqL1xuLnNiLWljb24taW5mby1jaXJjbGVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGYnOyB9IC8qICfuoI8nICovXG4uc2ItaWNvbi1zb3J0LW5hbWUtdXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMCc7IH0gLyogJ+6gkCcgKi9cbi5zYi1pY29uLXNvcnQtbmFtZS1kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTEnOyB9IC8qICfuoJEnICovXG4uc2ItaWNvbi1kb3duLWRpcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEyJzsgfSAvKiAn7qCSJyAqL1xuLnNiLWljb24tdXAtZGlyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTMnOyB9IC8qICfuoJMnICovXG4uc2ItaWNvbi1jb21wYXNzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTQnOyB9IC8qICfuoJQnICovXG4uc2ItaWNvbi1yaWdodC1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNSc7IH0gLyogJ+6glScgKi9cbi5zYi1pY29uLWxlZnQtZGlyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTYnOyB9IC8qICfuoJYnICovXG4uc2ItaWNvbi1kb2NzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTcnOyB9IC8qICfuoJcnICovXG4uc2ItaWNvbi1jaXJjbGUtZW1wdHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxOCc7IH0gLyogJ+6gmCcgKi9cbi5zYi1pY29uLWRvdC1jaXJjbGVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTknOyB9IC8qICfuoJknICovXG4uc2ItaWNvbi10by1lbmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYSc7IH0gLyogJ+6gmicgKi9cbi5zYi1pY29uLXRvLXN0YXJ0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWInOyB9IC8qICfuoJsnICovXG4uc2ItaWNvbi1mYXN0LWZvcndhcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYyc7IH0gLyogJ+6gnCcgKi9cbi5zYi1pY29uLWZhc3QtYmFja3dhcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZCc7IH0gLyogJ+6gnScgKi9cbi5zYi1pY29uLWN3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWUnOyB9IC8qICfuoJ4nICovXG4uc2ItaWNvbi1sZXZlbC1kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWYnOyB9IC8qICfuoJ8nICovXG4uc2ItaWNvbi1hdHRlbnRpb246YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMCc7IH0gLyogJ+6goCcgKi9cbi5zYi1pY29uLWF0dGVudGlvbi1jaXJjbGVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjEnOyB9IC8qICfuoKEnICovXG4uc2ItaWNvbi1zZWFyY2g6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMic7IH0gLyogJ+6goicgKi9cbi5zYi1pY29uLWNjdzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIzJzsgfSAvKiAn7qCjJyAqL1xuLnNiLWljb24tc3RhcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI0JzsgfSAvKiAn7qCkJyAqL1xuLnNiLWljb24tc3Rhci1lbXB0eTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI1JzsgfSAvKiAn7qClJyAqL1xuLyogZW5kIG9mIGltcG9ydCBmcm9tIHNiLWVtYmVkZGVkLmNzcyAqL1xuXG5cbi5zYiAqW2NsYXNzXj1cInNiLWljb24tXCJdOmJlZm9yZSwgLnNiICpbY2xhc3MqPVwiIHNiLWljb24tXCJdOmJlZm9yZSB7XG4gIGZvbnQtZmFtaWx5OiAnc2InO1xuICBjb2xvcjogaW5oZXJpdDtcbiAgLyogQmV0dGVyIEZvbnQgUmVuZGVyaW5nID09PT09PT09PT09ICovXG4gIC13ZWJraXQtZm9udC1zbW9vdGhpbmc6IGFudGlhbGlhc2VkO1xuICAtbW96LW9zeC1mb250LXNtb290aGluZzogZ3JheXNjYWxlO1xufVxuXG4vLyBmaXggZm9yIGljb24gZm9udCB0aGF0IGRpZG4ndCBoYXZlIHZlcnRpY2FsIHNvcnQgYXJyb3dzXG4uc2ItaWNvbi1leGNoYW5nZTpiZWZvcmUge1xuICAucm90YXRlKDkwZGVnKTtcbn1cblxuLy8gVGhlIGxvYWRpbmcgc3Bpbm5lci4gIFRoaXMgaXMgYW4gYW5pbWF0ZWQgZ2lmLCBmb3VuZCBhdCBcImljb25zL2xvYWRlci5naWZcIlxuLnNiLWljb24tbG9hZGluZyB7XG4gIHdpZHRoOiAxNDhweDtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xufVxuXG4uc2ItaWNvbi1sb2FkaW5nID4gZGl2IHtcbiAgd2lkdGg6IDM2cHg7XG4gIGhlaWdodDogMThweDtcbiAgbWFyZ2luOiAycHg7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkhpZ2hsaWdodENvbG9yO1xuXG4gIGJvcmRlci1yYWRpdXM6IDEwJTtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAtd2Via2l0LWFuaW1hdGlvbjogYm91bmNlZGVsYXkgMS40cyBpbmZpbml0ZSBlYXNlLWluLW91dDtcbiAgYW5pbWF0aW9uOiBib3VuY2VkZWxheSAxLjRzIGluZmluaXRlIGVhc2UtaW4tb3V0O1xuICAvKiBQcmV2ZW50IGZpcnN0IGZyYW1lIGZyb20gZmxpY2tlcmluZyB3aGVuIGFuaW1hdGlvbiBzdGFydHMgKi9cbiAgLXdlYmtpdC1hbmltYXRpb24tZmlsbC1tb2RlOiBib3RoO1xuICBhbmltYXRpb24tZmlsbC1tb2RlOiBib3RoO1xufVxuXG4uc2ItaWNvbi1sb2FkaW5nIC5zYi1pY29uLWJvdW5jZTEge1xuICAtd2Via2l0LWFuaW1hdGlvbi1kZWxheTogLTAuMzJzO1xuICBhbmltYXRpb24tZGVsYXk6IC0wLjMycztcbn1cblxuLnNiLWljb24tbG9hZGluZyAuc2ItaWNvbi1ib3VuY2UyIHtcbiAgLXdlYmtpdC1hbmltYXRpb24tZGVsYXk6IC0wLjE2cztcbiAgYW5pbWF0aW9uLWRlbGF5OiAtMC4xNnM7XG59XG5cbi8vIEhlYWRlciBpY29uIGJhY2tncm91bmQgY29sb3JzXG4uc2JQYWdlVGl0bGUge1xuXHQuc2YtaWNvbi1jdXN0b205MyB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzkwNEQ0Qztcblx0fVxuXHQuc2YtaWNvbi1wcm9kdWN0IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjQjc4MUQzO1xuXHR9XHRcblx0LnNmLWljb24tc2V0dGluZ3Mge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNFREI1NjY7XG5cdH1cblx0LnNmLWljb24tZG93bmxvYWQge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM1NDY5OEQ7XG5cdH1cblx0LnNmLWljb24tY29udHJhY3QtMSB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzZFQzA2RTtcblx0fVxuXHQuc2YtaWNvbi1hcHByb3ZhbCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzAwQzZCNztcblx0fVxuICAgIC5zZi1pY29uLXBvc3Qge1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjNjVDQUU0O1xuICAgIH1cblx0LnNmLWljb24tZ2RvYyB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzU0Njk4RDtcblx0fVxuXHQuc2YtaWNvbi1yZWNlbnQge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM2Q0ExRTk7XG5cdH1cblx0LnNmLWljb24tY29weSB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzZDQTBFOTtcblx0fVxuXHQuc2YtaWNvbi1mYXZvcml0ZSB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogI0ZGN0I4NDtcblx0fVxuXHQuc2YtaWNvbi1yZWZyZXNoIHtcblx0XHQmLnJlc2l6ZSB7XG5cdFx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkNBMEU5O1xuXHRcdH1cblx0fVxuXG5cdC5zZi1pY29uLXJlcGxhY2Uge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM1NDY5OEQ7XG5cdH1cbn1cblxuQC13ZWJraXQta2V5ZnJhbWVzIGJvdW5jZWRlbGF5IHtcbiAgMCUsIDgwJSwgMTAwJSB7IC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSgwLjApIH1cbiAgNDAlIHsgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDEuMCkgfVxufVxuXG5Aa2V5ZnJhbWVzIGJvdW5jZWRlbGF5IHtcbiAgMCUsIDgwJSwgMTAwJSB7XG4gICAgdHJhbnNmb3JtOiBzY2FsZSgwLjApO1xuICAgIC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSgwLjApO1xuICB9IDQwJSB7XG4gICAgICB0cmFuc2Zvcm06IHNjYWxlKDEuMCk7XG4gICAgICAtd2Via2l0LXRyYW5zZm9ybTogc2NhbGUoMS4wKTtcbiAgICB9XG59XG4iLCIvKlxuUm90YXRlcyBhbiBlbGVtZW50XG5cbiRyIC0gdGhlIHJvdGF0ZSBmdW5jdGlvbiBwYXJhbXRlciwgZS5nLiA5MGRlZ1xuICovXG4ucm90YXRlKEByKSB7XG4gIC13ZWJraXQtdHJhbnNmb3JtOiByb3RhdGUoQHIpO1xuICAtbW96LXRyYW5zZm9ybTogcm90YXRlKEByKTtcbiAgLW1zLXRyYW5zZm9ybTogcm90YXRlKEByKTtcbiAgdHJhbnNmb3JtOiByb3RhdGUoQHIpO1xufVxuIiwiQGltcG9ydCBcInZhcmlhYmxlcy5sZXNzXCI7XG5AaW1wb3J0IFwibWl4aW5zLmxlc3NcIjtcbkBpbXBvcnQgXCJpY29ucy5sZXNzXCI7XG5cbkBwYWRkaW5nTW9iaWxlOiAxNXB4O1xuQGZvbnRTaXplTW9iaWxlOiAxNHB4O1xuXG4vLyBPdmVycmlkaW5nIHBiU3Vic2VjdGlvbiBzdHlsaW5nIGZvciBsaW5lIGVkaXRvciAtIGNhbm5vdCB1cGRhdGUgdGhlIHBhZ2VCbG9ja1NlY3Rpb24gY29tcG9uZW50IHlldCBhcyB3ZSBhcmUgcmVza2lubmluZyBvbmx5IGxpbmUgZWRpdG9yIHJpZ2h0IG5vd1xuLnBiU3Vic2VjdGlvbiBoZWFkZXIge1xuXHQqem9vbTogMTtcblx0bWFyZ2luOiAwO1xuXHRwYWRkaW5nOiAwO1xuXHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXHRib3JkZXI6IG5vbmU7XG5cbn1cblxuLyphIHRhYmxlIHRoYXQgZGlzcGxheXMgYSBsaXN0IG9mIGVudGl0aWVzL3Jvd3MvZXRjLCBhIGxhIGEgXCJsaXN0IHBhZ2VcIiovXG4uc2JUYWJsZSB7XG5cdGJvcmRlci1jb2xsYXBzZTogY29sbGFwc2U7XG5cdGJvcmRlci1zcGFjaW5nOiAwO1xuXHR3aWR0aDogMTAwJTtcblx0dGJvZHkge1xuICAgIFx0LnNiQWN0aW9ucyB7XG4gICAgICBcdFx0W2NsYXNzXj1cInNmLWljb24tXCJdOmJlZm9yZSwgW2NsYXNzKj1cIiBzZi1pY29uLVwiXTpiZWZvcmV7XG4gICAgICAgIFx0XHRjb2xvcjogQHNiTGlua0NvbG9yO1xuICAgICAgICBcdFx0Zm9udC1zaXplOjIwcHg7XG4gICAgICAgIFx0XHQmOmhvdmVyIHtcbiAgICAgICAgXHRcdFx0Y29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgICAgICAgICBcdFx0XHRjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgIFx0XHR9XG4gICAgICBcdFx0fVxuICAgXHRcdH1cbiAgIFx0fVxuXHQ+IHRoLFxuXHQ+IHRyID4gdGQge1xuXHRcdGhlaWdodDogNDZweDtcblx0fVxuXHQvKmNlbnRlciBhbGlnbmVkIGNlbGxzKi9cblx0PiB0Ym9keSA+IHRyID4gdGQuY2VudGVyLFxuXHQ+IHRib2R5ID4gdHIgPiB0ZC5zYkFjdGlvbnMsXG5cdD4gdGhlYWQgPiB0ciA+IHRoLnNiQWN0aW9ucyxcblx0PiB0aGVhZCA+IHRyID4gdGguY2VudGVyLFxuXHQ+IHRmb290ID4gdHIgPiB0ZC5jZW50ZXIge1xuXHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0fVxuXHQvKnJpZ2h0IGFsaWduZWQgY2VsbHMqL1xuXHQ+IHRoZWFkID4gdHIgPiB0aC5yaWdodCxcblx0PiB0Ym9keSA+IHRyID4gdGQucmlnaHQsXG5cdD4gdGZvb3QgPiB0ciA+IHRkLnJpZ2h0IHtcblx0XHR0ZXh0LWFsaWduOiByaWdodDtcblx0fVxuXHQ+IGEge1xuXHRcdGNvbG9yOiBpbmhlcml0O1xuXHR9XG5cdD4gaW5wdXQsXG5cdHNlbGVjdCB7XG5cdFx0Zm9udC1zaXplOiBpbmhlcml0O1xuXG5cdH1cblxuXHQvKmEgc3RhbmRhcmQgdGFibGUgaGVhZGVyIGNlbGwqL1xuXHQ+IHRoZWFkID4gdHIgPiB0aCB7XG5cdFx0Ym9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNjMGMwYzA7XG5cdFx0cGFkZGluZzogOHB4IDZweCA2cHg7XG5cdFx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0XHR0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuXHRcdGNvbG9yOiAjNzc3O1xuXHRcdHRleHQtYWxpZ246IGxlZnQ7XG5cdFx0d2hpdGUtc3BhY2U6IG5vd3JhcDtcblx0fVxuXHQvKmEgc3RhbmRhcmQgdGFibGUgYm9keSBjZWxsKi9cblx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdGJvcmRlci1ib3R0b206IDFweCBzb2xpZCAjZDBkMGQwO1xuXHRcdHBhZGRpbmc6IDhweCA2cHggNnB4O1xuXHRcdGNvbG9yOiAjMjIyO1xuXG5cdFx0Ji5yaWdodCBpbnB1dHtcblx0XHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXHRcdH1cblxuXHRcdGlucHV0OmRpc2FibGVkIHtcblx0XHRcdGJhY2tncm91bmQtY29sb3I6IEBzYkNvbnRlbnRCZ0NvbG9yO1xuXHRcdH1cblx0fVxuXHQvKnRhYmxlIGZvb3RlciBjZWxscyovXG5cdD4gdGZvb3QgPiB0ciA+IHRkIHtcblx0XHRwYWRkaW5nOiA4cHggNnB4IDZweDtcblx0XHRjb2xvcjogIzIyMjtcblx0fVxufVxuXG4vKkEgY29udGFpbmVyL3JvdyBvZiBidXR0b25zLCBhIGxhIGEgYnV0dG9uIFwiYmFyXCIqL1xuLnNiQnV0dG9ucyB7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcblx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xufVxuXG4uc2JNb2RhbEZvb3RlciA+IC5zYkJ1dHRvbnMge1xuICBwYWRkaW5nOiAxMHB4IDA7XG59XG5cbi8qQSBzdGFuZGFyZCwgc3RhbmRhbG9uZSBidXR0b24qL1xuLnNiQnRuIHtcblx0YmFja2dyb3VuZDogI2ZmZjtcblx0Y29sb3I6ICMxNjZiYmY7XG5cdGJvcmRlcjogMXB4IHNvbGlkICNjMGMwYzA7XG5cdGJvcmRlci1yYWRpdXM6IDNweDtcblx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xuICAgIGhlaWdodDogNDBweDtcblx0Zm9udC1zaXplOiAxNnB4O1xuXHRtYXJnaW46IDAgMCAwIDRweDtcblxuXHQ+IHNwYW4ge1xuXHRcdGNvbG9yOiBAc2JMaW5rQ29sb3I7XG5cdH1cbn1cblxuXG5cbi5zYk1vYmlsZVRhYnMge1xuXHRmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblx0bWFyZ2luOiAxOHB4IDA7XG5cdHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG5cdGJvcmRlci1ib3R0b206IEBzYkNvbnRlbnRCb3JkZXI7XG5cdG1hcmdpbi1ib3R0b206IDEwcHg7XG5cblx0PiBhIHtcblx0XHRjb2xvcjogaW5oZXJpdDtcblx0XHRwYWRkaW5nOiA2cHggMTZweCA2cHg7XG5cdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG5cdFx0Ji5jdXN0b20ge1xuXHRcdFx0cG9zaXRpb246IHJlbGF0aXZlO1xuXHRcdH1cblxuXHRcdD4gLnNmLWljb24tZWRpdCB7XG5cdFx0XHR2aXNpYmlsaXR5OiBoaWRkZW47XG5cdFx0XHRjb2xvcjogIzAwNzBkMjtcblx0XHRcdHBvc2l0aW9uOiBhYnNvbHV0ZTtcblx0XHRcdHRvcDogNnB4O1xuXHRcdFx0cmlnaHQ6IC02cHg7XG5cblx0XHRcdCYudmlzaWJsZSB7XG5cdFx0XHRcdHZpc2liaWxpdHk6IHZpc2libGU7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0PiBhLnNlbGVjdGVkIHtcblx0XHRib3JkZXItYm90dG9tOiA0cHggc29saWQgIzE2NmJiZjtcblx0fVxufVxuXG4uc2JQYWdlVGl0bGVNb2JpbGUge1xuXHRwb3NpdGlvbjogZml4ZWQ7XG5cdHRvcDogMDtcblx0bGVmdDogMDtcblx0cmlnaHQ6IDA7XG5cdGhlaWdodDogNzVweDtcblx0ei1pbmRleDogNTtcblx0YmFja2dyb3VuZC1jb2xvcjogQHNiQ29udGVudEJnQ29sb3I7XG5cdGJvcmRlci1ib3R0b206IEBzYkNvbnRlbnRCb3JkZXI7XG5cblx0PiAuc2JQYWdlVGl0bGVUYWJsZSB7XG5cdFx0PiBkaXYge1xuXHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0XHRcdG1hcmdpbi10b3A6IDIxcHg7XG5cdFx0fVxuXG5cdFx0PiAuaWNvbiB7XG5cdFx0XHRtYXJnaW4tcmlnaHQ6IDEwcHg7XG5cdFx0fVxuXG5cdFx0PiAuc2JQYWdlVGl0bGVMZWZ0IHtcblx0XHRcdGgxLCBoMiB7XG5cdFx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG5cdFx0XHRcdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdFx0XHRcdG1hcmdpbjogMDtcblx0XHRcdH1cblx0XHR9XG5cblx0XHQ+IC5zYlBhZ2VUaXRsZVJpZ2h0IHtcblx0XHRcdG1hcmdpbjogN3B4O1xuXHRcdFx0ZmxvYXQ6IHJpZ2h0O1xuXG5cdFx0XHQ+IC5zYlBhZ2VCdXR0b25zIHtcblx0XHRcdFx0bWFyZ2luLXRvcDogN3B4O1xuXHRcdFx0XHRtYXJnaW4tYm90dG9tOiA3cHg7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG5cbi8vIEFwZXggUGFnZU1lc3NhZ2VzIDxhcGV4OnBhZ2VNZXNzYWdlcz5cbmRpdi5tZXNzYWdlIHtcblx0Ym9yZGVyLXJhZGl1czogM3B4O1xuXHRtYXJnaW46IDEwcHggMDtcblx0cGFkZGluZzogMTJweDtcblx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cdGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0YmFja2dyb3VuZDogbm9uZTtcblxuXHQmLnRvcCB7XG5cdFx0bWFyZ2luOiA3NXB4IDAgLTYwcHggNDBweDtcblx0fVxuXG5cdC5tc2dJY29uIHtcblx0ICAgIGJhY2tncm91bmQ6IG5vbmU7XG5cdCAgICB3aWR0aDogMDtcblx0ICAgIGhlaWdodDogMDtcblx0fVxuXG5cdC5tZXNzYWdlVGV4dCB7XG5cdFx0bWFyZ2luOiAwIDAgMCAzMHB4O1xuXG5cdFx0PiBoNCwgPiBkaXYge1xuXHRcdFx0Y29sb3I6ICNjMDA7XG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHR2ZXJ0aWNhbC1hbGlnbjogdG9wO1xuXHRcdFx0bGluZS1oZWlnaHQ6IEBzYkZvbnRTaXplICogMi4wO1xuXHRcdH1cblxuXHRcdGg0IHtcblx0XHRcdG1hcmdpbi1sZWZ0OiAxMHB4O1xuXHRcdFx0bWFyZ2luLXJpZ2h0OiA2cHg7XG5cdFx0fVxuXG5cdFx0PiBkaXY6bm90KDpmaXJzdC1vZi10eXBlKSB7XG5cdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHR9XG5cblx0XHQmOmJlZm9yZSB7XG5cdFx0XHRmb250LWZhbWlseTogXCJzYlwiO1xuXHRcdFx0Zm9udC1zdHlsZTogbm9ybWFsO1xuXHRcdFx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAyLjA7XG5cdFx0XHRzcGVhazogbm9uZTtcblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdHRleHQtZGVjb3JhdGlvbjogaW5oZXJpdDtcblx0XHRcdHdpZHRoOiAxZW07XG5cdFx0XHRtYXJnaW4tbGVmdDogLTMwcHg7XG5cdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0XHRmb250LXZhcmlhbnQ6IG5vcm1hbDtcblx0XHRcdHRleHQtdHJhbnNmb3JtOiBub25lO1xuXHRcdFx0bGluZS1oZWlnaHQ6IDFlbTtcblx0XHR9XG5cdH1cblxuXHQmLmVycm9yTTIsXG5cdCYuZXJyb3JNMyxcblx0Ji5lcnJvck00LFxuXHQmLmVycm9yTTUsXG5cdCYuZXJyb3JNNiB7XG5cdFx0Ym9yZGVyLWNvbG9yOiAjYzAwO1xuXG5cdFx0Lm1lc3NhZ2VUZXh0IHtcblx0XHRcdGNvbG9yOiAjYzAwO1xuXHRcdFx0JjpiZWZvcmUge1xuXHRcdFx0XHRjb250ZW50OiAnXFxlODIxJzsgIC8vc2ItaWNvbi1hdHRlbnRpb24tY2lyY2xlZFxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdCYud2FybmluZ00yLFxuXHQmLndhcm5pbmdNMyxcblx0Ji53YXJuaW5nTTQsXG5cdCYud2FybmluZ001LFxuXHQmLndhcm5pbmdNNiB7XG5cdFx0Lm1lc3NhZ2VUZXh0IHtcblx0XHRcdGNvbG9yOiAjZDk4NjMzO1xuXHRcdFx0JjpiZWZvcmUge1xuXHRcdFx0XHRjb250ZW50OiAnXFxlODIwJzsgIC8vc2ItaWNvbi1hdHRlbnRpb25cblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXG5cdCYuaW5mb00yLFxuXHQmLmluZm9NMyxcblx0Ji5pbmZvTTQsXG5cdCYuaW5mb001LFxuXHQmLmluZm9NNiB7XG5cdFx0Lm1lc3NhZ2VUZXh0IHtcblx0XHRcdGNvbG9yOiAjMDAwMGNjO1xuXHRcdFx0JjpiZWZvcmUge1xuXHRcdFx0XHRjb250ZW50OiAnXFxlODBmJzsgIC8vc2ItaWNvbi1pbmZvLWNpcmNsZWRcblx0XHRcdH1cblx0XHR9XG5cdH1cbn1cblxuXG4vKiogQ3VzdG9tIExvb2t1cCAqL1xuXG5zcGFuLmxvb2t1cElucHV0IHtcbiAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xufVxuXG4jY3VzdG9tTG9va3VwQ29tcG9uZW50IHtcbiAgICBkaXYubG9va3VwUmVzdWx0e1xuICAgICAgICBwYWRkaW5nLXRvcDoxMHB4O1xuICAgICAgICBjdXJzb3I6cG9pbnRlcjtcbiAgICAgICAgY29sb3I6Ymx1ZTtcbiAgICAgICAgdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTtcbiAgICB9XG4gICAgZGl2Lmxvb2t1cFJlc3VsdDpob3ZlcntcbiAgICAgICAgdGV4dC1kZWNvcmF0aW9uOm5vbmU7XG4gICAgICAgIHRleHQtc2hhZG93OiAxcHggMXB4IDFweCAjNTU1O1xuICAgIH1cbiAgICBzcGFuLnJlc3VsdEhlYWRlcntcbiAgICAgICAgZGlzcGxheTpibG9jaztcbiAgICAgICAgcGFkZGluZy10b3A6IDIwcHggIWltcG9ydGFudDtcbiAgICAgICAgcGFkZGluZy1ib3R0b206IDRweCAhaW1wb3J0YW50O1xuICAgICAgICBmb250LXN0eWxlOml0YWxpYztcbiAgICB9XG4gICAgZGl2LmJvZHl7XG4gICAgICAgIHBhZGRpbmctYm90dG9tOjIwcHg7XG4gICAgfVxuICAgIGlucHV0e1xuICAgICAgICB3aWR0aDogODUlICFpbXBvcnRhbnQ7XG4gICAgfVxuICAgIC5zYi1pY29uLXNlYXJjaHtcbiAgICAgICAgcGFkZGluZy1sZWZ0OjdweDtcbiAgICB9XG59XG4vKiogTW9kYWwgZm9yIGFkZGl0aW9uYWwgYnV0dG9uIG9wdGlvbnMgaW4gbGluZSBlZGl0b3IgKi9cblxuLm1vZGFsRGlhbG9nV3JhcHBlciB7XG5cdGlucHV0LnNiQnRuLFxuXHRidXR0b24uc2JCdG4ge1xuXHRcdG1hcmdpbi1ib3R0b206IDE1cHg7XG5cdFx0bWFyZ2luLWxlZnQ6IDBweDtcblxuXHRcdCY6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0XHRtYXJnaW4tdG9wOiAxNXB4O1xuXHRcdH1cblxuXHRcdCY6bGFzdC1vZi10eXBlIHtcblx0XHRcdG1hcmdpbi1ib3R0b206IDE1cHg7XG5cdFx0fVxuXHR9XG59XG5cblxuLyoqIFBob25lIFN0eWxlcyAqL1xuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogMzIwcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDY0MHB4KSB7XG5cdC5zYkJ0biB7XG5cdFx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cdFx0cGFkZGluZzogNXB4IDEwcHg7XG5cdH1cblxuXHQuc2JCdG4gPiBzcGFuW2NsYXNzXj1cInNiLWljb24tXCJdLFxuXHQuc2JCdG4gPiBzcGFuW2NsYXNzXj1cImljb24tdXRpbGl0eS1cIl0sXG5cdC5pY29uLXV0aWxpdHktZG93biB7XG5cdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0fVxuXG5cdC5zYlBhZ2VUaXRsZU1vYmlsZSB7XG5cblx0XHQ+IC5zYlBhZ2VUaXRsZVRhYmxlIHtcblx0XHRcdD4gLmljb24ge1xuXHRcdFx0XHRmbG9hdDogbGVmdDtcblx0XHRcdFx0bWFyZ2luLWxlZnQ6IDEwcHg7XG5cdFx0XHRcdG1hcmdpbi1yaWdodDogNXB4O1xuXHRcdFx0fVxuXG5cdFx0XHQ+IC5zYlBhZ2VUaXRsZUxlZnQge1xuXHRcdFx0XHRmbG9hdDogbGVmdDtcblx0XHRcdH1cblxuXHRcdFx0PiBkaXYge1xuXHRcdFx0XHRtYXJnaW4tdG9wOiAxNXB4O1xuXHRcdFx0fVxuXG5cdFx0XHQ+IC5zYlBhZ2VUaXRsZVJpZ2h0IHtcblx0XHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRcdGZsb2F0OiByaWdodDtcblxuXHRcdFx0XHQuc2JCYWNrIHtcblx0XHRcdFx0XHRmbG9hdDogbGVmdDtcblx0XHRcdFx0XHRtYXJnaW4tbGVmdDogMDtcblx0XHRcdFx0fVxuXG5cdFx0XHRcdC5zYkNsb3NlIHtcblx0XHRcdFx0XHRmbG9hdDogcmlnaHQ7XG5cblx0XHRcdFx0XHQ+IC5zZi1pY29uLWNsb3NlIHtcblx0XHRcdFx0XHRcdGZvbnQtc2l6ZTogQGZvbnRTaXplTW9iaWxlICogMS4yO1xuXHRcdFx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0XHRcdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQubW9kYWxEaWFsb2dXcmFwcGVyIHtcblx0XHRcdFx0XHRtYXJnaW46IDAgYXV0bztcblx0XHRcdFx0fVxuXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0ZGl2Lm1lc3NhZ2Uge1xuXG5cdFx0Ji50b3Age1xuXHRcdFx0bWFyZ2luOiAxMTVweCAwIC0xMDBweCAwO1xuXHRcdH1cblxuXHRcdC5tZXNzYWdlVGV4dCB7XG5cdFx0XHQ+IGRpdiB7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZTtcblx0XHRcdFx0bWFyZ2luLWxlZnQ6IC0xNXB4O1xuXHRcdFx0fVxuXHRcdH1cblx0fVxufVxuXG5cbiNlYXN5WERNX1NCUVFfcHJvdmlkZXIge1xuICB3aWR0aDogMTAwJTtcbiAgbWluLWhlaWdodDogMjAwcHg7XG59XG5cbi5zZi1pY29uLWNsb3NlIHtcbiAgY29sb3I6ICNmZmY7XG4gIGZvbnQtZmFtaWx5OiBBcmlhbDtcbiAgZm9udC13ZWlnaHQ6IDYwMDtcbiAgZm9udC1zaXplOiAyNXB4O1xuICBkaXNwbGF5OiBibG9jaztcbiAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gIHotaW5kZXg6IDIyO1xuICByaWdodDogMDtcbiAgbWFyZ2luOiBhdXRvO1xuICB3aWR0aDogMTAwJTtcbiAgbGVmdDogMDtcbn1cbiIsIiNzYkxpbmVFZGl0b3Ige1xuXHRwYWRkaW5nOiBAcGFkZGluZ01vYmlsZTtcblx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cblx0LnNiRW1wdHlRdW90ZU1zZyxcblx0LnNiRW1wdHlHcm91cE1zZyxcblx0LmVtcHR5TVNUYWJsZU1lc3NhZ2UsXG5cdC5lbXB0eVN0YW5kYXJkVGFibGVNZXNzYWdlIHtcblx0XHRwYWRkaW5nOiAyNXB4IDA7XG5cdH1cblxuXHQuc2JRdW90ZUZpZWxkcyB7XG5cdFx0bWFyZ2luOiAwIDE1cHg7XG5cblx0XHRoZWFkZXIge1xuXHRcdFx0Ym9yZGVyOiBub25lO1xuXG5cdFx0XHQ+IGgxIHtcblx0XHRcdFx0Zm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0LnNiVGFibGUge1xuXHRcdFx0PiB0Ym9keSA+IHRyIHtcblxuXHRcdFx0XHQuc2JMYWJlbCBsYWJlbHtcblx0XHRcdFx0XHR0ZXh0LWFsaWduOiByaWdodDtcblx0XHRcdFx0XHRmb250LXNpemU6IEBmb250U2l6ZU1vYmlsZTtcblx0XHRcdFx0fVxuXG5cdFx0XHRcdD4gdGQge1xuXHRcdFx0XHRcdGJvcmRlcjogbm9uZTtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5zYlF1b3RlQWN0aW9ucyxcblx0LnNiR3JvdXBBY3Rpb25zIHtcblxuXHRcdC8vIGluaXRpYWxseSBoaWRlIHRoZSBjdXN0b20gYWN0aW9ucyB0aGF0IGFyZSByZW5kZXJlZCBjb25kaXRpb25hbGx5XG5cdFx0LnJlbmV3U3Vic2NyaXB0aW9uc0J0bixcblx0XHQudXBncmFkZUFzc2V0c0J0bixcblx0XHQucmVzZXREaXNjQnRuLFxuXHRcdC5vcHRpb25hbEFsbEJ0bixcblx0XHQub3B0aW9uYWxOb25lQnRuLFxuXHRcdC5kZWxldGVMaW5lc0J0bixcblx0XHQuYWRkR3JvdXBCdG4sXG5cdFx0LnVuZ3JvdXBCdG4ge1xuXHRcdFx0ZGlzcGxheTogbm9uZTtcblx0XHR9XG5cblx0XHR1bCB7XG5cdFx0XHRtYXJnaW46IDA7XG5cdFx0XHRwYWRkaW5nOiAwO1xuXHRcdFx0bGlzdC1zdHlsZS10eXBlOiBub25lO1xuXG5cdFx0XHR1bCB7XG5cdFx0XHRcdGRpc3BsYXk6IG5vbmU7XG5cdFx0XHR9XG5cblx0XHRcdGxpIHtcblx0XHRcdFx0c3Bhbi5zZi1pY29uLWRvd24ub3BlbiArIHVsIHtcblx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblxuXHRcdGxpIHtcblx0XHRcdG1hcmdpbjogMTBweCAwO1xuXHRcdFx0cGFkZGluZzogMTBweDtcblx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXG5cdFx0XHQmLnNiQnRuIHtcblx0XHRcdFx0aGVpZ2h0OiBhdXRvO1xuXHRcdFx0fVxuXG5cdFx0XHQmLm1lbnUge1xuXHRcdFx0XHRib3JkZXI6IDFweCBzb2xpZCAjYzBjMGMwO1xuXG5cdFx0XHRcdGxpIHtcblx0XHRcdFx0XHRib3JkZXI6IG5vbmU7XG5cdFx0XHRcdFx0bWFyZ2luOiAwO1xuXG5cdFx0XHRcdFx0JjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0XHRcdG1hcmdpbi10b3A6IDEwcHg7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0LnNiVG9vbFNlcGFyYXRvciB7XG5cdFx0XHRoZWlnaHQ6IDA7XG5cdFx0XHRwYWRkaW5nOiAwO1xuXHRcdFx0Ym9yZGVyOiBub25lO1xuXHRcdH1cblx0fVxuXG5cdCYudXBncmFkYWJsZSBsaS51cGdyYWRlQXNzZXRzQnRuIHtcblx0XHRkaXNwbGF5OiBibG9jaztcblx0fVxuXHQmLnJlbmV3YWJsZSBsaS5yZW5ld1N1YnNjcmlwdGlvbnNCdG4ge1xuXHRcdGRpc3BsYXk6IGJsb2NrO1xuXHR9XG5cdCYuZGlzY291bnRhYmxlIGxpLnJlc2V0RGlzY0J0biB7XG5cdFx0ZGlzcGxheTogYmxvY2s7XG5cdH1cblx0Ji5vcHRpb25hbCBsaS5vcHRpb25hbEFsbEJ0bixcblx0Ji5vcHRpb25hbCBsaS5vcHRpb25hbE5vbmVCdG4ge1xuXHRcdGRpc3BsYXk6IGJsb2NrO1xuXHR9XG5cdCYubXVsdGlEZWxldGUgLnNiUXVvdGVBY3Rpb25zIC5kZWxldGVMaW5lc0J0biB7XG5cdFx0ZGlzcGxheTogYmxvY2s7XG5cdH1cblx0Ji5ncm91cGFibGUgbGkuYWRkR3JvdXBCdG4ge1xuXHRcdGRpc3BsYXk6IGJsb2NrO1xuXHR9XG5cdCYudW5ncm91cGFibGUgbGkge1xuXG5cdFx0Ji5hZGRHcm91cEJ0biB7XG5cdFx0XHRkaXNwbGF5OiBub25lO1xuXHRcdH1cblxuXHRcdCYuYWRkR3JvdXBCdG4sXG5cdFx0Ji51bmdyb3VwQnRuIHtcblx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdH1cblx0fVxuXG5cdC5zYkdyb3Vwcyxcblx0LnNiTGluZUl0ZW1zLFxuXHQuc2JDdXN0b21TZWdtZW50c0VkaXRvcixcblx0LnNiRGlzY291bnRTY2hlZHVsZU1vZGFsLFxuXHQjc2JQcmljZWJvb2tNb2RhbCxcblx0I3NiRmF2b3JpdGVzTW9kYWwsXG5cdC5zYlByb2R1Y3RSdWxlQWxlcnRQb3B1cCxcblx0LnJlY29yZEVkaXRvckZvcm0ge1xuXHRcdHBhZGRpbmctdG9wOiA3NXB4O1xuXHR9XG5cblx0LnNiRGlzY291bnRTY2hlZHVsZU1vZGFsIHtcblx0XHQubWVzc2FnZSB7XG5cdFx0XHRtYXJnaW4tdG9wOiA1cHg7XG5cdFx0XHRtYXJnaW4tYm90dG9tOiA1cHg7XG5cdFx0fVxuXHR9XG5cblx0LnNiUXVvdGVGaWVsZHMsXG5cdC5tc1N0YW5kYXJkVGFibGVDb250YWluZXIsXG5cdC5zYk11bHRpU2VnbWVudFRhYmxlQ29udGFpbmVyLFxuXHQuc2JHcm91cEZpZWxkc0NvbnRhaW5lcixcblx0LnNiQ3VzdG9tU2VnbWVudHNDb250YWluZXIge1xuXHRcdG92ZXJmbG93LXg6IGF1dG87XG5cdH1cblxuXHQuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuXHRcdG92ZXJmbG93LXg6IGF1dG87XG5cdH1cblxuXHQgLmRpc2NvdW50U2NoZWR1bGVMb2FkZXIge1xuXHRcdG1hcmdpbi1sZWZ0OiBhdXRvO1xuXHRcdG1hcmdpbi1yaWdodDogYXV0bztcblx0XHRtYXJnaW4tdG9wOiAyMHB4O1xuXHQgfVxuXG5cdC5kaXNjb3VudFNjaGVkdWxlUHJvcGVydHkge1xuXHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdH1cblxuXHQuaGlkZUlucHV0Qm9yZGVycyB7XG5cdFx0Ym9yZGVyOiAwcHg7XG5cdH1cblxuXHQuc2JHcm91cE5hbWVzIHtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0bWFyZ2luOiBAcGFkZGluZ01vYmlsZSAqIDI7XG5cblx0XHQ+IGRpdiB7XG5cdFx0XHR0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuXHRcdFx0cGFkZGluZzogQHBhZGRpbmdNb2JpbGU7XG5cdFx0XHRtYXJnaW4tYm90dG9tOiAxMHB4O1xuXG5cdFx0XHQ+IHNwYW4ge1xuXHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0XHRcdGZvbnQtd2VpZ2h0OiAgbm9ybWFsO1xuXHRcdFx0XHRmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblx0XHRcdH1cblxuXHRcdFx0PiBzcGFuOmxhc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdHBhZGRpbmctbGVmdDogQHBhZGRpbmdNb2JpbGUgKiAyO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5zYlF1b3RlVG90YWxDb250YWluZXIsXG5cdC5zYkdyb3VwVG90YWxDb250YWluZXIge1xuXHRcdG1hcmdpbi10b3A6IDI1cHg7XG5cdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cblx0XHRoZWFkZXIge1xuXHRcdFx0Ym9yZGVyLWJvdHRvbTogbm9uZTtcblx0XHRcdGJvcmRlci10b3A6IEBzYkNvbnRlbnRCb3JkZXI7XG5cblx0XHRcdD4gaDEge1xuXHRcdFx0XHRmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblx0XHRcdFx0bWFyZ2luLXRvcDogMTVweDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JHcm91cFRvdGFsQ29udGFpbmVyIHtcblx0XHRtYXJnaW4tdG9wOiA1MHB4O1xuXHR9XG5cblx0LnNiR3JvdXAge1xuXHRcdG1hcmdpbi10b3A6IDEwcHg7XG5cblx0XHQuc2JHcm91cEhlYWRlciB7XG5cdFx0XHRoZWlnaHQ6IDUwcHg7XG5cdFx0XHRmbG9hdDogbGVmdDtcblxuXHRcdFx0PiBoMiwgPiBpbnB1dCB7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0XHRcdH1cblxuXHRcdFx0PiBoMiB7XG5cdFx0XHRcdG1hcmdpbjogMDtcblx0XHRcdFx0Zm9udC1zaXplOiAyMXB4O1xuXHRcdFx0fVxuXG5cdFx0XHQ+IGlucHV0IHtcblx0XHRcdFx0ZGlzcGxheTogbm9uZTtcblx0XHRcdFx0aGVpZ2h0OiA0MHB4O1xuXHRcdFx0XHR3aWR0aDogMjAwcHg7XG5cdFx0XHRcdHBhZGRpbmc6IDVweDtcblx0XHRcdH1cblxuXHRcdFx0PiBzcGFuIHtcblx0XHRcdFx0Zm9udC1zaXplOiAxLjNlbTtcblx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0XHR2ZXJ0aWNhbC1hbGlnbjogYm90dG9tO1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdC5zYkdyb3VwQnV0dG9ucyB7XG5cdFx0XHRmbG9hdDogcmlnaHQ7XG5cdFx0fVxuXG5cdFx0LnNiRGVzY3JpcHRpb25GaWVsZCB7XG5cdFx0XHRtYXJnaW46IDIwcHggMCA0MHB4O1xuXHRcdFx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cdFx0fVxuXG5cdFx0LnNiR3JvdXBGaWVsZHNDb250YWluZXIge1xuXHRcdFx0cGFkZGluZzogNXB4O1xuXG5cdFx0XHQuc2JHcm91cEZpZWxkcyB7XG5cdFx0XHRcdC5zYkdyb3VwRmllbGQge1xuXHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0XHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdFx0XHRcdFx0bWFyZ2luLWJvdHRvbTogMTVweDtcblxuXHRcdFx0XHRcdGxhYmVsIHtcblx0XHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZTtcblx0XHRcdFx0XHRcdGZvbnQtc2l6ZTogQGZvbnRTaXplTW9iaWxlO1xuXHRcdFx0XHRcdFx0Y29sb3I6IEBzYkZvbnRDb2xvcjtcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRpbnB1dFt0eXBlPSdjaGVja2JveCddIHtcblx0XHRcdFx0XHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0Lm11bHRpU2VnbWVudC5zYlRhYmxlLFxuXHRcdC5zdGFuZGFyZC5zYlRhYmxlIHtcblx0XHRcdG1hcmdpbi10b3A6IDMwcHg7XG5cblx0XHRcdD4gdGhlYWQgPiB0aCB7XG5cdFx0XHRcdHNwYW4ge1xuXHRcdFx0XHRcdGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdFx0XHRcdH1cblxuXHRcdFx0fVxuXG5cdFx0XHQ+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0XHRcdGhlaWdodDogNTVweDtcblxuXHRcdFx0XHQmLnNiQWN0aW9ucyB7XG5cdFx0XHRcdFx0d2hpdGUtc3BhY2U6IG5vd3JhcDtcblx0XHRcdFx0XHR0ZXh0LWFsaWduOiBsZWZ0O1xuXG5cdFx0XHRcdFx0Lmljb24tdXRpbGl0eS1jaGV2cm9ucmlnaHQsXG5cdFx0XHRcdFx0Lmljb24tdXRpbGl0eS1kb3duIHtcblx0XHRcdFx0XHRcdHdpZHRoOiAzMHB4O1xuXHRcdFx0XHRcdFx0Zm9udC1zaXplOiAxN3B4O1xuXHRcdFx0XHRcdFx0Y29sb3I6IEBzYkxpbmtDb2xvcjtcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHR1bCB7XG5cdFx0XHRcdFx0XHRtYXJnaW46IDA7XG5cdFx0XHRcdFx0XHRwYWRkaW5nOiAwO1xuXHRcdFx0XHRcdFx0bGlzdC1zdHlsZS10eXBlOiBub25lO1xuXG5cdFx0XHRcdFx0XHR1bCB7XG5cdFx0XHRcdFx0XHRcdGRpc3BsYXk6IG5vbmU7XG5cdFx0XHRcdFx0XHRcdHRvcDogMTAwJTtcblx0XHRcdFx0XHRcdFx0bGVmdCA6IDA7XG5cdFx0XHRcdFx0XHRcdHdpZHRoOjEwMCU7XG5cdFx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRcdGxpIHtcblx0XHRcdFx0XHRcdFx0c3Bhbi5zZi1pY29uLWRvd24ub3BlbiArIHVsIHtcblx0XHRcdFx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdGxpIHtcblx0XHRcdFx0XHRcdG1hcmdpbjogMTBweCAwO1xuXHRcdFx0XHRcdFx0cGFkZGluZzogMTBweDtcblx0XHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXG5cdFx0XHRcdFx0XHQmLnNiQnRuIHtcblx0XHRcdFx0XHRcdFx0aGVpZ2h0OiBhdXRvO1xuXHRcdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0XHQmLm1lbnUge1xuXHRcdFx0XHRcdFx0XHRib3JkZXI6IDFweCBzb2xpZCAjYzBjMGMwO1xuXG5cdFx0XHRcdFx0XHRcdGxpIHtcblx0XHRcdFx0XHRcdFx0XHRib3JkZXI6IG5vbmU7XG5cdFx0XHRcdFx0XHRcdFx0bWFyZ2luOiAwO1xuXG5cdFx0XHRcdFx0XHRcdFx0JjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0XHRcdFx0XHRcdG1hcmdpbi10b3A6IDEwcHg7XG5cdFx0XHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0Ly8gaW5pdGlhbGx5IGhpZGUgYWxsIGN1c3RvbSBhY3Rpb25zIHRoYXQgZG9lcyBoYXZlIGFuIGFjdGlvbiBzZWxlY3RlZCAobWVudSB0eXBlIG9yIHVybCBjdXN0b20gYWN0aW9ucyBzaG91bGQgYmUgZGlzcGxheWVkIGF0IGFsbCB0aW1lcylcblx0XHRcdFx0XHQuc2JBY3Rpb24uYWN0aW9uIHtcblx0XHRcdFx0XHRcdGRpc3BsYXk6IG5vbmU7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0Ly8gSWYgbGluZSBpcyBkZWxldGFibGUgZnJvbSB0aGUgcXVvdGUsIGRpc3BsYXkgQWRkIFRvIEZhdm9yaXRlcywgUmVtb3ZlIEZyb20gRmF2b3JpdGVzLCBEZWxldGUgYW5kIENsb25lIGFjdGlvbnNcblx0XHRcdFx0XHQmLnJlbW92YWJsZSB7XG5cdFx0XHRcdFx0XHQuYWRkVG9GYXZCdG4sXG5cdFx0XHRcdFx0XHQucmVtb3ZlRnJvbUZhdkJ0bixcblx0XHRcdFx0XHRcdC5kZWxldGVCdG4sXG5cdFx0XHRcdFx0XHQuY2xvbmVCdG4ge1xuXHRcdFx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFx0Ly8gRGlzcGxheSBlaXRoZXIgQWRkIFRvIEZhdm9yaXRlcyBvciBSZW1vdmUgRnJvbSBGYXZvcml0ZXMgYnV0dG9uIGRlcGVuZGluZyBvbiB3aGV0aGVyIHRoZSBsaW5lIGlzIGZhdm9yaXRlXG5cdFx0XHRcdFx0XHQmLmZhdm9yaXRlIC5hZGRUb0ZhdkJ0bixcblx0XHRcdFx0XHRcdCY6bm90KC5mYXZvcml0ZSkgLnJlbW92ZUZyb21GYXZCdG4ge1xuXHRcdFx0XHRcdFx0XHRkaXNwbGF5OiBub25lO1xuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdC8vIElmIHRoZSBsaW5lIGlzIGEgc3RhbmRhbG9uZSBsaW5lLCBkaXNwbGF5IENMb25lIGljb24gKGJvdGggZm9yIGV4aXN0aW5nIGFuZCBuZXcgbGluZXMpXG5cdFx0XHRcdFx0Jjpub3QoLmNvbXBvbmVudCkge1xuXHRcdFx0XHRcdFx0LmNsb25lQnRuIHtcblx0XHRcdFx0XHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0Ly8gSWYgbGluZSBpcyBidW5kbGUgcGFyZW50LCBkaXNwbGF5IHRoZSBSZWNvbmZpZ3VyZSBMaW5lIGFjdGlvblxuXHRcdFx0XHRcdCYuY29uZmlndXJhYmxlIHtcblx0XHRcdFx0XHRcdC5yZWNvbmZpZ3VyZUJ0biB7XG5cdFx0XHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdC8vIElmIGxpbmUgY2FuIGJlIGRpc3BsYXllZCBpbiBlaXRoZXIgdGFibGUsIGRpc3BsYXkgRGVzZWdtZW50IG9yIFJlc2VnbWVudCBMaW5lIGFjdGlvbnNcblx0XHRcdFx0XHQmLmNvbnZlcnRhYmxlIHtcblx0XHRcdFx0XHRcdC5kZXNlZ21lbnRCdG4sXG5cdFx0XHRcdFx0XHQucmVzZWdtZW50QnRuIHtcblx0XHRcdFx0XHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRcdC8vIERpc3BsYXkgZWl0aGVyIERlc2VnbWVudCBvciBSZXNlZ21lbnQgZGVwZW5kaW5nIG9uIHdoZXRoZXIgdGhlIGxpbmUgaXMgYSBzdGFuZGFyZCBvciBzZWdtZW50ZWQgbGluZSBpdGVtXG5cdFx0XHRcdFx0XHQmLnNlZ21lbnRlZCAucmVzZWdtZW50QnRuLFxuXHRcdFx0XHRcdFx0Jjpub3QoLnNlZ21lbnRlZCkgLmRlc2VnbWVudEJ0biB7XG5cdFx0XHRcdFx0XHRcdGRpc3BsYXk6IG5vbmU7XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0Ly8gSWYgbGluZSBoYXMgYSBkaXNjb3VudCBzY2hlZHVsZSwgZGlzcGxheSBFZGl0IERpc2NvdW50IFNjaGVkdWxlIGJ1dHRvblxuXHRcdFx0XHRcdCYuZHNFZGl0YWJsZSB7XG5cdFx0XHRcdFx0XHQudmlld0RTQnRuIHtcblx0XHRcdFx0XHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cblx0XHRcdFx0LnNiLWljb24tbGV2ZWwtZG93biB7XG5cdFx0XHRcdFx0Y29sb3I6IEBzYkljb25Db2xvcjtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXG5cdFx0XHQ+IHRmb290ID4gdHIuc2JUb3RhbFJvdyA+IHRkIHtcblx0XHRcdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Ly8gQ2xhc3NlcyBmb3IgcHJvZHVjdCBoaWVyYXJjaHkgdmlzdWFsaXphdGlvblxuICAgIC5zYkJ1bmRsZU9wdGlvbiB7XG4gICAgICBjb2xvcjogIzY5Njk2OTtcbiAgICB9XG4gICAgLnNiSW5kZW50MiB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogMTtcbiAgICB9XG4gICAgLnNiSW5kZW50MyB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogMjtcbiAgICB9XG4gICAgLnNiSW5kZW50NCB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogMztcbiAgICB9XG4gICAgLnNiSW5kZW50NSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogNDtcbiAgICB9XG4gICAgLnNiSW5kZW50NiB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogNTtcbiAgICB9XG4gICAgLnNiSW5kZW50NyB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogNjtcbiAgICB9XG4gICAgLnNiSW5kZW50OCB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogNztcbiAgICB9XG4gICAgLnNiSW5kZW50OSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogODtcbiAgICB9XG4gICAgLnNiSW5kZW50MTAge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAcGFkZGluZ01vYmlsZSAqIDk7XG4gICAgfVxuXG5cdC5zYkN1c3RvbVNlZ21lbnRzRWRpdG9yLCAuc2JQcm9kdWN0UnVsZUFsZXJ0UG9wdXAge1xuXHRcdCNzYlNlZ21lbnRzTW9kYWwge1xuXHRcdFx0b3ZlcmZsb3c6IGF1dG87XG5cdFx0XHRtYXJnaW46IDA7XG5cblx0XHRcdGhlYWRlciB7XG5cdFx0XHRcdG1hcmdpbi1ib3R0b206IDI1cHg7XG5cblx0XHRcdFx0PiBoMyB7XG5cdFx0XHRcdFx0Zm9udC1zaXplOiAyMXB4O1xuXHRcdFx0XHRcdHdpZHRoOiAxMDAlO1xuXHRcdFx0XHR9XG5cblx0XHRcdFx0LnNiQnV0dG9ucyB7XG5cdFx0XHRcdFx0d2lkdGg6IDEwMCU7XG5cblx0XHRcdFx0XHQ+IC5zYkJ0biB7XG5cdFx0XHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cblx0XHRcdFx0XHRcdCY6bm90KDpmaXJzdC1vZi10eXBlKXtcblx0XHRcdFx0XHRcdFx0bWFyZ2luLXRvcDogMDtcblx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH1cblxuXG5cdFx0XHQuc2JWYWxpZGF0aW9uRXJyb3JzIHtcblx0XHRcdFx0bWFyZ2luLWJvdHRvbTogMjVweDtcblxuXHRcdFx0XHQ+IGRpdiB7XG5cdFx0XHRcdFx0cGFkZGluZy10b3A6IDEwcHg7XG5cblx0XHRcdFx0XHQ+IHNwYW4sXG5cdFx0XHRcdFx0PiBkaXYge1xuXHRcdFx0XHRcdFx0ZGlzcGxheTogaW5saW5lO1xuXHRcdFx0XHRcdFx0Y29sb3I6ICNjMDA7XG5cdFx0XHRcdFx0XHRmb250LXNpemU6IDE0cHg7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cblx0XHRcdC5zYlRhYmxlIHtcblxuXHRcdFx0XHRpIHtcblx0XHRcdFx0XHRwYWRkaW5nLXJpZ2h0OiAxMHB4O1xuXHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0XHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0I3NiRmF2b3JpdGVzTW9kYWwge1xuXG5cdFx0aGVhZGVyIHtcblx0XHRcdG1hcmdpbi1ib3R0b206IDI1cHg7XG5cdFx0fVxuXG5cdFx0LnNiVmFsaWRhdGlvbkVycm9ycyB7XG5cdFx0XHRtYXJnaW4tYm90dG9tOiAyNXB4O1xuXG5cdFx0XHQ+IGRpdiB7XG5cdFx0XHRcdHBhZGRpbmctdG9wOiAxMHB4O1xuXG5cdFx0XHRcdD4gc3Bhbixcblx0XHRcdFx0PiBkaXYge1xuXHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZTtcblx0XHRcdFx0XHRjb2xvcjogI2MwMDtcblx0XHRcdFx0XHRmb250LXNpemU6IDE0cHg7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdFx0LnNiVGFibGUge1xuXHRcdFx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdFx0XHRib3JkZXItYm90dG9tOiBub25lO1xuXG5cdFx0XHRcdCY6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdFx0d2lkdGg6IDE1JTtcblx0XHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDE1cHg7XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQjc2JGYXZvcml0ZU5hbWUge1xuXHRcdFx0XHRcdHdpZHRoOiAzMDBweDtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5lZGl0ZWRNU0xpbmUuc2JUYWJsZSB7XG5cdFx0d2lkdGg6IDc1JTtcblx0XHRtYXJnaW46IDMwcHggYXV0byAwO1xuXG5cdFx0dGJvZHkgPiB0ciA+IHRkIHtcblx0XHRcdGhlaWdodDogNTVweDtcblx0XHR9XG5cblx0XHQ+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuXHRcdD4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuXHRcdFx0cGFkZGluZy1sZWZ0OiAxNTBweDtcblx0XHR9XG5cblx0XHQ+IHRib2R5ID4gdHIge1xuXG5cdFx0XHQmLm1zU3VtbWFyeVJvdyB7XG5cdFx0XHRcdGkge1xuXHRcdFx0XHRcdHBhZGRpbmctbGVmdDogMjVweDtcblx0XHRcdFx0XHRmb250LXNpemU6IDIxcHg7XG5cdFx0XHRcdFx0dmVydGljYWwtYWxpZ246IHRleHQtYm90dG9tO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cblx0XHRcdCYubXNEZXRhaWxSb3cgPiB0ZCB7XG5cdFx0XHRcdGJhY2tncm91bmQtY29sb3I6ICNmN2Y3Zjc7XG5cdFx0XHRcdGJvcmRlcjogbm9uZTtcblxuXHRcdFx0XHRzZWxlY3Qge1xuXHRcdFx0XHRcdHdpZHRoOiBpbmhlcml0O1xuXHRcdFx0XHRcdG1hcmdpbi1sZWZ0OiA1cHg7XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQmLmxhYmVsIHtcblx0XHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDE1MHB4O1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cblx0XHRcdCYuc2JUb3RhbFJvdyA+IHRkIHtcblx0XHRcdFx0cGFkZGluZy10b3A6IDEwcHg7XG5cdFx0XHRcdHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG5cdFx0XHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5yZWNvcmRFZGl0b3JGb3JtIHtcblx0XHQ+IGhlYWRlciB7XG5cdFx0XHQ+IGgzIHtcblx0XHRcdFx0Zm9udC1zaXplOiAyMXB4O1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdC5zYkxpbmVBY3Rpb25zIHtcblx0XHRcdGRpc3BsYXk6IGlubGluZTtcblx0XHR9XG5cblx0XHQ+IC5idXR0b25Db250YWluZXIge1xuXHRcdFx0bWFyZ2luOiAwO1xuXHRcdH1cblx0fVxuXG5cdC5zYkxpbmVOdW1iZXIuZGF0YUNlbGwge1xuXHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cblx0XHRzcGFuIHtcblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0fVxuXG5cdFx0LnNiTGluZUVycm9yIHtcblx0XHRcdHNwYW4ge1xuXHRcdFx0XHR3aGl0ZS1zcGFjZTogaW5pdGlhbDtcblx0XHRcdFx0bWFyZ2luOiAyMHB4IDVweDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQjc2JQcmljZWJvb2tNb2RhbCB7XG5cdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXG5cdFx0c2VsZWN0IHtcblx0XHRcdHdpZHRoOiAyNTBweDtcblx0XHRcdG1hcmdpbjogMjVweCAwO1xuXHRcdH1cblx0fVxufVxuXG4vKiogUGhvbmUgU3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiAzMjBweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogNjQwcHgpIHtcblxuXHQjc2JMaW5lRWRpdG9yIHtcblx0XHRwYWRkaW5nOiA1cHg7XG5cblx0XHQuc2JNb2JpbGVUYWJzIHtcblx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG5cdFx0XHRtYXJnaW46IDEwcHggMDtcblx0XHR9XG5cblx0XHQuc2JQaG9uZVRhYi5zYkJ0biB7XG5cdFx0XHRwYWRkaW5nOiAxMHB4O1xuXHRcdFx0bWFyZ2luOiAwIDAgMTVweCAwO1xuXG5cdFx0XHQmLnNlbGVjdGVkIHtcblx0XHRcdFx0YmFja2dyb3VuZC1jb2xvcjogQHNiQ29udGVudEJnQ29sb3I7XG5cdFx0XHR9XG5cblx0XHRcdD4gc3BhbiB7XG5cdFx0XHRcdHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuXHRcdFx0XHQmLnNmLWljb24tZWRpdCB7XG5cdFx0XHRcdFx0cG9zaXRpb246IGFic29sdXRlO1xuXHRcdFx0XHRcdHJpZ2h0OiAxNXB4O1xuXHRcdFx0XHRcdHZpc2liaWxpdHk6IGhpZGRlbjtcblxuXHRcdFx0XHRcdCYudmlzaWJsZSB7XG5cdFx0XHRcdFx0XHR2aXNpYmlsaXR5OiB2aXNpYmxlO1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXG5cdFx0fVxuXG5cdFx0LnNiR3JvdXBOYW1lcyA+IGRpdiB7XG5cdFx0XHRwYWRkaW5nOiAxMHB4O1xuXHRcdH1cblxuXHRcdC5zYkdyb3VwIHtcblx0XHRcdC5zYkdyb3VwSGVhZGVyLFxuXHRcdFx0LnNiR3JvdXBCdXR0b25zIHtcblx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0fVxuXG5cdFx0XHQuc2JHcm91cEhlYWRlciB7XG5cdFx0XHRcdGZsb2F0OiBsZWZ0O1xuXG5cdFx0XHRcdD4gaDIge1xuXHRcdFx0XHRcdHBhZGRpbmctdG9wOiA1cHg7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cblx0XHQucmVjb3JkRWRpdG9yRm9ybSB7XG5cdFx0XHQ+IGhlYWRlciB7XG5cdFx0XHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRcdH1cblx0XHR9XG5cblx0XHQubXVsdGlTZWdtZW50LnNiVGFibGUsXG5cdFx0LnN0YW5kYXJkLnNiVGFibGUge1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogMTVweDtcblx0XHR9XG5cblx0XHQuZWRpdGVkTVNMaW5lLnNiVGFibGUge1xuXHRcdFx0d2lkdGg6IDkwJTtcblxuXHRcdFx0PiB0aGVhZCA+IHRyID4gdGg6Zmlyc3Qtb2YtdHlwZSxcblx0XHRcdD4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuXHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDE1cHg7XG5cdFx0XHR9XG5cblx0XHRcdD4gdGJvZHkgPiB0ciB7XG5cblx0XHRcdFx0Ji5tc0RldGFpbFJvdyA+IHRkLmxhYmVsIHtcblx0XHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDE1cHg7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cblx0XHQuc2JEaXNjb3VudFNjaGVkdWxlTW9kYWwge1xuXHRcdFx0LnNiQnV0dG9ucyB7XG5cdFx0XHRcdHdpZHRoOiAxMDAlO1xuXHRcdFx0fVxuXG5cdFx0XHQubWVzc2FnZSB7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDVweDtcblx0XHRcdFx0bWFyZ2luLWJvdHRvbTogNXB4O1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdCNzYkZhdm9yaXRlc01vZGFsIHtcblx0XHRcdC5zYlRhYmxlIHtcblx0XHRcdFx0PiB0Ym9keSA+IHRyID4gdGQge1xuXG5cdFx0XHRcdFx0JjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0XHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdFx0XHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDA7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0I3NiRmF2b3JpdGVOYW1lIHtcblx0XHRcdFx0XHRcdHdpZHRoOiAyMDBweDtcblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cbn1cbiIsIiNzYlByb2R1Y3RTZWFyY2gge1xuXHRwYWRkaW5nOiBAcGFkZGluZ01vYmlsZTtcblx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cblx0LnNiUGFnZUJsb2NrIHtcblx0XHRwYWRkaW5nLXRvcDogODVweDtcblx0fVxuXG5cdFxuXHQuc2JQcm9kdWN0RmlsdGVycyB7XG5cblx0XHQ+IGJ1dHRvbixcblx0XHQ+IC5zYlRhYmxlIHtcblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHR9XG5cblx0XHQ+IGJ1dHRvbiB7XG5cdFx0XHR2ZXJ0aWNhbC1hbGlnbjogYm90dG9tO1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogM3B4O1xuXHRcdH1cblxuXHRcdD4gLnNiVGFibGUge1xuXHRcdFx0d2lkdGg6IGluaGVyaXQ7XG5cblx0XHRcdD4gdGhlYWQgPiB0ciA+IHRkIHtcblx0XHRcdFx0cGFkZGluZzogMCA1cHg7XG5cdFx0XHR9XG5cdFx0XHQ+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0XHRcdGJvcmRlcjogbm9uZTtcblx0XHRcdFx0cGFkZGluZzogMCA1cHg7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0LnNiR3VpZGVkU2VsbGluZyB7XG5cblx0XHQ+IGJ1dHRvbixcblx0XHQ+IC5zYlRhYmxlIHtcblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHR9XG5cblx0XHQ+IGJ1dHRvbiB7XG5cdFx0XHR2ZXJ0aWNhbC1hbGlnbjogYm90dG9tO1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogM3B4O1xuXHRcdH1cblxuXHRcdD4gLnNiVGFibGUge1xuXHRcdFx0d2lkdGg6IGluaGVyaXQ7XG5cblx0XHRcdD4gdGJvZHkgPiB0ciA+IHRkIHtcblx0XHRcdFx0Ym9yZGVyOiBub25lO1xuXHRcdFx0XHRwYWRkaW5nOiAwIDVweDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JQcm9kdWN0c1RhYmxlQ29udGFpbmVyIHtcblx0XHRvdmVyZmxvdy14OiBhdXRvO1xuXG5cdFx0LnNiUHJvZHVjdHMge1xuXHRcdFx0bWFyZ2luLXRvcDogMjBweDtcblxuXHRcdFx0PiB0Zm9vdCA+IHRyLnNiUHJvZHVjdFBhZ2VzIHtcblxuXHRcdFx0XHQ+IHRkIHtcblx0XHRcdFx0XHRib3JkZXItYm90dG9tOiBub25lO1xuXG5cdFx0XHRcdFx0LnNiUGFnZXMge1xuXHRcdFx0XHRcdFx0bWFyZ2luLXRvcDogMjVweDtcblx0XHRcdFx0XHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblxuXHRcdFx0XHRcdFx0PiAuc2JCdG4ge1xuXHRcdFx0XHRcdFx0XHRmb250LXNpemU6IDEuNGVtO1xuXHRcdFx0XHRcdFx0XHRwYWRkaW5nOiA5cHggMTBweCAxMXB4O1xuXHRcdFx0XHRcdFx0XHRjb2xvcjogQHNiTGlua0NvbG9yO1xuXG5cdFx0XHRcdFx0XHRcdCYuc2ItaWNvbi1sZWZ0LWRpcixcblx0XHRcdCAgICAgICAgICAgICAgICAmLnNiLWljb24tcmlnaHQtZGlyIHtcblx0XHRcdCAgICAgICAgICAgICAgICAgIGZvbnQtc2l6ZTogMS42ZW07XG5cdFx0XHQgICAgICAgICAgICAgICAgICBwYWRkaW5nOiA4cHggOHB4IDlweDtcblx0XHRcdCAgICAgICAgICAgICAgICB9XG5cblx0XHRcdFx0XHRcdFx0Ji5kaXNhYmxlZCB7XG5cdFx0XHRcdFx0XHRcdFx0YmFja2dyb3VuZC1jb2xvcjogQHNiUGFnZUJnQ29sb3I7XG5cdFx0XHRcdFx0XHRcdFx0Y29sb3I6IEBzYkljb25Db2xvcjtcblx0XHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0XHQuc2JQYWdlU2VsZWN0b3Ige1xuXHRcdFx0XHRcdFx0XHRwYWRkaW5nOiAwIDEwcHg7XG5cdFx0XHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0XHRcdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuXHRcdFx0XHRcdFx0XHQ+IGlucHV0IHtcblx0XHRcdFx0XHRcdFx0XHR3aWR0aDogNDVweDtcblx0XHRcdFx0XHRcdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cbn1cblxuXG4vKiogUGhvbmUgU3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiAzMjBweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogNjQwcHgpIHtcblxuXHQjc2JQcm9kdWN0U2VhcmNoIHtcblx0XHQuc2JQcm9kdWN0RmlsdGVycyB7XG5cdFx0XHRtYXJnaW4tdG9wOiAzMHB4O1xuXG5cdFx0XHRsYWJlbCB7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDVweDtcblx0XHRcdH1cblxuXHRcdFx0YnV0dG9uIHtcblx0XHRcdFx0bWFyZ2luOiAyMHB4IDAgMCAwO1xuXHRcdFx0fVxuXG5cdFx0fVxuXHR9XG5cblx0I3NiUHJvZHVjdFNlYXJjaCB7XG5cdFx0LnNiR3VpZGVkU2VsbGluZyB7XG5cdFx0XHRtYXJnaW4tdG9wOiAzMHB4O1xuXG5cdFx0XHRsYWJlbCB7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDVweDtcblx0XHRcdH1cblxuXHRcdFx0YnV0dG9uIHtcblx0XHRcdFx0bWFyZ2luOiAyMHB4IDAgMCAwO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdCNzYlByb2R1Y3RTZWFyY2gge1xuXHRcdC5zYlByb2R1Y3RzVGFibGVDb250YWluZXIge1xuXHRcdFx0dGFibGUuc2JQcm9kdWN0cyA+IHRmb290ID4gdHIuc2JQcm9kdWN0UGFnZXMgPiB0ZCB7XG5cdFx0XHRcdHBhZGRpbmctbGVmdDogMDtcblxuXHRcdFx0XHQuc2JQYWdlcyB7XG5cdFx0XHRcdFx0dGV4dC1hbGlnbjogbGVmdDtcblxuXHRcdFx0XHRcdC5zYkJ0bjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0XHRcdG1hcmdpbi1sZWZ0OiAwO1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG59IiwiI3NiUHJvZHVjdENvbmZpZ3VyYXRvciB7XG5cdHBhZGRpbmc6IEBwYWRkaW5nTW9iaWxlO1xuXHRmb250LXNpemU6IEBmb250U2l6ZU1vYmlsZTtcblxuXHQuc2JQYWdlVGl0bGVUYWJsZSA+IC5zYlBhZ2VUaXRsZVJpZ2h0IHtcblx0XHRtYXJnaW4tdG9wOiA3cHg7XG5cdH1cblxuXHQuc2JQYWdlVGl0bGVUYWJsZSA+IC5zYlBhZ2VUaXRsZUxlZnQgLnNmLWljb24tY3VzdG9tX2FwcHMge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM4MTk5YWY7XG5cdH1cblxuXHQuc2JGZWF0dXJlcyxcblx0LnNiQWRkT3B0aW9uRGlhbG9nIHtcblx0XHRtYXJnaW4tdG9wOiA3NXB4O1xuXHR9XG5cblxuXHQuc2JGZWF0dXJlcyB7XG5cblx0XHQuc2JDb25maWd1cmVkUHJvZHVjdCB7XG5cblx0XHRcdC5zYkNvbmZpZ1Byb2R1Y3ROYW1lIHtcblx0XHRcdFx0bWFyZ2luLWJvdHRvbTogMDtcblx0XHRcdH1cblxuXHRcdFx0Jjpub3QoOmZpcnN0LW9mLXR5cGUpIC5zYkNvbmZpZ1Byb2R1Y3ROYW1lIHtcblx0XHRcdFx0bWFyZ2luLXRvcDogNDVweDtcblx0XHRcdH1cblxuXHRcdFx0Lmdyb3VwIHtcblxuXHRcdFx0XHRoMyB7XG5cdFx0XHRcdFx0bWFyZ2luLXRvcDogMjVweDtcblx0XHRcdFx0XHRtYXJnaW4tYm90dG9tOiAzcHg7XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQuZmVhdHVyZUluc3RydWN0aW9ucyB7XG5cdFx0XHRcdFx0cGFkZGluZy1ib3R0b206IDE1cHg7XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQuc2JGZWF0dXJlT3B0aW9ucyB7XG5cdFx0XHRcdFx0b3ZlcmZsb3cteDogYXV0bztcblxuXHRcdFx0XHR9XG5cblx0XHRcdFx0LnNiQWRkT3B0aW9uQ29udGFpbmVyIHtcblx0XHRcdFx0XHRtYXJnaW4tdG9wOiAxNXB4O1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0LnJlcXVpcmVzQ29uZmlndXJhdGlvbiB7XG5cdFx0ICAgIGJvcmRlci1sZWZ0OiAjYzAwIHNvbGlkO1xuXHRcdH1cblx0fVxuXG5cdC5zYkFkZE9wdGlvbkRpYWxvZyB7XG5cdFx0PiAuc2JUaXRsZUNvbnRhaW5lciB7XG5cdFx0XHQ+IGgyIHtcblx0XHRcdFx0bWFyZ2luLWJvdHRvbTogNXB4O1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5zYkRhdGFDb2wge1xuXHQgIHBhZGRpbmc6IDVweCAwO1xuXHR9XG5cblx0LmNvbmZpZ1RhYmxlLnNiVGFibGUge1xuXHRcdG1hcmdpbi10b3A6IDE1cHg7XG5cblx0XHR0ZCB7XG5cdFx0XHRwYWRkaW5nOiAxNXB4O1xuXHRcdFx0Ym9yZGVyLWJvdHRvbTogbm9uZTtcblxuXHRcdFx0Ji5zYkxhYmVsQ29sIHtcblx0XHRcdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cblx0XHRcdFx0PiBsYWJlbCB7XG5cdFx0XHRcdFx0cGFkZGluZy1ib3R0b206IDA7XG5cdFx0XHRcdH1cblx0XHRcdH1cblxuXHRcdFx0Ji5zYkRhdGFDb2wgc2VsZWN0IHtcblx0XHRcdFx0d2lkdGg6IDE1MHB4O1xuXHRcdFx0fVxuXHRcdH1cblx0fVxufVxuXG4vKiogUGhvbmUgU3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiAzMjBweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogNjQwcHgpIHtcblx0I3NiUHJvZHVjdENvbmZpZ3VyYXRvciB7XG5cblx0XHQuc2JGZWF0dXJlcyxcblx0XHQuc2JBZGRPcHRpb25EaWFsb2cge1xuXHRcdFx0bWFyZ2luLXRvcDogMTE1cHg7XG5cdFx0fVxuXHR9XG59XG4iLCIjc2JBc3NldFNlYXJjaCB7XG5cblx0LnNiUGFnZUJsb2NrIHtcblx0ICAgIHBhZGRpbmctdG9wOiAxMDBweDtcblx0fVxuXG5cdC5zYlByb2R1Y3RGaWx0ZXJzID4gLnNiVGFibGUge1xuXHQgICAgd2lkdGg6IGluaGVyaXQ7XG5cdH1cblxuXHQuc2JBc3NldHMge1xuXHQgICAgbWFyZ2luLXRvcDogMjBweDtcblx0fVxuXG5cdC5zYlByb2R1Y3RGaWx0ZXJzIHtcblxuXHRcdD4gLnNiVGFibGUge1xuXG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cblx0XHRcdD4gdGJvZHkgPiB0ciA+IHRkIHtcblx0XHRcdCAgICBib3JkZXI6IG5vbmU7XG5cdFx0XHQgICAgcGFkZGluZzogMCA1cHg7XG5cdFx0XHR9XG5cblx0XHR9XG5cblx0XHQ+IGJ1dHRvbiB7XG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0ICAgIG1hcmdpbi1ib3R0b206IDVweDtcblx0XHRcdHZlcnRpY2FsLWFsaWduOiBib3R0b207XG5cdFx0fVxuXG5cdH1cblxufVxuXG5cbi8qKiBQaG9uZSBTdHlsZXMgKi9cblxuQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXG5cdCNzYkFzc2V0U2VhcmNoIHtcblx0XHQuc2JBc3NldEZpbHRlciB7XG5cdFx0XHRtYXJnaW4tdG9wOiAzMHB4O1xuXG5cdFx0XHRsYWJlbCB7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDVweDtcblx0XHRcdH1cblxuXHRcdFx0YnV0dG9uIHtcblx0XHRcdFx0bWFyZ2luOiAyMHB4IDAgMCAwO1xuXHRcdFx0fVxuXG5cdFx0fVxuXHR9XG5cbn0iLCIjc2JTdWJzY3JpcHRpb25TZWFyY2gge1xuXG5cdC5zYlBhZ2VCbG9jayB7XG5cdCAgICBwYWRkaW5nLXRvcDogMTAwcHg7XG5cdH1cblxuXHQuc2JQcm9kdWN0RmlsdGVycyA+IC5zYlRhYmxlIHtcblx0ICAgIHdpZHRoOiBpbmhlcml0O1xuXHR9XG5cblx0LnNiU3Vic2NyaXB0aW9ucyB7XG5cdCAgICBtYXJnaW4tdG9wOiAyMHB4O1xuXHR9XG5cblx0LnNiUHJvZHVjdEZpbHRlcnMge1xuXG5cdFx0PiAuc2JUYWJsZSB7XG5cblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuXHRcdFx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdFx0ICAgIGJvcmRlcjogbm9uZTtcblx0XHRcdCAgICBwYWRkaW5nOiAwIDVweDtcblx0XHRcdH1cblxuXHRcdH1cblxuXHRcdD4gYnV0dG9uIHtcblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHQgICAgbWFyZ2luLWJvdHRvbTogNXB4O1xuXHRcdFx0dmVydGljYWwtYWxpZ246IGJvdHRvbTtcblx0XHR9XG5cblx0fVxuXG59XG5cblxuLyoqIFBob25lIFN0eWxlcyAqL1xuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogMzIwcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDY0MHB4KSB7XG5cblx0I3NiU3Vic2NyaXB0aW9uU2VhcmNoIHtcblx0XHQuc2JTdWJzY3JpcHRpb25GaWx0ZXIge1xuXHRcdFx0bWFyZ2luLXRvcDogMzBweDtcblxuXHRcdFx0bGFiZWwge1xuXHRcdFx0XHRtYXJnaW4tdG9wOiA1cHg7XG5cdFx0XHR9XG5cblx0XHRcdGJ1dHRvbiB7XG5cdFx0XHRcdG1hcmdpbjogMjBweCAwIDAgMDtcblx0XHRcdH1cblxuXHRcdH1cblx0fVxuXG59IiwiLypcbkRvY3VtZW50IEdlbmVyYXRpb24gUHJldmlldyBwYWdlXG5cblByZXZpZXdzIGEgZG9jdW1lbnQgaW4gdGhlIGJyb3dzZXIgd2l0aCBjaG9zZW4gdGVtcGxhdGUsIGFkZGl0aW9uYWwgZG9jcywgZXRjLlxuKi9cbiNzYkRvY0dlblByZXZpZXcsICNzYkRvY0dlbk9wdGlvbnMge1xuXHRwYWRkaW5nOiBAcGFkZGluZ01vYmlsZTtcblx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cblx0LnNiUHJldmlldyB7XG5cdFx0bWFyZ2luLXRvcDogNzVweDtcblxuXHRcdFtjbGFzc149c2YtaWNvbl0ge1xuXHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNztcblx0XHRcdHBhZGRpbmc6IDVweDtcblx0XHR9XG5cblx0XHQ+IC5idXR0b25Db250YWluZXIsIC5zZi1pY29uLXpvb21vdXQge1xuXHRcdFx0cGFkZGluZy1sZWZ0OiAxNXB4O1xuXHRcdH1cblxuXHRcdD4gLmRvY3VtZW50UHJldmlld0NvbnRhaW5lciB7XG5cdFx0XHRtYXJnaW4tbGVmdDogLTE1cHg7XG5cdFx0XHR0b3A6IDE0NXB4O1xuXHRcdH1cblx0fVxuXG5cdC5zYkRvY09wdGlvbnNDb250YWluZXIge1xuXHRcdG1hcmdpbi10b3A6IDc1cHg7XG5cblx0XHQucGJTdWJzZWN0aW9uIHtcblx0XHRcdG1hcmdpbi10b3A6IDE1cHg7XG5cblx0XHRcdD4gaGVhZGVyID4gaDEge1xuXHRcdFx0XHRmb250LXNpemU6IDI4cHg7XG5cdFx0XHRcdG1hcmdpbi1ib3R0b206IDE1cHg7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0LnNiRHVhbExpc3RCb3gge1xuXHRcdFx0cGFkZGluZzogMTVweDtcblx0XHRcdD4gdGhlYWQgPiB0ciA+IHRoIHtcblx0XHRcdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRcdFx0fVxuXG5cdFx0XHQ+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0XHRcdCY6bnRoLWNoaWxkKDEpLFxuXHRcdFx0XHQmOm50aC1jaGlsZCgzKSB7XG5cdFx0XHRcdFx0Ym9yZGVyOiAxcHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG5cdFx0XHRcdFx0Ym9yZGVyLXJhZGl1czogM3B4O1xuXHRcdFx0XHR9XG5cblx0XHRcdFx0dWwge1xuXHRcdFx0XHRcdHdpZHRoOiAyNTBweDtcblx0XHRcdFx0XHRtaW4taGVpZ2h0OiAzMDBweDtcblx0XHRcdFx0XHRvdmVyZmxvdzogYXV0bztcblx0XHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDhweDtcblxuXHRcdFx0XHRcdD4gbGkge1xuXHRcdFx0XHRcdFx0cGFkZGluZzogOHB4O1xuXHRcdFx0XHRcdFx0d2hpdGUtc3BhY2U6IG5vd3JhcDtcblx0XHRcdFx0XHRcdGxpc3Qtc3R5bGUtdHlwZTogbm9uZTtcblxuXHRcdFx0XHRcdFx0Ji5yZXF1aXJlZCB7XG5cdFx0XHRcdFx0XHRcdGNvbG9yOiAjYWYyNjI2O1xuXHRcdFx0XHRcdFx0XHRmb250LXdlaWdodDogYm9sZDtcblx0XHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFx0Ji5zZWxlY3RlZCB7XG5cdFx0XHRcdFx0XHRcdGNvbG9yOiAjZmZmO1xuXHRcdFx0XHRcdFx0XHRiYWNrZ3JvdW5kLWNvbG9yOiBAc2JMaW5rQ29sb3I7XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cblxuXHRcdFx0XHRhIHtcblx0XHRcdFx0XHRjb2xvcjogaW5oZXJpdDtcblx0XHRcdFx0XHRwYWRkaW5nOiA1cHg7XG5cdFx0XHRcdFx0bWFyZ2luOiAwIDhweDtcblx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0XHRib3JkZXI6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcblx0XHRcdFx0XHRib3JkZXItYm90dG9tOiAwcHg7XG5cdFx0XHRcdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXG5cdFx0XHRcdFx0W2NsYXNzXj1zZi1pY29uXSB7XG5cdFx0XHRcdFx0XHRmb250LXNpemU6IEBzYkZvbnRTaXplICogMS43O1xuXHRcdFx0XHRcdFx0cGFkZGluZzogNXB4O1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFtjbGFzc149c2ItaWNvbl0ge1xuXHRcdFx0XHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuMjtcblx0XHRcdFx0XHRcdHBhZGRpbmc6IDVweDtcblx0XHRcdFx0XHRcdGNvbG9yOiAjM2QzZTNmO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFtjbGFzc149c2ItaWNvbi10by1lbmRdOmJlZm9yZSB7XG5cdFx0XHRcdFx0XHQucm90YXRlKC05MGRlZyk7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoNCkgW2NsYXNzXj1zYi1pY29uLXRvLWVuZF06YmVmb3JlIHtcblx0XHRcdFx0XHRcdC5yb3RhdGUoOTBkZWcpO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdCY6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdFx0XHRib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogM3B4O1xuXHRcdFx0XHRcdFx0Ym9yZGVyLXRvcC1sZWZ0LXJhZGl1czogM3B4O1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdCY6bGFzdC1vZi10eXBlIHtcblx0XHRcdFx0XHRcdGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcblx0XHRcdFx0XHRcdGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiAzcHg7XG5cdFx0XHRcdFx0XHRib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiAzcHg7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXG5cdH1cblxuXG5cdC8qKiBQaG9uZSBTdHlsZXMgKi9cblx0QG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXHRcdC5zYlByZXZpZXcsIC5zYkRvY09wdGlvbnNDb250YWluZXIge1xuXHRcdFx0bWFyZ2luLXRvcDogMTE1cHg7XG5cblx0XHRcdD4gLmRvY3VtZW50UHJldmlld0NvbnRhaW5lciB7XG5cdFx0XHRcdHRvcDogMTg1cHg7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0LnNiRG9jT3B0aW9uc0NvbnRhaW5lciB7XG5cblx0XHRcdC5wYlN1YnNlY3Rpb24ge1xuXHRcdFx0XHQ+IGhlYWRlciA+IGgxIHtcblx0XHRcdFx0XHRmb250LXNpemU6IDI0cHg7XG5cdFx0XHRcdFx0bWFyZ2luLWJvdHRvbTogMDtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXG5cblx0XHRcdC5zYkR1YWxMaXN0Qm94IHtcblx0XHRcdFx0cGFkZGluZy10b3A6IDVweDtcblx0XHRcdFx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0XHRcdHBhZGRpbmc6IDEwcHg7XG5cblx0XHRcdFx0XHQmOm50aC1jaGlsZCgxKSxcblx0XHRcdFx0XHQmOm50aC1jaGlsZCgzKSB7XG5cdFx0XHRcdFx0XHRib3JkZXI6IG5vbmU7XG5cdFx0XHRcdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoMSksXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoNCkge1xuXHRcdFx0XHRcdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRcdFx0XHRcdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoMiksXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoNSkge1xuXHRcdFx0XHRcdFx0Ym9yZGVyOiAxcHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG5cdFx0XHRcdFx0XHRib3JkZXItcmFkaXVzOiAzcHg7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0dWwge1xuXHRcdFx0XHRcdFx0bWFyZ2luOiAwO1xuXHRcdFx0XHRcdFx0dGV4dC1hbGlnbjogbGVmdDtcblx0XHRcdFx0XHRcdGhlaWdodDogMTIwcHg7XG5cdFx0XHRcdFx0XHRtaW4taGVpZ2h0OiAxMjBweDtcblx0XHRcdFx0XHRcdG92ZXJmbG93OiBhdXRvO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdGEge1xuXHRcdFx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0XHRcdFx0bWFyZ2luOiAwIDJweDtcblx0XHRcdFx0XHRcdGJvcmRlcjogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuXG5cdFx0XHRcdFx0XHRbY2xhc3NePXNiLWljb25dIHtcblx0XHRcdFx0XHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNztcblx0XHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdCY6bnRoLWNoaWxkKDIpLFxuXHRcdFx0XHRcdCY6bnRoLWNoaWxkKDQpIHtcblx0XHRcdFx0XHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHQmOmxhc3QtY2hpbGQge1xuXHRcdFx0XHRcdFx0YSB7XG5cdFx0XHRcdFx0XHRcdCY6bnRoLWNoaWxkKDEpLFxuXHRcdFx0XHRcdFx0XHQmOm50aC1jaGlsZCg0KSB7XG5cdFx0XHRcdFx0XHRcdFx0cGFkZGluZy1ib3R0b206IDdweDtcblx0XHRcdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG5cbi8qXG5Eb2N1bWVudCBHZW5lcmF0aW9uIG9wdGlvbnNcblxuQ2hvaWNlcyBmb3IgZG9jdW1lbnQgZ2VuZXJhdGlvbiBzdWNoIGFzIHRlbXBsYXRlLCBvdXRwdXQgZm9ybWF0LCBldGMuXG4qL1xuI3NiRG9jR2VuT3B0aW9ucyB7XG5cdHRkIHtcblx0XHRwYWRkaW5nLWJvdHRvbTogNXB4O1xuXG5cdFx0PiBsYWJlbCB7XG5cdFx0XHRwYWRkaW5nLWJvdHRvbTogMDtcblx0XHR9XG5cdH1cbn1cbiIsIiNzYk5ld1JlbGF0ZWRDb250ZW50IHtcblxuXHQuc2JCb2R5IHtcblx0XHRtYXJnaW4tdG9wOiA4NXB4O1xuXG5cdFx0ZmllbGRzZXQge1xuXHRcdFx0Ym9yZGVyOiBub25lOyBcblx0XHR9XG5cdH1cblxufVxuXG5cbi8qKiBQaG9uZSBTdHlsZXMgKi9cblxuQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXG5cdCNzYk5ld1JlbGF0ZWRDb250ZW50IHtcblx0XHQuc2JCb2R5IHtcblx0XHRcdG1hcmdpbi10b3A6IDEyNXB4O1xuXG5cdFx0XHQvLyBsYWJlbCB7XG5cdFx0XHQvLyBcdG1hcmdpbi10b3A6IDVweDtcblx0XHRcdC8vIH1cblxuXHRcdFx0Ly8gYnV0dG9uIHtcblx0XHRcdC8vIFx0bWFyZ2luOiAyMHB4IDAgMCAwO1xuXHRcdFx0Ly8gfVxuXG5cdFx0fVxuXHR9XG5cbn0iLCJAbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogMzIwcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDY0MHB4KSB7XG5cblx0I3NiQW1lbmRDb250cmFjdCB7XG5cdFx0LnNiUGFnZVRpdGxlPi5zYlBhZ2VUaXRsZVRhYmxlPi5zYlBhZ2VUaXRsZVJpZ2h0IHtcblxuXHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cblx0XHRcdC5zYkJ1dHRvbnMge1xuXHRcdFx0XHRmbG9hdDogbm9uZTtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxufSIsIiNzYkZhdm9yaXRlc01hbmFnZXIge1xuXHRwYWRkaW5nOiBAcGFkZGluZ01vYmlsZTtcblx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cblx0LnNiUGFnZUJsb2NrIHtcblx0XHRwYWRkaW5nLXRvcDogODVweDtcblx0fVxuXG5cdC50b3BNc2cge1xuXHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0ICAgIGRpc3BsYXk6IGJsb2NrO1xuXHQgICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0ICAgIHBhZGRpbmc6IDMycHhcblx0fVxuXG5cdC5ib3RNc2cge1xuXHQgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuXHQgICAgZGlzcGxheTogYmxvY2s7XG5cdCAgICBmb250LXdlaWdodDogbm9ybWFsO1xuXHQgICAgcGFkZGluZzogMCAzMnB4XG5cdH1cblxuXHQuc2JGYXZvcml0ZXNUYWJsZUNvbnRhaW5lciB7XG5cdFx0b3ZlcmZsb3cteDogYXV0bztcblxuXHRcdC5zYkZhdm9yaXRlcyB7XG5cdFx0XHRtYXJnaW4tdG9wOiAyMHB4O1xuXHRcdH1cblx0fVxuXG5cdC5tb2RhbERpYWxvZyB7XG5cdFx0dG9wOiAxMDBweDtcblx0XHRtYXgtd2lkdGg6IDQ0MHB4O1xuXHRcdG92ZXJmbG93OiB2aXNpYmxlO1xuXG5cdFx0aGVhZGVyIHtcblx0XHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRcdGJvcmRlci1ib3R0b206IDJweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcblxuXHRcdFx0LnNiLWljb24tc3RhciB7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0Y29sb3I6IGJsYWNrO1xuXHRcdFx0XHRtYXJnaW46IDAgMDtcblx0XHRcdH1cblxuXHRcdFx0aDIge1xuXHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHR9XG5cdFx0fVxuXG5cblx0XHQuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuXHRcdFx0cGFkZGluZzogMXB4IDE0cHg7XG5cblx0XHRcdGlucHV0IHsgXG5cdFx0XHRcdG1hcmdpbjogMCAwO1xuXHRcdFx0fVxuXG5cdFx0XHQuc2JUYWJsZSB7XG5cdFx0XHRcdD50Ym9keT50cj50ZCB7XG5cdFx0XHRcdFx0Ym9yZGVyOiAwO1xuXHRcdFx0XHR9XG5cdFx0ICAgICAgICAuc2JBY3Rpb25zIHtcblx0XHRcdCAgICAgICAgd2lkdGg6IDElO1xuXHRcdFx0ICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuXHRcdFx0ICAgICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuXG5cdFx0ICAgICAgICB9XG5cdFx0ICAgIH1cblx0XHR9XG5cblx0XHQuc2JNb2RhbEZvb3RlciB7XG5cdFx0XHRib3JkZXItdG9wOiAycHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG5cdFx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjRjRGNkY5O1xuXHRcdFx0cGFkZGluZzogMTJweCAxNnB4O1xuXHRcdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cblx0XHRcdC5zYkJ1dHRvbnMge1xuXHRcdFx0ICAgIHBhZGRpbmc6IDAgMnB4O1xuXHRcdFx0fVxuXHRcdFx0aW5wdXQge1xuXHRcdFx0XHRtYXJnaW46IDA7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0LmZvcm0tY29udHJvbCB7XG5cdFx0ZGlzcGxheTogYmxvY2s7XG5cdCAgICB3aWR0aDogMTAwJTtcblx0ICAgIGhlaWdodDogMzRweDtcblx0ICAgIHBhZGRpbmc6IDZweCAxMnB4O1xuXHQgICAgZm9udC1zaXplOiAxNHB4O1xuXHQgICAgbGluZS1oZWlnaHQ6IDEuNDI4NTcxNDM7XG5cdCAgICBjb2xvcjogIzU1NTtcblx0ICAgIGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG5cdCAgICBiYWNrZ3JvdW5kLWltYWdlOiBub25lO1xuXHQgICAgYm9yZGVyOiAxcHggc29saWQgI2NjYztcblx0ICAgIGJvcmRlci1yYWRpdXM6IDRweDtcblx0ICB9XG5cbiAgLnNiVmFsaWRhdGlvbkVycm9ycyB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgcGFkZGluZzogNXB4IDE1cHg7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBzcGFuIHtcbiAgICBcdGNvbG9yOiAjYzAwO1xuICAgIH1cbiAgfVxuXG4gIC5pbnZhbGlkIHtcbiAgICBib3JkZXItY29sb3I6ICNjMDA7XG4gIH1cblxuICAuZHJvcGRvd24tbWVudSB7XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIHRvcDogMTAwJTtcbiAgICBsZWZ0OiAwO1xuICAgIHotaW5kZXg6IDEwMDA7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgICBmbG9hdDogbGVmdDtcbiAgICBtaW4td2lkdGg6IDE2MHB4O1xuICAgIHBhZGRpbmc6IDVweCAwO1xuICAgIG1hcmdpbjogMnB4IDAgMDtcbiAgICBmb250LXNpemU6IDE0cHg7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBsaXN0LXN0eWxlOiBub25lO1xuICAgIGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG4gICAgYm9yZGVyOiAxcHggc29saWQgcmdiYSgwLDAsMCwuMTUpO1xuICAgIGJvcmRlci1yYWRpdXM6IDRweDtcbiAgICBib3gtc2hhZG93OiAwIDZweCAxMnB4IHJnYmEoMCwwLDAsLjE3NSk7XG4gICAgYmFja2dyb3VuZC1jbGlwOiBwYWRkaW5nLWJveDtcbiAgfVxuXG4gIC5kcm9wZG93bi1tZW51ID4gbGkgPiBhIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICBwYWRkaW5nOiAzcHggMjBweDtcbiAgICBjbGVhcjogYm90aDtcbiAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgIGxpbmUtaGVpZ2h0OiAxLjQyODU3MTQzO1xuICAgIGNvbG9yOiAjMzMzO1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gIH1cbiAgLmRyb3Bkb3duLW1lbnUgPiBsaSA+IGE6aG92ZXIsXG4gIC5kcm9wZG93bi1tZW51ID4gbGkgPiBhOmZvY3VzIHtcbiAgICBjb2xvcjogIzI2MjYyNjtcbiAgICB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2Y1ZjVmNTtcbiAgfVxuXG4gIC5kcm9wZG93bi1tZW51ID4gLmFjdGl2ZSA+IGEsXG4gIC5kcm9wZG93bi1tZW51ID4gLmFjdGl2ZSA+IGE6aG92ZXIsXG4gIC5kcm9wZG93bi1tZW51ID4gLmFjdGl2ZSA+IGE6Zm9jdXMge1xuICAgIGNvbG9yOiAjZmZmO1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjMzM3YWI3O1xuICAgIG91dGxpbmU6IDA7XG4gIH1cbn1cblxuXG4vKiogUGhvbmUgU3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiAzMjBweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogNjQwcHgpIHtcblxuXHQjc2JGYXZvcml0ZXNNYW5hZ2VyIHtcblx0fVxuXG59Il0sInNvdXJjZVJvb3QiOiIvc291cmNlLyJ9 */
