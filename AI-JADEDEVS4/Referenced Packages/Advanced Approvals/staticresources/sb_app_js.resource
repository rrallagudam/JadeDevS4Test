'use strict';

System.register('app.js', ['common/common.routes.js', 'dealdesk/dealdesk.routes.js', 'advapprovals/advapprovals.routes.js', 'common/core/AppContext.js', 'common/core/sb-router/Router.js', 'common/data/sb-db/Db.js', 'common/data/sb-db/adapter/leveljs/LevelAdapter.js', 'common/data/sb-db/Metadata.js', 'common/common.js', 'dealdesk/dealdesk.js'], function (_export, _context) {
	var common, dealdesk, advapprovals, AppContext, Router, Db, LevelAdapter, Metadata, _createClass, App;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_commonCommonRoutesJs) {
			common = _commonCommonRoutesJs;
		}, function (_dealdeskDealdeskRoutesJs) {
			dealdesk = _dealdeskDealdeskRoutesJs;
		}, function (_advapprovalsAdvapprovalsRoutesJs) {
			advapprovals = _advapprovalsAdvapprovalsRoutesJs;
		}, function (_commonCoreAppContextJs) {
			AppContext = _commonCoreAppContextJs.AppContext;
		}, function (_commonCoreSbRouterRouterJs) {
			Router = _commonCoreSbRouterRouterJs.Router;
		}, function (_commonDataSbDbDbJs) {
			Db = _commonDataSbDbDbJs.Db;
		}, function (_commonDataSbDbAdapterLeveljsLevelAdapterJs) {
			LevelAdapter = _commonDataSbDbAdapterLeveljsLevelAdapterJs.LevelAdapter;
		}, function (_commonDataSbDbMetadataJs) {
			Metadata = _commonDataSbDbMetadataJs;
		}, function (_commonCommonJs) {}, function (_dealdeskDealdeskJs) {}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('App', App = function () {
				function App() {
					_classCallCheck(this, App);
				}

				_createClass(App, null, [{
					key: 'init',
					value: function init(pageContainer, dbName) {
						var r = {};
						r[common.PREFIX] = common.ROUTES;
						r[dealdesk.PREFIX] = dealdesk.ROUTES;
						r[advapprovals.PREFIX] = advapprovals.ROUTES;

						pageContainer.allRoutes = r;

						Db.adapter = new LevelAdapter();

						return Promise.all([AppContext.init(true), Db.adapter.open(dbName || 'sbaa')]);
					}
				}]);

				return App;
			}());

			_export('App', App);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImFwcC5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7O0FBQVk7O0FBQ0E7O0FBQ0E7O0FBQ0o7O0FBQ0E7O0FBQ0E7O0FBQ0E7O0FBQ0k7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztrQkFPQzs7Ozs7OzswQkFDQyxlQUFlLFFBQVM7QUFDcEMsVUFBSSxJQUFJLEVBQUosQ0FEZ0M7QUFFcEMsUUFBRSxPQUFPLE1BQVAsQ0FBRixHQUFtQixPQUFPLE1BQVAsQ0FGaUI7QUFHcEMsUUFBRSxTQUFTLE1BQVQsQ0FBRixHQUFxQixTQUFTLE1BQVQsQ0FIZTtBQUlwQyxRQUFFLGFBQWEsTUFBYixDQUFGLEdBQXlCLGFBQWEsTUFBYixDQUpXOztBQU9wQyxvQkFBYyxTQUFkLEdBQTBCLENBQTFCLENBUG9DOztBQVNwQyxTQUFHLE9BQUgsR0FBYSxJQUFJLFlBQUosRUFBYixDQVRvQzs7QUFXcEMsYUFBTyxRQUFRLEdBQVIsQ0FBWSxDQUNsQixXQUFXLElBQVgsQ0FBaUIsSUFBakIsQ0FEa0IsRUFFbEIsR0FBRyxPQUFILENBQVcsSUFBWCxDQUFpQixVQUFVLE1BQVYsQ0FGQyxDQUFaLENBQVAsQ0FYb0M7Ozs7V0FEekIiLCJmaWxlIjoiYXBwLmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0ICogYXMgY29tbW9uIGZyb20gJ2NvbW1vbi9jb21tb24ucm91dGVzLmpzJztcbmltcG9ydCAqIGFzIGRlYWxkZXNrIGZyb20gJ2RlYWxkZXNrL2RlYWxkZXNrLnJvdXRlcy5qcyc7XG5pbXBvcnQgKiBhcyBhZHZhcHByb3ZhbHMgZnJvbSAnYWR2YXBwcm92YWxzL2FkdmFwcHJvdmFscy5yb3V0ZXMuanMnO1xuaW1wb3J0IHtBcHBDb250ZXh0fSBmcm9tICdjb21tb24vY29yZS9BcHBDb250ZXh0LmpzJztcbmltcG9ydCB7Um91dGVyfSBmcm9tICdjb21tb24vY29yZS9zYi1yb3V0ZXIvUm91dGVyLmpzJztcbmltcG9ydCB7RGJ9IGZyb20gJ2NvbW1vbi9kYXRhL3NiLWRiL0RiLmpzJztcbmltcG9ydCB7TGV2ZWxBZGFwdGVyfSBmcm9tICdjb21tb24vZGF0YS9zYi1kYi9hZGFwdGVyL2xldmVsanMvTGV2ZWxBZGFwdGVyLmpzJztcbmltcG9ydCAqIGFzIE1ldGFkYXRhIGZyb20gJ2NvbW1vbi9kYXRhL3NiLWRiL01ldGFkYXRhLmpzJztcblxuLy8gaW1wb3J0IHRoZSBcImJvb3RzdHJhcFwiIG1vZHVsZXMgZnJvbSBhbGwgZmVhdHVyZSBmb2xkZXJzXG4vLyB0aGV5IGFyZSBoZXJlIGp1c3Qgc28gd2UgZG9uJ3QgaGF2ZSB0byBleHBsaWNpdGx5IGNhbGwgU3lzdGVtLmltcG9ydCgpIG9uIGluZGl2aWR1YWwgbW9kdWxlcy5cbmltcG9ydCAnY29tbW9uL2NvbW1vbi5qcyc7XG5pbXBvcnQgJ2RlYWxkZXNrL2RlYWxkZXNrLmpzJztcblxuZXhwb3J0IGNsYXNzIEFwcCB7XG5cdHN0YXRpYyBpbml0KCBwYWdlQ29udGFpbmVyLCBkYk5hbWUgKSB7XG5cdFx0bGV0IHIgPSB7fTtcblx0XHRyW2NvbW1vbi5QUkVGSVhdID0gY29tbW9uLlJPVVRFUztcblx0XHRyW2RlYWxkZXNrLlBSRUZJWF0gPSBkZWFsZGVzay5ST1VURVM7XG5cdFx0clthZHZhcHByb3ZhbHMuUFJFRklYXSA9IGFkdmFwcHJvdmFscy5ST1VURVM7XG5cblx0XHQvLyBpbml0aWFsaXplIGFwcCB3aXRoIGFsbCBVUkwgcm91dGVzXG5cdFx0cGFnZUNvbnRhaW5lci5hbGxSb3V0ZXMgPSByO1xuXG5cdFx0RGIuYWRhcHRlciA9IG5ldyBMZXZlbEFkYXB0ZXIoKTtcblxuXHRcdHJldHVybiBQcm9taXNlLmFsbChbXG5cdFx0XHRBcHBDb250ZXh0LmluaXQoIHRydWUgKSxcblx0XHRcdERiLmFkYXB0ZXIub3BlbiggZGJOYW1lIHx8ICdzYmFhJyApXG5cdFx0XSk7XG5cdH1cbn1cbiJdfQ==
"use strict";

System.register("labels_en.js", [], function (_export, _context) {
  var LABELS;
  return {
    setters: [],
    execute: function () {
      _export("LABELS", LABELS = { "Yes": "Yes", "Delete": "Delete", "New": "New", "Recently Viewed": "Recently Viewed" });

      _export("LABELS", LABELS);
    }
  };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImxhYmVsc19lbi5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7O3dCQUNhLFNBQVMsRUFBQyxPQUFNLEtBQU4sRUFBWSxVQUFTLFFBQVQsRUFBa0IsT0FBTSxLQUFOLEVBQVksbUJBQWtCLGlCQUFsQiIsImZpbGUiOiJsYWJlbHNfZW4uanMiLCJzb3VyY2VzQ29udGVudCI6WyIvLyBUSElTIEZJTEUgSVMgR0VORVJBVEVELiAgRE8gTk9UIEVESVQhISEhXG5leHBvcnQgY29uc3QgTEFCRUxTID0ge1wiWWVzXCI6XCJZZXNcIixcIkRlbGV0ZVwiOlwiRGVsZXRlXCIsXCJOZXdcIjpcIk5ld1wiLFwiUmVjZW50bHkgVmlld2VkXCI6XCJSZWNlbnRseSBWaWV3ZWRcIn07Il19
'use strict';

System.register('advapprovals/advapprovals.routes.js', [], function (_export, _context) {
	var PREFIX, ROUTES;
	return {
		setters: [],
		execute: function () {
			_export('PREFIX', PREFIX = '/advapprovals');

			_export('PREFIX', PREFIX);

			_export('ROUTES', ROUTES = {
				'/hi': { comp: 'sb-aa-example-page', mod: 'advapprovals/sb-aa-example-page/ExamplePage.js' }
			});

			_export('ROUTES', ROUTES);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImFkdmFwcHJvdmFscy5yb3V0ZXMuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7OztxQkFBYSxTQUFTOzs7O3FCQUNULFNBQVM7QUFDckIsV0FBTyxFQUFFLE1BQU0sb0JBQU4sRUFBNEIsS0FBSyxnREFBTCxFQUFyQyIsImZpbGUiOiJhZHZhcHByb3ZhbHMucm91dGVzLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNvbnN0IFBSRUZJWCA9ICcvYWR2YXBwcm92YWxzJztcbmV4cG9ydCBjb25zdCBST1VURVMgPSB7XG5cdCcvaGknOiB7IGNvbXA6ICdzYi1hYS1leGFtcGxlLXBhZ2UnLCBtb2Q6ICdhZHZhcHByb3ZhbHMvc2ItYWEtZXhhbXBsZS1wYWdlL0V4YW1wbGVQYWdlLmpzJyB9XG59XG4iXX0=
'use strict';

System.register('common/Util.js', [], function (_export, _context) {
	var _createClass, Util, frame;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('Util', Util = function () {
				function Util() {
					_classCallCheck(this, Util);
				}

				_createClass(Util, null, [{
					key: 'pad',
					value: function pad(n, width, z) {
						z = z || '0';
						n = n + '';
						return n.length >= width ? n : new Array(width - n.length + 1).join(z) + n;
					}
				}, {
					key: 'toIsoDate',
					value: function toIsoDate(d) {
						d = typeof d === 'number' ? new Date(d) : d;
						return d.getUTCFullYear() + '-' + Util.pad(d.getUTCMonth() + 1, 2) + '-' + Util.pad(d.getUTCDate(), 2) + 'T' + Util.pad(d.getUTCHours(), 2) + ':' + Util.pad(d.getUTCMinutes(), 2) + ':' + Util.pad(d.getUTCSeconds(), 2) + 'Z';
					}
				}]);

				return Util;
			}());

			_export('Util', Util);

			Util.Map = Map;
			if (!Map || !Map.prototype.get || !Map.prototype.set) {
				frame = document.createElement('iframe');

				document.body.appendChild(frame);
				Util.Map = frame.contentWindow.Map;
				frame.parentNode.removeChild(frame);
			}
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlV0aWwuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7bUJBR2E7Ozs7Ozs7eUJBUUEsR0FBRyxPQUFPLEdBQUk7QUFDekIsVUFBSSxLQUFLLEdBQUwsQ0FEcUI7QUFFekIsVUFBSSxJQUFJLEVBQUosQ0FGcUI7QUFHekIsYUFBTyxFQUFFLE1BQUYsSUFBWSxLQUFaLEdBQW9CLENBQXBCLEdBQXdCLElBQUksS0FBSixDQUFVLFFBQVEsRUFBRSxNQUFGLEdBQVcsQ0FBbkIsQ0FBVixDQUFnQyxJQUFoQyxDQUFxQyxDQUFyQyxJQUEwQyxDQUExQyxDQUhOOzs7OytCQVdULEdBQUc7QUFDbkIsVUFBSSxPQUFPLENBQVAsS0FBYSxRQUFiLEdBQXdCLElBQUksSUFBSixDQUFTLENBQVQsQ0FBeEIsR0FBc0MsQ0FBdEMsQ0FEZTtBQUVuQixhQUFPLEVBQUUsY0FBRixLQUFxQixHQUFyQixHQUNILEtBQUssR0FBTCxDQUFVLEVBQUUsV0FBRixLQUFnQixDQUFoQixFQUFtQixDQUE3QixDQURHLEdBQ2dDLEdBRGhDLEdBRUgsS0FBSyxHQUFMLENBQVUsRUFBRSxVQUFGLEVBQVYsRUFBMEIsQ0FBMUIsQ0FGRyxHQUU2QixHQUY3QixHQUdILEtBQUssR0FBTCxDQUFVLEVBQUUsV0FBRixFQUFWLEVBQTJCLENBQTNCLENBSEcsR0FHOEIsR0FIOUIsR0FJSCxLQUFLLEdBQUwsQ0FBVSxFQUFFLGFBQUYsRUFBVixFQUE2QixDQUE3QixDQUpHLEdBSWdDLEdBSmhDLEdBS0gsS0FBSyxHQUFMLENBQVUsRUFBRSxhQUFGLEVBQVYsRUFBNkIsQ0FBN0IsQ0FMRyxHQUtnQyxHQUxoQyxDQUZZOzs7O1dBbkJSOzs7OztBQWtDYixRQUFLLEdBQUwsR0FBVyxHQUFYO0FBQ0EsT0FBSSxDQUFDLEdBQUQsSUFBUSxDQUFDLElBQUksU0FBSixDQUFjLEdBQWQsSUFBcUIsQ0FBQyxJQUFJLFNBQUosQ0FBYyxHQUFkLEVBQW9CO0FBQ2xELFlBQVEsU0FBUyxhQUFULENBQXdCLFFBQXhCLEVBRDBDOztBQUV0RCxhQUFTLElBQVQsQ0FBYyxXQUFkLENBQTJCLEtBQTNCLEVBRnNEO0FBR3RELFNBQUssR0FBTCxHQUFXLE1BQU0sYUFBTixDQUFvQixHQUFwQixDQUgyQztBQUl0RCxVQUFNLFVBQU4sQ0FBaUIsV0FBakIsQ0FBOEIsS0FBOUIsRUFKc0Q7SUFBdkQiLCJmaWxlIjoiVXRpbC5qcyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQSBjb2xsZWN0aW9uIG9mIGphdmFzY3JpcHQgdXRpbGl0eSBmdW5jdGlvbnNcbiAqL1xuZXhwb3J0IGNsYXNzIFV0aWwge1xuXHQvKipcblx0ICogUGFkIGEgbnVtYmVyIHdpdGggbGVmdCB6ZXJvc1xuXHQgKiBAcGFyYW0gIHtJbnRlZ2VyfSBuICAgICB0aGUgbnVtZXJpYyB2YWx1ZVxuXHQgKiBAcGFyYW0gIHtJbnRlZ2VyfSB3aWR0aCB0aGUgbnVtYmVyIG9mIHplcm9zIHRvIHBhZFxuXHQgKiBAcGFyYW0gIHtTdHJpbmd9IHogICAgIHRoZSBwYWQgY2hhcmFjdGVyLCBkZWZhdWx0cyB0byAnMCdcblx0ICogQHJldHVybiB7U3RyaW5nfSAgICAgICB0aGUgcGFkZGVkIG51bWJlclxuXHQgKi9cblx0c3RhdGljIHBhZCggbiwgd2lkdGgsIHogKSB7XG5cdFx0eiA9IHogfHwgJzAnO1xuXHRcdG4gPSBuICsgJyc7XG5cdFx0cmV0dXJuIG4ubGVuZ3RoID49IHdpZHRoID8gbiA6IG5ldyBBcnJheSh3aWR0aCAtIG4ubGVuZ3RoICsgMSkuam9pbih6KSArIG47XG5cdH1cblxuXHQvKipcblx0ICogUmV0dXJucyBhbiBcIklTTyBkYXRlIHN0cmluZ1wiIGluIFJGQyAzMzM5IGZvcm1hdFxuXHQgKiBAcGFyYW0gIHtOdW1iZXJ8RGF0ZX0gZCB0aGUgbnVtYmVyIG9mIG1pbGxpc2Vjb25kcyBmcm9tIGVwb2NoIG9yIERhdGUgb2JqZWN0XG5cdCAqIEByZXR1cm4ge1N0cmluZ30gICB0aGUgUkZDIDMzMzkgZGF0ZSBzdHJpbmdcblx0ICovXG5cdHN0YXRpYyB0b0lzb0RhdGUoZCkge1xuXHRcdGQgPSB0eXBlb2YgZCA9PT0gJ251bWJlcicgPyBuZXcgRGF0ZShkKSA6IGQ7XG5cdFx0cmV0dXJuIGQuZ2V0VVRDRnVsbFllYXIoKSArICctJ1xuXHRcdFx0XHQrIFV0aWwucGFkKCBkLmdldFVUQ01vbnRoKCkrMSwgMiApICsgJy0nXG5cdFx0XHRcdCsgVXRpbC5wYWQoIGQuZ2V0VVRDRGF0ZSgpLCAyICkgKyAnVCdcblx0XHRcdFx0KyBVdGlsLnBhZCggZC5nZXRVVENIb3VycygpLCAyICkgKyAnOidcblx0XHRcdFx0KyBVdGlsLnBhZCggZC5nZXRVVENNaW51dGVzKCksIDIgKSArICc6J1xuXHRcdFx0XHQrIFV0aWwucGFkKCBkLmdldFVUQ1NlY29uZHMoKSwgMiApICsgJ1onXG5cdH1cbn1cblxuLyoqXG4gKiBTRiBBbG9oYSBVSSBjcmVhdGVzIGl0cyBvd24gTWFwIG9iamVjdCBpbiB0aGUgZ2xvYmFsIG5hbWVzcGFjZSBhbmQgaXQgaXMgYW55d2hlcmUgbmVhciBzdGFuZGFyZHMgY29tcGxpYW50XG4gKiBUaGlzIGlzIGEgc3R1cGlkIGhhY2sgdGhhdCBjaGVja3MgZm9yIHRoZWlyIGR1bWIgaW1wbGVtZW5hdGlvbiBhbmQgZ2V0cyB0aGUgcmVhbCBNYXAgY2xhc3MgaWYgbmVlZGVkLlxuICovXG5VdGlsLk1hcCA9IE1hcDtcbmlmKCAhTWFwIHx8ICFNYXAucHJvdG90eXBlLmdldCB8fCAhTWFwLnByb3RvdHlwZS5zZXQgKSB7XG5cdGxldCBmcmFtZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoICdpZnJhbWUnICk7XG5cdGRvY3VtZW50LmJvZHkuYXBwZW5kQ2hpbGQoIGZyYW1lICk7XG5cdFV0aWwuTWFwID0gZnJhbWUuY29udGVudFdpbmRvdy5NYXA7XG5cdGZyYW1lLnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQoIGZyYW1lICk7XG59XG4iXX0=
'use strict';

System.register('common/common.js', ['common/core/sb-i18n/I18n.js', 'common/core/sb-loading-spinner/LoadingSpinner.js', 'common/core/sb-page-container/PageContainer.js', 'common/core/sb-message-container/MessageContainer.js', 'common/core/sb-page-header/PageHeader.js', 'common/entities/sb-entity-field/EntityField.js', 'common/data/sb-service/Service.js', 'common/forms/sb-field/Field.js', 'common/forms/sb-typeahead/Typeahead.js', 'common/forms/sb-datepicker/Datepicker.js', 'common/services/sb-line-editor-read/LineEditorReader.js'], function (_export, _context) {
  return {
    setters: [function (_commonCoreSbI18nI18nJs) {}, function (_commonCoreSbLoadingSpinnerLoadingSpinnerJs) {}, function (_commonCoreSbPageContainerPageContainerJs) {}, function (_commonCoreSbMessageContainerMessageContainerJs) {}, function (_commonCoreSbPageHeaderPageHeaderJs) {}, function (_commonEntitiesSbEntityFieldEntityFieldJs) {}, function (_commonDataSbServiceServiceJs) {}, function (_commonFormsSbFieldFieldJs) {}, function (_commonFormsSbTypeaheadTypeaheadJs) {}, function (_commonFormsSbDatepickerDatepickerJs) {}, function (_commonServicesSbLineEditorReadLineEditorReaderJs) {}],
    execute: function () {}
  };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJjb21tb24uanMiLCJzb3VyY2VzQ29udGVudCI6W119
'use strict';

System.register('common/common.routes.js', [], function (_export, _context) {
	var PREFIX, ROUTES;
	return {
		setters: [],
		execute: function () {
			_export('PREFIX', PREFIX = '/entities');

			_export('PREFIX', PREFIX);

			_export('ROUTES', ROUTES = {
				'/:type': { comp: 'sb-entity-list', mod: 'common/entities/sb-entity-list/EntityList.js' },
				'/:type/new': { comp: 'sb-entity-detail', mod: 'common/entities/sb-entity-detail/EntityDetail.js' },
				'/:type/detail': { comp: 'sb-entity-detail', mod: 'common/entities/sb-entity-detail/EntityDetail.js' }
			});

			_export('ROUTES', ROUTES);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImNvbW1vbi5yb3V0ZXMuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7OztxQkFBYSxTQUFTOzs7O3FCQUNULFNBQVM7QUFDckIsY0FBVSxFQUFFLE1BQU0sZ0JBQU4sRUFBd0IsS0FBSyw4Q0FBTCxFQUFwQztBQUNBLGtCQUFjLEVBQUUsTUFBTSxrQkFBTixFQUEwQixLQUFLLGtEQUFMLEVBQTFDO0FBQ0EscUJBQWlCLEVBQUUsTUFBTSxrQkFBTixFQUEwQixLQUFLLGtEQUFMLEVBQTdDIiwiZmlsZSI6ImNvbW1vbi5yb3V0ZXMuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY29uc3QgUFJFRklYID0gJy9lbnRpdGllcyc7XG5leHBvcnQgY29uc3QgUk9VVEVTID0ge1xuXHQnLzp0eXBlJzogeyBjb21wOiAnc2ItZW50aXR5LWxpc3QnLCBtb2Q6ICdjb21tb24vZW50aXRpZXMvc2ItZW50aXR5LWxpc3QvRW50aXR5TGlzdC5qcycgfSxcblx0Jy86dHlwZS9uZXcnOiB7IGNvbXA6ICdzYi1lbnRpdHktZGV0YWlsJywgbW9kOiAnY29tbW9uL2VudGl0aWVzL3NiLWVudGl0eS1kZXRhaWwvRW50aXR5RGV0YWlsLmpzJyB9LFxuXHQnLzp0eXBlL2RldGFpbCc6IHsgY29tcDogJ3NiLWVudGl0eS1kZXRhaWwnLCBtb2Q6ICdjb21tb24vZW50aXRpZXMvc2ItZW50aXR5LWRldGFpbC9FbnRpdHlEZXRhaWwuanMnIH1cbn1cbiJdfQ==
'use strict';

System.register('common/common.tests.js', ['common/layout/sb-group/test/sb-test-item/TestItem.js', 'common/layout/sb-group/test/sb-test-item-field/TestItemField.js', 'common/layout/sb-tabs/test/sb-test-tab-page/TestTabPage.js'], function (_export, _context) {
  return {
    setters: [function (_commonLayoutSbGroupTestSbTestItemTestItemJs) {}, function (_commonLayoutSbGroupTestSbTestItemFieldTestItemFieldJs) {}, function (_commonLayoutSbTabsTestSbTestTabPageTestTabPageJs) {}],
    execute: function () {}
  };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJjb21tb24udGVzdHMuanMiLCJzb3VyY2VzQ29udGVudCI6W119
'use strict';

System.register('dealdesk/dealdesk.js', ['dealdesk/services/services.js', 'dealdesk/validations/validations.js', 'dealdesk/sb-dd-record-summary/DealDeskRecordSummary.js', 'dealdesk/sb-dd-line-details/DealDeskLineDetails.js', 'dealdesk/sb-dd-line-table/DealDeskLineTable.js', 'dealdesk/sb-dd-sforce-console/DealDeskSForceConsole.js'], function (_export, _context) {
  return {
    setters: [function (_dealdeskServicesServicesJs) {}, function (_dealdeskValidationsValidationsJs) {}, function (_dealdeskSbDdRecordSummaryDealDeskRecordSummaryJs) {}, function (_dealdeskSbDdLineDetailsDealDeskLineDetailsJs) {}, function (_dealdeskSbDdLineTableDealDeskLineTableJs) {}, function (_dealdeskSbDdSforceConsoleDealDeskSForceConsoleJs) {}],
    execute: function () {}
  };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJkZWFsZGVzay5qcyIsInNvdXJjZXNDb250ZW50IjpbXX0=
'use strict';

System.register('dealdesk/dealdesk.routes.js', [], function (_export, _context) {
	var PREFIX, ROUTES;
	return {
		setters: [],
		execute: function () {
			_export('PREFIX', PREFIX = '/dealdesk');

			_export('PREFIX', PREFIX);

			_export('ROUTES', ROUTES = {
				'/home': { comp: 'sb-deal-desk', mod: 'dealdesk/sb-deal-desk/DealDesk.js' }
			});

			_export('ROUTES', ROUTES);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImRlYWxkZXNrLnJvdXRlcy5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7O3FCQUFhLFNBQVM7Ozs7cUJBQ1QsU0FBUztBQUNyQixhQUFTLEVBQUUsTUFBTSxjQUFOLEVBQXNCLEtBQUssbUNBQUwsRUFBakMiLCJmaWxlIjoiZGVhbGRlc2sucm91dGVzLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNvbnN0IFBSRUZJWCA9ICcvZGVhbGRlc2snO1xuZXhwb3J0IGNvbnN0IFJPVVRFUyA9IHtcblx0Jy9ob21lJzogeyBjb21wOiAnc2ItZGVhbC1kZXNrJywgbW9kOiAnZGVhbGRlc2svc2ItZGVhbC1kZXNrL0RlYWxEZXNrLmpzJyB9XG59XG4iXX0=
'use strict';

System.register('advapprovals/sb-aa-example-page/ExamplePage.js', ['../../common/core/Page.js'], function (_export, _context) {
	var Page, _createClass, ExamplePage;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCorePageJs) {
			Page = _commonCorePageJs.Page;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('ExamplePage', ExamplePage = function (_Page) {
				_inherits(ExamplePage, _Page);

				function ExamplePage() {
					_classCallCheck(this, ExamplePage);

					return _possibleConstructorReturn(this, Object.getPrototypeOf(ExamplePage).apply(this, arguments));
				}

				_createClass(ExamplePage, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-aa-example-page';
						this.properties = Polymer.Base.extend({
							prop1: {
								type: String,
								value: function value() {
									return 'default value for prop1';
								}
							}
						}, Page.properties);
					}
				}, {
					key: 'ready',
					value: function ready() {
						console.log('Example page is ready.  prop1 == ' + this.prop1);
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}]);

				return ExamplePage;
			}(Page));

			_export('ExamplePage', ExamplePage);

			Polymer(ExamplePage);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkV4YW1wbGVQYWdlLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFBUTs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzBCQUVLOzs7Ozs7Ozs7OztzQ0FNSztBQUNoQixXQUFLLEVBQUwsR0FBVSxvQkFBVixDQURnQjtBQUVoQixXQUFLLFVBQUwsR0FBa0IsUUFBUSxJQUFSLENBQWEsTUFBYixDQUFxQjtBQUN0QyxjQUFPO0FBQ04sY0FBTSxNQUFOO0FBQ0EsZUFBTyxpQkFBVztBQUFFLGdCQUFPLHlCQUFQLENBQUY7U0FBWDtRQUZSO09BRGlCLEVBS2YsS0FBSyxVQUFMLENBTEgsQ0FGZ0I7Ozs7NkJBVVQ7QUFDUCxjQUFRLEdBQVIsQ0FBYSxzQ0FBc0MsS0FBSyxLQUFMLENBQW5ELENBRE87Ozs7eUJBZFE7QUFDZixhQUFPLENBQUMsR0FBRyxNQUFILENBQVUsSUFBVixDQUFlLElBQWYsQ0FBUixDQURlOzs7O1dBRko7S0FBb0I7Ozs7QUFxQmpDLFdBQVMsV0FBVCIsImZpbGUiOiJFeGFtcGxlUGFnZS5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7UGFnZX0gZnJvbSAnLi4vLi4vY29tbW9uL2NvcmUvUGFnZS5qcyc7XG5cbmV4cG9ydCBjbGFzcyBFeGFtcGxlUGFnZSBleHRlbmRzIFBhZ2Uge1xuXG5cdGdldCBiZWhhdmlvcnMoKSB7XG5cdFx0cmV0dXJuIFtzYi5jb21tb24uY29yZS5QYWdlXTtcblx0fVxuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItYWEtZXhhbXBsZS1wYWdlJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSBQb2x5bWVyLkJhc2UuZXh0ZW5kKCB7XG5cdFx0XHRwcm9wMToge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuICdkZWZhdWx0IHZhbHVlIGZvciBwcm9wMSc7IH1cblx0XHRcdH1cblx0XHR9LCBQYWdlLnByb3BlcnRpZXMgKTtcblx0fVxuXG5cdHJlYWR5KCkge1xuXHRcdGNvbnNvbGUubG9nKCAnRXhhbXBsZSBwYWdlIGlzIHJlYWR5LiAgcHJvcDEgPT0gJyArIHRoaXMucHJvcDEgKTtcblx0fVxufVxuXG5Qb2x5bWVyKCBFeGFtcGxlUGFnZSApO1xuIl19
'use strict';

System.register('common/core/AppContext.js', [], function (_export, _context) {
	var _createClass, labels, org, md, user, i18n, sb, localUser, AppContext;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			labels = {};
			org = {};
			md = {};
			user = {};
			i18n = {};
			sb = window ? window.sb || {} : {};

			sb.ui = sb.ui || {};
			sb.common = sb.common || {};
			sb.common.core = sb.common.core || {};
			window.sb = sb;

			localUser = {
				lang: 'en',
				locale: 'en-US',
				id: 'user_123456789',
				fullname: 'Joe User',
				username: 'joe@user.com'
			};

			_export('AppContext', AppContext = function () {
				function AppContext() {
					_classCallCheck(this, AppContext);
				}

				_createClass(AppContext, [{
					key: 'user',
					get: function get() {
						return user;
					}
				}, {
					key: 'labels',
					get: function get() {
						return labels;
					}
				}, {
					key: 'org',
					get: function get() {
						return org;
					}
				}], [{
					key: 'init',
					value: function init(useLocal) {
						var i18nClass = null;
						System.import('common/core/sb-i18n/I18n.js').then(function (m) {
							i18nClass = m.I18n;
						});

						return new Promise(function (resolve, reject) {
							user = localUser;
							System.import('labels_en.js').then(function (m) {
								labels = m.LABELS;
								var ret = { labels: m.LABELS, user: localUser };

								if (i18nClass) i18n = new i18nClass(ret);

								resolve(ret);
							}).catch(function (e) {
								reject(e);
							});
						});
					}
				}, {
					key: 'properties',
					get: function get() {
						return {
							app: {
								type: Object,
								value: function value() {
									return {
										user: user,
										labels: labels,
										org: org
									};
								}
							},

							i18n: {
								type: Object,
								value: function value() {
									return i18n;
								}
							}
						};
					}
				}]);

				return AppContext;
			}());

			_export('AppContext', AppContext);

			sb.common.core.AppContext = AppContext.prototype;
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkFwcENvbnRleHQuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFDSSxZQUFTO0FBQ1gsU0FBTTtBQUNOLFFBQUs7QUFDTCxVQUFPO0FBQ1AsVUFBTztBQUVMLFFBQUssU0FBUyxPQUFPLEVBQVAsSUFBYSxFQUFiLEdBQWtCLEVBQTNCOztBQUNULE1BQUcsRUFBSCxHQUFRLEdBQUcsRUFBSCxJQUFTLEVBQVQ7QUFDUixNQUFHLE1BQUgsR0FBWSxHQUFHLE1BQUgsSUFBYSxFQUFiO0FBQ1osTUFBRyxNQUFILENBQVUsSUFBVixHQUFpQixHQUFHLE1BQUgsQ0FBVSxJQUFWLElBQWtCLEVBQWxCO0FBQ2pCLFVBQU8sRUFBUCxHQUFZLEVBQVo7O0FBRUksZUFBWTtBQUNmLFVBQU0sSUFBTjtBQUNBLFlBQVEsT0FBUjtBQUNBLFFBQUksZ0JBQUo7QUFDQSxjQUFVLFVBQVY7QUFDQSxjQUFVLGNBQVY7Ozt5QkFhWTs7Ozs7Ozt5QkF5REQ7QUFDVixhQUFPLElBQVAsQ0FEVTs7Ozt5QkFJRTtBQUNaLGFBQU8sTUFBUCxDQURZOzs7O3lCQUlIO0FBQ1QsYUFBTyxHQUFQLENBRFM7Ozs7MEJBekRHLFVBQVc7QUFDdkIsVUFBSSxZQUFZLElBQVosQ0FEbUI7QUFFdkIsYUFBTyxNQUFQLENBQWUsNkJBQWYsRUFBK0MsSUFBL0MsQ0FBcUQsVUFBUyxDQUFULEVBQVk7QUFDaEUsbUJBQVksRUFBRSxJQUFGLENBRG9EO09BQVosQ0FBckQsQ0FGdUI7O0FBTXZCLGFBQU8sSUFBSSxPQUFKLENBQWEsVUFBUyxPQUFULEVBQWtCLE1BQWxCLEVBQTBCO0FBRTVDLGNBQU8sU0FBUCxDQUY0QztBQUc1QyxjQUFPLE1BQVAsQ0FBZSxjQUFmLEVBQWdDLElBQWhDLENBQXNDLFVBQVMsQ0FBVCxFQUFZO0FBQ2pELGlCQUFTLEVBQUUsTUFBRixDQUR3QztBQUVqRCxZQUFJLE1BQU0sRUFBRSxRQUFRLEVBQUUsTUFBRixFQUFVLE1BQU0sU0FBTixFQUExQixDQUY2Qzs7QUFJakQsWUFBSSxTQUFKLEVBQ0MsT0FBTyxJQUFJLFNBQUosQ0FBZSxHQUFmLENBQVAsQ0FERDs7QUFHQSxnQkFBUyxHQUFULEVBUGlEO1FBQVosQ0FBdEMsQ0FRRyxLQVJILENBUVUsVUFBUyxDQUFULEVBQVk7QUFDckIsZUFBTyxDQUFQLEVBRHFCO1FBQVosQ0FSVixDQUg0QztPQUExQixDQUFwQixDQU51Qjs7Ozt5QkErQkE7QUFDdkIsYUFBTztBQUNOLFlBQUs7QUFDSixjQUFNLE1BQU47QUFDQSxlQUFPLGlCQUFXO0FBQUUsZ0JBQU87QUFDMUIsZ0JBQU0sSUFBTjtBQUNBLGtCQUFRLE1BQVI7QUFDQSxlQUFLLEdBQUw7VUFIbUIsQ0FBRjtTQUFYO1FBRlI7O0FBU0EsYUFBTTtBQUNMLGNBQU0sTUFBTjtBQUNBLGVBQU8saUJBQVc7QUFBRSxnQkFBTyxJQUFQLENBQUY7U0FBWDtRQUZSO09BVkQsQ0FEdUI7Ozs7V0F2Q1o7Ozs7O0FBd0ViLE1BQUcsTUFBSCxDQUFVLElBQVYsQ0FBZSxVQUFmLEdBQTRCLFdBQVcsU0FBWCIsImZpbGUiOiJBcHBDb250ZXh0LmpzIiwic291cmNlc0NvbnRlbnQiOlsiLy8gU2luZ2xldG9uL2luc3RhbmNlIGRhdGEgZXhwb3NlZCBieSB0aGlzIGNsYXNzXG5sZXQgbGFiZWxzID0ge30sXG5cdFx0b3JnID0ge30sXG5cdFx0bWQgPSB7fSxcblx0XHR1c2VyID0ge30sXG5cdFx0aTE4biA9IHt9OyAgLy8gaW5zdGFuY2Ugb2YgSTE4bi5qcywgd2hpY2ggd2UgY2FuJ3QgaW1wb3J0IG5vcm1hbGx5IGR1ZSB0byBjaXJjdWxhciBkZXBlbmRlbmN5XG5cbmxldCBzYiA9IHdpbmRvdyA/IHdpbmRvdy5zYiB8fCB7fSA6IHt9O1xuc2IudWkgPSBzYi51aSB8fCB7fTtcbnNiLmNvbW1vbiA9IHNiLmNvbW1vbiB8fCB7fTtcbnNiLmNvbW1vbi5jb3JlID0gc2IuY29tbW9uLmNvcmUgfHwge307XG53aW5kb3cuc2IgPSBzYjtcblxubGV0IGxvY2FsVXNlciA9IHsgLy8gZGVmYXVsdCB2YWx1ZXNcblx0bGFuZzogJ2VuJyxcblx0bG9jYWxlOiAnZW4tVVMnLFxuXHRpZDogJ3VzZXJfMTIzNDU2Nzg5Jyxcblx0ZnVsbG5hbWU6ICdKb2UgVXNlcicsXG5cdHVzZXJuYW1lOiAnam9lQHVzZXIuY29tJ1xufTtcblxuLyoqXG4gKiBBIFwiY29udGV4dFwiIGNsYXNzIGZvciB0aGUgZW50aXJlIEFwcGxpY2F0aW9uLiAgSXQga25vd3MgaG93IHRvIGluaXRpYWxpemUvZ2V0IGFsbCB0aGUgY29tbW9uIHN0dWZmXG4gKiB0aGF0IGFueSBwYWdlIG9mIHRoZSBhcHBsaWNhdGlvbiBtaWdodCBuZWVkLiAgVGhpcyBpbmNsdWRlczpcbiAqXG4gKiBVc2VyIHNldHRpbmdzIChsYW5ndWFnZSwgbG9jYWxlLCB0aW1lem9uZSwgZnVsbG5hbWUsIGVtYWlsLCBldGMpXG4gKiBMb2NhbGl6ZWQgbGFiZWxzXG4gKiBPcmcgc2V0dGluZ3NcbiAqIE9yZyBNZXRhZGF0YVxuICogVUkgVGhlbWVzXG4gKi9cbmV4cG9ydCBjbGFzcyBBcHBDb250ZXh0IHtcblxuXHQvKipcblx0ICogSW5pdGlhbGl6ZSB0aGUgYXBwbGljYXRpb24gY29udGV4dCBkYXRhLiAgVGhpcyBuZWVkcyB0byBiZSBjYWxsZWQgKGF0IGxlYXN0IG9uY2UpIGJlZm9yZVxuXHQgKiBvdGhlciBtZXRob2RzIGFyZSB1c2VkIHRvIGFjY2VzcyBpbnN0YW5jZSBkYXRhLlxuXHQgKiBAcGFyYW0gIHtib29sZWFufSB1c2VMb2NhbCBsb2FkIHRoZSBcImxvY2FsaG9zdFwiIGFwcCBkYXRhIGluc3RlYWQgb2YgZ29pbmcgdG8gdGhlIHNlcnZlclxuXHQgKiBAcmV0dXJuIHtQcm9taXNlfVxuXHQgKi9cblx0c3RhdGljIGluaXQoIHVzZUxvY2FsICkge1xuXHRcdGxldCBpMThuQ2xhc3MgPSBudWxsO1xuXHRcdFN5c3RlbS5pbXBvcnQoICdjb21tb24vY29yZS9zYi1pMThuL0kxOG4uanMnICkudGhlbiggZnVuY3Rpb24obSkge1xuXHRcdFx0aTE4bkNsYXNzID0gbS5JMThuOyAgLy8gbm90IGdvb2QgYXN5bmMgcHJhY3RpY2UgYnV0IHRoaXMgc2hvdWxkIGFsd2F5cyBmaW5pc2ggZmlyc3QgYmVmb3JlIG5leHQgaW1wb3J0XG5cdFx0fSk7XG5cblx0XHRyZXR1cm4gbmV3IFByb21pc2UoIGZ1bmN0aW9uKHJlc29sdmUsIHJlamVjdCkge1xuXHRcdFx0Ly8gaWYoIHVzZUxvY2FsICkge1xuXHRcdFx0XHR1c2VyID0gbG9jYWxVc2VyO1xuXHRcdFx0XHRTeXN0ZW0uaW1wb3J0KCAnbGFiZWxzX2VuLmpzJyApLnRoZW4oIGZ1bmN0aW9uKG0pIHtcblx0XHRcdFx0XHRsYWJlbHMgPSBtLkxBQkVMUztcblx0XHRcdFx0XHRsZXQgcmV0ID0geyBsYWJlbHM6IG0uTEFCRUxTLCB1c2VyOiBsb2NhbFVzZXIgfTtcblxuXHRcdFx0XHRcdGlmKCBpMThuQ2xhc3MgKVxuXHRcdFx0XHRcdFx0aTE4biA9IG5ldyBpMThuQ2xhc3MoIHJldCApOyAgLy8gY3JlYXRlIHNpbmdsZXRvbiBpbnN0YW5jZVxuXG5cdFx0XHRcdFx0cmVzb2x2ZSggcmV0ICk7XG5cdFx0XHRcdH0pLmNhdGNoKCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdFx0cmVqZWN0KGUpO1xuXHRcdFx0XHR9KTtcblx0XHRcdC8vIH1cblx0XHRcdC8vIGVsc2Uge1xuXHRcdFx0XHQvLyByZXNvbHZlKCk7IC8vIFRPRE9cblx0XHRcdC8vIH1cblx0XHR9KTtcblx0fVxuXG5cdC8qKlxuXHQgKiBUaGUgcHJvcGVydGllcyBvYmplY3QsIGluIFBvbHltZXIgZm9ybWF0LCB0aGF0IGNhbiBiZSBpbmhlcml0ZWQgYnkgb3RoZXIgY29tcG9uZW50cy9jbGFzc2VzLlxuXHQgKiBAcmV0dXJuIHtPYmplY3R9IGEgY29tbW9uIHNldCBvZiBwcm9wZXJ0aWVzIGZvciBhbGwgY29tcG9uZW50cy9jbGFzc2VzIGluIG91ciBhcHAuXG5cdCAqL1xuXHRzdGF0aWMgZ2V0IHByb3BlcnRpZXMoKSB7XG5cdFx0cmV0dXJuIHtcblx0XHRcdGFwcDoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHtcblx0XHRcdFx0XHR1c2VyOiB1c2VyLFxuXHRcdFx0XHRcdGxhYmVsczogbGFiZWxzLFxuXHRcdFx0XHRcdG9yZzogb3JnXG5cdFx0XHRcdH19XG5cdFx0XHR9LFxuXHRcdFx0LyoqIEEgaW5zdGFuY2Ugb2Ygc2ItaTE4biBpbiBwdXJlIEVTNiBjbGFzcyBmb3JtLCBmb3IgZGlyZWN0IHByb2dyYW1tYXRpYyBhY2Nlc3MgaW4gYW55IGluaGVyaXRlZCBjb21wb25lbnQgKi9cblx0XHRcdGkxOG46IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiBpMThuOyB9XG5cdFx0XHR9XG5cdFx0fTtcblx0fVxuXG5cdGdldCB1c2VyKCkge1xuXHRcdHJldHVybiB1c2VyO1xuXHR9XG5cblx0Z2V0IGxhYmVscygpIHtcblx0XHRyZXR1cm4gbGFiZWxzO1xuXHR9XG5cblx0Z2V0IG9yZygpIHtcblx0XHRyZXR1cm4gb3JnO1xuXHR9XG59XG5cbi8vIGV4cG9zZSBhbiBpbnN0YW5jZSBvZiBBcHBDb250ZXh0IGFzIGdsb2JhbCBvYmplY3Qgc28gaXQgY2FuIGJlIHVzZWQgYXMgYSBQb2x5bWVyIGJlaGF2aW9yc1xuLy8gUG9seW1lciBkb2Vzbid0IGNyZWF0ZSBpbnN0YW5jZXMgb2YgRVM2IGNsYXNzLCBqdXN0IHJlZ3VsYXIgRVM1IG9iamVjdHMgOihcbnNiLmNvbW1vbi5jb3JlLkFwcENvbnRleHQgPSBBcHBDb250ZXh0LnByb3RvdHlwZTtcbiJdfQ==
'use strict';

System.register('common/core/Page.js', ['common/core/AppContext.js'], function (_export, _context) {
	var AppContext, _createClass, sb, SIZE_S, SIZE_M, SIZE_L, SIZE_XL, Page;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCoreAppContextJs) {
			AppContext = _commonCoreAppContextJs.AppContext;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			sb = window ? window.sb || {} : {};

			sb.ui = sb.ui || {};
			sb.common = sb.common || {};
			sb.common.core = sb.common.core || {};
			window.sb = sb;

			_export('SIZE_S', SIZE_S = 'S');

			_export('SIZE_S', SIZE_S);

			_export('SIZE_M', SIZE_M = 'M');

			_export('SIZE_M', SIZE_M);

			_export('SIZE_L', SIZE_L = 'L');

			_export('SIZE_L', SIZE_L);

			_export('SIZE_XL', SIZE_XL = 'XL');

			_export('SIZE_XL', SIZE_XL);

			_export('Page', Page = function (_AppContext) {
				_inherits(Page, _AppContext);

				function Page() {
					_classCallCheck(this, Page);

					return _possibleConstructorReturn(this, Object.getPrototypeOf(Page).apply(this, arguments));
				}

				_createClass(Page, [{
					key: 'nav',
					value: function nav(url, queryParams, pathParams, newWin) {
						var u = url,
						    pLen = pathParams ? pathParams.length : 0,
						    pKeys = queryParams ? Object.keys(queryParams) : [],
						    kLen = pKeys.length;

						if (pathParams) {
							for (var i = 0; i < pLen; i++) {
								if (pathParams[i] != null && pathParams[i] != undefined && pathParams[i] != '') u += '/' + encodeURIComponent(pathParams[i]);
							}
						}

						for (var _i = 0; _i < kLen; _i++) {
							u += _i == 0 ? '?' : '&';
							u += encodeURIComponent(pKeys[_i]) + '=' + encodeURIComponent(queryParams[pKeys[_i]]);
						}

						window.location.hash = u;
					}
				}], [{
					key: 'properties',
					get: function get() {
						return Polymer.Base.extend({
							ctx: {
								type: Object,
								value: function value() {
									return {};
								}
							},
							viewport: Object,
							prefix: String
						}, AppContext.properties);
					}
				}]);

				return Page;
			}(AppContext));

			_export('Page', Page);

			sb.common.core.Page = Page.prototype;
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlBhZ2UuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFROzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFFSixRQUFLLFNBQVMsT0FBTyxFQUFQLElBQWEsRUFBYixHQUFrQixFQUEzQjs7QUFDVCxNQUFHLEVBQUgsR0FBUSxHQUFHLEVBQUgsSUFBUyxFQUFUO0FBQ1IsTUFBRyxNQUFILEdBQVksR0FBRyxNQUFILElBQWEsRUFBYjtBQUNaLE1BQUcsTUFBSCxDQUFVLElBQVYsR0FBaUIsR0FBRyxNQUFILENBQVUsSUFBVixJQUFrQixFQUFsQjtBQUNqQixVQUFPLEVBQVAsR0FBWSxFQUFaOztxQkFHYSxTQUFTOzs7O3FCQUNULFNBQVM7Ozs7cUJBQ1QsU0FBUzs7OztzQkFDVCxVQUFVOzs7O21CQUtWOzs7Ozs7Ozs7Ozt5QkFVUCxLQUFLLGFBQWEsWUFBWSxRQUFTO0FBQzNDLFVBQUksSUFBSSxHQUFKO1VBQ0gsT0FBTyxhQUFhLFdBQVcsTUFBWCxHQUFvQixDQUFqQztVQUNQLFFBQVEsY0FBYyxPQUFPLElBQVAsQ0FBYSxXQUFiLENBQWQsR0FBMkMsRUFBM0M7VUFDUixPQUFPLE1BQU0sTUFBTixDQUptQzs7QUFNM0MsVUFBSSxVQUFKLEVBQWlCO0FBQ2hCLFlBQU0sSUFBSSxJQUFJLENBQUosRUFBTyxJQUFJLElBQUosRUFBVSxHQUEzQixFQUFpQztBQUNoQyxZQUFLLFdBQVksQ0FBWixLQUFtQixJQUFuQixJQUEyQixXQUFZLENBQVosS0FBbUIsU0FBbkIsSUFBZ0MsV0FBWSxDQUFaLEtBQW1CLEVBQW5CLEVBQy9ELEtBQUssTUFBTSxtQkFBb0IsV0FBWSxDQUFaLENBQXBCLENBQU4sQ0FETjtRQUREO09BREQ7O0FBT0EsV0FBSyxJQUFJLEtBQUksQ0FBSixFQUFPLEtBQUksSUFBSixFQUFVLElBQTFCLEVBQWdDO0FBQy9CLFlBQUssTUFBSyxDQUFMLEdBQVMsR0FBVCxHQUFlLEdBQWYsQ0FEMEI7QUFFL0IsWUFBSyxtQkFBb0IsTUFBTyxFQUFQLENBQXBCLElBQW1DLEdBQW5DLEdBQXlDLG1CQUFvQixZQUFhLE1BQU8sRUFBUCxDQUFiLENBQXBCLENBQXpDLENBRjBCO09BQWhDOztBQUtBLGFBQU8sUUFBUCxDQUFnQixJQUFoQixHQUF1QixDQUF2QixDQWxCMkM7Ozs7eUJBeUJwQjtBQUN2QixhQUFPLFFBQVEsSUFBUixDQUFhLE1BQWIsQ0FBb0I7QUFDMUIsWUFBSztBQUNKLGNBQU0sTUFBTjtBQUNBLGVBQU8saUJBQVc7QUFBRSxnQkFBTyxFQUFQLENBQUY7U0FBWDtRQUZSO0FBSUEsaUJBQVUsTUFBVjtBQUNBLGVBQVEsTUFBUjtPQU5NLEVBT0osV0FBVyxVQUFYLENBUEgsQ0FEdUI7Ozs7V0FuQ1o7S0FBYTs7OztBQWlEMUIsTUFBRyxNQUFILENBQVUsSUFBVixDQUFlLElBQWYsR0FBc0IsS0FBSyxTQUFMIiwiZmlsZSI6IlBhZ2UuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge0FwcENvbnRleHR9IGZyb20gJ2NvbW1vbi9jb3JlL0FwcENvbnRleHQuanMnO1xuXG52YXIgc2IgPSB3aW5kb3cgPyB3aW5kb3cuc2IgfHwge30gOiB7fTtcbnNiLnVpID0gc2IudWkgfHwge307XG5zYi5jb21tb24gPSBzYi5jb21tb24gfHwge307XG5zYi5jb21tb24uY29yZSA9IHNiLmNvbW1vbi5jb3JlIHx8IHt9O1xud2luZG93LnNiID0gc2I7XG5cbi8vIFNjcmVlbi1pc2ggLyB2aWV3cG9ydCBzaXplc1xuZXhwb3J0IGNvbnN0IFNJWkVfUyA9ICdTJztcbmV4cG9ydCBjb25zdCBTSVpFX00gPSAnTSc7XG5leHBvcnQgY29uc3QgU0laRV9MID0gJ0wnO1xuZXhwb3J0IGNvbnN0IFNJWkVfWEwgPSAnWEwnO1xuXG4vKipcbiAqIFRoZSBjb21tb24gYmFzZSBjbGFzcyBmb3IgYWxsIFBhZ2Ugb2JqZWN0cy4gIEEgUGFnZSBpcyBhIHBoeXNpY2FsIGxhbmRpbmcgcG9pbnQgb2YgY29udGVudCB3aGVuIGEgdXNlciBuYXZpZ2F0ZXMgaW4gdGhlIGFwcC5cbiAqL1xuZXhwb3J0IGNsYXNzIFBhZ2UgZXh0ZW5kcyBBcHBDb250ZXh0IHtcblxuXHQvKipcblx0ICogQSBuYXZpZ2F0ZSBmdW5jdGlvbiBmb3IgaW1wZXJhdGl2ZSBuYWdpdmdhdGlvbiBldmVudHMgXCJpbnNpZGVcIiBvdXIgYXBwbGljYXRpb24uXG5cdCAqIEBwYXJhbSAge1N0cmluZ30gdXJsICAgICAgICAgdGhlIHJlbGF0aXZlIFVSTCB0byBuYXZpZ2F0ZSB0b1xuXHQgKiBAcGFyYW0gIHtPYmplY3R9IHF1ZXJ5UGFyYW1zIGEgbWFwIG9mIHF1ZXJ5IHBhcmFtZXRlcnMgdG8gYXBwZW5kIHRvIHRoZSBVUkxcblx0ICogQHBhcmFtICB7T2JqZWN0fSBwYXRoUGFyYW1zICBhcnJheSBvZiBwYXRoIHN0cmluZ3MgdG8gYXBwZW5kIHRvIHRoZSBVUkxcblx0ICogQHBhcmFtICB7Ym9vbGVhbn0gbmV3V2luICAgICAgdHJ1ZSB0byBvcGVuIGluIGEgbmV3IGJyb3dzZXIgd2luZG93XG5cdCAqIEByZXR1cm4ge251bGx9XG5cdCAqL1xuXHRuYXYoIHVybCwgcXVlcnlQYXJhbXMsIHBhdGhQYXJhbXMsIG5ld1dpbiApIHtcblx0XHRsZXQgdSA9IHVybCxcblx0XHRcdHBMZW4gPSBwYXRoUGFyYW1zID8gcGF0aFBhcmFtcy5sZW5ndGggOiAwLFxuXHRcdFx0cEtleXMgPSBxdWVyeVBhcmFtcyA/IE9iamVjdC5rZXlzKCBxdWVyeVBhcmFtcyApIDogW10sXG5cdFx0XHRrTGVuID0gcEtleXMubGVuZ3RoO1xuXG5cdFx0aWYoIHBhdGhQYXJhbXMgKSB7XG5cdFx0XHRmb3IgKCB2YXIgaSA9IDA7IGkgPCBwTGVuOyBpKysgKSB7XG5cdFx0XHRcdGlmICggcGF0aFBhcmFtc1sgaSBdICE9IG51bGwgJiYgcGF0aFBhcmFtc1sgaSBdICE9IHVuZGVmaW5lZCAmJiBwYXRoUGFyYW1zWyBpIF0gIT0gJycgKVxuXHRcdFx0XHRcdHUgKz0gJy8nICsgZW5jb2RlVVJJQ29tcG9uZW50KCBwYXRoUGFyYW1zWyBpIF0gKTtcblx0XHRcdH1cblx0XHR9XG5cblx0XHRmb3IoIGxldCBpID0gMDsgaSA8IGtMZW47IGkrKyApIHtcblx0XHRcdHUgKz0gaSA9PSAwID8gJz8nIDogJyYnO1xuXHRcdFx0dSArPSBlbmNvZGVVUklDb21wb25lbnQoIHBLZXlzWyBpIF0gKSArICc9JyArIGVuY29kZVVSSUNvbXBvbmVudCggcXVlcnlQYXJhbXNbIHBLZXlzWyBpIF0gXSApO1xuXHRcdH1cblxuXHRcdHdpbmRvdy5sb2NhdGlvbi5oYXNoID0gdTtcblx0fVxuXG5cdC8qKlxuXHQgKiBUaGUgYmFzZSBwcm9wZXJ0aWVzIG9iamVjdCwgaW4gUG9seW1lciBmb3JtYXQsIHRoYXQgYWxsIFBhZ2VzIGhhdmUgaW4gY29tbW9uXG5cdCAqIEByZXR1cm4ge09iamVjdH0gYSBjb21tb24gc2V0IG9mIHByb3BlcnRpZXMgZm9yIGFsbCBwYWdlc1xuXHQgKi9cblx0c3RhdGljIGdldCBwcm9wZXJ0aWVzKCkge1xuXHRcdHJldHVybiBQb2x5bWVyLkJhc2UuZXh0ZW5kKHtcblx0XHRcdGN0eDoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHt9IH1cblx0XHRcdH0sXG5cdFx0XHR2aWV3cG9ydDogT2JqZWN0LFxuXHRcdFx0cHJlZml4OiBTdHJpbmdcblx0XHR9LCBBcHBDb250ZXh0LnByb3BlcnRpZXMgKTtcblx0fVxufVxuXG4vLyBleHBvc2UgYW4gaW5zdGFuY2Ugb2YgUGFnZSBhcyBnbG9iYWwgb2JqZWN0IHNvIGl0IGNhbiBiZSB1c2VkIGFzIGEgUG9seW1lciBiZWhhdmlvcnNcbi8vIFBvbHltZXIgZG9lc24ndCBjcmVhdGUgaW5zdGFuY2VzIG9mIEVTNiBjbGFzcywganVzdCByZWd1bGFyIEVTNSBvYmplY3RzIDooXG5zYi5jb21tb24uY29yZS5QYWdlID0gUGFnZS5wcm90b3R5cGU7XG4iXX0=
'use strict';

System.register('common/core-old/Page.js', [], function (_export, _context) {
	var _createClass, sb, bpS, bpM, bpL, bpXL, mqS, mqM, mqMOnly, mqL, mqLOnly, messages, defaultUser, dateFormatCache, numberFormatCache, Page;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			sb = window ? window.sb || {} : {};

			sb.ui = sb.ui || {};
			sb.common = sb.common || {};
			sb.common.core = sb.common.core || {};
			window.sb = sb;

			bpS = '0';
			bpM = '768px';
			bpL = '1024px';
			bpXL = '1200px';
			mqS = window.matchMedia('screen and (max-width: ' + bpM + ')');
			mqM = window.matchMedia('screen and (min-width: ' + bpM + ')');
			mqMOnly = window.matchMedia('screen and (min-width: ' + bpM + ') and (max-width: ' + bpL + ')');
			mqL = window.matchMedia('screen and (min-width: ' + bpL + ')');
			mqLOnly = window.matchMedia('screen and (min-width: ' + bpL + ') and (max-width: ' + bpXL + ')');
			messages = {
				en: {
					'Delete': 'Delete',
					'New': 'New',
					'Recently Viewed': 'Recently Viewed',
					'Yes': 'Yes'
				},
				it: {
					'Delete': 'Cancellare',
					'New': 'Nuovo',
					'Recently Viewed': 'Visualizzato Recentemente',
					'Yes': 'Si'
				}
			};
			defaultUser = {
				lang: 'en',
				locale: 'en-US',
				id: 'user_123456789',
				fullname: 'Joe User',
				username: 'joe@user.com'
			};
			dateFormatCache = {};
			numberFormatCache = {};

			_export('Page', Page = function () {
				function Page() {
					_classCallCheck(this, Page);
				}

				_createClass(Page, [{
					key: 'nav',
					value: function nav(url, queryParams, pathParams, newWin) {
						var u = url,
						    pLen = pathParams ? pathParams.length : 0,
						    pKeys = queryParams ? Object.keys(queryParams) : [],
						    kLen = pKeys.length;

						if (pathParams) {
							for (var _i = 0; _i < pLen; _i++) {
								if (pathParams[_i] != null && pathParams[_i] != undefined && pathParams[_i] != '') u += '/' + encodeURIComponent(paramParams[_i]);
							}
						}

						for (var i = 0; i < kLen; i++) {
							if (i == 0) u += '?';

							u += encodeURIComponent(pKeys[i]) + '=' + encodeURIComponent(queryParams[pKeys[i]]);
						}

						window.location.hash = u;
					}
				}, {
					key: 'l',
					value: function l(key, values) {
						var v = messages[this.user.lang][key];
						return v;
					}
				}, {
					key: '_getFormat',
					value: function _getFormat(locale, key, isDate) {
						var f = null;
						if (locale && key) {
							var loc = isDate ? dateFormatCache[locale] : numberFormatCache[locale];
							if (!loc) {
								loc = {};
								var c = isDate ? dateFormatCache : numberFormatCache;
								c[locale] = loc;
							}

							f = loc[key];
							if (!f) {
								f = isDate ? new Intl.DateTimeFormat(locale, key) : new Intl.NumberFormat(locale, key);
								loc[key] = f;
							}
						}
						return f;
					}
				}, {
					key: 'format',
					value: function format(value, options) {
						var v = '',
						    opts = options || {};

						if (value || value == 0) {
							if (value instanceof Date || opts.date) {
								var fmt = this._getFormat(this.user.locale, opts, true);
								if (value instanceof Date) {
									v = fmt.format(value);
								} else if (typeof value == 'number') {
									v = fmt.format(new Date(value));
								} else if (typeof value === 'string') {
									var nv = parseInt(value);
									if (nv != 'NaN') {
										v = fmt.format(new Date(nv));
									} else {}
								}
							} else {
									var fmt = this._getFormat(this.user.locale, opts, false);
									v = fmt.format(value);
								}
						}
						return v;
					}
				}, {
					key: 'user',
					get: function get() {
						return defaultUser;
					}
				}], [{
					key: 'properties',
					get: function get() {
						return {
							ctx: {
								type: Object,
								value: function value() {
									return {};
								}
							}
						};
					}
				}]);

				return Page;
			}());

			_export('Page', Page);

			sb.common.core.Page = Page.prototype;
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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RG1DO0FBRXZDLGFBQUssTUFBTSxLQUFOLEVBQWM7QUFDbEIsY0FBSSxJQUFJLE1BQUosQ0FBWSxJQUFJLElBQUosQ0FBVSxFQUFWLENBQVosQ0FBSixDQURrQjtVQUFuQixNQUVPLEVBRlA7U0FGTTtRQU5SLE1BY087QUFDTixhQUFJLE1BQU0sS0FBSyxVQUFMLENBQWlCLEtBQUssSUFBTCxDQUFVLE1BQVYsRUFBa0IsSUFBbkMsRUFBeUMsS0FBekMsQ0FBTixDQURFO0FBRU4sYUFBSSxJQUFJLE1BQUosQ0FBWSxLQUFaLENBQUosQ0FGTTtTQWRQO09BREQ7QUFvQkEsYUFBTyxDQUFQLENBeEJ3Qjs7Ozt5QkE3QmQ7QUFDVixhQUFPLFdBQVAsQ0FEVTs7Ozt5QkFYYTtBQUN2QixhQUFPO0FBQ04sWUFBSztBQUNKLGNBQU0sTUFBTjtBQUNBLGVBQU8saUJBQVc7QUFDakIsZ0JBQU8sRUFBUCxDQURpQjtTQUFYO1FBRlI7T0FERCxDQUR1Qjs7OztXQTNDWjs7Ozs7QUFpSGIsTUFBRyxNQUFILENBQVUsSUFBVixDQUFlLElBQWYsR0FBc0IsS0FBSyxTQUFMIiwiZmlsZSI6IlBhZ2UuanMiLCJzb3VyY2VzQ29udGVudCI6WyJ2YXIgc2IgPSB3aW5kb3cgPyB3aW5kb3cuc2IgfHwge30gOiB7fTtcbnNiLnVpID0gc2IudWkgfHwge307XG5zYi5jb21tb24gPSBzYi5jb21tb24gfHwge307XG5zYi5jb21tb24uY29yZSA9IHNiLmNvbW1vbi5jb3JlIHx8IHt9O1xud2luZG93LnNiID0gc2I7XG5cbi8vIE1lZGlhIFF1ZXJ5IGJyZWFrcG9pbnRzLiAgVGhlc2UgbmVlZCB0byBiZSBrZXB0IGluIHN5bmMgd2l0aCB2YXJpYWJsZXMubGVzcy5cbmxldCBicFMgPSAnMCcsIGJwTSA9ICc3NjhweCcsIGJwTCA9ICcxMDI0cHgnLCBicFhMID0gJzEyMDBweCcsXG5cdFx0bXFTID0gd2luZG93Lm1hdGNoTWVkaWEoICdzY3JlZW4gYW5kIChtYXgtd2lkdGg6ICcgKyBicE0gKyAnKScgKSxcblx0XHRtcU0gPSB3aW5kb3cubWF0Y2hNZWRpYSggJ3NjcmVlbiBhbmQgKG1pbi13aWR0aDogJyArIGJwTSArICcpJyApLFxuXHRcdG1xTU9ubHkgPSB3aW5kb3cubWF0Y2hNZWRpYSggJ3NjcmVlbiBhbmQgKG1pbi13aWR0aDogJyArIGJwTSArICcpIGFuZCAobWF4LXdpZHRoOiAnICsgYnBMICsgJyknICksXG5cdFx0bXFMID0gd2luZG93Lm1hdGNoTWVkaWEoICdzY3JlZW4gYW5kIChtaW4td2lkdGg6ICcgKyBicEwgKyAnKScgKSxcblx0XHRtcUxPbmx5ID0gd2luZG93Lm1hdGNoTWVkaWEoICdzY3JlZW4gYW5kIChtaW4td2lkdGg6ICcgKyBicEwgKyAnKSBhbmQgKG1heC13aWR0aDogJyArIGJwWEwgKyAnKScgKTtcblxuLy8gbXFTLmFkZExpc3RlbmVyKCBmdW5jdGlvbihtKSB7IGlmKCBtLm1hdGNoZXMgKSB0LmRldmljZSA9ICdzbWFsbCcgfSApO1xuLy8gbXFNLmFkZExpc3RlbmVyKCBmdW5jdGlvbihtKSB7IGlmKCBtLm1hdGNoZXMgKSB0LmRldmljZSA9ICdtZWRpdW0nIH0gKTtcbi8vIG1xTC5hZGRMaXN0ZW5lciggZnVuY3Rpb24obSkgeyBpZiggbS5tYXRjaGVzICkgdC5kZXZpY2UgPSAnbGFyZ2UnIH0gKTtcblxuLy8gdG9kbyAtIGdldCBmcm9tIGxpbmd1aXN0cyBmaWxlc1xubGV0IG1lc3NhZ2VzID0ge1xuXHRlbjoge1xuXHRcdCdEZWxldGUnOiAnRGVsZXRlJyxcblx0XHQnTmV3JzogJ05ldycsXG5cdFx0J1JlY2VudGx5IFZpZXdlZCc6ICdSZWNlbnRseSBWaWV3ZWQnLFxuXHRcdCdZZXMnOiAnWWVzJ1xuXHR9LFxuXHRpdDoge1xuXHRcdCdEZWxldGUnOiAnQ2FuY2VsbGFyZScsXG5cdFx0J05ldyc6ICdOdW92bycsXG5cdFx0J1JlY2VudGx5IFZpZXdlZCc6ICdWaXN1YWxpenphdG8gUmVjZW50ZW1lbnRlJyxcblx0XHQnWWVzJzogJ1NpJ1xuXHR9XG59XG5cbmxldCBkZWZhdWx0VXNlciA9IHsgLy8gY3VycmVudCB1c2VyIGNvbnRleHQgaW5mb3JtYXRpb24sIGRlZmF1bHQgdmFsdWVzXG5cdGxhbmc6ICdlbicsXG5cdGxvY2FsZTogJ2VuLVVTJyxcblx0aWQ6ICd1c2VyXzEyMzQ1Njc4OScsXG5cdGZ1bGxuYW1lOiAnSm9lIFVzZXInLFxuXHR1c2VybmFtZTogJ2pvZUB1c2VyLmNvbSdcbn1cblxuLy8gTWFwcyBvZiBjYWNoZWQgSW50bC5EYXRlVGltZUZvcm1hdCBhbmQgSW50bC5OdW1iZXJGb3JtYXQgb2JqZWN0cyB1c2luZyB0aGVpciBcIm9wdGlvbnNcIiBvYmplY3QgYXMgMm5kLWxldmVsIGtleXNcbi8vIEZpcnN0IGxldmVsIGtleXMgYXJlIGxvY2FsZSBzdHJpbmdzXG5sZXQgZGF0ZUZvcm1hdENhY2hlID0ge30sXG5cdFx0bnVtYmVyRm9ybWF0Q2FjaGUgPSB7fTtcblxuLyoqXG4gKiBUaGUgY29tbW9uIGJhc2UgY2xhc3MgZm9yIGFsbCBQYWdlIG9iamVjdHMuICBBIFBhZ2UgaXMgYSBwaHlzaWNhbCBsYW5kaW5nIHBvaW50IG9mIGNvbnRlbnQgd2hlbiBhIHVzZXIgbmF2aWdhdGVzIGluIHRoZSBhcHAuXG4gKi9cbmV4cG9ydCBjbGFzcyBQYWdlIHtcblxuXHQvKipcblx0ICogQSBuYXZpZ2F0ZSBmdW5jdGlvbiBmb3IgaW1wZXJhdGl2ZSBuYWdpdmdhdGlvbiBldmVudHMgXCJpbnNpZGVcIiBvdXIgYXBwbGljYXRpb24uXG5cdCAqIEBwYXJhbSAge1N0cmluZ30gdXJsICAgICAgICAgdGhlIHJlbGF0aXZlIFVSTCB0byBuYXZpZ2F0ZSB0b1xuXHQgKiBAcGFyYW0gIHtPYmplY3R9IHF1ZXJ5UGFyYW1zIGEgbWFwIG9mIHF1ZXJ5IHBhcmFtZXRlcnMgdG8gYXBwZW5kIHRvIHRoZSBVUkxcblx0ICogQHBhcmFtICB7T2JqZWN0fSBwYXRoUGFyYW1zICBhcnJheSBvZiBwYXRoIHN0cmluZ3MgdG8gYXBwZW5kIHRvIHRoZSBVUkxcblx0ICogQHBhcmFtICB7Ym9vbGVhbn0gbmV3V2luICAgICAgdHJ1ZSB0byBvcGVuIGluIGEgbmV3IGJyb3dzZXIgd2luZG93XG5cdCAqIEByZXR1cm4ge251bGx9XG5cdCAqL1xuXHRuYXYoIHVybCwgcXVlcnlQYXJhbXMsIHBhdGhQYXJhbXMsIG5ld1dpbiApIHtcblx0XHRsZXQgdSA9IHVybCxcblx0XHRcdHBMZW4gPSBwYXRoUGFyYW1zID8gcGF0aFBhcmFtcy5sZW5ndGggOiAwLFxuXHRcdFx0cEtleXMgPSBxdWVyeVBhcmFtcyA/IE9iamVjdC5rZXlzKCBxdWVyeVBhcmFtcyApIDogW10sXG5cdFx0XHRrTGVuID0gcEtleXMubGVuZ3RoO1xuXG5cdFx0aWYgKCBwYXRoUGFyYW1zICkge1xuXHRcdFx0Zm9yICggbGV0IGkgPSAwOyBpIDwgcExlbjsgaSsrICkge1xuXHRcdFx0XHRpZiAoIHBhdGhQYXJhbXNbIGkgXSAhPSBudWxsICYmIHBhdGhQYXJhbXNbIGkgXSAhPSB1bmRlZmluZWQgJiYgcGF0aFBhcmFtc1sgaSBdICE9ICcnIClcblx0XHRcdFx0XHR1ICs9ICcvJyArIGVuY29kZVVSSUNvbXBvbmVudCggcGFyYW1QYXJhbXNbIGkgXSApO1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdGZvciAoIHZhciBpID0gMDsgaSA8IGtMZW47IGkrKyApIHtcblx0XHRcdGlmICggaSA9PSAwIClcblx0XHRcdFx0dSArPSAnPyc7XG5cblx0XHRcdHUgKz0gZW5jb2RlVVJJQ29tcG9uZW50KCBwS2V5c1sgaSBdICkgKyAnPScgKyBlbmNvZGVVUklDb21wb25lbnQoIHF1ZXJ5UGFyYW1zWyBwS2V5c1sgaSBdIF0gKTtcblx0XHR9XG5cblx0XHR3aW5kb3cubG9jYXRpb24uaGFzaCA9IHU7XG5cdH1cblxuXHQvKiogTG9jYWxpemUgYSBzdHJpbmcgaW50byBhIGRpZmZlcmVudCBsYW5ndWFnZSAqL1xuXHRsKCBrZXksIHZhbHVlcyApIHtcblx0XHR2YXIgdiA9IG1lc3NhZ2VzWyB0aGlzLnVzZXIubGFuZyBdWyBrZXkgXTtcblx0XHRyZXR1cm4gdjtcblx0fVxuXG5cdC8qKlxuXHQgKiBUaGUgYmFzZSBwcm9wZXJ0aWVzIG9iamVjdCwgaW4gUG9seW1lciBmb3JtYXQsIHRoYXQgYWxsIFBhZ2VzIGhhdmUgaW4gY29tbW9uXG5cdCAqIEByZXR1cm4ge09iamVjdH0gYSBjb21tb24gc2V0IG9mIHByb3BlcnRpZXMgZm9yIGFsbCBwYWdlc1xuXHQgKi9cblx0c3RhdGljIGdldCBwcm9wZXJ0aWVzKCkge1xuXHRcdHJldHVybiB7XG5cdFx0XHRjdHg6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7XG5cdFx0XHRcdFx0cmV0dXJuIHt9O1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fTtcblx0fVxuXG5cdGdldCB1c2VyKCkge1xuXHRcdHJldHVybiBkZWZhdWx0VXNlcjsgLy8gdG9kbzogbWFrZSBkeW5hbWljXG5cdH1cblxuXHRfZ2V0Rm9ybWF0KCBsb2NhbGUsIGtleSwgaXNEYXRlICkge1xuXHRcdGxldCBmID0gbnVsbDtcblx0XHRpZiAoIGxvY2FsZSAmJiBrZXkgKSB7XG5cdFx0XHRsZXQgbG9jID0gaXNEYXRlID8gZGF0ZUZvcm1hdENhY2hlWyBsb2NhbGUgXSA6IG51bWJlckZvcm1hdENhY2hlWyBsb2NhbGUgXTtcblx0XHRcdGlmICggIWxvYyApIHtcblx0XHRcdFx0bG9jID0ge307XG5cdFx0XHRcdGxldCBjID0gaXNEYXRlID8gZGF0ZUZvcm1hdENhY2hlIDogbnVtYmVyRm9ybWF0Q2FjaGU7XG5cdFx0XHRcdGNbIGxvY2FsZSBdID0gbG9jO1xuXHRcdFx0fVxuXG5cdFx0XHRmID0gbG9jWyBrZXkgXTtcblx0XHRcdGlmICggIWYgKSB7XG5cdFx0XHRcdGYgPSBpc0RhdGUgPyBuZXcgSW50bC5EYXRlVGltZUZvcm1hdCggbG9jYWxlLCBrZXkgKSA6IG5ldyBJbnRsLk51bWJlckZvcm1hdCggbG9jYWxlLCBrZXkgKTtcblx0XHRcdFx0bG9jWyBrZXkgXSA9IGY7XG5cdFx0XHR9XG5cdFx0fVxuXHRcdHJldHVybiBmO1xuXHR9XG5cblx0LyoqXG5cdCAqIEZvcm1hdCBhIGRhdGUgb3IgbnVtYmVyLlxuXHQgKiBAcGFyYW0gIHtPYmplY3R8bnVtYmVyfSB2YWx1ZSAgIHRoZSBEYXRlIG9iamVjdCBvciBudW1iZXIgdmFsdWUgKGZsb2F0IG9yIGludGVnZXIpXG5cdCAqIEBwYXJhbSAge29iamVjdH0gb3B0aW9ucyB0aGUgb3B0aW9ucyBvYmplY3QgdG8gcGFzcyBpbnRvIEludGwuRGF0ZVRpbWVGb3JtYXQgb3IgSW50bC5OdW1iZXJGb3JtYXQgY29uc3RydWN0b3Jcblx0ICogQHJldHVybiB7c3RyaW5nfSAgICAgICAgIHRoZSBmb3JtYXRlZCBzdHJpbmdcblx0ICovXG5cdGZvcm1hdCggdmFsdWUsIG9wdGlvbnMgKSB7XG5cdFx0bGV0IHYgPSAnJyxcblx0XHRcdG9wdHMgPSBvcHRpb25zIHx8IHt9O1xuXG5cdFx0aWYgKCB2YWx1ZSB8fCB2YWx1ZSA9PSAwICkge1xuXHRcdFx0aWYgKCB2YWx1ZSBpbnN0YW5jZW9mIERhdGUgfHwgb3B0cy5kYXRlICkge1xuXHRcdFx0XHRsZXQgZm10ID0gdGhpcy5fZ2V0Rm9ybWF0KCB0aGlzLnVzZXIubG9jYWxlLCBvcHRzLCB0cnVlICk7XG5cdFx0XHRcdGlmICggdmFsdWUgaW5zdGFuY2VvZiBEYXRlICkge1xuXHRcdFx0XHRcdHYgPSBmbXQuZm9ybWF0KCB2YWx1ZSApO1xuXHRcdFx0XHR9IGVsc2UgaWYgKCB0eXBlb2YgdmFsdWUgPT0gJ251bWJlcicgKSB7XG5cdFx0XHRcdFx0diA9IGZtdC5mb3JtYXQoIG5ldyBEYXRlKCB2YWx1ZSApICk7XG5cdFx0XHRcdH0gZWxzZSBpZiAoIHR5cGVvZiB2YWx1ZSA9PT0gJ3N0cmluZycgKSB7XG5cdFx0XHRcdFx0bGV0IG52ID0gcGFyc2VJbnQoIHZhbHVlICk7XG5cdFx0XHRcdFx0aWYgKCBudiAhPSAnTmFOJyApIHtcblx0XHRcdFx0XHRcdHYgPSBmbXQuZm9ybWF0KCBuZXcgRGF0ZSggbnYgKSApO1xuXHRcdFx0XHRcdH0gZWxzZSB7XG5cdFx0XHRcdFx0XHQvLyB0b2RvOiBwYXJzZSBzdHJpbmcgZGF0ZT9cblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH0gZWxzZSB7XG5cdFx0XHRcdGxldCBmbXQgPSB0aGlzLl9nZXRGb3JtYXQoIHRoaXMudXNlci5sb2NhbGUsIG9wdHMsIGZhbHNlICk7XG5cdFx0XHRcdHYgPSBmbXQuZm9ybWF0KCB2YWx1ZSApO1xuXHRcdFx0fVxuXHRcdH1cblx0XHRyZXR1cm4gdjtcblx0fVxufVxuXG4vLyBleHBvc2UgYW4gaW5zdGFuY2Ugb2YgUGFnZSBhcyBnbG9iYWwgb2JqZWN0IHNvIGl0IGNhbiBiZSB1c2VkIGFzIGEgUG9seW1lciBiZWhhdmlvcnNcbi8vIFBvbHltZXIgZG9lc24ndCBjcmVhdGUgaW5zdGFuY2VzIG9mIEVTNiBjbGFzcywganVzdCByZWd1bGFyIEVTNSBvYmplY3RzIDooXG5zYi5jb21tb24uY29yZS5QYWdlID0gUGFnZS5wcm90b3R5cGU7XG4iXX0=
"use strict";

System.register("common/l10n/labels_en.js", [], function (_export, _context) {
  var LABELS;
  return {
    setters: [],
    execute: function () {
      _export("LABELS", LABELS = { "Yes": "Yes", "Delete": "Delete", "New": "New", "Recently Viewed": "Recently Viewed", "Product Selection": "Product Selection" });

      _export("LABELS", LABELS);
    }
  };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImxhYmVsc19lbi5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7O3dCQUFhLFNBQVMsRUFBQyxPQUFNLEtBQU4sRUFBWSxVQUFTLFFBQVQsRUFBa0IsT0FBTSxLQUFOLEVBQVksbUJBQWtCLGlCQUFsQixFQUFvQyxxQkFBb0IsbUJBQXBCIiwiZmlsZSI6ImxhYmVsc19lbi5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjb25zdCBMQUJFTFMgPSB7XCJZZXNcIjpcIlllc1wiLFwiRGVsZXRlXCI6XCJEZWxldGVcIixcIk5ld1wiOlwiTmV3XCIsXCJSZWNlbnRseSBWaWV3ZWRcIjpcIlJlY2VudGx5IFZpZXdlZFwiLFwiUHJvZHVjdCBTZWxlY3Rpb25cIjpcIlByb2R1Y3QgU2VsZWN0aW9uXCJ9OyJdfQ==
'use strict';

System.register('common/oauth/OAuth.js', ['common/oauth/oauth.local.js'], function (_export, _context) {
    var OAUTH_KEY, OAUTH_SECRET, _createClass, oauth2, OAuth;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [function (_commonOauthOauthLocalJs) {
            OAUTH_KEY = _commonOauthOauthLocalJs.OAUTH_KEY;
            OAUTH_SECRET = _commonOauthOauthLocalJs.OAUTH_SECRET;
        }],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            oauth2 = {
                clientId: OAUTH_KEY,
                clientSecret: OAUTH_SECRET,
                redirectUri: 'http://localhost:' + location.port + '/common/oauth/callback',
                proxyUrl: 'https://brick-rest-proxy.herokuapp.com/proxy/'
            };

            _export('OAuth', OAuth = function () {
                function OAuth() {
                    _classCallCheck(this, OAuth);

                    if (!oauth2.clientId || !oauth2.clientSecret) throw Error(this._getNoOAuthClientKeyMessage());

                    var storeTokens = jsforce.browser.Client.prototype._storeTokens.bind(jsforce.browser);
                    jsforce.browser.Client.prototype._storeTokens = function (params) {
                        storeTokens(params);
                        localStorage.setItem(this._prefix + '_refresh_token', params.refresh_token);
                    }.bind(jsforce.browser);

                    var removeTokens = jsforce.browser.Client.prototype._removeTokens.bind(jsforce.browser);
                    jsforce.browser.Client.prototype._removeTokens = function () {
                        removeTokens();
                        localStorage.removeItem(this._prefix + '_refresh_token');
                    }.bind(jsforce.browser);

                    var getTokens = jsforce.browser.Client.prototype._getTokens.bind(jsforce.browser);
                    jsforce.browser.Client.prototype._getTokens = function () {
                        var tokens = getTokens();
                        if (tokens) tokens.refreshToken = localStorage.getItem(this._prefix + '_refresh_token');
                        return tokens;
                    }.bind(jsforce.browser);

                    var isLoggedIn = jsforce.browser.Client.prototype.isLoggedIn.bind(jsforce.browser);
                    jsforce.browser.Client.prototype.isLoggedIn = function () {
                        if (!isLoggedIn()) return false;
                        return this.connection.refreshToken;
                    }.bind(jsforce.browser);

                    (function () {
                        localStorage.setItem(this._prefix + '_issued_at', new Date().getTime());
                        document.cookie = this._prefix + '_loggedin=true;';
                    }).bind(jsforce.browser)();

                    jsforce.browser.init(oauth2);
                }

                _createClass(OAuth, [{
                    key: 'login',
                    value: function login() {
                        jsforce.browser.login();
                    }
                }, {
                    key: 'getConnection',
                    value: function getConnection() {
                        if (!jsforce.browser.isLoggedIn()) return Promise.reject('Please login before establishing a connection at http://localhost:' + location.port + '/common/oauth');

                        return new Promise(function (resolve, reject) {
                            jsforce.browser.on('connect', function (conn) {
                                var createRequestParams = conn.apex._createRequestParams.bind(conn.apex);
                                conn.apex._createRequestParams = function (method, path, body) {
                                    var params = createRequestParams(method, path, body);
                                    params.headers = params.headers || {};
                                    params.headers['X-Authorization'] = conn.refreshToken;
                                    return params;
                                };
                                resolve(conn);
                            });
                            jsforce.browser.init(oauth2);
                        });
                    }
                }, {
                    key: '_getNoOAuthClientKeyMessage',
                    value: function _getNoOAuthClientKeyMessage() {
                        return 'Need to add a \'.env.json\' file in the CPQ dir whose contents contains the Consumer Key and Consumer Secret of the Steelbrick CPQ Connected App, and then execute a gulp compile.\n' + '{"oauth_key": "<Consumer Key>, "oauth_secret": "<Consumer Secret>"}';
                    }
                }, {
                    key: 'accessToken',
                    set: function set(accessToken) {
                        localStorage.setItem(jsforce.browser._prefix + '_access_token', accessToken);
                    }
                }, {
                    key: 'tokens',
                    get: function get() {
                        return jsforce.browser._getTokens();
                    },
                    set: function set(tokens) {
                        jsforce.browser._storeTokens(tokens);
                    }
                }]);

                return OAuth;
            }());

            _export('OAuth', OAuth);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,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Q1QsK0JBQU8sUUFBUSxPQUFSLENBQWdCLFVBQWhCLEVBQVAsQ0FEUzs7c0NBSUYsUUFBUTtBQUNmLGdDQUFRLE9BQVIsQ0FBZ0IsWUFBaEIsQ0FBNkIsTUFBN0IsRUFEZTs7Ozt1QkEzRVYiLCJmaWxlIjoiT0F1dGguanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge09BVVRIX0tFWX0gZnJvbSAnY29tbW9uL29hdXRoL29hdXRoLmxvY2FsLmpzJztcbmltcG9ydCB7T0FVVEhfU0VDUkVUfSBmcm9tICdjb21tb24vb2F1dGgvb2F1dGgubG9jYWwuanMnO1xuXG4gICAgbGV0IG9hdXRoMiA9IHtcbiAgICAgICAgY2xpZW50SWQgOiBPQVVUSF9LRVksXG4gICAgICAgIGNsaWVudFNlY3JldDogT0FVVEhfU0VDUkVULFxuICAgICAgICByZWRpcmVjdFVyaTogJ2h0dHA6Ly9sb2NhbGhvc3Q6JyArIGxvY2F0aW9uLnBvcnQgKyAnL2NvbW1vbi9vYXV0aC9jYWxsYmFjaycsXG4gICAgICAgIHByb3h5VXJsOiAnaHR0cHM6Ly9icmljay1yZXN0LXByb3h5Lmhlcm9rdWFwcC5jb20vcHJveHkvJ1xuICAgIH07XG5cbmV4cG9ydCBjbGFzcyBPQXV0aCB7XG5cbiAgICBjb25zdHJ1Y3RvcigpIHtcbiAgICAgICAgaWYoIW9hdXRoMi5jbGllbnRJZCB8fCAhb2F1dGgyLmNsaWVudFNlY3JldClcbiAgICAgICAgICAgIHRocm93IEVycm9yKHRoaXMuX2dldE5vT0F1dGhDbGllbnRLZXlNZXNzYWdlKCkpO1xuXG4gICAgICAgIC8vIEJlbG93IHdlIG92ZXJyaWRlIGpzZm9yY2UuYnJvd3NlciBmdW5jdGlvbnMgYXJvdW5kIHRva2VuIG1hbmFnZW1lbnQgdG8gaW5jbHVkZSB0aGUgcmVmcmVzaCB0b2tlblxuICAgICAgICB2YXIgc3RvcmVUb2tlbnMgPSBqc2ZvcmNlLmJyb3dzZXIuQ2xpZW50LnByb3RvdHlwZS5fc3RvcmVUb2tlbnMuYmluZChqc2ZvcmNlLmJyb3dzZXIpO1xuICAgICAgICBqc2ZvcmNlLmJyb3dzZXIuQ2xpZW50LnByb3RvdHlwZS5fc3RvcmVUb2tlbnMgPSBmdW5jdGlvbihwYXJhbXMpIHtcbiAgICAgICAgICAgIHN0b3JlVG9rZW5zKHBhcmFtcyk7XG4gICAgICAgICAgICBsb2NhbFN0b3JhZ2Uuc2V0SXRlbSh0aGlzLl9wcmVmaXggKyAnX3JlZnJlc2hfdG9rZW4nLCBwYXJhbXMucmVmcmVzaF90b2tlbik7XG4gICAgICAgIH0uYmluZChqc2ZvcmNlLmJyb3dzZXIpO1xuXG4gICAgICAgIHZhciByZW1vdmVUb2tlbnMgPSBqc2ZvcmNlLmJyb3dzZXIuQ2xpZW50LnByb3RvdHlwZS5fcmVtb3ZlVG9rZW5zLmJpbmQoanNmb3JjZS5icm93c2VyKTtcbiAgICAgICAganNmb3JjZS5icm93c2VyLkNsaWVudC5wcm90b3R5cGUuX3JlbW92ZVRva2VucyA9IGZ1bmN0aW9uKCkge1xuICAgICAgICAgICAgcmVtb3ZlVG9rZW5zKCk7XG4gICAgICAgICAgICBsb2NhbFN0b3JhZ2UucmVtb3ZlSXRlbSh0aGlzLl9wcmVmaXggKyAnX3JlZnJlc2hfdG9rZW4nKTtcbiAgICAgICAgfS5iaW5kKGpzZm9yY2UuYnJvd3Nlcik7XG5cbiAgICAgICAgdmFyIGdldFRva2VucyA9IGpzZm9yY2UuYnJvd3Nlci5DbGllbnQucHJvdG90eXBlLl9nZXRUb2tlbnMuYmluZChqc2ZvcmNlLmJyb3dzZXIpO1xuICAgICAgICBqc2ZvcmNlLmJyb3dzZXIuQ2xpZW50LnByb3RvdHlwZS5fZ2V0VG9rZW5zID0gZnVuY3Rpb24oKSB7XG4gICAgICAgICAgICB2YXIgdG9rZW5zID0gZ2V0VG9rZW5zKCk7XG4gICAgICAgICAgICBpZih0b2tlbnMpXG4gICAgICAgICAgICAgICAgdG9rZW5zLnJlZnJlc2hUb2tlbiA9IGxvY2FsU3RvcmFnZS5nZXRJdGVtKHRoaXMuX3ByZWZpeCArICdfcmVmcmVzaF90b2tlbicpO1xuICAgICAgICAgICAgcmV0dXJuIHRva2VucztcbiAgICAgICAgfS5iaW5kKGpzZm9yY2UuYnJvd3Nlcik7XG5cbiAgICAgICAgdmFyIGlzTG9nZ2VkSW4gPSBqc2ZvcmNlLmJyb3dzZXIuQ2xpZW50LnByb3RvdHlwZS5pc0xvZ2dlZEluLmJpbmQoanNmb3JjZS5icm93c2VyKTtcbiAgICAgICAganNmb3JjZS5icm93c2VyLkNsaWVudC5wcm90b3R5cGUuaXNMb2dnZWRJbiA9IGZ1bmN0aW9uKCkge1xuICAgICAgICAgICAgaWYoIWlzTG9nZ2VkSW4oKSlcbiAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7XG4gICAgICAgICAgIHJldHVybiB0aGlzLmNvbm5lY3Rpb24ucmVmcmVzaFRva2VuO1xuICAgICAgICB9LmJpbmQoanNmb3JjZS5icm93c2VyKTtcblxuICAgICAgICAvLyB1cGRhdGUgdGhlIGlzc3VlZCBhdCB0byBjdXJyZW50IGRhdGUgc2luY2Ugd2UgZG9uJ3QgbmVlZCB0byByZWF1dGhvcml6ZSBzaW5jZSB3ZSBoYXZlIGEgbmV2ZXIgZXhwaXJlIHJlZnJlc2ggdG9rZW5cbiAgICAgICAgKGZ1bmN0aW9uKCkge1xuICAgICAgICAgICAgIGxvY2FsU3RvcmFnZS5zZXRJdGVtKHRoaXMuX3ByZWZpeCArICdfaXNzdWVkX2F0JywgbmV3IERhdGUoKS5nZXRUaW1lKCkpO1xuICAgICAgICAgICAgIGRvY3VtZW50LmNvb2tpZSA9IHRoaXMuX3ByZWZpeCArICdfbG9nZ2VkaW49dHJ1ZTsnO1xuICAgICAgICB9KS5iaW5kKGpzZm9yY2UuYnJvd3NlcikoKTtcblxuICAgICAgICAvLyBpbml0aWFsaXplIHdpdGggdGhlIE9BVVRIIGNyZWRlbnRpYWxzXG4gICAgICAgIGpzZm9yY2UuYnJvd3Nlci5pbml0KG9hdXRoMik7XG4gICAgfVxuXG4gICAgbG9naW4oKSB7XG4gICAgICAgIGpzZm9yY2UuYnJvd3Nlci5sb2dpbigpO1xuICAgIH1cblxuICAgIGdldENvbm5lY3Rpb24oKSB7XG4gICAgICAgIGlmKCFqc2ZvcmNlLmJyb3dzZXIuaXNMb2dnZWRJbigpKVxuICAgICAgICAgICAgcmV0dXJuIFByb21pc2UucmVqZWN0KCdQbGVhc2UgbG9naW4gYmVmb3JlIGVzdGFibGlzaGluZyBhIGNvbm5lY3Rpb24gYXQgaHR0cDovL2xvY2FsaG9zdDonICsgbG9jYXRpb24ucG9ydCArICcvY29tbW9uL29hdXRoJyk7XG5cbiAgICAgICAgcmV0dXJuIG5ldyBQcm9taXNlKGZ1bmN0aW9uKHJlc29sdmUsIHJlamVjdCkge1xuICAgICAgICAgICAganNmb3JjZS5icm93c2VyLm9uKCdjb25uZWN0JywgZnVuY3Rpb24oY29ubikge1xuICAgICAgICAgICAgICAgdmFyIGNyZWF0ZVJlcXVlc3RQYXJhbXMgPSBjb25uLmFwZXguX2NyZWF0ZVJlcXVlc3RQYXJhbXMuYmluZChjb25uLmFwZXgpO1xuICAgICAgICAgICAgICAgY29ubi5hcGV4Ll9jcmVhdGVSZXF1ZXN0UGFyYW1zID0gZnVuY3Rpb24obWV0aG9kLCBwYXRoLCBib2R5KSB7XG4gICAgICAgICAgICAgICAgICAgIHZhciBwYXJhbXMgPSBjcmVhdGVSZXF1ZXN0UGFyYW1zKG1ldGhvZCwgcGF0aCwgYm9keSk7XG4gICAgICAgICAgICAgICAgICAgIHBhcmFtcy5oZWFkZXJzID0gcGFyYW1zLmhlYWRlcnMgfHwge307XG4gICAgICAgICAgICAgICAgICAgIHBhcmFtcy5oZWFkZXJzWydYLUF1dGhvcml6YXRpb24nXSA9IGNvbm4ucmVmcmVzaFRva2VuO1xuICAgICAgICAgICAgICAgICAgICByZXR1cm4gcGFyYW1zO1xuICAgICAgICAgICAgICAgfTtcbiAgICAgICAgICAgICAgIHJlc29sdmUoY29ubik7XG4gICAgICAgICAgICB9KTtcbiAgICAgICAgICAgIGpzZm9yY2UuYnJvd3Nlci5pbml0KG9hdXRoMik7XG4gICAgICAgIH0pO1xuICAgIH1cblxuICAgIHNldCBhY2Nlc3NUb2tlbihhY2Nlc3NUb2tlbikge1xuICAgICAgICBsb2NhbFN0b3JhZ2Uuc2V0SXRlbShqc2ZvcmNlLmJyb3dzZXIuX3ByZWZpeCArICdfYWNjZXNzX3Rva2VuJywgYWNjZXNzVG9rZW4pO1xuICAgIH1cblxuICAgIGdldCB0b2tlbnMoKSB7XG4gICAgICAgIHJldHVybiBqc2ZvcmNlLmJyb3dzZXIuX2dldFRva2VucygpO1xuICAgIH1cblxuICAgIHNldCB0b2tlbnModG9rZW5zKSB7XG4gICAgICAgIGpzZm9yY2UuYnJvd3Nlci5fc3RvcmVUb2tlbnModG9rZW5zKTtcbiAgICB9XG5cbiAgICBfZ2V0Tm9PQXV0aENsaWVudEtleU1lc3NhZ2UoKSB7XG4gICAgICAgIHJldHVybiAnTmVlZCB0byBhZGQgYSBcXCcuZW52Lmpzb25cXCcgZmlsZSBpbiB0aGUgQ1BRIGRpciB3aG9zZSBjb250ZW50cyBjb250YWlucyB0aGUgQ29uc3VtZXIgS2V5IGFuZCBDb25zdW1lciBTZWNyZXQgb2YgdGhlIFN0ZWVsYnJpY2sgQ1BRIENvbm5lY3RlZCBBcHAsIGFuZCB0aGVuIGV4ZWN1dGUgYSBndWxwIGNvbXBpbGUuXFxuJyArXG4gICAgICAgICAgICAgICAgJ3tcIm9hdXRoX2tleVwiOiBcIjxDb25zdW1lciBLZXk+LCBcIm9hdXRoX3NlY3JldFwiOiBcIjxDb25zdW1lciBTZWNyZXQ+XCJ9J1xuICAgIH1cbn0iXX0=
'use strict';

System.register('common/oauth/oauth.local.js', [], function (_export, _context) {
  var OAUTH_KEY, OAUTH_SECRET;
  return {
    setters: [],
    execute: function () {
      _export('OAUTH_KEY', OAUTH_KEY = '3MVG9yZ.WNe6byQBf3KaROSnAINMpMlCRNXj2YJ3NfuFlQ3W5MNuK89Wldb3FsiUK3kdxgMStp.7aOMpdeThJ');

      _export('OAUTH_KEY', OAUTH_KEY);

      _export('OAUTH_SECRET', OAUTH_SECRET = '8653803322759571172');

      _export('OAUTH_SECRET', OAUTH_SECRET);
    }
  };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIm9hdXRoLmxvY2FsLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7MkJBQWEsWUFBWTs7Ozs4QkFDWixlQUFlIiwiZmlsZSI6Im9hdXRoLmxvY2FsLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNvbnN0IE9BVVRIX0tFWSA9ICczTVZHOXlaLldOZTZieVFCZjNLYVJPU25BSU5NcE1sQ1JOWGoyWUozTmZ1RmxRM1c1TU51Szg5V2xkYjNGc2lVSzNrZHhnTVN0cC43YU9NcGRlVGhKJztcbmV4cG9ydCBjb25zdCBPQVVUSF9TRUNSRVQgPSAnODY1MzgwMzMyMjc1OTU3MTE3Mic7Il19
"use strict";

System.register("dealdesk/sb-dd-line-details/DealDeskLineDetails.js", [], function (_export, _context) {
	var _createClass, DealDeskLineDetails;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export("DealDeskLineDetails", DealDeskLineDetails = function () {
				function DealDeskLineDetails() {
					_classCallCheck(this, DealDeskLineDetails);
				}

				_createClass(DealDeskLineDetails, [{
					key: "beforeRegister",
					value: function beforeRegister() {
						this.is = 'sb-dd-line-details';
						this.properties = {
							lineFields: {
								type: Array
							},
							childRecords: {
								type: Object
							},
							customIconUrls: {
								type: Object
							},
							lineArrayByStatus: {
								type: Object
							},
							model: Object,
							statuses: {
								type: Object,
								value: {
									"Pending": "penl",
									"Approved": "appl",
									"Rejected": "rejl",
									"Recalled": "recl"
								}
							},
							statusField: {
								type: String
							},
							actionsDisplayed: {
								type: Boolean
							}
						};
					}
				}, {
					key: "ready",
					value: function ready() {
						this.statusField = this.prefix ? this.prefix + '__ApprovalStatus__c' : 'ApprovalStatus__c';
						this.addEventListener('approveLine', this.approveLine);
						this.addEventListener('rejectLine', this.rejectLine);
						this.addEventListener('updateLine', this.updateLine);
						this.addEventListener('sortLines', this.sortLines);
						this.addEventListener('selectTableLine', this.selectTableLine);
					}
				}, {
					key: "setUp",
					value: function setUp() {
						this.lineArrayByStatus = new Object();
						var _iteratorNormalCompletion = true;
						var _didIteratorError = false;
						var _iteratorError = undefined;

						try {
							for (var _iterator = Object.keys(this.statuses)[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
								var status = _step.value;

								this.lineArrayByStatus[status] = new Array();
							}
						} catch (err) {
							_didIteratorError = true;
							_iteratorError = err;
						} finally {
							try {
								if (!_iteratorNormalCompletion && _iterator.return) {
									_iterator.return();
								}
							} finally {
								if (_didIteratorError) {
									throw _iteratorError;
								}
							}
						}

						if (!this.childRecords[0][this.statusField]) {
							this.statusField = 'ApprovalStatus__c';
						}
						var numChildren = this.childRecords.length;
						for (var i = 0; i < numChildren; i++) {
							var status = this.childRecords[i][this.statusField];
							this.lineArrayByStatus[status].push(this.childRecords[i]);
						}
						this.updateTables();
					}
				}, {
					key: "changeStatus",
					value: function changeStatus(line, currentStatus, targetStatus, ind, classes) {
						var currentId = this.statuses[currentStatus];
						var targetId = this.statuses[targetStatus];

						line[this.statusField] = targetStatus;
						this.$[currentId].splice("lines", ind, 1);
						this.$[currentId].len = this.lineArrayByStatus[currentStatus].length;
						this.$[targetId].push("lines", line);
						this.$[targetId].len = this.lineArrayByStatus[targetStatus].length;
						if (classes.contains('selected')) {
							delete line.selected;
							this.fire('selectFirst');
							this.$[targetId].updateLines();
							if (this.lineArrayByStatus['Pending'].length > 0) {
								this.$.penl.$.childLines._instances[0]._children[1].classList.add('selected');
							}
						} else {
							this.$[targetId].updateLines();
						}
					}
				}, {
					key: "approveLine",
					value: function approveLine(e) {
						var line = e.detail.line;
						var statusName = e.detail.line[this.statusField];
						var ind = e.detail.index;
						var classes = e.detail.classes;
						this.changeStatus(line, statusName, "Approved", ind, classes);
					}
				}, {
					key: "rejectLine",
					value: function rejectLine(e) {
						var line = e.detail.line;
						var statusName = e.detail.line[this.statusField];
						var ind = e.detail.index;
						var classes = e.detail.classes;
						this.changeStatus(line, statusName, "Rejected", ind, classes);
					}
				}, {
					key: "updateLine",
					value: function updateLine(e) {
						var line = e.detail.line;
						var field = e.detail.field;
						var value = e.detail.value;
						line[field.name] = value;
					}
				}, {
					key: "sortLines",
					value: function sortLines(e) {
						var lines = this.lineArrayByStatus[e.detail.status];
						lines.sort(function (a, b) {
							var valueA = undefined,
							    valueB = undefined,
							    truncLabel = undefined;
							if (e.detail.headerClassList.contains('asc')) {
								if (e.detail.field.name.substring(e.detail.field.name.length - 2) == "Id" && e.detail.field.type == "REFERENCE") {
									truncLabel = e.detail.field.name.substring(0, e.detail.field.name.length - 2);
									valueA = a[truncLabel].Name;
									valueB = b[truncLabel].Name;
								} else {
									valueA = a[e.detail.field.name];
									valueB = b[e.detail.field.name];
								}
							} else {
								if (e.detail.field.name.substring(e.detail.field.name.length - 2) == "Id" && e.detail.field.type == "REFERENCE") {
									truncLabel = e.detail.field.name.substring(0, e.detail.field.name.length - 2);
									valueA = b[truncLabel].Name;
									valueB = a[truncLabel].Name;
								} else {
									valueA = b[e.detail.field.name];
									valueB = a[e.detail.field.name];
								}
							}
							if (!valueA && !valueB) return 0;else if (!valueA) return -1;else if (!valueB) return 1;else if (valueA < valueB) return -1;else if (valueA > valueB) return 1;else return 0;
						});
					}
				}, {
					key: "updateTables",
					value: function updateTables() {
						var _iteratorNormalCompletion2 = true;
						var _didIteratorError2 = false;
						var _iteratorError2 = undefined;

						try {
							for (var _iterator2 = Object.keys(this.statuses)[Symbol.iterator](), _step2; !(_iteratorNormalCompletion2 = (_step2 = _iterator2.next()).done); _iteratorNormalCompletion2 = true) {
								var status = _step2.value;

								var id = this.statuses[status];
								if (this.lineArrayByStatus[status] != null) {
									this.$[id].lines = this.lineArrayByStatus[status];
									this.$[id].fields = this.lineFields;
									this.$[id].customIconUrls = this.customIconUrls;
									this.$[id].len = this.$[id].lines.length;
								}
							}
						} catch (err) {
							_didIteratorError2 = true;
							_iteratorError2 = err;
						} finally {
							try {
								if (!_iteratorNormalCompletion2 && _iterator2.return) {
									_iterator2.return();
								}
							} finally {
								if (_didIteratorError2) {
									throw _iteratorError2;
								}
							}
						}
					}
				}, {
					key: "selectTableLine",
					value: function selectTableLine(e) {
						this.fire('selectPageLine', {
							line: e.detail.line,
							uid: e.detail.uid,
							table: e.detail.table,
							index: e.detail.index,
							htmlLine: e.detail.htmlLine
						});
					}
				}, {
					key: "observers",
					get: function get() {
						return ['setUp(prefix, lineFields, childRecords, customIconUrls, model)'];
					}
				}]);

				return DealDeskLineDetails;
			}());

			_export("DealDeskLineDetails", DealDeskLineDetails);

			Polymer(DealDeskLineDetails);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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OztBQXVLYixXQUFTLG1CQUFUIiwiZmlsZSI6IkRlYWxEZXNrTGluZURldGFpbHMuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgRGVhbERlc2tMaW5lRGV0YWlscyB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1kZC1saW5lLWRldGFpbHMnO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdGxpbmVGaWVsZHM6IHtcblx0XHRcdFx0dHlwZTogQXJyYXlcblx0XHRcdH0sXG5cdFx0XHRjaGlsZFJlY29yZHM6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0XG5cdFx0XHR9LFxuXHRcdFx0Y3VzdG9tSWNvblVybHM6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0XG5cdFx0XHR9LFxuXHRcdFx0bGluZUFycmF5QnlTdGF0dXM6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0XG5cdFx0XHR9LFxuXHRcdFx0bW9kZWw6IE9iamVjdCxcblx0XHRcdHN0YXR1c2VzOiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0dmFsdWU6IHtcblx0XHRcdFx0XHRcIlBlbmRpbmdcIiA6IFwicGVubFwiICxcblx0XHRcdFx0XHRcIkFwcHJvdmVkXCI6IFwiYXBwbFwiLFxuXHRcdFx0XHRcdFwiUmVqZWN0ZWRcIjogXCJyZWpsXCIsXG5cdFx0XHRcdFx0XCJSZWNhbGxlZFwiOiBcInJlY2xcIlxuXHRcdFx0XHR9XG5cdFx0XHR9LFxuXHRcdFx0c3RhdHVzRmllbGQ6IHtcblx0XHRcdFx0dHlwZTogU3RyaW5nXG5cdFx0XHR9LFxuXHRcdFx0YWN0aW9uc0Rpc3BsYXllZDoge1xuXHRcdFx0XHR0eXBlOiBCb29sZWFuXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Z2V0IG9ic2VydmVycygpIHtcblx0XHRyZXR1cm5bJ3NldFVwKHByZWZpeCwgbGluZUZpZWxkcywgY2hpbGRSZWNvcmRzLCBjdXN0b21JY29uVXJscywgbW9kZWwpJ107XG5cdH1cblxuXHRyZWFkeSgpIHtcblx0XHR0aGlzLnN0YXR1c0ZpZWxkID0gdGhpcy5wcmVmaXggPyB0aGlzLnByZWZpeCArICdfX0FwcHJvdmFsU3RhdHVzX19jJyA6ICdBcHByb3ZhbFN0YXR1c19fYyc7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKCdhcHByb3ZlTGluZScsIHRoaXMuYXBwcm92ZUxpbmUpO1xuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcigncmVqZWN0TGluZScsIHRoaXMucmVqZWN0TGluZSk7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKCd1cGRhdGVMaW5lJywgdGhpcy51cGRhdGVMaW5lKTtcblx0XHR0aGlzLmFkZEV2ZW50TGlzdGVuZXIoJ3NvcnRMaW5lcycsIHRoaXMuc29ydExpbmVzKTtcblx0XHR0aGlzLmFkZEV2ZW50TGlzdGVuZXIoJ3NlbGVjdFRhYmxlTGluZScsIHRoaXMuc2VsZWN0VGFibGVMaW5lKTtcblx0fVxuXG5cdHNldFVwKCkge1xuXHRcdHRoaXMubGluZUFycmF5QnlTdGF0dXMgPSBuZXcgT2JqZWN0KCk7XG5cdFx0Zm9yIChsZXQgc3RhdHVzIG9mIE9iamVjdC5rZXlzKHRoaXMuc3RhdHVzZXMpKSB7XG5cdFx0XHR0aGlzLmxpbmVBcnJheUJ5U3RhdHVzW3N0YXR1c10gPSBuZXcgQXJyYXkoKTtcblx0XHR9XG5cdFx0aWYgKCF0aGlzLmNoaWxkUmVjb3Jkc1swXVt0aGlzLnN0YXR1c0ZpZWxkXSkge1xuXHRcdFx0dGhpcy5zdGF0dXNGaWVsZCA9ICdBcHByb3ZhbFN0YXR1c19fYyc7XG5cdFx0fVxuXHRcdGxldCBudW1DaGlsZHJlbiA9IHRoaXMuY2hpbGRSZWNvcmRzLmxlbmd0aDtcblx0XHRmb3IgKGxldCBpID0gMDsgaSA8IG51bUNoaWxkcmVuOyBpKyspIHtcblx0XHRcdGxldCBzdGF0dXMgPSB0aGlzLmNoaWxkUmVjb3Jkc1tpXVt0aGlzLnN0YXR1c0ZpZWxkXTtcblx0XHRcdHRoaXMubGluZUFycmF5QnlTdGF0dXNbc3RhdHVzXS5wdXNoKHRoaXMuY2hpbGRSZWNvcmRzW2ldKTtcblx0XHR9XG5cdFx0dGhpcy51cGRhdGVUYWJsZXMoKTtcblx0fVxuXG5cdGNoYW5nZVN0YXR1cyhsaW5lLCBjdXJyZW50U3RhdHVzLCB0YXJnZXRTdGF0dXMsIGluZCwgY2xhc3Nlcykge1xuXHRcdGxldCBjdXJyZW50SWQgPSB0aGlzLnN0YXR1c2VzW2N1cnJlbnRTdGF0dXNdO1xuXHRcdGxldCB0YXJnZXRJZCA9IHRoaXMuc3RhdHVzZXNbdGFyZ2V0U3RhdHVzXTtcblxuXHRcdGxpbmVbdGhpcy5zdGF0dXNGaWVsZF0gPSB0YXJnZXRTdGF0dXM7XG5cdFx0dGhpcy4kW2N1cnJlbnRJZF0uc3BsaWNlKFwibGluZXNcIiwgaW5kLCAxKTtcblx0XHR0aGlzLiRbY3VycmVudElkXS5sZW4gPSB0aGlzLmxpbmVBcnJheUJ5U3RhdHVzW2N1cnJlbnRTdGF0dXNdLmxlbmd0aDtcblx0XHR0aGlzLiRbdGFyZ2V0SWRdLnB1c2goXCJsaW5lc1wiLCBsaW5lKTtcblx0XHR0aGlzLiRbdGFyZ2V0SWRdLmxlbiA9IHRoaXMubGluZUFycmF5QnlTdGF0dXNbdGFyZ2V0U3RhdHVzXS5sZW5ndGg7XG5cdFx0aWYoY2xhc3Nlcy5jb250YWlucygnc2VsZWN0ZWQnKSl7XG5cdFx0XHRkZWxldGUgbGluZS5zZWxlY3RlZDtcblx0XHRcdHRoaXMuZmlyZSgnc2VsZWN0Rmlyc3QnKTtcblx0XHRcdHRoaXMuJFt0YXJnZXRJZF0udXBkYXRlTGluZXMoKTtcblx0XHRcdGlmKHRoaXMubGluZUFycmF5QnlTdGF0dXNbJ1BlbmRpbmcnXS5sZW5ndGggPiAwKSB7XG5cdFx0XHRcdHRoaXMuJC5wZW5sLiQuY2hpbGRMaW5lcy5faW5zdGFuY2VzWzBdLl9jaGlsZHJlblsxXS5jbGFzc0xpc3QuYWRkKCdzZWxlY3RlZCcpO1xuXHRcdFx0fVxuXHRcdH0gZWxzZSB7XG5cdFx0XHR0aGlzLiRbdGFyZ2V0SWRdLnVwZGF0ZUxpbmVzKCk7XG5cdFx0fVxuXHRcdC8vSWYgbW92aW5nIGEgc2VsZWN0ZWQgbGluZSwgY2FsbCBmdW5jdGlvbiB0aGF0IHdpbGwgYWRkIGNsYXNzIHRvIG5ldyBsaW5lXG5cblx0fVxuXG5cdGFwcHJvdmVMaW5lKGUpIHtcblx0XHRsZXQgbGluZSA9IGUuZGV0YWlsLmxpbmU7XG5cdFx0bGV0IHN0YXR1c05hbWUgPSBlLmRldGFpbC5saW5lW3RoaXMuc3RhdHVzRmllbGRdO1xuXHRcdGxldCBpbmQgPSBlLmRldGFpbC5pbmRleDtcblx0XHRsZXQgY2xhc3NlcyA9IGUuZGV0YWlsLmNsYXNzZXM7XG5cdFx0dGhpcy5jaGFuZ2VTdGF0dXMobGluZSwgc3RhdHVzTmFtZSwgXCJBcHByb3ZlZFwiLCBpbmQsIGNsYXNzZXMpO1xuXHR9XG5cblx0cmVqZWN0TGluZShlKSB7XG5cdFx0bGV0IGxpbmUgPSBlLmRldGFpbC5saW5lO1xuXHRcdGxldCBzdGF0dXNOYW1lID0gZS5kZXRhaWwubGluZVt0aGlzLnN0YXR1c0ZpZWxkXTtcblx0XHRsZXQgaW5kID0gZS5kZXRhaWwuaW5kZXg7XG5cdFx0bGV0IGNsYXNzZXMgPSBlLmRldGFpbC5jbGFzc2VzO1xuXHRcdHRoaXMuY2hhbmdlU3RhdHVzKGxpbmUsIHN0YXR1c05hbWUsIFwiUmVqZWN0ZWRcIiwgaW5kLCBjbGFzc2VzKTtcblx0fVxuXG5cdHVwZGF0ZUxpbmUoZSkge1xuXHRcdGxldCBsaW5lID0gZS5kZXRhaWwubGluZTtcblx0XHRsZXQgZmllbGQgPSBlLmRldGFpbC5maWVsZDtcblx0XHRsZXQgdmFsdWUgPSBlLmRldGFpbC52YWx1ZTtcblx0XHRsaW5lW2ZpZWxkLm5hbWVdID0gdmFsdWU7XG5cdH1cblxuXHRzb3J0TGluZXMoZSkge1xuXHRcdHZhciBsaW5lcyA9IHRoaXMubGluZUFycmF5QnlTdGF0dXNbZS5kZXRhaWwuc3RhdHVzXTtcblx0XHRsaW5lcy5zb3J0KGZ1bmN0aW9uKGEsIGIpIHtcblx0XHRcdGxldCB2YWx1ZUEsIHZhbHVlQiwgdHJ1bmNMYWJlbDtcblx0XHRcdGlmIChlLmRldGFpbC5oZWFkZXJDbGFzc0xpc3QuY29udGFpbnMoJ2FzYycpKSB7XG5cdFx0XHRcdGlmIChlLmRldGFpbC5maWVsZC5uYW1lLnN1YnN0cmluZyhlLmRldGFpbC5maWVsZC5uYW1lLmxlbmd0aC0yKSA9PSBcIklkXCJcblx0XHRcdFx0XHQmJiBlLmRldGFpbC5maWVsZC50eXBlID09IFwiUkVGRVJFTkNFXCIpIHtcblx0XHRcdFx0XHR0cnVuY0xhYmVsID0gZS5kZXRhaWwuZmllbGQubmFtZS5zdWJzdHJpbmcoMCwgZS5kZXRhaWwuZmllbGQubmFtZS5sZW5ndGgtMik7XG5cdFx0XHRcdFx0dmFsdWVBID0gYVt0cnVuY0xhYmVsXS5OYW1lO1xuXHRcdFx0XHRcdHZhbHVlQiA9IGJbdHJ1bmNMYWJlbF0uTmFtZTtcblx0XHRcdFx0fSBlbHNlIHtcblx0XHRcdFx0XHR2YWx1ZUEgPSBhW2UuZGV0YWlsLmZpZWxkLm5hbWVdO1xuXHRcdFx0XHRcdHZhbHVlQiA9IGJbZS5kZXRhaWwuZmllbGQubmFtZV07XG5cdFx0XHRcdH1cblx0XHRcdH0gZWxzZSB7XG5cdFx0XHRcdGlmIChlLmRldGFpbC5maWVsZC5uYW1lLnN1YnN0cmluZyhlLmRldGFpbC5maWVsZC5uYW1lLmxlbmd0aC0yKSA9PSBcIklkXCJcblx0XHRcdFx0XHQmJiBlLmRldGFpbC5maWVsZC50eXBlID09IFwiUkVGRVJFTkNFXCIpIHtcblx0XHRcdFx0XHR0cnVuY0xhYmVsID0gZS5kZXRhaWwuZmllbGQubmFtZS5zdWJzdHJpbmcoMCwgZS5kZXRhaWwuZmllbGQubmFtZS5sZW5ndGgtMik7XG5cdFx0XHRcdFx0dmFsdWVBID0gYlt0cnVuY0xhYmVsXS5OYW1lO1xuXHRcdFx0XHRcdHZhbHVlQiA9IGFbdHJ1bmNMYWJlbF0uTmFtZTtcblx0XHRcdFx0fSBlbHNlIHtcblx0XHRcdFx0XHR2YWx1ZUEgPSBiW2UuZGV0YWlsLmZpZWxkLm5hbWVdO1xuXHRcdFx0XHRcdHZhbHVlQiA9IGFbZS5kZXRhaWwuZmllbGQubmFtZV07XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHRcdGlmICghdmFsdWVBICYmICF2YWx1ZUIpIHJldHVybiAwO1xuXHRcdFx0ZWxzZSBpZiAoIXZhbHVlQSkgcmV0dXJuIC0xO1xuXHRcdFx0ZWxzZSBpZiAoIXZhbHVlQikgcmV0dXJuIDE7XG5cdFx0XHRlbHNlIGlmICh2YWx1ZUEgPCB2YWx1ZUIpIHJldHVybiAtMTtcblx0XHRcdGVsc2UgaWYgKHZhbHVlQSA+IHZhbHVlQikgcmV0dXJuIDE7XG5cdFx0XHRlbHNlIHJldHVybiAwO1xuXHRcdH0pO1xuXHR9XG5cblx0dXBkYXRlVGFibGVzKCkge1xuXHRcdGZvciAobGV0IHN0YXR1cyBvZiBPYmplY3Qua2V5cyh0aGlzLnN0YXR1c2VzKSkge1xuXHRcdFx0bGV0IGlkID0gdGhpcy5zdGF0dXNlc1tzdGF0dXNdO1xuXHRcdFx0aWYgKHRoaXMubGluZUFycmF5QnlTdGF0dXNbc3RhdHVzXSAhPSBudWxsKSB7XG5cdFx0XHRcdHRoaXMuJFtpZF0ubGluZXMgPSB0aGlzLmxpbmVBcnJheUJ5U3RhdHVzW3N0YXR1c107XG5cdFx0XHRcdHRoaXMuJFtpZF0uZmllbGRzID0gdGhpcy5saW5lRmllbGRzO1xuXHRcdFx0XHR0aGlzLiRbaWRdLmN1c3RvbUljb25VcmxzID0gdGhpcy5jdXN0b21JY29uVXJscztcblx0XHRcdFx0dGhpcy4kW2lkXS5sZW4gPSB0aGlzLiRbaWRdLmxpbmVzLmxlbmd0aDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHRzZWxlY3RUYWJsZUxpbmUoZSkge1xuXHRcdHRoaXMuZmlyZSgnc2VsZWN0UGFnZUxpbmUnLCB7XG5cdFx0XHRsaW5lOiBlLmRldGFpbC5saW5lLFxuXHRcdFx0dWlkOiBlLmRldGFpbC51aWQsXG5cdFx0XHR0YWJsZTogZS5kZXRhaWwudGFibGUsXG5cdFx0XHRpbmRleDogZS5kZXRhaWwuaW5kZXgsXG5cdFx0XHRodG1sTGluZTogZS5kZXRhaWwuaHRtbExpbmVcblx0XHR9KTtcblx0fVxufVxuUG9seW1lciggRGVhbERlc2tMaW5lRGV0YWlscyApO1xuIl19
'use strict';

System.register('dealdesk/sb-dd-line-table/DealDeskLineTable.js', [], function (_export, _context) {
	var _createClass, DealDeskLineTable;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('DealDeskLineTable', DealDeskLineTable = function () {
				function DealDeskLineTable() {
					_classCallCheck(this, DealDeskLineTable);
				}

				_createClass(DealDeskLineTable, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-dd-line-table', this.properties = {
							isEmpty: {
								type: Boolean,
								value: true
							},
							isCollapsed: {
								type: Boolean,
								value: false
							},
							customIconUrls: {
								type: Object
							},
							lines: Array,
							model: Object,
							actionsDisplayed: {
								type: Boolean
							}
						};
					}
				}, {
					key: 'sortLines',
					value: function sortLines(e) {
						var newSort = "";
						var target = null;
						if (e.target.classList.contains('nomod')) {
							target = e.target.parentElement.parentElement;
						} else if (e.target.classList.contains('handle') || e.target.classList.contains('header-text')) {
							target = e.target.parentElement;
						} else {
							target = e.target;
						}
						var headerClassList = target.classList;
						if (headerClassList.contains('asc')) {
							newSort = 'desc';
						} else {
							newSort = 'asc';
						}
						var numChildren = target.parentElement.children.length;
						for (var i = 0; i < numChildren - 1; i++) {
							target.parentElement.children[i].classList.remove('asc');
							target.parentElement.children[i].classList.remove('desc');
						}
						target.classList.add(newSort);
						this.fire('sortLines', {
							status: this.status,
							field: e.model.__data__.field,
							headerClassList: headerClassList
						});
						this.updateLines();
					}
				}, {
					key: 'toggleTableView',
					value: function toggleTableView(e) {
						this.isCollapsed = !this.isCollapsed;
						var tableClassList = e.target.classList;
						var lineCountSpan = e.target.parentElement.getElementsByClassName('line-count')[0];
						if (tableClassList.contains('sf-icon-chevronright')) {
							lineCountSpan.hidden = false;
							tableClassList.remove('sf-icon-chevronright');
							tableClassList.add('sf-icon-chevrondown');
						} else {
							lineCountSpan.hidden = true;
							tableClassList.remove('sf-icon-chevrondown');
							tableClassList.add('sf-icon-chevronright');
						}
						this.updateLines();
					}
				}, {
					key: 'collapseTable',
					value: function collapseTable() {
						return this.isCollapsed;
					}
				}, {
					key: 'updateFieldValue',
					value: function updateFieldValue(e) {
						this.fire('updateLine', {
							line: e.model.__data__.line,
							field: e.model.__data__.field,
							value: e.target.innerHTML
						});
					}
				}, {
					key: 'hideTable',
					value: function hideTable() {
						return this.isEmpty;
					}
				}, {
					key: 'displayTable',
					value: function displayTable() {
						if (this.len == 0) {
							this.isEmpty = true;
						} else {
							this.isEmpty = false;
						}
					}
				}, {
					key: 'approveLine',
					value: function approveLine(e) {
						if (this.id != 'appl' && this.id != 'recl') {
							this.fire('approveLine', {
								line: e.model.__data__.line,
								index: e.model.__data__.index,
								classes: e.target.parentNode.parentNode.classList
							});
							this.displayTable(this.len);
							this.updateLines();
						}
					}
				}, {
					key: 'rejectLine',
					value: function rejectLine(e) {
						if (this.id != 'rejl' && this.id != 'recl') {
							this.fire('rejectLine', {
								line: e.model.__data__.line,
								index: e.model.__data__.index,
								classes: e.target.parentNode.parentNode.classList
							});
							this.displayTable(this.len);
							this.updateLines();
						}
					}
				}, {
					key: 'updateLines',
					value: function updateLines() {
						this.displayTable();
						this.$.childLines.render();
					}
				}, {
					key: 'setApproveIcon',
					value: function setApproveIcon() {
						if (this.id == 'appl' || this.id == 'recl') {
							if (this.customIconUrls.inactiveApproveCustomIconURL != null) return null;else return "icon sf-icon-like inactive";
						} else {
							if (this.customIconUrls.activeApproveCustomIconURL != null) return null;else return "icon sf-icon-like";
						}
					}
				}, {
					key: 'setRejectIcon',
					value: function setRejectIcon() {
						if (this.id == 'rejl' || this.id == 'recl') {
							if (this.customIconUrls.inactiveRejectCustomIconURL != null) return null;else return "icon sf-icon-like flip inactive";
						} else {
							if (this.customIconUrls.activeRejectCustomIconURL != null) return null;else {
								return "icon sf-icon-like flip";
							}
						}
					}
				}, {
					key: 'setCustomApprove',
					value: function setCustomApprove() {
						if (this.id == 'appl' || this.id == 'recl') {
							if (this.customIconUrls.inactiveApproveCustomIconURL == null) return null;else return this.customIconUrls.inactiveApproveCustomIconURL;
						} else {
							if (this.customIconUrls.activeApproveCustomIconURL == null) return null;else return this.customIconUrls.activeApproveCustomIconURL;
						}
					}
				}, {
					key: 'setCustomReject',
					value: function setCustomReject() {
						if (this.id == 'rejl' || this.id == 'recl') {
							if (this.customIconUrls.inactiveRejectCustomIconURL == null) return null;else return this.customIconUrls.inactiveRejectCustomIconURL;
						} else {
							if (this.customIconUrls.activeRejectCustomIconURL == null) return null;else return this.customIconUrls.activeRejectCustomIconURL;
						}
					}
				}, {
					key: 'getColumnSize',
					value: function getColumnSize() {
						if (this.actionsDisplayed) {
							var output = 97 / this.model.displayedLineFields.length;
							return 'width: ' + output + '%;';
						} else {
							var output = 100 / this.model.displayedLineFields.length;
							return 'width: ' + output + '%;';
						}
					}
				}, {
					key: 'selectLine',
					value: function selectLine(e) {
						if (!e.target.classList.contains('field')) {
							this.fire('selectTableLine', {
								uid: e.model.__data__.line.Id,
								line: e.model.__data__.line,
								table: this.id,
								htmlLine: e.target.parentElement
							});
							this.updateLines();
						} else if (e.target.md.updateable == false) {
							this.fire('selectTableLine', {
								uid: e.model.__data__.line.Id,
								line: e.model.__data__.line,
								table: this.id,
								htmlLine: e.target.parentElement.parentElement
							});
							this.updateLines();
						}
					}
				}, {
					key: 'isSelected',
					value: function isSelected(line) {
						if (line.selected) {
							return 'selected';
						}
						return null;
					}
				}, {
					key: 'deselectLines',
					value: function deselectLines() {
						var numLines = this.$.childLines._instances.length;
						for (var i = 0; i < numLines; i++) {
							this.$.childLines._instances[i]._children[1].classList.remove('selected');
						}
					}
				}, {
					key: 'displayActions',
					value: function displayActions() {
						return !this.actionsDisplayed;
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['displayTable(len)'];
					}
				}]);

				return DealDeskLineTable;
			}());

			_export('DealDeskLineTable', DealDeskLineTable);

			Polymer(DealDeskLineTable);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrTGluZVRhYmxlLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O2dDQUFhOzs7Ozs7O3NDQUNLO0FBQ2hCLFdBQUssRUFBTCxHQUFVLGtCQUFWLEVBQ0EsS0FBSyxVQUFMLEdBQWtCO0FBQ2pCLGdCQUFTO0FBQ1IsY0FBTSxPQUFOO0FBQ0EsZUFBTyxJQUFQO1FBRkQ7QUFJQSxvQkFBYTtBQUNaLGNBQU0sT0FBTjtBQUNBLGVBQU8sS0FBUDtRQUZEO0FBSUEsdUJBQWdCO0FBQ2YsY0FBTSxNQUFOO1FBREQ7QUFHQSxjQUFPLEtBQVA7QUFDQSxjQUFPLE1BQVA7QUFDQSx5QkFBa0I7QUFDakIsY0FBTSxPQUFOO1FBREQ7T0FkRCxDQUZnQjs7OzsrQkEwQlAsR0FBRztBQUVaLFVBQUksVUFBVSxFQUFWLENBRlE7QUFHWixVQUFJLFNBQVMsSUFBVCxDQUhRO0FBSVosVUFBRyxFQUFFLE1BQUYsQ0FBUyxTQUFULENBQW1CLFFBQW5CLENBQTRCLE9BQTVCLENBQUgsRUFBeUM7QUFDeEMsZ0JBQVMsRUFBRSxNQUFGLENBQVMsYUFBVCxDQUF1QixhQUF2QixDQUQrQjtPQUF6QyxNQUVPLElBQUksRUFBRSxNQUFGLENBQVMsU0FBVCxDQUFtQixRQUFuQixDQUE0QixRQUE1QixLQUF5QyxFQUFFLE1BQUYsQ0FBUyxTQUFULENBQW1CLFFBQW5CLENBQTRCLGFBQTVCLENBQXpDLEVBQXFGO0FBQy9GLGdCQUFTLEVBQUUsTUFBRixDQUFTLGFBQVQsQ0FEc0Y7T0FBekYsTUFFQTtBQUNOLGdCQUFTLEVBQUUsTUFBRixDQURIO09BRkE7QUFLUCxVQUFJLGtCQUFrQixPQUFPLFNBQVAsQ0FYVjtBQVlaLFVBQUksZ0JBQWdCLFFBQWhCLENBQXlCLEtBQXpCLENBQUosRUFBcUM7QUFDcEMsaUJBQVUsTUFBVixDQURvQztPQUFyQyxNQUVPO0FBQ04saUJBQVUsS0FBVixDQURNO09BRlA7QUFLQSxVQUFJLGNBQWMsT0FBTyxhQUFQLENBQXFCLFFBQXJCLENBQThCLE1BQTlCLENBakJOO0FBa0JaLFdBQUksSUFBSSxJQUFJLENBQUosRUFBTyxJQUFJLGNBQWMsQ0FBZCxFQUFpQixHQUFwQyxFQUF5QztBQUN4QyxjQUFPLGFBQVAsQ0FBcUIsUUFBckIsQ0FBOEIsQ0FBOUIsRUFBaUMsU0FBakMsQ0FBMkMsTUFBM0MsQ0FBa0QsS0FBbEQsRUFEd0M7QUFFeEMsY0FBTyxhQUFQLENBQXFCLFFBQXJCLENBQThCLENBQTlCLEVBQWlDLFNBQWpDLENBQTJDLE1BQTNDLENBQWtELE1BQWxELEVBRndDO09BQXpDO0FBSUEsYUFBTyxTQUFQLENBQWlCLEdBQWpCLENBQXFCLE9BQXJCLEVBdEJZO0FBdUJaLFdBQUssSUFBTCxDQUFVLFdBQVYsRUFBdUI7QUFDdEIsZUFBUSxLQUFLLE1BQUw7QUFDUixjQUFPLEVBQUUsS0FBRixDQUFRLFFBQVIsQ0FBaUIsS0FBakI7QUFDUCx3QkFBaUIsZUFBakI7T0FIRCxFQXZCWTtBQTRCWixXQUFLLFdBQUwsR0E1Qlk7Ozs7cUNBK0JHLEdBQUc7QUFDbEIsV0FBSyxXQUFMLEdBQW1CLENBQUMsS0FBSyxXQUFMLENBREY7QUFFbEIsVUFBSSxpQkFBaUIsRUFBRSxNQUFGLENBQVMsU0FBVCxDQUZIO0FBR2xCLFVBQUksZ0JBQWdCLEVBQUUsTUFBRixDQUFTLGFBQVQsQ0FBdUIsc0JBQXZCLENBQThDLFlBQTlDLEVBQTRELENBQTVELENBQWhCLENBSGM7QUFJbEIsVUFBSSxlQUFlLFFBQWYsQ0FBd0Isc0JBQXhCLENBQUosRUFBcUQ7QUFDcEQscUJBQWMsTUFBZCxHQUF1QixLQUF2QixDQURvRDtBQUVwRCxzQkFBZSxNQUFmLENBQXNCLHNCQUF0QixFQUZvRDtBQUdwRCxzQkFBZSxHQUFmLENBQW1CLHFCQUFuQixFQUhvRDtPQUFyRCxNQUlPO0FBQ04scUJBQWMsTUFBZCxHQUF1QixJQUF2QixDQURNO0FBRU4sc0JBQWUsTUFBZixDQUFzQixxQkFBdEIsRUFGTTtBQUdOLHNCQUFlLEdBQWYsQ0FBbUIsc0JBQW5CLEVBSE07T0FKUDtBQVNBLFdBQUssV0FBTCxHQWJrQjs7OztxQ0FnQkg7QUFDZixhQUFPLEtBQUssV0FBTCxDQURROzs7O3NDQUlDLEdBQUc7QUFDbkIsV0FBSyxJQUFMLENBQVUsWUFBVixFQUF3QjtBQUN2QixhQUFNLEVBQUUsS0FBRixDQUFRLFFBQVIsQ0FBaUIsSUFBakI7QUFDTixjQUFPLEVBQUUsS0FBRixDQUFRLFFBQVIsQ0FBaUIsS0FBakI7QUFDUCxjQUFPLEVBQUUsTUFBRixDQUFTLFNBQVQ7T0FIUixFQURtQjs7OztpQ0FRUjtBQUNYLGFBQU8sS0FBSyxPQUFMLENBREk7Ozs7b0NBSUc7QUFDZCxVQUFJLEtBQUssR0FBTCxJQUFZLENBQVosRUFBZTtBQUNsQixZQUFLLE9BQUwsR0FBZSxJQUFmLENBRGtCO09BQW5CLE1BRU87QUFDTixZQUFLLE9BQUwsR0FBZSxLQUFmLENBRE07T0FGUDs7OztpQ0FPVyxHQUFHO0FBQ2QsVUFBSSxLQUFLLEVBQUwsSUFBVyxNQUFYLElBQXFCLEtBQUssRUFBTCxJQUFXLE1BQVgsRUFBbUI7QUFDM0MsWUFBSyxJQUFMLENBQVUsYUFBVixFQUF5QjtBQUN4QixjQUFNLEVBQUUsS0FBRixDQUFRLFFBQVIsQ0FBaUIsSUFBakI7QUFDTixlQUFPLEVBQUUsS0FBRixDQUFRLFFBQVIsQ0FBaUIsS0FBakI7QUFDUCxpQkFBUyxFQUFFLE1BQUYsQ0FBUyxVQUFULENBQW9CLFVBQXBCLENBQStCLFNBQS9CO1FBSFYsRUFEMkM7QUFNM0MsWUFBSyxZQUFMLENBQWtCLEtBQUssR0FBTCxDQUFsQixDQU4yQztBQU8zQyxZQUFLLFdBQUwsR0FQMkM7T0FBNUM7Ozs7Z0NBV1UsR0FBRztBQUNiLFVBQUksS0FBSyxFQUFMLElBQVcsTUFBWCxJQUFxQixLQUFLLEVBQUwsSUFBVyxNQUFYLEVBQW1CO0FBQzNDLFlBQUssSUFBTCxDQUFVLFlBQVYsRUFBd0I7QUFDdkIsY0FBTSxFQUFFLEtBQUYsQ0FBUSxRQUFSLENBQWlCLElBQWpCO0FBQ04sZUFBTyxFQUFFLEtBQUYsQ0FBUSxRQUFSLENBQWlCLEtBQWpCO0FBQ1AsaUJBQVMsRUFBRSxNQUFGLENBQVMsVUFBVCxDQUFvQixVQUFwQixDQUErQixTQUEvQjtRQUhWLEVBRDJDO0FBTTNDLFlBQUssWUFBTCxDQUFrQixLQUFLLEdBQUwsQ0FBbEIsQ0FOMkM7QUFPM0MsWUFBSyxXQUFMLEdBUDJDO09BQTVDOzs7O21DQVdhO0FBQ2IsV0FBSyxZQUFMLEdBRGE7QUFFYixXQUFLLENBQUwsQ0FBTyxVQUFQLENBQWtCLE1BQWxCLEdBRmE7Ozs7c0NBS0c7QUFDaEIsVUFBSSxLQUFLLEVBQUwsSUFBVyxNQUFYLElBQXFCLEtBQUssRUFBTCxJQUFXLE1BQVgsRUFBbUI7QUFDM0MsV0FBSSxLQUFLLGNBQUwsQ0FBb0IsNEJBQXBCLElBQW9ELElBQXBELEVBQTBELE9BQU8sSUFBUCxDQUE5RCxLQUNLLE9BQU8sNEJBQVAsQ0FETDtPQURELE1BR087QUFDTixXQUFJLEtBQUssY0FBTCxDQUFvQiwwQkFBcEIsSUFBa0QsSUFBbEQsRUFBd0QsT0FBTyxJQUFQLENBQTVELEtBQ0ssT0FBTyxtQkFBUCxDQURMO09BSkQ7Ozs7cUNBU2U7QUFDZixVQUFJLEtBQUssRUFBTCxJQUFXLE1BQVgsSUFBcUIsS0FBSyxFQUFMLElBQVcsTUFBWCxFQUFtQjtBQUMzQyxXQUFJLEtBQUssY0FBTCxDQUFvQiwyQkFBcEIsSUFBbUQsSUFBbkQsRUFBeUQsT0FBTyxJQUFQLENBQTdELEtBQ0ssT0FBTyxpQ0FBUCxDQURMO09BREQsTUFHTztBQUNOLFdBQUksS0FBSyxjQUFMLENBQW9CLHlCQUFwQixJQUFpRCxJQUFqRCxFQUF1RCxPQUFPLElBQVAsQ0FBM0QsS0FDSztBQUNKLGVBQU8sd0JBQVAsQ0FESTtRQURMO09BSkQ7Ozs7d0NBV2tCO0FBQ2xCLFVBQUksS0FBSyxFQUFMLElBQVcsTUFBWCxJQUFxQixLQUFLLEVBQUwsSUFBVyxNQUFYLEVBQW1CO0FBQzNDLFdBQUksS0FBSyxjQUFMLENBQW9CLDRCQUFwQixJQUFvRCxJQUFwRCxFQUEwRCxPQUFPLElBQVAsQ0FBOUQsS0FDSyxPQUFPLEtBQUssY0FBTCxDQUFvQiw0QkFBcEIsQ0FEWjtPQURELE1BR087QUFDTixXQUFJLEtBQUssY0FBTCxDQUFvQiwwQkFBcEIsSUFBa0QsSUFBbEQsRUFBd0QsT0FBTyxJQUFQLENBQTVELEtBQ0ssT0FBTyxLQUFLLGNBQUwsQ0FBb0IsMEJBQXBCLENBRFo7T0FKRDs7Ozt1Q0FTaUI7QUFDakIsVUFBSSxLQUFLLEVBQUwsSUFBVyxNQUFYLElBQXFCLEtBQUssRUFBTCxJQUFXLE1BQVgsRUFBbUI7QUFDM0MsV0FBSSxLQUFLLGNBQUwsQ0FBb0IsMkJBQXBCLElBQW1ELElBQW5ELEVBQXlELE9BQU8sSUFBUCxDQUE3RCxLQUNLLE9BQU8sS0FBSyxjQUFMLENBQW9CLDJCQUFwQixDQURaO09BREQsTUFHTztBQUNOLFdBQUksS0FBSyxjQUFMLENBQW9CLHlCQUFwQixJQUFpRCxJQUFqRCxFQUF1RCxPQUFPLElBQVAsQ0FBM0QsS0FDSyxPQUFPLEtBQUssY0FBTCxDQUFvQix5QkFBcEIsQ0FEWjtPQUpEOzs7O3FDQVNlO0FBQ2YsVUFBSSxLQUFLLGdCQUFMLEVBQXVCO0FBQzFCLFdBQUksU0FBUyxLQUFHLEtBQUssS0FBTCxDQUFXLG1CQUFYLENBQStCLE1BQS9CLENBRFU7QUFFMUIsY0FBTyxZQUFZLE1BQVosR0FBcUIsSUFBckIsQ0FGbUI7T0FBM0IsTUFHTztBQUNOLFdBQUksU0FBUyxNQUFJLEtBQUssS0FBTCxDQUFXLG1CQUFYLENBQStCLE1BQS9CLENBRFg7QUFFTixjQUFPLFlBQVksTUFBWixHQUFxQixJQUFyQixDQUZEO09BSFA7Ozs7Z0NBU1UsR0FBRztBQUNiLFVBQUcsQ0FBQyxFQUFFLE1BQUYsQ0FBUyxTQUFULENBQW1CLFFBQW5CLENBQTRCLE9BQTVCLENBQUQsRUFBdUM7QUFDMUMsWUFBSyxJQUFMLENBQVUsaUJBQVYsRUFBNkI7QUFDNUIsYUFBSyxFQUFFLEtBQUYsQ0FBUSxRQUFSLENBQWlCLElBQWpCLENBQXNCLEVBQXRCO0FBQ0wsY0FBTSxFQUFFLEtBQUYsQ0FBUSxRQUFSLENBQWlCLElBQWpCO0FBQ04sZUFBTyxLQUFLLEVBQUw7QUFDUCxrQkFBVSxFQUFFLE1BQUYsQ0FBUyxhQUFUO1FBSlgsRUFEMEM7QUFPMUMsWUFBSyxXQUFMLEdBUDBDO09BQTFDLE1BUU8sSUFBRyxFQUFFLE1BQUYsQ0FBUyxFQUFULENBQVksVUFBWixJQUEwQixLQUExQixFQUFpQztBQUMxQyxZQUFLLElBQUwsQ0FBVSxpQkFBVixFQUE2QjtBQUM1QixhQUFLLEVBQUUsS0FBRixDQUFRLFFBQVIsQ0FBaUIsSUFBakIsQ0FBc0IsRUFBdEI7QUFDTCxjQUFNLEVBQUUsS0FBRixDQUFRLFFBQVIsQ0FBaUIsSUFBakI7QUFDTixlQUFPLEtBQUssRUFBTDtBQUNQLGtCQUFVLEVBQUUsTUFBRixDQUFTLGFBQVQsQ0FBdUIsYUFBdkI7UUFKWCxFQUQwQztBQU8xQyxZQUFLLFdBQUwsR0FQMEM7T0FBcEM7Ozs7Z0NBV0csTUFBTTtBQUNoQixVQUFJLEtBQUssUUFBTCxFQUFlO0FBQ2xCLGNBQU8sVUFBUCxDQURrQjtPQUFuQjtBQUdBLGFBQU8sSUFBUCxDQUpnQjs7OztxQ0FPRDtBQUNmLFVBQUksV0FBVyxLQUFLLENBQUwsQ0FBTyxVQUFQLENBQWtCLFVBQWxCLENBQTZCLE1BQTdCLENBREE7QUFFZixXQUFLLElBQUksSUFBSSxDQUFKLEVBQU8sSUFBSSxRQUFKLEVBQWMsR0FBOUIsRUFBbUM7QUFDbEMsWUFBSyxDQUFMLENBQU8sVUFBUCxDQUFrQixVQUFsQixDQUE2QixDQUE3QixFQUFnQyxTQUFoQyxDQUEwQyxDQUExQyxFQUE2QyxTQUE3QyxDQUF1RCxNQUF2RCxDQUE4RCxVQUE5RCxFQURrQztPQUFuQzs7OztzQ0FLZ0I7QUFDaEIsYUFBTyxDQUFDLEtBQUssZ0JBQUwsQ0FEUTs7Ozt5QkE5TEQ7QUFDZixhQUFNLENBQUMsbUJBQUQsQ0FBTixDQURlOzs7O1dBdkJKOzs7OztBQTBOYixXQUFTLGlCQUFUIiwiZmlsZSI6IkRlYWxEZXNrTGluZVRhYmxlLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIERlYWxEZXNrTGluZVRhYmxlIHtcblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1kZC1saW5lLXRhYmxlJyxcblx0XHR0aGlzLnByb3BlcnRpZXMgPSB7XG5cdFx0XHRpc0VtcHR5OiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiB0cnVlXG5cdFx0XHR9LFxuXHRcdFx0aXNDb2xsYXBzZWQ6IHtcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IGZhbHNlXG5cdFx0XHR9LFxuXHRcdFx0Y3VzdG9tSWNvblVybHM6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0XG5cdFx0XHR9LFxuXHRcdFx0bGluZXM6IEFycmF5LFxuXHRcdFx0bW9kZWw6IE9iamVjdCxcblx0XHRcdGFjdGlvbnNEaXNwbGF5ZWQ6IHtcblx0XHRcdFx0dHlwZTogQm9vbGVhblxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdGdldCBvYnNlcnZlcnMoKSB7XG5cdFx0cmV0dXJuWydkaXNwbGF5VGFibGUobGVuKSddO1xuXHR9XG5cblx0c29ydExpbmVzKGUpIHtcblx0XHQvL09uIGNsaWNrOlxuXHRcdGxldCBuZXdTb3J0ID0gXCJcIjtcblx0XHRsZXQgdGFyZ2V0ID0gbnVsbDtcblx0XHRpZihlLnRhcmdldC5jbGFzc0xpc3QuY29udGFpbnMoJ25vbW9kJykpIHtcblx0XHRcdHRhcmdldCA9IGUudGFyZ2V0LnBhcmVudEVsZW1lbnQucGFyZW50RWxlbWVudDtcblx0XHR9IGVsc2UgaWYgKGUudGFyZ2V0LmNsYXNzTGlzdC5jb250YWlucygnaGFuZGxlJykgfHwgZS50YXJnZXQuY2xhc3NMaXN0LmNvbnRhaW5zKCdoZWFkZXItdGV4dCcpKSB7XG5cdFx0XHR0YXJnZXQgPSBlLnRhcmdldC5wYXJlbnRFbGVtZW50O1xuXHRcdH0gZWxzZSB7XG5cdFx0XHR0YXJnZXQgPSBlLnRhcmdldDtcblx0XHR9XG5cdFx0bGV0IGhlYWRlckNsYXNzTGlzdCA9IHRhcmdldC5jbGFzc0xpc3Q7XG5cdFx0aWYgKGhlYWRlckNsYXNzTGlzdC5jb250YWlucygnYXNjJykpIHtcblx0XHRcdG5ld1NvcnQgPSAnZGVzYyc7XG5cdFx0fSBlbHNlIHtcblx0XHRcdG5ld1NvcnQgPSAnYXNjJztcblx0XHR9XG5cdFx0bGV0IG51bUNoaWxkcmVuID0gdGFyZ2V0LnBhcmVudEVsZW1lbnQuY2hpbGRyZW4ubGVuZ3RoO1xuXHRcdGZvcihsZXQgaSA9IDA7IGkgPCBudW1DaGlsZHJlbiAtIDE7IGkrKykge1xuXHRcdFx0dGFyZ2V0LnBhcmVudEVsZW1lbnQuY2hpbGRyZW5baV0uY2xhc3NMaXN0LnJlbW92ZSgnYXNjJyk7XG5cdFx0XHR0YXJnZXQucGFyZW50RWxlbWVudC5jaGlsZHJlbltpXS5jbGFzc0xpc3QucmVtb3ZlKCdkZXNjJyk7XG5cdFx0fVxuXHRcdHRhcmdldC5jbGFzc0xpc3QuYWRkKG5ld1NvcnQpO1xuXHRcdHRoaXMuZmlyZSgnc29ydExpbmVzJywge1xuXHRcdFx0c3RhdHVzOiB0aGlzLnN0YXR1cyxcblx0XHRcdGZpZWxkOiBlLm1vZGVsLl9fZGF0YV9fLmZpZWxkLFxuXHRcdFx0aGVhZGVyQ2xhc3NMaXN0OiBoZWFkZXJDbGFzc0xpc3Rcblx0XHR9KTtcblx0XHR0aGlzLnVwZGF0ZUxpbmVzKCk7XG5cdH1cblxuXHR0b2dnbGVUYWJsZVZpZXcoZSkge1xuXHRcdHRoaXMuaXNDb2xsYXBzZWQgPSAhdGhpcy5pc0NvbGxhcHNlZDtcblx0XHRsZXQgdGFibGVDbGFzc0xpc3QgPSBlLnRhcmdldC5jbGFzc0xpc3Q7XG5cdFx0bGV0IGxpbmVDb3VudFNwYW4gPSBlLnRhcmdldC5wYXJlbnRFbGVtZW50LmdldEVsZW1lbnRzQnlDbGFzc05hbWUoJ2xpbmUtY291bnQnKVswXTtcblx0XHRpZiAodGFibGVDbGFzc0xpc3QuY29udGFpbnMoJ3NmLWljb24tY2hldnJvbnJpZ2h0JykpIHtcblx0XHRcdGxpbmVDb3VudFNwYW4uaGlkZGVuID0gZmFsc2U7XG5cdFx0XHR0YWJsZUNsYXNzTGlzdC5yZW1vdmUoJ3NmLWljb24tY2hldnJvbnJpZ2h0Jyk7XG5cdFx0XHR0YWJsZUNsYXNzTGlzdC5hZGQoJ3NmLWljb24tY2hldnJvbmRvd24nKTtcblx0XHR9IGVsc2Uge1xuXHRcdFx0bGluZUNvdW50U3Bhbi5oaWRkZW4gPSB0cnVlO1xuXHRcdFx0dGFibGVDbGFzc0xpc3QucmVtb3ZlKCdzZi1pY29uLWNoZXZyb25kb3duJyk7XG5cdFx0XHR0YWJsZUNsYXNzTGlzdC5hZGQoJ3NmLWljb24tY2hldnJvbnJpZ2h0Jyk7XG5cdFx0fVxuXHRcdHRoaXMudXBkYXRlTGluZXMoKTtcblx0fVxuXG5cdGNvbGxhcHNlVGFibGUoKSB7XG5cdFx0cmV0dXJuIHRoaXMuaXNDb2xsYXBzZWQ7XG5cdH1cblxuXHR1cGRhdGVGaWVsZFZhbHVlKGUpIHtcblx0XHR0aGlzLmZpcmUoJ3VwZGF0ZUxpbmUnLCB7XG5cdFx0XHRsaW5lOiBlLm1vZGVsLl9fZGF0YV9fLmxpbmUsXG5cdFx0XHRmaWVsZDogZS5tb2RlbC5fX2RhdGFfXy5maWVsZCxcblx0XHRcdHZhbHVlOiBlLnRhcmdldC5pbm5lckhUTUxcblx0XHR9KTtcblx0fVxuXG5cdGhpZGVUYWJsZSgpIHtcblx0XHRyZXR1cm4gdGhpcy5pc0VtcHR5O1xuXHR9XG5cblx0ZGlzcGxheVRhYmxlKCkge1xuXHRcdGlmICh0aGlzLmxlbiA9PSAwKSB7XG5cdFx0XHR0aGlzLmlzRW1wdHkgPSB0cnVlO1xuXHRcdH0gZWxzZSB7XG5cdFx0XHR0aGlzLmlzRW1wdHkgPSBmYWxzZTtcblx0XHR9XG5cdH1cblxuXHRhcHByb3ZlTGluZShlKSB7XG5cdFx0aWYgKHRoaXMuaWQgIT0gJ2FwcGwnICYmIHRoaXMuaWQgIT0gJ3JlY2wnKSB7XG5cdFx0XHR0aGlzLmZpcmUoJ2FwcHJvdmVMaW5lJywge1xuXHRcdFx0XHRsaW5lOiBlLm1vZGVsLl9fZGF0YV9fLmxpbmUsXG5cdFx0XHRcdGluZGV4OiBlLm1vZGVsLl9fZGF0YV9fLmluZGV4LFxuXHRcdFx0XHRjbGFzc2VzOiBlLnRhcmdldC5wYXJlbnROb2RlLnBhcmVudE5vZGUuY2xhc3NMaXN0XG5cdFx0XHR9KTtcblx0XHRcdHRoaXMuZGlzcGxheVRhYmxlKHRoaXMubGVuKTtcblx0XHRcdHRoaXMudXBkYXRlTGluZXMoKTtcblx0XHR9XG5cdH1cblxuXHRyZWplY3RMaW5lKGUpIHtcblx0XHRpZiAodGhpcy5pZCAhPSAncmVqbCcgJiYgdGhpcy5pZCAhPSAncmVjbCcpIHtcblx0XHRcdHRoaXMuZmlyZSgncmVqZWN0TGluZScsIHtcblx0XHRcdFx0bGluZTogZS5tb2RlbC5fX2RhdGFfXy5saW5lLFxuXHRcdFx0XHRpbmRleDogZS5tb2RlbC5fX2RhdGFfXy5pbmRleCxcblx0XHRcdFx0Y2xhc3NlczogZS50YXJnZXQucGFyZW50Tm9kZS5wYXJlbnROb2RlLmNsYXNzTGlzdFxuXHRcdFx0fSk7XG5cdFx0XHR0aGlzLmRpc3BsYXlUYWJsZSh0aGlzLmxlbik7XG5cdFx0XHR0aGlzLnVwZGF0ZUxpbmVzKCk7XG5cdFx0fVxuXHR9XG5cblx0dXBkYXRlTGluZXMoKSB7XG5cdFx0dGhpcy5kaXNwbGF5VGFibGUoKTtcblx0XHR0aGlzLiQuY2hpbGRMaW5lcy5yZW5kZXIoKTtcblx0fVxuXG5cdHNldEFwcHJvdmVJY29uKCkge1xuXHRcdGlmICh0aGlzLmlkID09ICdhcHBsJyB8fCB0aGlzLmlkID09ICdyZWNsJykge1xuXHRcdFx0aWYgKHRoaXMuY3VzdG9tSWNvblVybHMuaW5hY3RpdmVBcHByb3ZlQ3VzdG9tSWNvblVSTCAhPSBudWxsKSByZXR1cm4gbnVsbDtcblx0XHRcdGVsc2UgcmV0dXJuIFwiaWNvbiBzZi1pY29uLWxpa2UgaW5hY3RpdmVcIjtcblx0XHR9IGVsc2Uge1xuXHRcdFx0aWYgKHRoaXMuY3VzdG9tSWNvblVybHMuYWN0aXZlQXBwcm92ZUN1c3RvbUljb25VUkwgIT0gbnVsbCkgcmV0dXJuIG51bGw7XG5cdFx0XHRlbHNlIHJldHVybiBcImljb24gc2YtaWNvbi1saWtlXCI7XG5cdFx0fVxuXHR9XG5cblx0c2V0UmVqZWN0SWNvbigpIHtcblx0XHRpZiAodGhpcy5pZCA9PSAncmVqbCcgfHwgdGhpcy5pZCA9PSAncmVjbCcpIHtcblx0XHRcdGlmICh0aGlzLmN1c3RvbUljb25VcmxzLmluYWN0aXZlUmVqZWN0Q3VzdG9tSWNvblVSTCAhPSBudWxsKSByZXR1cm4gbnVsbDtcblx0XHRcdGVsc2UgcmV0dXJuIFwiaWNvbiBzZi1pY29uLWxpa2UgZmxpcCBpbmFjdGl2ZVwiO1xuXHRcdH0gZWxzZSB7XG5cdFx0XHRpZiAodGhpcy5jdXN0b21JY29uVXJscy5hY3RpdmVSZWplY3RDdXN0b21JY29uVVJMICE9IG51bGwpIHJldHVybiBudWxsO1xuXHRcdFx0ZWxzZSB7XG5cdFx0XHRcdHJldHVybiBcImljb24gc2YtaWNvbi1saWtlIGZsaXBcIjtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHRzZXRDdXN0b21BcHByb3ZlKCkge1xuXHRcdGlmICh0aGlzLmlkID09ICdhcHBsJyB8fCB0aGlzLmlkID09ICdyZWNsJykge1xuXHRcdFx0aWYgKHRoaXMuY3VzdG9tSWNvblVybHMuaW5hY3RpdmVBcHByb3ZlQ3VzdG9tSWNvblVSTCA9PSBudWxsKSByZXR1cm4gbnVsbDtcblx0XHRcdGVsc2UgcmV0dXJuIHRoaXMuY3VzdG9tSWNvblVybHMuaW5hY3RpdmVBcHByb3ZlQ3VzdG9tSWNvblVSTDtcblx0XHR9IGVsc2Uge1xuXHRcdFx0aWYgKHRoaXMuY3VzdG9tSWNvblVybHMuYWN0aXZlQXBwcm92ZUN1c3RvbUljb25VUkwgPT0gbnVsbCkgcmV0dXJuIG51bGw7XG5cdFx0XHRlbHNlIHJldHVybiB0aGlzLmN1c3RvbUljb25VcmxzLmFjdGl2ZUFwcHJvdmVDdXN0b21JY29uVVJMO1xuXHRcdH1cblx0fVxuXG5cdHNldEN1c3RvbVJlamVjdCgpIHtcblx0XHRpZiAodGhpcy5pZCA9PSAncmVqbCcgfHwgdGhpcy5pZCA9PSAncmVjbCcpIHtcblx0XHRcdGlmICh0aGlzLmN1c3RvbUljb25VcmxzLmluYWN0aXZlUmVqZWN0Q3VzdG9tSWNvblVSTCA9PSBudWxsKSByZXR1cm4gbnVsbDtcblx0XHRcdGVsc2UgcmV0dXJuIHRoaXMuY3VzdG9tSWNvblVybHMuaW5hY3RpdmVSZWplY3RDdXN0b21JY29uVVJMO1xuXHRcdH0gZWxzZSB7XG5cdFx0XHRpZiAodGhpcy5jdXN0b21JY29uVXJscy5hY3RpdmVSZWplY3RDdXN0b21JY29uVVJMID09IG51bGwpIHJldHVybiBudWxsO1xuXHRcdFx0ZWxzZSByZXR1cm4gdGhpcy5jdXN0b21JY29uVXJscy5hY3RpdmVSZWplY3RDdXN0b21JY29uVVJMO1xuXHRcdH1cblx0fVxuXG5cdGdldENvbHVtblNpemUoKSB7XG5cdFx0aWYgKHRoaXMuYWN0aW9uc0Rpc3BsYXllZCkge1xuXHRcdFx0bGV0IG91dHB1dCA9IDk3L3RoaXMubW9kZWwuZGlzcGxheWVkTGluZUZpZWxkcy5sZW5ndGg7XG5cdFx0XHRyZXR1cm4gJ3dpZHRoOiAnICsgb3V0cHV0ICsgJyU7Jztcblx0XHR9IGVsc2Uge1xuXHRcdFx0bGV0IG91dHB1dCA9IDEwMC90aGlzLm1vZGVsLmRpc3BsYXllZExpbmVGaWVsZHMubGVuZ3RoO1xuXHRcdFx0cmV0dXJuICd3aWR0aDogJyArIG91dHB1dCArICclOyc7XG5cdFx0fVxuXHR9XG5cblx0c2VsZWN0TGluZShlKSB7XG5cdFx0aWYoIWUudGFyZ2V0LmNsYXNzTGlzdC5jb250YWlucygnZmllbGQnKSkge1xuXHRcdHRoaXMuZmlyZSgnc2VsZWN0VGFibGVMaW5lJywge1xuXHRcdFx0dWlkOiBlLm1vZGVsLl9fZGF0YV9fLmxpbmUuSWQsXG5cdFx0XHRsaW5lOiBlLm1vZGVsLl9fZGF0YV9fLmxpbmUsXG5cdFx0XHR0YWJsZTogdGhpcy5pZCxcblx0XHRcdGh0bWxMaW5lOiBlLnRhcmdldC5wYXJlbnRFbGVtZW50XG5cdFx0fSk7XG5cdFx0dGhpcy51cGRhdGVMaW5lcygpO1xuXHRcdH0gZWxzZSBpZihlLnRhcmdldC5tZC51cGRhdGVhYmxlID09IGZhbHNlKSB7XG5cdFx0XHR0aGlzLmZpcmUoJ3NlbGVjdFRhYmxlTGluZScsIHtcblx0XHRcdFx0dWlkOiBlLm1vZGVsLl9fZGF0YV9fLmxpbmUuSWQsXG5cdFx0XHRcdGxpbmU6IGUubW9kZWwuX19kYXRhX18ubGluZSxcblx0XHRcdFx0dGFibGU6IHRoaXMuaWQsXG5cdFx0XHRcdGh0bWxMaW5lOiBlLnRhcmdldC5wYXJlbnRFbGVtZW50LnBhcmVudEVsZW1lbnRcblx0XHRcdH0pO1xuXHRcdFx0dGhpcy51cGRhdGVMaW5lcygpO1xuXHRcdH1cblx0fVxuXG5cdGlzU2VsZWN0ZWQobGluZSkge1xuXHRcdGlmIChsaW5lLnNlbGVjdGVkKSB7XG5cdFx0XHRyZXR1cm4gJ3NlbGVjdGVkJztcblx0XHR9XG5cdFx0cmV0dXJuIG51bGw7XG5cdH1cblxuXHRkZXNlbGVjdExpbmVzKCkge1xuXHRcdGxldCBudW1MaW5lcyA9IHRoaXMuJC5jaGlsZExpbmVzLl9pbnN0YW5jZXMubGVuZ3RoO1xuXHRcdGZvciAobGV0IGkgPSAwOyBpIDwgbnVtTGluZXM7IGkrKykge1xuXHRcdFx0dGhpcy4kLmNoaWxkTGluZXMuX2luc3RhbmNlc1tpXS5fY2hpbGRyZW5bMV0uY2xhc3NMaXN0LnJlbW92ZSgnc2VsZWN0ZWQnKTtcblx0XHR9XG5cdH1cblxuXHRkaXNwbGF5QWN0aW9ucygpIHtcblx0XHRyZXR1cm4gIXRoaXMuYWN0aW9uc0Rpc3BsYXllZDtcblx0fVxufVxuXG5Qb2x5bWVyKCBEZWFsRGVza0xpbmVUYWJsZSApO1xuIl19
'use strict';

System.register('dealdesk/sb-dd-record-summary/DealDeskRecordSummary.js', [], function (_export, _context) {
	var _createClass, DealDeskRecordSummary;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('DealDeskRecordSummary', DealDeskRecordSummary = function () {
				function DealDeskRecordSummary() {
					_classCallCheck(this, DealDeskRecordSummary);
				}

				_createClass(DealDeskRecordSummary, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-dd-record-summary';
						this.properties = {
							model: Object
						};
					}
				}]);

				return DealDeskRecordSummary;
			}());

			_export('DealDeskRecordSummary', DealDeskRecordSummary);

			Polymer(DealDeskRecordSummary);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrUmVjb3JkU3VtbWFyeS5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztvQ0FBYTs7Ozs7OztzQ0FFSztBQUNoQixXQUFLLEVBQUwsR0FBVSxzQkFBVixDQURnQjtBQUVoQixXQUFLLFVBQUwsR0FBa0I7QUFDakIsY0FBTyxNQUFQO09BREQsQ0FGZ0I7Ozs7V0FGTDs7Ozs7QUFVYixXQUFTLHFCQUFUIiwiZmlsZSI6IkRlYWxEZXNrUmVjb3JkU3VtbWFyeS5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBEZWFsRGVza1JlY29yZFN1bW1hcnkge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItZGQtcmVjb3JkLXN1bW1hcnknO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdG1vZGVsOiBPYmplY3Rcblx0XHR9XG5cdH1cblxufVxuUG9seW1lciggRGVhbERlc2tSZWNvcmRTdW1tYXJ5ICk7XG4iXX0=
'use strict';

System.register('dealdesk/sb-dd-sforce-console/DealDeskSForceConsole.js', [], function (_export, _context) {
	var _createClass, DealDeskSForceConsole;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('DealDeskSForceConsole', DealDeskSForceConsole = function () {
				function DealDeskSForceConsole() {
					_classCallCheck(this, DealDeskSForceConsole);
				}

				_createClass(DealDeskSForceConsole, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-dd-sforce-console';
						this.properties = {};
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.setTabTitle();
					}
				}, {
					key: 'setTabTitle',
					value: function setTabTitle() {
						if (window.sforce && window.sforce.console != null && this.params.consoleTabTitle) {
							window.sforce.console.setTabTitle(this.params.consoleTabTitle);
						}
					}
				}]);

				return DealDeskSForceConsole;
			}());

			_export('DealDeskSForceConsole', DealDeskSForceConsole);

			Polymer(DealDeskSForceConsole);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrU0ZvcmNlQ29uc29sZS5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztvQ0FBYTs7Ozs7OztzQ0FFSztBQUNoQixXQUFLLEVBQUwsR0FBVSxzQkFBVixDQURnQjtBQUVoQixXQUFLLFVBQUwsR0FBa0IsRUFBbEIsQ0FGZ0I7Ozs7NkJBTVQ7QUFDUCxXQUFLLFdBQUwsR0FETzs7OzttQ0FJTTtBQUNiLFVBQUksT0FBTyxNQUFQLElBQWlCLE9BQU8sTUFBUCxDQUFjLE9BQWQsSUFBeUIsSUFBekIsSUFBaUMsS0FBSyxNQUFMLENBQVksZUFBWixFQUE2QjtBQUNsRixjQUFPLE1BQVAsQ0FBYyxPQUFkLENBQXNCLFdBQXRCLENBQWtDLEtBQUssTUFBTCxDQUFZLGVBQVosQ0FBbEMsQ0FEa0Y7T0FBbkY7Ozs7V0FiVzs7Ozs7QUFtQmIsV0FBUyxxQkFBVCIsImZpbGUiOiJEZWFsRGVza1NGb3JjZUNvbnNvbGUuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgRGVhbERlc2tTRm9yY2VDb25zb2xlIHtcblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLWRkLXNmb3JjZS1jb25zb2xlJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSB7XG5cdFx0fVxuXHR9XG5cblx0cmVhZHkoKSB7XG5cdFx0dGhpcy5zZXRUYWJUaXRsZSgpO1xuXHR9XG5cblx0c2V0VGFiVGl0bGUoKSB7XG5cdFx0aWYgKHdpbmRvdy5zZm9yY2UgJiYgd2luZG93LnNmb3JjZS5jb25zb2xlICE9IG51bGwgJiYgdGhpcy5wYXJhbXMuY29uc29sZVRhYlRpdGxlKSB7XG5cdFx0XHR3aW5kb3cuc2ZvcmNlLmNvbnNvbGUuc2V0VGFiVGl0bGUodGhpcy5wYXJhbXMuY29uc29sZVRhYlRpdGxlKTtcblx0XHR9XG5cdH1cblxufVxuUG9seW1lciggRGVhbERlc2tTRm9yY2VDb25zb2xlICk7XG4iXX0=
'use strict';

System.register('dealdesk/sb-deal-desk/DealDesk.js', ['../../common/core/Page.js'], function (_export, _context) {
	var Page, _createClass, DealDesk;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCorePageJs) {
			Page = _commonCorePageJs.Page;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('DealDesk', DealDesk = function (_Page) {
				_inherits(DealDesk, _Page);

				function DealDesk() {
					_classCallCheck(this, DealDesk);

					return _possibleConstructorReturn(this, Object.getPrototypeOf(DealDesk).apply(this, arguments));
				}

				_createClass(DealDesk, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-deal-desk';
						this.properties = Polymer.Base.extend({
							showDetails: {
								type: Boolean,
								value: false
							},
							recordDetailUrl: {
								type: String,
								value: null
							},
							lineiFrameUrl: {
								type: String,
								value: null
							},
							isLineSelected: {
								type: Boolean,
								value: false
							},
							isIFrameRendered: {
								type: Boolean,
								value: false
							},
							lastSelected: {
								type: Object,
								value: {
									"targetLine": null,
									"uid": null
								}
							},
							statuses: {
								type: Object,
								value: {
									"Pending": "penl",
									"Approved": "appl",
									"Rejected": "rejl",
									"Recalled": "recl"
								}
							}
						}, Page.properties);
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.addEventListener('setIFrame', this.setIFrame);
						this.addEventListener('showDealDesk', this.showDealDesk);
						this.addEventListener('selectTableLine', this.selectPageLine);
						this.addEventListener('selectFirst', this.selectFirst);
						this.addEventListener('addMessages', this.addMessages);
						this.addEventListener('cleanAfterSave', this.cleanAfterSave);
						this.addEventListener('reloadIFrame', this.reloadIFrame);
					}
				}, {
					key: 'addMessages',
					value: function addMessages(e) {
						this.$.mc.messages = e.detail.value;
					}
				}, {
					key: 'hasModel',
					value: function hasModel() {
						if (this.dealDeskModel != null) {
							var buttonsWithoutModel = this.$.pageHeader.getElementsByClassName('withoutModel');
							var numButtons = buttonsWithoutModel.length;
							for (var i = 0; i < numButtons; i++) {
								buttonsWithoutModel[i].remove();
							}
							return true;
						} else {
							return false;
						}
					}
				}, {
					key: 'showDealDesk',
					value: function showDealDesk() {
						this.$.dealdesk.hidden = false;
					}
				}, {
					key: 'assign',
					value: function assign() {
						if (this.lastSelected.targetLine) {
							delete this.lastSelected.targetLine.selected;
						}
						this.$.mc.hasMessage = false;
						this.$.mc.messages = [];
						this.$.dds.closeAfterSave = false;
						if (this.originalOwnerId == null) {
							this.originalOwnerId = this.dealDeskModel.parentRecord.OwnerId;
						}
						this.dealDeskModel.parentRecord.OwnerId = this.dealDeskModel.currentUserId;
						this.$.dds.dealDeskModelSave = this.dealDeskModel;
					}
				}, {
					key: 'saveModel',
					value: function saveModel() {
						if (this.lastSelected.targetLine) {
							delete this.lastSelected.targetLine.selected;
						}
						this.$.mc.hasMessage = false;
						this.$.mc.messages = [];
						this.$.dds.closeAfterSave = false;
						this.$.dds.dealDeskModelSave = this.dealDeskModel;
					}
				}, {
					key: 'saveModelAndClose',
					value: function saveModelAndClose() {
						if (this.lastSelected.targetLine) {
							delete this.lastSelected.targetLine.selected;
						}
						this.$.mc.hasMessage = false;
						this.$.mc.messages = [];
						this.$.dds.closeAfterSave = true;
						if (this.originalOwnerId) {
							this.dealDeskModel.parentRecord.OwnerId = this.originalOwnerId;
						}
						this.$.dds.dealDeskModelSave = this.dealDeskModel;
					}
				}, {
					key: 'cleanAfterSave',
					value: function cleanAfterSave() {
						this.lastSelected.uid = null;
						this.lastSelected.targetLine = null;
						this.lineiFrameUrl = null;
						this.isLineSelected = false;
						this.isIFrameRendered = false;
					}
				}, {
					key: 'cancel',
					value: function cancel() {
						if (this.dealDeskModel) {
							if (this.originalOwnerId) {
								this.dealDeskModel.originalOwnerId = this.originalOwnerId;
								this.dealDeskModel.parentRecord.OwnerId = this.originalOwnerId;
								this.$.dds.closeAfterSave = true;
								this.$.dds.dealDeskModelSave = this.dealDeskModel;
							} else {
								window.location.href = window.location.origin + '/' + this.dealDeskModel.parentRecord.Id;
							}
						} else {
							window.history.back();
						}
					}
				}, {
					key: 'toggleView',
					value: function toggleView() {
						return this.showDetails;
					}
				}, {
					key: 'viewLines',
					value: function viewLines() {
						this.showDetails = false;
						this.$.lines.classList.add("lines-selected");
						this.$.details.classList.remove("details-selected");
					}
				}, {
					key: 'viewDetails',
					value: function viewDetails() {
						this.showDetails = true;
						this.$.details.classList.add("details-selected");
						this.$.lines.classList.remove("lines-selected");
					}
				}, {
					key: 'setIFrame',
					value: function setIFrame() {
						this.selectFirst();
						this.recordDetailUrl = window.location.origin + '/apex/RecordView?id=' + this.dealDeskModel.parentRecord.Id;
					}
				}, {
					key: 'reloadIFrame',
					value: function reloadIFrame() {
						this.$.recordiframe.contentWindow.location.reload(true);
					}
				}, {
					key: 'iFrameDisplayed',
					value: function iFrameDisplayed() {
						return this.isIFrameRendered;
					}
				}, {
					key: 'selectPageLine',
					value: function selectPageLine(e) {
						var clickedLine = e.detail.line;
						var clickedUid = e.detail.uid;
						var clickedHtml = e.detail.htmlLine;
						var clickedTable = e.detail.table;
						var prefixedLineDetailField = this.dealDeskModel.developerPrefix + 'DealDeskDetailURL__c';
						if (!this.isLineSelected) {
							this.isLineSelected = true;
							if (clickedLine[prefixedLineDetailField] != null) {
								this.isIFrameRendered = true;
								this.lineiFrameUrl = clickedLine[prefixedLineDetailField];
							}
							clickedLine.selected = true;
							clickedHtml.classList.add('selected');
							this.lastSelected['targetLine'] = clickedLine;
							this.lastSelected['uid'] = clickedUid;
							this.$.ld.$[clickedTable].$.childLines.render();
						} else if (clickedUid == this.lastSelected['uid']) {
							delete clickedLine.selected;
							clickedHtml.classList.remove('selected');
							this.lastSelected['targetLine'] = null;
							this.lastSelected['uid'] = null;
							this.isLineSelected = false;
							this.isIFrameRendered = false;
							this.$.ld.$[clickedTable].$.childLines.render();
						} else {
							delete this.lastSelected['targetLine'].selected;
							var _iteratorNormalCompletion = true;
							var _didIteratorError = false;
							var _iteratorError = undefined;

							try {
								for (var _iterator = Object.keys(this.statuses)[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
									var status = _step.value;

									var id = this.statuses[status];
									if (this.$.ld.lineArrayByStatus[status].length > 0) {
										this.$.ld.$[id].deselectLines();
									}
								}
							} catch (err) {
								_didIteratorError = true;
								_iteratorError = err;
							} finally {
								try {
									if (!_iteratorNormalCompletion && _iterator.return) {
										_iterator.return();
									}
								} finally {
									if (_didIteratorError) {
										throw _iteratorError;
									}
								}
							}

							if (clickedLine[prefixedLineDetailField] != null) {
								this.isIFrameRendered = true;
								this.lineiFrameUrl = clickedLine[prefixedLineDetailField];
							}
							clickedLine.selected = true;
							clickedHtml.classList.add('selected');
							this.lastSelected['targetLine'] = clickedLine;
							this.lastSelected['uid'] = clickedUid;
							this.$.ld.$[clickedTable].$.childLines.render();
						}
					}
				}, {
					key: 'selectFirst',
					value: function selectFirst() {
						if (this.$.ld.lineArrayByStatus['Pending'].length > 0) {
							var prefixedLineDetailField = this.dealDeskModel.developerPrefix + 'DealDeskDetailURL__c';
							this.lineiFrameUrl = this.$.ld.lineArrayByStatus['Pending'][0][prefixedLineDetailField];
							if (this.lineiFrameUrl) {
								this.isIFrameRendered = true;
							}
							this.isLineSelected = true;
							this.$.ld.lineArrayByStatus['Pending'][0].selected = true;
							this.lastSelected['targetLine'] = this.$.ld.lineArrayByStatus['Pending'][0];
							this.lastSelected['uid'] = this.$.ld.lineArrayByStatus['Pending'][0].Id;
						} else {
							this.isLineSelected = false;
						}
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}]);

				return DealDesk;
			}(Page));

			_export('DealDesk', DealDesk);

			Polymer(DealDesk);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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R0FBcUQsSUFBckQsQ0FQc0Q7QUFRdEQsWUFBSyxZQUFMLENBQWtCLFlBQWxCLElBQWtDLEtBQUssQ0FBTCxDQUFPLEVBQVAsQ0FBVSxpQkFBVixDQUE0QixTQUE1QixFQUF1QyxDQUF2QyxDQUFsQyxDQVJzRDtBQVN0RCxZQUFLLFlBQUwsQ0FBa0IsS0FBbEIsSUFBMkIsS0FBSyxDQUFMLENBQU8sRUFBUCxDQUFVLGlCQUFWLENBQTRCLFNBQTVCLEVBQXVDLENBQXZDLEVBQTBDLEVBQTFDLENBVDJCO09BQXZELE1BVU87QUFDTixZQUFLLGNBQUwsR0FBc0IsS0FBdEIsQ0FETTtPQVZQOzs7O3lCQWhLZTtBQUNmLGFBQU8sQ0FBQyxHQUFHLE1BQUgsQ0FBVSxJQUFWLENBQWUsSUFBZixDQUFSLENBRGU7Ozs7V0ExREo7S0FBaUI7Ozs7QUEwTzlCLFdBQVMsUUFBVCIsImZpbGUiOiJEZWFsRGVzay5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7UGFnZX0gZnJvbSAnLi4vLi4vY29tbW9uL2NvcmUvUGFnZS5qcyc7XG5cbmV4cG9ydCBjbGFzcyBEZWFsRGVzayBleHRlbmRzIFBhZ2Uge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItZGVhbC1kZXNrJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSBQb2x5bWVyLkJhc2UuZXh0ZW5kKHtcblx0XHRcdHNob3dEZXRhaWxzOiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmYWxzZVxuXHRcdFx0fSxcblx0XHRcdHJlY29yZERldGFpbFVybDoge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdHZhbHVlOiBudWxsXG5cdFx0XHR9LFxuXHRcdFx0bGluZWlGcmFtZVVybDoge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdHZhbHVlOiBudWxsXG5cdFx0XHR9LFxuXHRcdFx0aXNMaW5lU2VsZWN0ZWQ6IHtcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IGZhbHNlXG5cdFx0XHR9LFxuXHRcdFx0aXNJRnJhbWVSZW5kZXJlZDoge1xuXHRcdFx0XHR0eXBlOiBCb29sZWFuLFxuXHRcdFx0XHR2YWx1ZTogZmFsc2Vcblx0XHRcdH0sXG5cdFx0XHRsYXN0U2VsZWN0ZWQ6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZToge1xuXHRcdFx0XHRcdFwidGFyZ2V0TGluZVwiIDogbnVsbCxcblx0XHRcdFx0XHRcInVpZFwiIDogbnVsbFxuXHRcdFx0XHR9XG5cdFx0XHR9LFxuXHRcdFx0c3RhdHVzZXM6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZToge1xuXHRcdFx0XHRcdFwiUGVuZGluZ1wiIDogXCJwZW5sXCIgLFxuXHRcdFx0XHRcdFwiQXBwcm92ZWRcIjogXCJhcHBsXCIsXG5cdFx0XHRcdFx0XCJSZWplY3RlZFwiOiBcInJlamxcIixcblx0XHRcdFx0XHRcIlJlY2FsbGVkXCI6IFwicmVjbFwiXG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9LCBQYWdlLnByb3BlcnRpZXMpO1xuXHR9XG5cblx0cmVhZHkoKSB7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKCdzZXRJRnJhbWUnLCB0aGlzLnNldElGcmFtZSk7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKCdzaG93RGVhbERlc2snLCB0aGlzLnNob3dEZWFsRGVzayk7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKCdzZWxlY3RUYWJsZUxpbmUnLCB0aGlzLnNlbGVjdFBhZ2VMaW5lKTtcblx0XHR0aGlzLmFkZEV2ZW50TGlzdGVuZXIoJ3NlbGVjdEZpcnN0JywgdGhpcy5zZWxlY3RGaXJzdCk7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKCdhZGRNZXNzYWdlcycsIHRoaXMuYWRkTWVzc2FnZXMpO1xuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcignY2xlYW5BZnRlclNhdmUnLCB0aGlzLmNsZWFuQWZ0ZXJTYXZlKTtcblx0XHR0aGlzLmFkZEV2ZW50TGlzdGVuZXIoJ3JlbG9hZElGcmFtZScsIHRoaXMucmVsb2FkSUZyYW1lKTtcblx0fVxuXG5cdGFkZE1lc3NhZ2VzKGUpIHtcblx0XHR0aGlzLiQubWMubWVzc2FnZXMgPSBlLmRldGFpbC52YWx1ZTtcblx0fVxuXG5cdGdldCBiZWhhdmlvcnMoKSB7XG5cdFx0cmV0dXJuIFtzYi5jb21tb24uY29yZS5QYWdlXTtcblx0fVxuXG5cdGhhc01vZGVsKCkge1xuXHRcdGlmICh0aGlzLmRlYWxEZXNrTW9kZWwgIT0gbnVsbCkge1xuXHRcdFx0bGV0IGJ1dHRvbnNXaXRob3V0TW9kZWwgPSB0aGlzLiQucGFnZUhlYWRlci5nZXRFbGVtZW50c0J5Q2xhc3NOYW1lKCd3aXRob3V0TW9kZWwnKTtcblx0XHRcdGxldCBudW1CdXR0b25zID0gYnV0dG9uc1dpdGhvdXRNb2RlbC5sZW5ndGg7XG5cdFx0XHRmb3IgKGxldCBpPTA7IGkgPCBudW1CdXR0b25zOyBpKyspIHtcblx0XHRcdFx0YnV0dG9uc1dpdGhvdXRNb2RlbFtpXS5yZW1vdmUoKTtcblx0XHRcdH1cblx0XHRcdHJldHVybiB0cnVlO1xuXHRcdH0gZWxzZSB7XG5cdFx0XHRyZXR1cm4gZmFsc2U7XG5cdFx0fVxuXHR9XG5cblx0c2hvd0RlYWxEZXNrKCkge1xuXHRcdHRoaXMuJC5kZWFsZGVzay5oaWRkZW4gPSBmYWxzZTtcblx0fVxuXG5cdGFzc2lnbigpIHtcblx0XHRpZiAodGhpcy5sYXN0U2VsZWN0ZWQudGFyZ2V0TGluZSkge1xuXHRcdFx0ZGVsZXRlIHRoaXMubGFzdFNlbGVjdGVkLnRhcmdldExpbmUuc2VsZWN0ZWQ7XG5cdFx0fVxuXHRcdHRoaXMuJC5tYy5oYXNNZXNzYWdlID0gZmFsc2U7XG5cdFx0dGhpcy4kLm1jLm1lc3NhZ2VzID0gW107XG5cdFx0dGhpcy4kLmRkcy5jbG9zZUFmdGVyU2F2ZSA9IGZhbHNlO1xuXHRcdGlmICh0aGlzLm9yaWdpbmFsT3duZXJJZCA9PSBudWxsKSB7XG5cdFx0XHR0aGlzLm9yaWdpbmFsT3duZXJJZCA9IHRoaXMuZGVhbERlc2tNb2RlbC5wYXJlbnRSZWNvcmQuT3duZXJJZDtcblx0XHR9XG5cdFx0dGhpcy5kZWFsRGVza01vZGVsLnBhcmVudFJlY29yZC5Pd25lcklkID0gdGhpcy5kZWFsRGVza01vZGVsLmN1cnJlbnRVc2VySWQ7XG5cdFx0dGhpcy4kLmRkcy5kZWFsRGVza01vZGVsU2F2ZSA9IHRoaXMuZGVhbERlc2tNb2RlbDtcblx0fVxuXG5cdHNhdmVNb2RlbCgpIHtcblx0XHRpZiAodGhpcy5sYXN0U2VsZWN0ZWQudGFyZ2V0TGluZSkge1xuXHRcdFx0ZGVsZXRlIHRoaXMubGFzdFNlbGVjdGVkLnRhcmdldExpbmUuc2VsZWN0ZWQ7XG5cdFx0fVxuXHRcdHRoaXMuJC5tYy5oYXNNZXNzYWdlID0gZmFsc2U7XG5cdFx0dGhpcy4kLm1jLm1lc3NhZ2VzID0gW107XG5cdFx0dGhpcy4kLmRkcy5jbG9zZUFmdGVyU2F2ZSA9IGZhbHNlO1xuXHRcdHRoaXMuJC5kZHMuZGVhbERlc2tNb2RlbFNhdmUgPSB0aGlzLmRlYWxEZXNrTW9kZWw7XG5cdH1cblxuXHRzYXZlTW9kZWxBbmRDbG9zZSgpIHtcblx0XHRpZiAodGhpcy5sYXN0U2VsZWN0ZWQudGFyZ2V0TGluZSkge1xuXHRcdFx0ZGVsZXRlIHRoaXMubGFzdFNlbGVjdGVkLnRhcmdldExpbmUuc2VsZWN0ZWQ7XG5cdFx0fVxuXHRcdHRoaXMuJC5tYy5oYXNNZXNzYWdlID0gZmFsc2U7XG5cdFx0dGhpcy4kLm1jLm1lc3NhZ2VzID0gW107XG5cdFx0dGhpcy4kLmRkcy5jbG9zZUFmdGVyU2F2ZSA9IHRydWU7XG5cdFx0aWYgKHRoaXMub3JpZ2luYWxPd25lcklkKSB7XG5cdFx0XHR0aGlzLmRlYWxEZXNrTW9kZWwucGFyZW50UmVjb3JkLk93bmVySWQgPSB0aGlzLm9yaWdpbmFsT3duZXJJZDtcblx0XHR9XG5cdFx0dGhpcy4kLmRkcy5kZWFsRGVza01vZGVsU2F2ZSA9IHRoaXMuZGVhbERlc2tNb2RlbDtcblx0fVxuXG5cdGNsZWFuQWZ0ZXJTYXZlKCkge1xuXHRcdHRoaXMubGFzdFNlbGVjdGVkLnVpZCA9IG51bGw7XG5cdFx0dGhpcy5sYXN0U2VsZWN0ZWQudGFyZ2V0TGluZSA9IG51bGw7XG5cdFx0dGhpcy5saW5laUZyYW1lVXJsID0gbnVsbDtcblx0XHR0aGlzLmlzTGluZVNlbGVjdGVkID0gZmFsc2U7XG5cdFx0dGhpcy5pc0lGcmFtZVJlbmRlcmVkID0gZmFsc2U7XG5cdH1cblxuXHRjYW5jZWwoKSB7XG5cdFx0aWYgKHRoaXMuZGVhbERlc2tNb2RlbCkge1xuXHRcdFx0aWYgKHRoaXMub3JpZ2luYWxPd25lcklkKSB7XG5cdFx0XHRcdHRoaXMuZGVhbERlc2tNb2RlbC5vcmlnaW5hbE93bmVySWQgPSB0aGlzLm9yaWdpbmFsT3duZXJJZDtcblx0XHRcdFx0dGhpcy5kZWFsRGVza01vZGVsLnBhcmVudFJlY29yZC5Pd25lcklkID0gdGhpcy5vcmlnaW5hbE93bmVySWQ7XG5cdFx0XHRcdHRoaXMuJC5kZHMuY2xvc2VBZnRlclNhdmUgPSB0cnVlO1xuXHRcdFx0XHR0aGlzLiQuZGRzLmRlYWxEZXNrTW9kZWxTYXZlID0gdGhpcy5kZWFsRGVza01vZGVsO1xuXHRcdFx0fSBlbHNlIHtcblx0XHRcdFx0d2luZG93LmxvY2F0aW9uLmhyZWYgPSB3aW5kb3cubG9jYXRpb24ub3JpZ2luICsgJy8nICsgdGhpcy5kZWFsRGVza01vZGVsLnBhcmVudFJlY29yZC5JZDtcblx0XHRcdH1cblx0XHR9IGVsc2Uge1xuXHRcdFx0d2luZG93Lmhpc3RvcnkuYmFjaygpO1xuXHRcdH1cblx0fVxuXG5cdHRvZ2dsZVZpZXcoKSB7XG5cdFx0cmV0dXJuIHRoaXMuc2hvd0RldGFpbHM7XG5cdH1cblxuXHR2aWV3TGluZXMoKSB7XG5cdFx0dGhpcy5zaG93RGV0YWlscyA9IGZhbHNlO1xuXHRcdHRoaXMuJC5saW5lcy5jbGFzc0xpc3QuYWRkKFwibGluZXMtc2VsZWN0ZWRcIik7XG5cdFx0dGhpcy4kLmRldGFpbHMuY2xhc3NMaXN0LnJlbW92ZShcImRldGFpbHMtc2VsZWN0ZWRcIik7XG5cdH1cblxuXHR2aWV3RGV0YWlscygpIHtcblx0XHR0aGlzLnNob3dEZXRhaWxzID0gdHJ1ZTtcblx0XHR0aGlzLiQuZGV0YWlscy5jbGFzc0xpc3QuYWRkKFwiZGV0YWlscy1zZWxlY3RlZFwiKTtcblx0XHR0aGlzLiQubGluZXMuY2xhc3NMaXN0LnJlbW92ZShcImxpbmVzLXNlbGVjdGVkXCIpO1xuXHR9XG5cblx0c2V0SUZyYW1lKCkge1xuXHRcdC8vdGhpcy5yZWNvcmREZXRhaWxVcmwgPSAnIGh0dHBzOi8vc2JhYS5uYTkudmlzdWFsLmZvcmNlLmNvbS9hcGV4L1JlY29yZFZpZXc/aWQ9JyArIHRoaXMuZGVhbERlc2tNb2RlbC5wYXJlbnRSZWNvcmQuSWQ7IC8vRm9yIHVzZSB3aXRoIGxvY2FsaG9zdFxuXHRcdHRoaXMuc2VsZWN0Rmlyc3QoKTtcblx0XHR0aGlzLnJlY29yZERldGFpbFVybCA9IHdpbmRvdy5sb2NhdGlvbi5vcmlnaW4gKyAnL2FwZXgvUmVjb3JkVmlldz9pZD0nICsgdGhpcy5kZWFsRGVza01vZGVsLnBhcmVudFJlY29yZC5JZDsgLy9Gb3IgU0Zcblx0fVxuXG5cdHJlbG9hZElGcmFtZSgpIHtcblx0XHR0aGlzLiQucmVjb3JkaWZyYW1lLmNvbnRlbnRXaW5kb3cubG9jYXRpb24ucmVsb2FkKHRydWUpO1xuXHR9XG5cblx0aUZyYW1lRGlzcGxheWVkKCkge1xuXHRcdHJldHVybiB0aGlzLmlzSUZyYW1lUmVuZGVyZWQ7XG5cdH1cblxuXHRzZWxlY3RQYWdlTGluZShlKSB7XG5cdFx0bGV0IGNsaWNrZWRMaW5lID0gZS5kZXRhaWwubGluZTtcblx0XHRsZXQgY2xpY2tlZFVpZCA9IGUuZGV0YWlsLnVpZDtcblx0XHRsZXQgY2xpY2tlZEh0bWwgPSBlLmRldGFpbC5odG1sTGluZTtcblx0XHRsZXQgY2xpY2tlZFRhYmxlID0gZS5kZXRhaWwudGFibGU7XG5cdFx0bGV0IHByZWZpeGVkTGluZURldGFpbEZpZWxkID0gdGhpcy5kZWFsRGVza01vZGVsLmRldmVsb3BlclByZWZpeCArICdEZWFsRGVza0RldGFpbFVSTF9fYyc7XG5cdFx0aWYgKCF0aGlzLmlzTGluZVNlbGVjdGVkKSB7XG5cdFx0XHQvLyBTZWxlY3QgYSBsaW5lIHdoZW4gbm90aGluZyBpcyBzZWxlY3RlZFxuXHRcdFx0dGhpcy5pc0xpbmVTZWxlY3RlZCA9IHRydWU7XG5cdFx0XHRpZiAoY2xpY2tlZExpbmVbcHJlZml4ZWRMaW5lRGV0YWlsRmllbGRdICE9IG51bGwpIHtcblx0XHRcdFx0dGhpcy5pc0lGcmFtZVJlbmRlcmVkID0gdHJ1ZTtcblx0XHRcdFx0dGhpcy5saW5laUZyYW1lVXJsID0gY2xpY2tlZExpbmVbcHJlZml4ZWRMaW5lRGV0YWlsRmllbGRdO1xuXHRcdFx0fVxuXHRcdFx0Y2xpY2tlZExpbmUuc2VsZWN0ZWQgPSB0cnVlO1xuXHRcdFx0Y2xpY2tlZEh0bWwuY2xhc3NMaXN0LmFkZCgnc2VsZWN0ZWQnKTtcblx0XHRcdHRoaXMubGFzdFNlbGVjdGVkWyd0YXJnZXRMaW5lJ10gPSBjbGlja2VkTGluZTtcblx0XHRcdHRoaXMubGFzdFNlbGVjdGVkWyd1aWQnXSA9IGNsaWNrZWRVaWQ7XG5cdFx0XHR0aGlzLiQubGQuJFtjbGlja2VkVGFibGVdLiQuY2hpbGRMaW5lcy5yZW5kZXIoKTtcblx0XHR9IGVsc2UgaWYgKGNsaWNrZWRVaWQgPT0gdGhpcy5sYXN0U2VsZWN0ZWRbJ3VpZCddKSB7XG5cdFx0XHQvLyBEZXNlbGVjdCBsaW5lXG5cdFx0XHRkZWxldGUgY2xpY2tlZExpbmUuc2VsZWN0ZWQ7XG5cdFx0XHRjbGlja2VkSHRtbC5jbGFzc0xpc3QucmVtb3ZlKCdzZWxlY3RlZCcpO1xuXHRcdFx0dGhpcy5sYXN0U2VsZWN0ZWRbJ3RhcmdldExpbmUnXSA9IG51bGw7XG5cdFx0XHR0aGlzLmxhc3RTZWxlY3RlZFsndWlkJ10gPSBudWxsO1xuXHRcdFx0dGhpcy5pc0xpbmVTZWxlY3RlZCA9IGZhbHNlO1xuXHRcdFx0dGhpcy5pc0lGcmFtZVJlbmRlcmVkID0gZmFsc2U7XG5cdFx0XHR0aGlzLiQubGQuJFtjbGlja2VkVGFibGVdLiQuY2hpbGRMaW5lcy5yZW5kZXIoKTtcblx0XHR9IGVsc2Uge1xuXHRcdFx0Ly8gU2VsZWN0IGEgbmV3IGxpbmVcblx0XHRcdGRlbGV0ZSB0aGlzLmxhc3RTZWxlY3RlZFsndGFyZ2V0TGluZSddLnNlbGVjdGVkO1xuXHRcdFx0Zm9yIChsZXQgc3RhdHVzIG9mIE9iamVjdC5rZXlzKHRoaXMuc3RhdHVzZXMpKSB7XG5cdFx0XHRcdGxldCBpZCA9IHRoaXMuc3RhdHVzZXNbc3RhdHVzXTtcblx0XHRcdFx0aWYodGhpcy4kLmxkLmxpbmVBcnJheUJ5U3RhdHVzW3N0YXR1c10ubGVuZ3RoID4gMCl7XG5cdFx0XHRcdFx0dGhpcy4kLmxkLiRbaWRdLmRlc2VsZWN0TGluZXMoKTtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdFx0aWYgKGNsaWNrZWRMaW5lW3ByZWZpeGVkTGluZURldGFpbEZpZWxkXSAhPSBudWxsKSB7XG5cdFx0XHRcdHRoaXMuaXNJRnJhbWVSZW5kZXJlZCA9IHRydWU7XG5cdFx0XHRcdHRoaXMubGluZWlGcmFtZVVybCA9IGNsaWNrZWRMaW5lW3ByZWZpeGVkTGluZURldGFpbEZpZWxkXTtcblx0XHRcdH1cblx0XHRcdGNsaWNrZWRMaW5lLnNlbGVjdGVkID0gdHJ1ZTtcblx0XHRcdGNsaWNrZWRIdG1sLmNsYXNzTGlzdC5hZGQoJ3NlbGVjdGVkJyk7XG5cdFx0XHR0aGlzLmxhc3RTZWxlY3RlZFsndGFyZ2V0TGluZSddID0gY2xpY2tlZExpbmU7XG5cdFx0XHR0aGlzLmxhc3RTZWxlY3RlZFsndWlkJ10gPSBjbGlja2VkVWlkO1xuXHRcdFx0dGhpcy4kLmxkLiRbY2xpY2tlZFRhYmxlXS4kLmNoaWxkTGluZXMucmVuZGVyKCk7XG5cdFx0fVxuXHR9XG5cblx0c2VsZWN0Rmlyc3QoKSB7XG5cdFx0aWYgKHRoaXMuJC5sZC5saW5lQXJyYXlCeVN0YXR1c1snUGVuZGluZyddLmxlbmd0aCA+IDApIHtcblx0XHRcdGxldCBwcmVmaXhlZExpbmVEZXRhaWxGaWVsZCA9IHRoaXMuZGVhbERlc2tNb2RlbC5kZXZlbG9wZXJQcmVmaXggKyAnRGVhbERlc2tEZXRhaWxVUkxfX2MnO1xuXHRcdFx0dGhpcy5saW5laUZyYW1lVXJsID0gdGhpcy4kLmxkLmxpbmVBcnJheUJ5U3RhdHVzWydQZW5kaW5nJ11bMF1bcHJlZml4ZWRMaW5lRGV0YWlsRmllbGRdO1xuXHRcdFx0aWYgKHRoaXMubGluZWlGcmFtZVVybCkge1xuXHRcdFx0XHR0aGlzLmlzSUZyYW1lUmVuZGVyZWQgPSB0cnVlO1xuXHRcdFx0fVxuXHRcdFx0dGhpcy5pc0xpbmVTZWxlY3RlZCA9IHRydWU7XG5cdFx0XHR0aGlzLiQubGQubGluZUFycmF5QnlTdGF0dXNbJ1BlbmRpbmcnXVswXS5zZWxlY3RlZCA9IHRydWU7XG5cdFx0XHR0aGlzLmxhc3RTZWxlY3RlZFsndGFyZ2V0TGluZSddID0gdGhpcy4kLmxkLmxpbmVBcnJheUJ5U3RhdHVzWydQZW5kaW5nJ11bMF07XG5cdFx0XHR0aGlzLmxhc3RTZWxlY3RlZFsndWlkJ10gPSB0aGlzLiQubGQubGluZUFycmF5QnlTdGF0dXNbJ1BlbmRpbmcnXVswXS5JZDtcblx0XHR9IGVsc2Uge1xuXHRcdFx0dGhpcy5pc0xpbmVTZWxlY3RlZCA9IGZhbHNlO1xuXHRcdH1cblx0fVxufVxuXG5Qb2x5bWVyKCBEZWFsRGVzayApO1xuIl19
'use strict';

System.register('dealdesk/sb-example-page/ExamplePage.js', ['../../common/core/Page.js'], function (_export, _context) {
	var Page, _createClass, ExamplePage;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCorePageJs) {
			Page = _commonCorePageJs.Page;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('ExamplePage', ExamplePage = function (_Page) {
				_inherits(ExamplePage, _Page);

				function ExamplePage() {
					_classCallCheck(this, ExamplePage);

					return _possibleConstructorReturn(this, Object.getPrototypeOf(ExamplePage).apply(this, arguments));
				}

				_createClass(ExamplePage, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-example-page';
						this.properties = Polymer.Base.extend({
							prop1: {
								type: String,
								value: function value() {
									return 'default value for prop1';
								}
							}
						}, Page.properties);
					}
				}, {
					key: 'ready',
					value: function ready() {
						console.log('Example page is ready.  prop1 == ' + this.prop1);
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}]);

				return ExamplePage;
			}(Page));

			_export('ExamplePage', ExamplePage);

			Polymer(ExamplePage);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkV4YW1wbGVQYWdlLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFBUTs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzBCQUVLOzs7Ozs7Ozs7OztzQ0FNSztBQUNoQixXQUFLLEVBQUwsR0FBVSxpQkFBVixDQURnQjtBQUVoQixXQUFLLFVBQUwsR0FBa0IsUUFBUSxJQUFSLENBQWEsTUFBYixDQUFxQjtBQUN0QyxjQUFPO0FBQ04sY0FBTSxNQUFOO0FBQ0EsZUFBTyxpQkFBVztBQUFFLGdCQUFPLHlCQUFQLENBQUY7U0FBWDtRQUZSO09BRGlCLEVBS2YsS0FBSyxVQUFMLENBTEgsQ0FGZ0I7Ozs7NkJBVVQ7QUFDUCxjQUFRLEdBQVIsQ0FBYSxzQ0FBc0MsS0FBSyxLQUFMLENBQW5ELENBRE87Ozs7eUJBZFE7QUFDZixhQUFPLENBQUMsR0FBRyxNQUFILENBQVUsSUFBVixDQUFlLElBQWYsQ0FBUixDQURlOzs7O1dBRko7S0FBb0I7Ozs7QUFxQmpDLFdBQVMsV0FBVCIsImZpbGUiOiJFeGFtcGxlUGFnZS5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7UGFnZX0gZnJvbSAnLi4vLi4vY29tbW9uL2NvcmUvUGFnZS5qcyc7XG5cbmV4cG9ydCBjbGFzcyBFeGFtcGxlUGFnZSBleHRlbmRzIFBhZ2Uge1xuXG5cdGdldCBiZWhhdmlvcnMoKSB7XG5cdFx0cmV0dXJuIFtzYi5jb21tb24uY29yZS5QYWdlXTtcblx0fVxuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItZXhhbXBsZS1wYWdlJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSBQb2x5bWVyLkJhc2UuZXh0ZW5kKCB7XG5cdFx0XHRwcm9wMToge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuICdkZWZhdWx0IHZhbHVlIGZvciBwcm9wMSc7IH1cblx0XHRcdH1cblx0XHR9LCBQYWdlLnByb3BlcnRpZXMgKTtcblx0fVxuXG5cdHJlYWR5KCkge1xuXHRcdGNvbnNvbGUubG9nKCAnRXhhbXBsZSBwYWdlIGlzIHJlYWR5LiAgcHJvcDEgPT0gJyArIHRoaXMucHJvcDEgKTtcblx0fVxufVxuXG5Qb2x5bWVyKCBFeGFtcGxlUGFnZSApO1xuIl19
'use strict';

System.register('dealdesk/services/services.js', ['dealdesk/services/sb-dd-model-read/DealDeskModelReader.js', 'dealdesk/services/sb-dd-model-save/DealDeskModelSaver.js'], function (_export, _context) {
  return {
    setters: [function (_dealdeskServicesSbDdModelReadDealDeskModelReaderJs) {}, function (_dealdeskServicesSbDdModelSaveDealDeskModelSaverJs) {}],
    execute: function () {}
  };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJzZXJ2aWNlcy5qcyIsInNvdXJjZXNDb250ZW50IjpbXX0=
'use strict';

System.register('dealdesk/validations/validations.js', ['dealdesk/validations/sb-dd-read-validations/DealDeskReadValidations.js'], function (_export, _context) {
  return {
    setters: [function (_dealdeskValidationsSbDdReadValidationsDealDeskReadValidationsJs) {}],
    execute: function () {}
  };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJ2YWxpZGF0aW9ucy5qcyIsInNvdXJjZXNDb250ZW50IjpbXX0=
'use strict';

System.register('common/core/sb-i18n/I18n.js', ['../AppContext.js', '../../Util.js'], function (_export, _context) {
	var AppContext, Util, _createClass, dateFormatCache, numberFormatCache, I18n;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_AppContextJs) {
			AppContext = _AppContextJs.AppContext;
		}, function (_UtilJs) {
			Util = _UtilJs.Util;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			dateFormatCache = new Util.Map();
			numberFormatCache = new Util.Map();

			_export('I18n', I18n = function () {
				function I18n(app) {
					_classCallCheck(this, I18n);

					this.app = app;
				}

				_createClass(I18n, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-i18n';
						this.properties = Polymer.Base.extend({
							locale: {
								type: String,
								notify: false,
								value: function value() {
									return '';
								}
							},

							key: {
								type: String,
								notify: false
							}
						}, AppContext.properties);
					}
				}, {
					key: 'attached',
					value: function attached() {
						var key = this.key ? this.key : this.innerHTML;
						if (key) this.innerHTML = this.l(key);
					}
				}, {
					key: 'l',
					value: function l(key, values) {
						var v = this.labels[key];
						return v;
					}
				}, {
					key: '_getFormat',
					value: function _getFormat(locale, key, isDate) {
						var f = null;
						if (locale && key) {
							var loc = isDate ? dateFormatCache.get(locale) : numberFormatCache.get(locale);
							if (!loc) {
								loc = new Util.Map();
								var c = isDate ? dateFormatCache : numberFormatCache;
								c.set(locale, loc);
							}

							var stringKey = JSON.stringify(key);
							f = loc.get(stringKey);
							if (!f) {
								f = isDate ? new Intl.DateTimeFormat(locale, key) : new Intl.NumberFormat(locale, key);
								loc.set(stringKey, f);
							}
						}
						return f;
					}
				}, {
					key: 'format',
					value: function format(value, options) {
						var v = '',
						    opts = options || {};

						if (value || value == 0) {
							if (value instanceof Date || opts.date) {
								var fmt = this._getFormat(this.app.user.locale, opts, true);
								if (value instanceof Date) {
									v = fmt.format(value);
								} else if (typeof value == 'number') {
									v = fmt.format(new Date(value));
								} else if (typeof value === 'string') {
									var pos = value.indexOf('T');
									if (pos >= 0) v = fmt.format(Date.parse(value));else {
											var ymd = value.split('-');
											if (ymd && ymd.length == 3) v = fmt.format(new Date(ymd[0], ymd[1] - 1, ymd[2]));
										}
								}
							} else {
								var fmt = this._getFormat(this.app.user.locale, opts, false);
								v = fmt.format(value);
							}
						}
						return v;
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.AppContext];
					}
				}]);

				return I18n;
			}());

			_export('I18n', I18n);

			Polymer(I18n);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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LEtBQVAsS0FBaUIsUUFBakIsRUFBNEI7QUFDdkMsYUFBSSxNQUFNLE1BQU0sT0FBTixDQUFlLEdBQWYsQ0FBTixDQURtQztBQUV2QyxhQUFJLE9BQU8sQ0FBUCxFQUNILElBQUksSUFBSSxNQUFKLENBQVksS0FBSyxLQUFMLENBQVksS0FBWixDQUFaLENBQUosQ0FERCxLQUVLO0FBQ0osZUFBSSxNQUFNLE1BQU0sS0FBTixDQUFhLEdBQWIsQ0FBTixDQURBO0FBRUosZUFBSSxPQUFPLElBQUksTUFBSixJQUFjLENBQWQsRUFDVixJQUFJLElBQUksTUFBSixDQUFZLElBQUksSUFBSixDQUFVLElBQUksQ0FBSixDQUFWLEVBQWtCLElBQUksQ0FBSixJQUFPLENBQVAsRUFBVSxJQUFJLENBQUosQ0FBNUIsQ0FBWixDQUFKLENBREQ7V0FKRDtTQUZNO1FBTlIsTUFnQk87QUFDTixZQUFJLE1BQU0sS0FBSyxVQUFMLENBQWlCLEtBQUssR0FBTCxDQUFTLElBQVQsQ0FBYyxNQUFkLEVBQXNCLElBQXZDLEVBQTZDLEtBQTdDLENBQU4sQ0FERTtBQUVOLFlBQUksSUFBSSxNQUFKLENBQVksS0FBWixDQUFKLENBRk07UUFoQlA7T0FERDtBQXNCQSxhQUFPLENBQVAsQ0ExQndCOzs7O3lCQW5FVDtBQUNmLGFBQU8sQ0FBQyxHQUFHLE1BQUgsQ0FBVSxJQUFWLENBQWUsVUFBZixDQUFSLENBRGU7Ozs7V0FSSjs7Ozs7QUF5R2IsV0FBUyxJQUFUIiwiZmlsZSI6IkkxOG4uanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge0FwcENvbnRleHR9IGZyb20gJy4uL0FwcENvbnRleHQuanMnO1xuaW1wb3J0IHtVdGlsfSBmcm9tICcuLi8uLi9VdGlsLmpzJztcblxuLy8gTWFwcyBvZiBjYWNoZWQgSW50bC5EYXRlVGltZUZvcm1hdCBhbmQgSW50bC5OdW1iZXJGb3JtYXQgb2JqZWN0cyB1c2luZyB0aGVpciBcIm9wdGlvbnNcIiBvYmplY3QgYXMgMm5kLWxldmVsIGtleXNcbi8vIEZpcnN0IGxldmVsIGtleXMgYXJlIGxvY2FsZSBzdHJpbmdzXG5sZXQgZGF0ZUZvcm1hdENhY2hlID0gbmV3IFV0aWwuTWFwKCksXG5cdFx0bnVtYmVyRm9ybWF0Q2FjaGUgPSBuZXcgVXRpbC5NYXAoKTtcblxuZXhwb3J0IGNsYXNzIEkxOG4ge1xuXG5cdGNvbnN0cnVjdG9yKCBhcHAgKSB7XG5cdFx0Ly8gQXMgYSBQb2x5bWVyIHdlYiBjb21wb25lbnQgd2UgZ2V0IFwidGhpcy5hcHBcIiBmcm9tIEFwcENvbnRleHQgYmVoYXZpb3IuXG5cdFx0Ly8gQnV0IGFzIHJlZ3VsYXIgRVM2IGNsYXNzIHdlIGhhdmUgdG8gc2V0IHVwIG91cnNlbHZlcyAoYW5kIHdlIGNhbid0IGV4dGVuZCBBcHBDb250ZXh0IGZvciBjaXJjdWxhciBkZXAgcmVhc29ucylcblx0XHR0aGlzLmFwcCA9IGFwcDtcblx0fVxuXG5cdGdldCBiZWhhdmlvcnMoKSB7XG5cdFx0cmV0dXJuIFtzYi5jb21tb24uY29yZS5BcHBDb250ZXh0XTtcblx0fVxuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItaTE4bic7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0gUG9seW1lci5CYXNlLmV4dGVuZCh7XG5cdFx0XHQvKipcblx0XHRcdCogVGhlIEJDUCA0NyBsb2NhbGUgdG8gdXNlIHRvIGZvcm1hdCB0aGUgZGF0YSB2YWx1ZSBvciB0cmFuc2xhdGUgdGhlIG1lc3NhZ2Ugc3RyaW5nIChpLmUuIHRoZSBsYW5ndWFnZSkuXG5cdFx0XHQqIFRoaXMgd2lsbCBkZWZhdWx0IHRvIHRoZSB1c2VyJ3MgbG9jYWxlIG9yIGxhbmd1YWdlIHNvIHlvdSBvbmx5IG5lZWQgdG8gc2V0IGl0IGluIFwib3ZlcnJpZGVcIiBzaXR1YXRpb25zLlxuXHRcdFx0KiBAdHlwZSB7U3RyaW5nfVxuXHRcdFx0Ki9cblx0XHRcdGxvY2FsZToge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdG5vdGlmeTogZmFsc2UsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuICcnIH1cblx0XHRcdH0sXG5cblx0XHRcdC8qKlxuXHRcdFx0KiBUaGUga2V5IHRvIHVzZSB0byBsb29rdXAgdGhlIHRyYW5zbGF0ZWQgbWVzc2FnZSBzdHJpbmcuIE9ubHkgc2V0IGZvciBvdmVycmlkZXMgb3IgY29tcGxleC9sb25nIG1lc3NhZ2VzLlxuXHRcdFx0KiBAdHlwZSB7U3RyaW5nfVxuXHRcdFx0Ki9cblx0XHRcdGtleToge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdG5vdGlmeTogZmFsc2Vcblx0XHRcdH1cblx0XHR9LCBBcHBDb250ZXh0LnByb3BlcnRpZXMgKTtcblx0fVxuXG5cdGF0dGFjaGVkKCkge1xuXHRcdGxldCBrZXkgPSB0aGlzLmtleSA/IHRoaXMua2V5IDogdGhpcy5pbm5lckhUTUw7XG5cdFx0aWYoIGtleSApXG5cdFx0XHR0aGlzLmlubmVySFRNTCA9IHRoaXMubChrZXkpO1xuXHR9XG5cblx0LyoqIExvY2FsaXplIGEgc3RyaW5nIGludG8gYSBkaWZmZXJlbnQgbGFuZ3VhZ2UgKi9cblx0bCgga2V5LCB2YWx1ZXMgKSB7XG5cdFx0dmFyIHYgPSB0aGlzLmxhYmVsc1sga2V5IF07XG5cdFx0cmV0dXJuIHY7XG5cdH1cblxuXHRfZ2V0Rm9ybWF0KCBsb2NhbGUsIGtleSwgaXNEYXRlICkge1xuXHRcdGxldCBmID0gbnVsbDtcblx0XHRpZiggbG9jYWxlICYmIGtleSApIHtcblx0XHRcdGxldCBsb2MgPSBpc0RhdGUgPyBkYXRlRm9ybWF0Q2FjaGUuZ2V0KCBsb2NhbGUgKSA6IG51bWJlckZvcm1hdENhY2hlLmdldCggbG9jYWxlICk7XG5cdFx0XHRpZiAoICFsb2MgKSB7XG5cdFx0XHRcdGxvYyA9IG5ldyBVdGlsLk1hcCgpO1xuXHRcdFx0XHRsZXQgYyA9IGlzRGF0ZSA/IGRhdGVGb3JtYXRDYWNoZSA6IG51bWJlckZvcm1hdENhY2hlO1xuXHRcdFx0XHRjLnNldCggbG9jYWxlLCBsb2MgKTtcblx0XHRcdH1cblxuXHRcdFx0bGV0IHN0cmluZ0tleSA9IEpTT04uc3RyaW5naWZ5KCBrZXkgKTtcblx0XHRcdGYgPSBsb2MuZ2V0KCBzdHJpbmdLZXkgKTtcblx0XHRcdGlmKCAhZiApIHtcblx0XHRcdFx0ZiA9IGlzRGF0ZSA/IG5ldyBJbnRsLkRhdGVUaW1lRm9ybWF0KCBsb2NhbGUsIGtleSApIDogbmV3IEludGwuTnVtYmVyRm9ybWF0KCBsb2NhbGUsIGtleSApO1xuXHRcdFx0XHRsb2Muc2V0KCBzdHJpbmdLZXksIGYgKTtcblx0XHRcdH1cblx0XHR9XG5cdFx0cmV0dXJuIGY7XG5cdH1cblxuXHQvKipcblx0ICogRm9ybWF0IGEgZGF0ZSBvciBudW1iZXIuXG5cdCAqIEBwYXJhbSAge09iamVjdHxudW1iZXJ9IHZhbHVlICAgdGhlIERhdGUgb2JqZWN0IG9yIG51bWJlciB2YWx1ZSAoZmxvYXQgb3IgaW50ZWdlcilcblx0ICogQHBhcmFtICB7b2JqZWN0fSBvcHRpb25zIHRoZSBvcHRpb25zIG9iamVjdCB0byBwYXNzIGludG8gSW50bC5EYXRlVGltZUZvcm1hdCBvciBJbnRsLk51bWJlckZvcm1hdCBjb25zdHJ1Y3RvclxuXHQgKiBAcmV0dXJuIHtzdHJpbmd9ICAgICAgICAgdGhlIGZvcm1hdGVkIHN0cmluZ1xuXHQgKi9cblx0Zm9ybWF0KCB2YWx1ZSwgb3B0aW9ucyApIHtcblx0XHRsZXQgdiA9ICcnLFxuXHRcdFx0b3B0cyA9IG9wdGlvbnMgfHwge307XG5cblx0XHRpZiAoIHZhbHVlIHx8IHZhbHVlID09IDAgKSB7XG5cdFx0XHRpZiAoIHZhbHVlIGluc3RhbmNlb2YgRGF0ZSB8fCBvcHRzLmRhdGUgKSB7XG5cdFx0XHRcdGxldCBmbXQgPSB0aGlzLl9nZXRGb3JtYXQoIHRoaXMuYXBwLnVzZXIubG9jYWxlLCBvcHRzLCB0cnVlICk7XG5cdFx0XHRcdGlmICggdmFsdWUgaW5zdGFuY2VvZiBEYXRlICkge1xuXHRcdFx0XHRcdHYgPSBmbXQuZm9ybWF0KCB2YWx1ZSApO1xuXHRcdFx0XHR9IGVsc2UgaWYgKCB0eXBlb2YgdmFsdWUgPT0gJ251bWJlcicgKSB7XG5cdFx0XHRcdFx0diA9IGZtdC5mb3JtYXQoIG5ldyBEYXRlKCB2YWx1ZSApICk7XG5cdFx0XHRcdH0gZWxzZSBpZiAoIHR5cGVvZiB2YWx1ZSA9PT0gJ3N0cmluZycgKSB7XG5cdFx0XHRcdFx0bGV0IHBvcyA9IHZhbHVlLmluZGV4T2YoICdUJyApO1xuXHRcdFx0XHRcdGlmKCBwb3MgPj0gMCApXG5cdFx0XHRcdFx0XHR2ID0gZm10LmZvcm1hdCggRGF0ZS5wYXJzZSggdmFsdWUgKSApOyAgLy8gYXNzdW1lIGl0IGlzIGluIElTTy04NjAxIGZvcm1hdCB3aXRoIGNvcnJlY3QgVFo/XG5cdFx0XHRcdFx0ZWxzZSB7XG5cdFx0XHRcdFx0XHRsZXQgeW1kID0gdmFsdWUuc3BsaXQoICctJyApO1xuXHRcdFx0XHRcdFx0aWYoIHltZCAmJiB5bWQubGVuZ3RoID09IDMgKVxuXHRcdFx0XHRcdFx0XHR2ID0gZm10LmZvcm1hdCggbmV3IERhdGUoIHltZFswXSwgeW1kWzFdLTEsIHltZFsyXSApICk7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9IGVsc2Uge1xuXHRcdFx0XHRsZXQgZm10ID0gdGhpcy5fZ2V0Rm9ybWF0KCB0aGlzLmFwcC51c2VyLmxvY2FsZSwgb3B0cywgZmFsc2UgKTtcblx0XHRcdFx0diA9IGZtdC5mb3JtYXQoIHZhbHVlICk7XG5cdFx0XHR9XG5cdFx0fVxuXHRcdHJldHVybiB2O1xuXHR9XG59XG5cblBvbHltZXIoIEkxOG4gKTtcbiJdfQ==
'use strict';

System.register('common/core/sb-loading-spinner/LoadingSpinner.js', [], function (_export, _context) {
	var _createClass, LoadingSpinner;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('LoadingSpinner', LoadingSpinner = function () {
				function LoadingSpinner() {
					_classCallCheck(this, LoadingSpinner);
				}

				_createClass(LoadingSpinner, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-loading-spinner';
						this.properties = {
							show: {
								type: Boolean,
								value: false
							}
						};
					}
				}]);

				return LoadingSpinner;
			}());

			_export('LoadingSpinner', LoadingSpinner);

			Polymer(LoadingSpinner);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkxvYWRpbmdTcGlubmVyLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzZCQUFhOzs7Ozs7O3NDQUVLO0FBQ2hCLFdBQUssRUFBTCxHQUFVLG9CQUFWLENBRGdCO0FBRWhCLFdBQUssVUFBTCxHQUFrQjtBQUNqQixhQUFNO0FBQ0wsY0FBTSxPQUFOO0FBQ0EsZUFBTyxLQUFQO1FBRkQ7T0FERCxDQUZnQjs7OztXQUZMOzs7OztBQWFiLFdBQVMsY0FBVCIsImZpbGUiOiJMb2FkaW5nU3Bpbm5lci5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBMb2FkaW5nU3Bpbm5lciB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1sb2FkaW5nLXNwaW5uZXInO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdHNob3c6IHtcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IGZhbHNlXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG5cblBvbHltZXIoIExvYWRpbmdTcGlubmVyICk7Il19
'use strict';

System.register('common/core/sb-message-container/MessageContainer.js', [], function (_export, _context) {
    var _createClass, MessageContainer;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('MessageContainer', MessageContainer = function () {
                function MessageContainer() {
                    _classCallCheck(this, MessageContainer);
                }

                _createClass(MessageContainer, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-message-container';
                        this.properties = {
                            hasMessage: {
                                type: Boolean,
                                value: false
                            },
                            messages: {
                                type: Array,
                                value: []
                            }
                        };
                    }
                }, {
                    key: 'model',
                    value: function model() {
                        if (this.error.validations) {
                            for (var i = 0; i < this.error.validations.length; i++) {
                                this.push("messages", this.error.validations[i]);
                            }
                        } else {
                            this.push("messages", this.error.message);
                        }
                        this.hasMessage = true;
                    }
                }, {
                    key: 'validation',
                    value: function validation() {
                        if (this.messages.length > 0) {
                            this.hasMessage = true;
                        }
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['model(error)', 'validation(messages)'];
                    }
                }]);

                return MessageContainer;
            }());

            _export('MessageContainer', MessageContainer);

            Polymer(MessageContainer);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIk1lc3NhZ2VDb250YWluZXIuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7d0NBQWE7Ozs7Ozs7cURBRVE7QUFDYiw2QkFBSyxFQUFMLEdBQVUsc0JBQVYsQ0FEYTtBQUViLDZCQUFLLFVBQUwsR0FBa0I7QUFDZCx3Q0FBWTtBQUNSLHNDQUFNLE9BQU47QUFDQSx1Q0FBTyxLQUFQOzZCQUZKO0FBSUEsc0NBQVU7QUFDTixzQ0FBTSxLQUFOO0FBQ0EsdUNBQU8sRUFBUDs2QkFGSjt5QkFMSixDQUZhOzs7OzRDQWtCVDtBQUNKLDRCQUFJLEtBQUssS0FBTCxDQUFXLFdBQVgsRUFBd0I7QUFDeEIsaUNBQUssSUFBSSxJQUFFLENBQUYsRUFBSyxJQUFFLEtBQUssS0FBTCxDQUFXLFdBQVgsQ0FBdUIsTUFBdkIsRUFBK0IsR0FBL0MsRUFBb0Q7QUFDaEQscUNBQUssSUFBTCxDQUFVLFVBQVYsRUFBc0IsS0FBSyxLQUFMLENBQVcsV0FBWCxDQUF1QixDQUF2QixDQUF0QixFQURnRDs2QkFBcEQ7eUJBREosTUFJTztBQUNILGlDQUFLLElBQUwsQ0FBVSxVQUFWLEVBQXNCLEtBQUssS0FBTCxDQUFXLE9BQVgsQ0FBdEIsQ0FERzt5QkFKUDtBQU9BLDZCQUFLLFVBQUwsR0FBa0IsSUFBbEIsQ0FSSTs7OztpREFXSztBQUNULDRCQUFJLEtBQUssUUFBTCxDQUFjLE1BQWQsR0FBdUIsQ0FBdkIsRUFBMEI7QUFDMUIsaUNBQUssVUFBTCxHQUFrQixJQUFsQixDQUQwQjt5QkFBOUI7Ozs7d0NBaEJZO0FBQ1osK0JBQU0sQ0FBQyxjQUFELEVBQWlCLHNCQUFqQixDQUFOLENBRFk7Ozs7dUJBaEJQOzs7OztBQXNDYixvQkFBUyxnQkFBVCIsImZpbGUiOiJNZXNzYWdlQ29udGFpbmVyLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIE1lc3NhZ2VDb250YWluZXIge1xuXG4gICAgYmVmb3JlUmVnaXN0ZXIoKSB7XG4gICAgICAgIHRoaXMuaXMgPSAnc2ItbWVzc2FnZS1jb250YWluZXInO1xuICAgICAgICB0aGlzLnByb3BlcnRpZXMgPSB7XG4gICAgICAgICAgICBoYXNNZXNzYWdlOiB7XG4gICAgICAgICAgICAgICAgdHlwZTogQm9vbGVhbixcbiAgICAgICAgICAgICAgICB2YWx1ZTogZmFsc2VcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBtZXNzYWdlczoge1xuICAgICAgICAgICAgICAgIHR5cGU6IEFycmF5LFxuICAgICAgICAgICAgICAgIHZhbHVlOiBbXVxuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfVxuXG4gICAgZ2V0IG9ic2VydmVycygpIHtcbiAgICAgICAgcmV0dXJuWydtb2RlbChlcnJvciknLCAndmFsaWRhdGlvbihtZXNzYWdlcyknXTtcbiAgICB9XG5cbiAgICBtb2RlbCgpIHtcbiAgICAgICAgaWYgKHRoaXMuZXJyb3IudmFsaWRhdGlvbnMpIHtcbiAgICAgICAgICAgIGZvciAobGV0IGk9MDsgaTx0aGlzLmVycm9yLnZhbGlkYXRpb25zLmxlbmd0aDsgaSsrKSB7XG4gICAgICAgICAgICAgICAgdGhpcy5wdXNoKFwibWVzc2FnZXNcIiwgdGhpcy5lcnJvci52YWxpZGF0aW9uc1tpXSk7XG4gICAgICAgICAgICB9XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICB0aGlzLnB1c2goXCJtZXNzYWdlc1wiLCB0aGlzLmVycm9yLm1lc3NhZ2UpO1xuICAgICAgICB9XG4gICAgICAgIHRoaXMuaGFzTWVzc2FnZSA9IHRydWU7XG4gICAgfVxuXG4gICAgdmFsaWRhdGlvbigpIHtcbiAgICAgICAgaWYgKHRoaXMubWVzc2FnZXMubGVuZ3RoID4gMCkge1xuICAgICAgICAgICAgdGhpcy5oYXNNZXNzYWdlID0gdHJ1ZTtcbiAgICAgICAgfVxuICAgIH1cbn1cblxuUG9seW1lciggTWVzc2FnZUNvbnRhaW5lciApOyJdfQ==
'use strict';

System.register('common/core/sb-page-container/PageContainer.js', ['common/core/Page.js'], function (_export, _context) {
	var Page, _createClass, bpS, bpM, bpL, bpXL, mqS, mqM, mqMOnly, mqL, mqLOnly, mqXL, PageContainer;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_commonCorePageJs) {
			Page = _commonCorePageJs;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			bpS = '0';
			bpM = '768px';
			bpL = '1024px';
			bpXL = '1200px';
			mqS = window.matchMedia('screen and (max-width: ' + bpM + ')');
			mqM = window.matchMedia('screen and (min-width: ' + bpM + ')');
			mqMOnly = window.matchMedia('screen and (min-width: 769px) and (max-width: ' + bpL + ')');
			mqL = window.matchMedia('screen and (min-width: ' + bpL + ')');
			mqLOnly = window.matchMedia('screen and (min-width: 1025px) and (max-width: ' + bpXL + ')');
			mqXL = window.matchMedia('screen and (min-width: ' + bpXL + ')');

			_export('PageContainer', PageContainer = function () {
				function PageContainer() {
					_classCallCheck(this, PageContainer);
				}

				_createClass(PageContainer, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-page-container';
						this.properties = {
							route: String,

							allRoutes: {
								type: Object,
								value: function value() {
									return {};
								},
								observer: '_allRoutesChanged'
							},

							viewport: {
								type: Object,
								observer: '_viewportChanged',
								value: function value() {
									return this._buildViewport(mqS.matches, mqMOnly.matches, mqLOnly.matches, mqXL.matches);
								}
							}
						};
					}
				}, {
					key: '_buildViewport',
					value: function _buildViewport(s, m, l, xl) {
						var v = {
							S: {},
							M: {},
							L: {},
							XL: {}
						};

						v.S.only = s && !m && !l && !xl;
						v.S.down = v.S.only;
						v.S.up = s || m || l || xl;

						v.M.only = !s && m && !l && !xl;
						v.M.down = (s || m) && !l && !xl;
						v.M.up = !s && (m || l || xl);

						v.L.only = !s && !m && l && !xl;
						v.L.down = (s || m || l) && !xl;
						v.L.up = !s && !m && (l || xl);

						v.XL.only = !s && !m && !l && xl;
						v.XL.down = true;
						v.XL.up = v.XL.only;

						return v;
					}
				}, {
					key: 'ready',
					value: function ready() {
						this._setupViewportListeners();
					}
				}, {
					key: 'renderPage',
					value: function renderPage(e, detail, sender) {
						var _this = this;

						if (detail.route.comp && detail.route.comp != '') {
							(function () {
								var ctx = {};
								ctx.params = detail.params;
								ctx.pathParams = detail.pathParams;

								var html = function (detail, ctx) {
									return '<' + detail.route.comp + ' ctx=\'' + JSON.stringify(ctx) + '\' prefix=\'' + this.prefix + '\'></' + detail.route.comp + '>';
								}.bind(_this)(detail, ctx);
								if (detail.route.mod) {
									System.import(detail.route.mod).then(function (m) {
										this.$.content.innerHTML = html;
										this._viewportChanged();
										Polymer.updateStyles();
									}.bind(_this));
								} else {
									_this.$.content.innerHTML = html;
									Polymer.updateStyles();
								}
							})();
						} else {
							this.$.ajax.url = detail.route.view;
							if (this.$.ajax.url) this.$.ajax.go();
						}
					}
				}, {
					key: '_allRoutesChanged',
					value: function _allRoutesChanged(nv) {
						this.$.router.init(nv);
					}
				}, {
					key: '_viewportChanged',
					value: function _viewportChanged() {
						var el = this.$.content.querySelector('*:first-child');
						if (el) el.viewport = this.viewport;
						this.fire('sb-viewport-changed', { viewport: this.viewport });
					}
				}, {
					key: '_setupViewportListeners',
					value: function _setupViewportListeners() {
						var self = this;
						function build(m) {
							if (m.matches) self.viewport = self._buildViewport(mqS.matches, mqMOnly.matches, mqLOnly.matches, mqXL.matches);
						};

						mqS.addListener(build);
						mqMOnly.addListener(build);
						mqLOnly.addListener(build);
						mqXL.addListener(build);
					}
				}]);

				return PageContainer;
			}());

			_export('PageContainer', PageContainer);

			PageContainer.domId = 'sbPageContainer';

			Polymer(PageContainer);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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QUFMLENBQU8sSUFBUCxDQUFZLEdBQVosR0FBa0IsT0FBTyxLQUFQLENBQWEsSUFBYixDQUZkO0FBR0osV0FBSSxLQUFLLENBQUwsQ0FBTyxJQUFQLENBQVksR0FBWixFQUNKLEtBQUssQ0FBTCxDQUFPLElBQVAsQ0FBWSxFQUFaLEdBREE7T0F6QkQ7Ozs7dUNBOEJrQixJQUFLO0FBQ3ZCLFdBQUssQ0FBTCxDQUFPLE1BQVAsQ0FBYyxJQUFkLENBQW9CLEVBQXBCLEVBRHVCOzs7O3dDQUlMO0FBRWxCLFVBQUksS0FBSyxLQUFLLENBQUwsQ0FBTyxPQUFQLENBQWUsYUFBZixDQUE4QixlQUE5QixDQUFMLENBRmM7QUFHbEIsVUFBSSxFQUFKLEVBQVMsR0FBRyxRQUFILEdBQWMsS0FBSyxRQUFMLENBQXZCO0FBQ0EsV0FBSyxJQUFMLENBQVcscUJBQVgsRUFBa0MsRUFBRSxVQUFVLEtBQUssUUFBTCxFQUE5QyxFQUprQjs7OzsrQ0FRTztBQUN6QixVQUFJLE9BQU8sSUFBUCxDQURxQjtBQUV6QixlQUFTLEtBQVQsQ0FBZSxDQUFmLEVBQWtCO0FBQ2pCLFdBQUksRUFBRSxPQUFGLEVBQ0gsS0FBSyxRQUFMLEdBQWdCLEtBQUssY0FBTCxDQUFxQixJQUFJLE9BQUosRUFBYSxRQUFRLE9BQVIsRUFBaUIsUUFBUSxPQUFSLEVBQWlCLEtBQUssT0FBTCxDQUFwRixDQUREO09BREQsQ0FGeUI7O0FBT3pCLFVBQUksV0FBSixDQUFpQixLQUFqQixFQVB5QjtBQVF6QixjQUFRLFdBQVIsQ0FBcUIsS0FBckIsRUFSeUI7QUFTekIsY0FBUSxXQUFSLENBQXFCLEtBQXJCLEVBVHlCO0FBVXpCLFdBQUssV0FBTCxDQUFrQixLQUFsQixFQVZ5Qjs7OztXQWxHZDs7Ozs7QUFpSGIsaUJBQWMsS0FBZCxHQUFzQixpQkFBdEI7O0FBRUEsV0FBUyxhQUFUIiwiZmlsZSI6IlBhZ2VDb250YWluZXIuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgKiBhcyBQYWdlIGZyb20gJ2NvbW1vbi9jb3JlL1BhZ2UuanMnO1xuXG4vLyBNZWRpYSBRdWVyeSBicmVha3BvaW50cy4gIFRoZXNlIG5lZWQgdG8gYmUga2VwdCBpbiBzeW5jIHdpdGggdmFyaWFibGVzLmxlc3MuXG5sZXQgYnBTID0gJzAnLCBicE0gPSAnNzY4cHgnLCBicEwgPSAnMTAyNHB4JywgYnBYTCA9ICcxMjAwcHgnLFxuXHRcdG1xUyA9IHdpbmRvdy5tYXRjaE1lZGlhKCAnc2NyZWVuIGFuZCAobWF4LXdpZHRoOiAnICsgYnBNICsgJyknICksXG5cdFx0bXFNID0gd2luZG93Lm1hdGNoTWVkaWEoICdzY3JlZW4gYW5kIChtaW4td2lkdGg6ICcgKyBicE0gKyAnKScgKSxcblx0XHRtcU1Pbmx5ID0gd2luZG93Lm1hdGNoTWVkaWEoICdzY3JlZW4gYW5kIChtaW4td2lkdGg6IDc2OXB4KSBhbmQgKG1heC13aWR0aDogJyArIGJwTCArICcpJyApLFxuXHRcdG1xTCA9IHdpbmRvdy5tYXRjaE1lZGlhKCAnc2NyZWVuIGFuZCAobWluLXdpZHRoOiAnICsgYnBMICsgJyknICksXG5cdFx0bXFMT25seSA9IHdpbmRvdy5tYXRjaE1lZGlhKCAnc2NyZWVuIGFuZCAobWluLXdpZHRoOiAxMDI1cHgpIGFuZCAobWF4LXdpZHRoOiAnICsgYnBYTCArICcpJyApLFxuXHRcdC8vIEFBIEZpeCB0byByZXNvbHZlIGJ1dHRvbiByZW5kZXJpbmcgaXNzdWVcblx0XHRtcVhMID0gd2luZG93Lm1hdGNoTWVkaWEoICdzY3JlZW4gYW5kIChtaW4td2lkdGg6ICcgKyBicFhMICsgJyknICk7XG5cbmV4cG9ydCBjbGFzcyBQYWdlQ29udGFpbmVyIHtcblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLXBhZ2UtY29udGFpbmVyJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSB7XG5cdFx0XHRyb3V0ZTogU3RyaW5nLFxuXG5cdFx0XHRhbGxSb3V0ZXM6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiB7fTsgfSxcblx0XHRcdFx0b2JzZXJ2ZXI6ICdfYWxsUm91dGVzQ2hhbmdlZCdcblx0XHRcdH0sXG5cblx0XHRcdHZpZXdwb3J0OiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0b2JzZXJ2ZXI6ICdfdmlld3BvcnRDaGFuZ2VkJyxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkge1xuXHRcdFx0XHRcdHJldHVybiB0aGlzLl9idWlsZFZpZXdwb3J0KCBtcVMubWF0Y2hlcywgbXFNT25seS5tYXRjaGVzLCBtcUxPbmx5Lm1hdGNoZXMsIG1xWEwubWF0Y2hlcyApO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0X2J1aWxkVmlld3BvcnQoIHMsIG0sIGwsIHhsICkge1xuXHRcdGxldCB2ID0ge1xuXHRcdFx0Uzoge30sXG5cdFx0XHRNOiB7fSxcblx0XHRcdEw6IHt9LFxuXHRcdFx0WEw6IHt9XG5cdFx0fTtcblxuXHRcdHYuUy5vbmx5ID0gcyAmJiAhbSAmJiAhbCAmJiAheGw7XG5cdFx0di5TLmRvd24gPSB2LlMub25seTtcblx0XHR2LlMudXAgPSBzIHx8IG0gfHwgbCB8fCB4bDtcblxuXHRcdHYuTS5vbmx5ID0gIXMgJiYgbSAmJiAhbCAmJiAheGw7XG5cdFx0di5NLmRvd24gPSAocyB8fCBtKSAmJiAhbCAmJiAheGw7XG5cdFx0di5NLnVwID0gIXMgJiYgKG0gfHwgbCB8fCB4bCk7XG5cblx0XHR2Lkwub25seSA9ICFzICYmICFtICYmIGwgJiYgIXhsO1xuXHRcdHYuTC5kb3duID0gKHMgfHwgbSB8fCBsKSAmJiAheGw7XG5cdFx0di5MLnVwID0gIXMgJiYgIW0gJiYgKGwgfHwgeGwpO1xuXG5cdFx0di5YTC5vbmx5ID0gIXMgJiYgIW0gJiYgIWwgJiYgeGw7XG5cdFx0di5YTC5kb3duID0gdHJ1ZTtcblx0XHR2LlhMLnVwID0gdi5YTC5vbmx5O1xuXG5cdFx0cmV0dXJuIHY7XG5cdH1cblxuXHRyZWFkeSgpIHtcblx0XHR0aGlzLl9zZXR1cFZpZXdwb3J0TGlzdGVuZXJzKCk7XG5cdH1cblxuXHRyZW5kZXJQYWdlKCBlLCBkZXRhaWwsIHNlbmRlciApIHtcblxuXHRcdGlmKCBkZXRhaWwucm91dGUuY29tcCAmJiBkZXRhaWwucm91dGUuY29tcCAhPSAnJyApIHtcblx0XHRcdGxldCBjdHggPSB7fTtcblx0XHRcdGN0eC5wYXJhbXMgPSBkZXRhaWwucGFyYW1zO1xuXHRcdFx0Y3R4LnBhdGhQYXJhbXMgPSBkZXRhaWwucGF0aFBhcmFtcztcblxuXHRcdFx0Ly8gZHluYW1pY2FsbHkgYWRkIGNvbXBvbmVudFxuXHRcdFx0Ly8gdG9kbzogdW5iaW5kIHN0dWZmP1xuXHRcdFx0bGV0IGh0bWwgPSAoZnVuY3Rpb24oZGV0YWlsLCBjdHgpIHtcblx0XHRcdFx0cmV0dXJuICc8JyArIGRldGFpbC5yb3V0ZS5jb21wICsgJyBjdHg9XFwnJyArIEpTT04uc3RyaW5naWZ5KGN0eCkgKyAnXFwnIHByZWZpeD1cXCcnKyB0aGlzLnByZWZpeCArICdcXCc+PC8nICsgZGV0YWlsLnJvdXRlLmNvbXAgKyAnPic7XG5cdFx0XHR9LmJpbmQodGhpcykpKGRldGFpbCwgY3R4KTtcdFx0XHRcblx0XHRcdGlmKCBkZXRhaWwucm91dGUubW9kICkge1xuXHRcdFx0XHRTeXN0ZW0uaW1wb3J0KCBkZXRhaWwucm91dGUubW9kICkudGhlbiggZnVuY3Rpb24obSkge1xuXHRcdFx0XHRcdHRoaXMuJC5jb250ZW50LmlubmVySFRNTCA9IGh0bWw7XG5cdFx0XHRcdFx0dGhpcy5fdmlld3BvcnRDaGFuZ2VkKCk7IC8vIHVwZGF0ZSB0aGUgUGFnZSdzIHZpZXdwb3J0XG5cdFx0XHRcdFx0UG9seW1lci51cGRhdGVTdHlsZXMoKTtcblx0XHRcdFx0fS5iaW5kKHRoaXMpICk7XG5cdFx0XHR9XG5cdFx0XHRlbHNlIHtcblx0XHRcdFx0dGhpcy4kLmNvbnRlbnQuaW5uZXJIVE1MID0gaHRtbDtcblx0XHRcdFx0UG9seW1lci51cGRhdGVTdHlsZXMoKTtcblx0XHRcdH1cblx0XHR9XG5cdFx0ZWxzZSB7XG5cdFx0XHQvLyBsb2FkIHZpZXcgSFRNTCBmaWxlIC0gdG9kbzogY2FjaGVcblx0XHRcdHRoaXMuJC5hamF4LnVybCA9IGRldGFpbC5yb3V0ZS52aWV3O1xuXHRcdFx0aWYoIHRoaXMuJC5hamF4LnVybCApXG5cdFx0XHR0aGlzLiQuYWpheC5nbygpO1xuXHRcdH1cblx0fVxuXG5cdF9hbGxSb3V0ZXNDaGFuZ2VkKCBudiApIHtcblx0XHR0aGlzLiQucm91dGVyLmluaXQoIG52ICk7XG5cdH1cblxuXHRfdmlld3BvcnRDaGFuZ2VkKCkge1xuXHRcdC8vIHBhc3MgZG93biB0aGUgbmV3IHZhbHVlIHRvIHRoZSBwYWdlIGluc3RhbmNlIGFuZCBmaXJlIGV2ZW50IGZvciBhbnkgb3RoZXIgV0MncyB0aGF0IG1heSBiZSBsaXN0ZW5pbmdcblx0XHRsZXQgZWwgPSB0aGlzLiQuY29udGVudC5xdWVyeVNlbGVjdG9yKCAnKjpmaXJzdC1jaGlsZCcgKTtcblx0XHRpZiggZWwgKSBlbC52aWV3cG9ydCA9IHRoaXMudmlld3BvcnQ7XG5cdFx0dGhpcy5maXJlKCAnc2Itdmlld3BvcnQtY2hhbmdlZCcsIHsgdmlld3BvcnQ6IHRoaXMudmlld3BvcnQgfSApO1xuXHR9XG5cblx0Ly8gV2UgbGlzdGVuZXIgZm9yIE1RIHN0dWZmIGhlcmUgYW5kIHBhc3MgaXQgZG93biB0byBwYWdlIHNvIHdlIGRvbid0IGhhdmUgdG8gZG8gdGhpcyBldmVyeSB0aW1lIHdlIGNyZWF0ZSBhIG5ldyBQYWdlXG5cdF9zZXR1cFZpZXdwb3J0TGlzdGVuZXJzKCkge1xuXHRcdHZhciBzZWxmID0gdGhpcztcblx0XHRmdW5jdGlvbiBidWlsZChtKSB7XG5cdFx0XHRpZiggbS5tYXRjaGVzIClcblx0XHRcdFx0c2VsZi52aWV3cG9ydCA9IHNlbGYuX2J1aWxkVmlld3BvcnQoIG1xUy5tYXRjaGVzLCBtcU1Pbmx5Lm1hdGNoZXMsIG1xTE9ubHkubWF0Y2hlcywgbXFYTC5tYXRjaGVzICk7XG5cdFx0fTtcblxuXHRcdG1xUy5hZGRMaXN0ZW5lciggYnVpbGQgKTtcblx0XHRtcU1Pbmx5LmFkZExpc3RlbmVyKCBidWlsZCApO1xuXHRcdG1xTE9ubHkuYWRkTGlzdGVuZXIoIGJ1aWxkICk7XG5cdFx0bXFYTC5hZGRMaXN0ZW5lciggYnVpbGQgKTtcblx0fVxufVxuXG4vLyB0aGUgaWQgdXNlZCBpbiB0aGUgRE9NIGZvciB0aGlzIGVsZW1lbnRcblBhZ2VDb250YWluZXIuZG9tSWQgPSAnc2JQYWdlQ29udGFpbmVyJztcblxuUG9seW1lciggUGFnZUNvbnRhaW5lciApO1xuIl19
'use strict';

System.register('common/core/sb-page-header/PageHeader.js', ['common/core/sb-page-container/PageContainer.js'], function (_export, _context) {
	var PageContainer, _createClass, PageHeader;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_commonCoreSbPageContainerPageContainerJs) {
			PageContainer = _commonCoreSbPageContainerPageContainerJs.PageContainer;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('PageHeader', PageHeader = function () {
				function PageHeader() {
					_classCallCheck(this, PageHeader);
				}

				_createClass(PageHeader, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-page-header';
						this.properties = {
							viewport: Object
						};
					}
				}, {
					key: 'ready',
					value: function ready() {
						var con = document.querySelector('#' + PageContainer.domId);
						if (con) {
							con.addEventListener('sb-viewport-changed', function (e) {
								this.viewport = e.detail.viewport;
								if (this.viewport.M.up == true) {
									this._closeDialog();
								}
							}.bind(this));
						}
					}
				}, {
					key: '_openDialog',
					value: function _openDialog() {
						var actions = this.querySelector('.actions');
						var dialog = Polymer.dom(this.root).querySelector('#dialog');

						if (actions) {
							dialog.appendChild(actions);
						} else {
							actions = Polymer.dom(this.root).querySelector('.actions');
							if (actions) {
								dialog.appendChild(actions);
							}
						}
						Polymer.dom(this.root).querySelector('#dialog').classList.toggle("show");
					}
				}, {
					key: '_closeDialog',
					value: function _closeDialog() {
						var actions = Polymer.dom(this.root).querySelector('.actions');
						var buttons = Polymer.dom(this.root).querySelector('#buttons');
						if (Polymer.dom(this.root).querySelector('#dialog')) {
							Polymer.dom(this.root).querySelector('#dialog').classList.toggle("show");
						}

						if (actions) {
							buttons.appendChild(actions);
						}
					}
				}]);

				return PageHeader;
			}());

			_export('PageHeader', PageHeader);

			Polymer(PageHeader);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlBhZ2VIZWFkZXIuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztBQUFROzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7eUJBRUs7Ozs7Ozs7c0NBRUs7QUFDaEIsV0FBSyxFQUFMLEdBQVUsZ0JBQVYsQ0FEZ0I7QUFFaEIsV0FBSyxVQUFMLEdBQWtCO0FBS2pCLGlCQUFVLE1BQVY7T0FMRCxDQUZnQjs7Ozs2QkFXVDtBQUNQLFVBQUksTUFBTSxTQUFTLGFBQVQsQ0FBd0IsTUFBTSxjQUFjLEtBQWQsQ0FBcEMsQ0FERztBQUVQLFVBQUksR0FBSixFQUFVO0FBQ1QsV0FBSSxnQkFBSixDQUFzQixxQkFBdEIsRUFBNkMsVUFBUyxDQUFULEVBQVk7QUFDeEQsYUFBSyxRQUFMLEdBQWdCLEVBQUUsTUFBRixDQUFTLFFBQVQsQ0FEd0M7QUFFeEQsWUFBSSxLQUFLLFFBQUwsQ0FBYyxDQUFkLENBQWdCLEVBQWhCLElBQXNCLElBQXRCLEVBQTRCO0FBQy9CLGNBQUssWUFBTCxHQUQrQjtTQUFoQztRQUY0QyxDQUszQyxJQUwyQyxDQUt0QyxJQUxzQyxDQUE3QyxFQURTO09BQVY7Ozs7bUNBeUJhO0FBQ2IsVUFBSSxVQUFVLEtBQUssYUFBTCxDQUFvQixVQUFwQixDQUFWLENBRFM7QUFFYixVQUFJLFNBQVMsUUFBUSxHQUFSLENBQWEsS0FBSyxJQUFMLENBQWIsQ0FBeUIsYUFBekIsQ0FBd0MsU0FBeEMsQ0FBVCxDQUZTOztBQUliLFVBQUksT0FBSixFQUFjO0FBQ2IsY0FBTyxXQUFQLENBQW9CLE9BQXBCLEVBRGE7T0FBZCxNQUVPO0FBQ04saUJBQVUsUUFBUSxHQUFSLENBQWEsS0FBSyxJQUFMLENBQWIsQ0FBeUIsYUFBekIsQ0FBd0MsVUFBeEMsQ0FBVixDQURNO0FBRU4sV0FBSSxPQUFKLEVBQWM7QUFDYixlQUFPLFdBQVAsQ0FBb0IsT0FBcEIsRUFEYTtRQUFkO09BSkQ7QUFRQSxjQUFRLEdBQVIsQ0FBYSxLQUFLLElBQUwsQ0FBYixDQUF5QixhQUF6QixDQUF3QyxTQUF4QyxFQUFvRCxTQUFwRCxDQUE4RCxNQUE5RCxDQUFxRSxNQUFyRSxFQVphOzs7O29DQWVDO0FBQ2QsVUFBSSxVQUFVLFFBQVEsR0FBUixDQUFhLEtBQUssSUFBTCxDQUFiLENBQXlCLGFBQXpCLENBQXdDLFVBQXhDLENBQVYsQ0FEVTtBQUVkLFVBQUksVUFBVSxRQUFRLEdBQVIsQ0FBYSxLQUFLLElBQUwsQ0FBYixDQUF5QixhQUF6QixDQUF3QyxVQUF4QyxDQUFWLENBRlU7QUFHZCxVQUFJLFFBQVEsR0FBUixDQUFhLEtBQUssSUFBTCxDQUFiLENBQXlCLGFBQXpCLENBQXdDLFNBQXhDLENBQUosRUFBeUQ7QUFDeEQsZUFBUSxHQUFSLENBQVksS0FBSyxJQUFMLENBQVosQ0FBdUIsYUFBdkIsQ0FBcUMsU0FBckMsRUFBZ0QsU0FBaEQsQ0FBMEQsTUFBMUQsQ0FBaUUsTUFBakUsRUFEd0Q7T0FBekQ7O0FBSUEsVUFBSSxPQUFKLEVBQWM7QUFDYixlQUFRLFdBQVIsQ0FBcUIsT0FBckIsRUFEYTtPQUFkOzs7O1dBOURXOzs7OztBQXFFYixXQUFTLFVBQVQiLCJmaWxlIjoiUGFnZUhlYWRlci5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7UGFnZUNvbnRhaW5lcn0gZnJvbSAnY29tbW9uL2NvcmUvc2ItcGFnZS1jb250YWluZXIvUGFnZUNvbnRhaW5lci5qcyc7XG5cbmV4cG9ydCBjbGFzcyBQYWdlSGVhZGVyIHtcblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLXBhZ2UtaGVhZGVyJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSB7XG5cdFx0XHQvKipcblx0XHRcdCAqIFZpZXdwb3J0IGluZm9ybWF0aW9uIGZvciB0aGluZ3MgbGlrZSBULXNoaXJ0IHNpemUgKFMsIE0sIEwsIFhMKVxuXHRcdFx0ICogQHR5cGUge09iamVjdH1cblx0XHRcdCAqL1xuXHRcdFx0dmlld3BvcnQ6IE9iamVjdFxuXHRcdH1cblx0fVxuXG5cdHJlYWR5KCkge1xuXHRcdHZhciBjb24gPSBkb2N1bWVudC5xdWVyeVNlbGVjdG9yKCAnIycgKyBQYWdlQ29udGFpbmVyLmRvbUlkICk7XG5cdFx0aWYoIGNvbiApIHtcblx0XHRcdGNvbi5hZGRFdmVudExpc3RlbmVyKCAnc2Itdmlld3BvcnQtY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcblx0XHRcdFx0dGhpcy52aWV3cG9ydCA9IGUuZGV0YWlsLnZpZXdwb3J0O1xuXHRcdFx0XHRpZiAodGhpcy52aWV3cG9ydC5NLnVwID09IHRydWUpIHtcblx0XHRcdFx0XHR0aGlzLl9jbG9zZURpYWxvZygpO1xuXHRcdFx0XHR9XG5cdFx0XHR9LmJpbmQodGhpcykpO1xuXHRcdH1cblx0fVxuXG5cdC8vX29wZW5EaWFsb2coKSB7XG5cdC8vXHRsZXQgYWN0aW9ucyA9IHRoaXMucXVlcnlTZWxlY3RvciggJy5hY3Rpb25zJyApO1xuXHQvL1x0bGV0IGRpYWxvZyA9IFBvbHltZXIuZG9tKCB0aGlzLnJvb3QgKS5xdWVyeVNlbGVjdG9yKCAnI2RpYWxvZycgKTtcblx0Ly9cblx0Ly9cdGlmKCBhY3Rpb25zICkge1xuXHQvL1x0XHRkaWFsb2cuYXBwZW5kQ2hpbGQoIGFjdGlvbnMgKTtcblx0Ly9cdH0gZWxzZSB7XG5cdC8vXHRcdGFjdGlvbnMgPSBQb2x5bWVyLmRvbSggdGhpcy5yb290ICkucXVlcnlTZWxlY3RvciggJy5hY3Rpb25zJyApXG5cdC8vXHRcdGlmKCBhY3Rpb25zICkge1xuXHQvL1x0XHRcdGRpYWxvZy5hcHBlbmRDaGlsZCggYWN0aW9ucyApO1xuXHQvL1x0XHR9XG5cdC8vXHR9XG5cdC8vXHRkaWFsb2cub3BlbigpO1xuXHQvL31cblxuXHRfb3BlbkRpYWxvZygpIHtcblx0XHRsZXQgYWN0aW9ucyA9IHRoaXMucXVlcnlTZWxlY3RvciggJy5hY3Rpb25zJyApO1xuXHRcdGxldCBkaWFsb2cgPSBQb2x5bWVyLmRvbSggdGhpcy5yb290ICkucXVlcnlTZWxlY3RvciggJyNkaWFsb2cnICk7XG5cblx0XHRpZiggYWN0aW9ucyApIHtcblx0XHRcdGRpYWxvZy5hcHBlbmRDaGlsZCggYWN0aW9ucyApO1xuXHRcdH0gZWxzZSB7XG5cdFx0XHRhY3Rpb25zID0gUG9seW1lci5kb20oIHRoaXMucm9vdCApLnF1ZXJ5U2VsZWN0b3IoICcuYWN0aW9ucycgKVxuXHRcdFx0aWYoIGFjdGlvbnMgKSB7XG5cdFx0XHRcdGRpYWxvZy5hcHBlbmRDaGlsZCggYWN0aW9ucyApO1xuXHRcdFx0fVxuXHRcdH1cblx0XHRQb2x5bWVyLmRvbSggdGhpcy5yb290ICkucXVlcnlTZWxlY3RvciggJyNkaWFsb2cnICkuY2xhc3NMaXN0LnRvZ2dsZShcInNob3dcIilcblx0fVxuXG5cdF9jbG9zZURpYWxvZygpIHtcblx0XHRsZXQgYWN0aW9ucyA9IFBvbHltZXIuZG9tKCB0aGlzLnJvb3QgKS5xdWVyeVNlbGVjdG9yKCAnLmFjdGlvbnMnICk7XG5cdFx0bGV0IGJ1dHRvbnMgPSBQb2x5bWVyLmRvbSggdGhpcy5yb290ICkucXVlcnlTZWxlY3RvciggJyNidXR0b25zJyApO1xuXHRcdGlmXHQoUG9seW1lci5kb20oIHRoaXMucm9vdCApLnF1ZXJ5U2VsZWN0b3IoICcjZGlhbG9nJyApKSB7XG5cdFx0XHRQb2x5bWVyLmRvbSh0aGlzLnJvb3QpLnF1ZXJ5U2VsZWN0b3IoJyNkaWFsb2cnKS5jbGFzc0xpc3QudG9nZ2xlKFwic2hvd1wiKVxuXHRcdH1cblxuXHRcdGlmKCBhY3Rpb25zICkge1xuXHRcdFx0YnV0dG9ucy5hcHBlbmRDaGlsZCggYWN0aW9ucyApO1xuXHRcdH1cblxuXHR9XG59XG5cblBvbHltZXIoIFBhZ2VIZWFkZXIgKTtcbiJdfQ==
'use strict';

System.register('common/core/sb-router/Router.js', [], function (_export, _context) {
	var _createClass, private_router, routes, PATH_PARAM_REGEX, Router;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			private_router = undefined;
			routes = undefined;
			PATH_PARAM_REGEX = /:[a-z0-9_$]*/g;

			_export('Router', Router = function () {
				function Router() {
					_classCallCheck(this, Router);
				}

				_createClass(Router, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-router';
						this.properties = {
							autoHash: {
								type: Boolean,
								value: function value() {
									return false;
								}
							},

							route: {
								type: String,
								observer: 'routeChanged'
							},

							router: {
								type: Object,
								readOnly: true,
								value: function value() {
									if (!private_router) {
										private_router = new window.Router();
										private_router.init();
									}
									return private_router;
								}
							}
						};
					}
				}, {
					key: 'init',
					value: function init(allRoutes) {
						var _this = this;

						var modules = Object.keys(allRoutes);

						if (!routes && modules.length) {
							routes = allRoutes;
							var router = this.router,
							    len = modules ? modules.length : 0;

							for (var i = 0; i < len; i++) {
								var mod = modules[i],
								    modulePaths = Object.keys(routes[mod]),
								    pLen = modulePaths ? modulePaths.length : 0;

								var _loop = function _loop(p) {
									var path = modulePaths[p],
									    pathParams = path ? path.match(PATH_PARAM_REGEX) : null,
									    paramNames = [],
									    paramMap = {};

									if (pathParams) {
										paramNames = pathParams.map(function (val, index) {
											var p = val.substring(1);
											paramMap[p] = null;
											return p;
										});
									}

									router.on(mod + path, function (m, p, paramNames, paramMap) {
										var pathParams = JSON.parse(JSON.stringify(paramMap)),
										    params = Array.prototype.slice.call(arguments, 4),
										    paramsLen = params ? params.length : 0;

										for (var j = 0; j < paramsLen; j++) {
											pathParams[paramNames[j]] = params[j];
										}this.routeHandler(m, p, pathParams);
									}.bind(_this, mod, path, paramNames, paramMap));
								};

								for (var p = 0; p < pLen; p++) {
									_loop(p);
								}
							}

							router.on('/*', function () {
								console.log('got an unknown route. need to show 404 here');
							});

							router.on('', function () {
								console.log('Got the <empty> route');
							});
						}
					}
				}, {
					key: 'routeHandler',
					value: function routeHandler(mod, path, params) {
						var hash = window.location.hash.slice(1),
						    pos = hash.indexOf('?'),
						    qsParams = {};

						if (pos >= 0 && hash.length > pos) {
							qsParams = queryString.parse(hash.substring(pos + 1));
						}
						this.fire('sb-route-complete', { mod: mod, path: path, route: routes[mod][path], pathParams: params, params: qsParams });
					}
				}, {
					key: 'routeChanged',
					value: function routeChanged(nv, ov) {
						if (this.autoHash && nv) {
							var same = window.location.hash.slice(1) == this.route;
							window.location.hash = this.route;

							if (same) {
								var pos = nv.length > 1 ? nv.indexOf('/', 1) : 0;
								if (pos) {
									var qPos = nv.indexOf('?');
									this.routeHandler(nv.substring(0, pos), nv.substring(pos, qPos > 0 ? qPos : null));
								}
							}
						}
					}
				}]);

				return Router;
			}());

			_export('Router', Router);

			Polymer(Router);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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O0FBR1YsWUFBSSxHQUFKLEVBQVU7QUFDVCxhQUFJLE9BQU8sR0FBRyxPQUFILENBQVksR0FBWixDQUFQLENBREs7QUFFVCxjQUFLLFlBQUwsQ0FBbUIsR0FBRyxTQUFILENBQWMsQ0FBZCxFQUFpQixHQUFqQixDQUFuQixFQUEyQyxHQUFHLFNBQUgsQ0FBYyxHQUFkLEVBQW1CLE9BQU8sQ0FBUCxHQUFXLElBQVgsR0FBa0IsSUFBbEIsQ0FBOUQsRUFGUztTQUFWO1FBSEQ7T0FMRDs7OztXQWxHVzs7Ozs7QUFtSGIsV0FBUyxNQUFUIiwiZmlsZSI6IlJvdXRlci5qcyIsInNvdXJjZXNDb250ZW50IjpbImxldCBwcml2YXRlX3JvdXRlcixcblx0XHRyb3V0ZXMsXG5cdFx0UEFUSF9QQVJBTV9SRUdFWCA9IC86W2EtejAtOV8kXSovZztcblxuZXhwb3J0IGNsYXNzIFJvdXRlciB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1yb3V0ZXInO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdGF1dG9IYXNoOiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIGZhbHNlOyB9XG5cdFx0XHR9LFxuXG5cdFx0XHRyb3V0ZToge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdG9ic2VydmVyOiAncm91dGVDaGFuZ2VkJ1xuXHRcdFx0fSxcblxuXHRcdFx0cm91dGVyOiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0cmVhZE9ubHk6IHRydWUsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHtcblx0XHRcdFx0XHRpZiggIXByaXZhdGVfcm91dGVyICkge1xuXHRcdFx0XHRcdFx0cHJpdmF0ZV9yb3V0ZXIgPSBuZXcgd2luZG93LlJvdXRlcigpO1xuXHRcdFx0XHRcdFx0cHJpdmF0ZV9yb3V0ZXIuaW5pdCgpO1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0XHRyZXR1cm4gcHJpdmF0ZV9yb3V0ZXI7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHRpbml0KCBhbGxSb3V0ZXMgKSB7XG5cdFx0bGV0IG1vZHVsZXMgPSBPYmplY3Qua2V5cyhhbGxSb3V0ZXMpO1xuXG5cdFx0aWYoICFyb3V0ZXMgJiYgbW9kdWxlcy5sZW5ndGggKSB7XG5cdFx0XHRyb3V0ZXMgPSBhbGxSb3V0ZXM7XG5cdFx0XHRsZXQgcm91dGVyID0gdGhpcy5yb3V0ZXIsXG5cdFx0XHRsZW4gPSBtb2R1bGVzID8gbW9kdWxlcy5sZW5ndGggOiAwO1xuXG5cdFx0XHQvLyBhdHRhY2ggYSBEaXJlY3RvciBoYW5kbGVyIGZvciBhbGwgY29uZmlndXJlZCByb3V0ZXMgKG1vZHVsZSArIHBhdGggPSByb3V0ZSlcblx0XHRcdGZvciggbGV0IGk9MDsgaSA8IGxlbjsgaSsrICkge1xuXHRcdFx0XHRsZXQgbW9kID0gbW9kdWxlc1tpXSxcblx0XHRcdFx0bW9kdWxlUGF0aHMgPSBPYmplY3Qua2V5cyggcm91dGVzW21vZF0gKSxcblx0XHRcdFx0cExlbiA9IG1vZHVsZVBhdGhzID8gbW9kdWxlUGF0aHMubGVuZ3RoIDogMDtcblxuXHRcdFx0XHRmb3IoIGxldCBwPTA7IHAgPCBwTGVuOyBwKysgKSB7XG5cdFx0XHRcdFx0bGV0IHBhdGggPSBtb2R1bGVQYXRoc1twXSxcblx0XHRcdFx0XHRwYXRoUGFyYW1zID0gcGF0aCA/IHBhdGgubWF0Y2goIFBBVEhfUEFSQU1fUkVHRVggKSA6IG51bGwsXG5cdFx0XHRcdFx0cGFyYW1OYW1lcyA9IFtdLFxuXHRcdFx0XHRcdHBhcmFtTWFwID0ge307XG5cblx0XHRcdFx0XHQvLyBpZiBwYXRoIHBhcmFtcyBleGlzdCBidWlsZCBtYXAgb2YgbmFtZT12YWx1ZSBmb3IgZWFzeSBhY2Nlc3Ncblx0XHRcdFx0XHRpZiggcGF0aFBhcmFtcyApIHtcblx0XHRcdFx0XHRcdHBhcmFtTmFtZXMgPSBwYXRoUGFyYW1zLm1hcCggZnVuY3Rpb24oIHZhbCwgaW5kZXggKSB7XG5cdFx0XHRcdFx0XHRcdGxldCBwID0gdmFsLnN1YnN0cmluZygxKTtcblx0XHRcdFx0XHRcdFx0cGFyYW1NYXBbcF0gPSBudWxsO1xuXHRcdFx0XHRcdFx0XHRyZXR1cm4gcDtcblx0XHRcdFx0XHRcdH0pO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdHJvdXRlci5vbiggbW9kICsgcGF0aCwgZnVuY3Rpb24oIG0sIHAsIHBhcmFtTmFtZXMsIHBhcmFtTWFwICkge1xuXHRcdFx0XHRcdFx0bGV0IHBhdGhQYXJhbXMgPSBKU09OLnBhcnNlKEpTT04uc3RyaW5naWZ5KCBwYXJhbU1hcCApKSwgIC8vIGNsb25lXG5cdFx0XHRcdFx0XHRwYXJhbXMgPSBBcnJheS5wcm90b3R5cGUuc2xpY2UuY2FsbChhcmd1bWVudHMsNCksXG5cdFx0XHRcdFx0XHRwYXJhbXNMZW4gPSBwYXJhbXMgPyBwYXJhbXMubGVuZ3RoIDogMDtcblxuXHRcdFx0XHRcdFx0Ly8gbWFwIHBhdGggcGFyYW1ldGVyIG5hbWUgdG8gYWN0dWFsIHZhbHVlXG5cdFx0XHRcdFx0XHRmb3IoIGxldCBqPTA7IGogPCBwYXJhbXNMZW47IGorKyApXG5cdFx0XHRcdFx0XHRwYXRoUGFyYW1zW3BhcmFtTmFtZXNbal1dID0gcGFyYW1zW2pdO1xuXG5cdFx0XHRcdFx0XHR0aGlzLnJvdXRlSGFuZGxlciggbSwgcCwgcGF0aFBhcmFtcyApO1xuXHRcdFx0XHRcdH0uYmluZCh0aGlzLCBtb2QsIHBhdGgsIHBhcmFtTmFtZXMsIHBhcmFtTWFwKSk7XG5cdFx0XHRcdH1cblx0XHRcdH1cblxuXHRcdFx0cm91dGVyLm9uKCAnLyonLCBmdW5jdGlvbigpIHtcblx0XHRcdFx0Y29uc29sZS5sb2coICdnb3QgYW4gdW5rbm93biByb3V0ZS4gbmVlZCB0byBzaG93IDQwNCBoZXJlJyApOyAvLyB0b2RvXG5cdFx0XHR9KTtcblxuXHRcdFx0cm91dGVyLm9uKCAnJywgZnVuY3Rpb24oKSB7XG5cdFx0XHRcdGNvbnNvbGUubG9nKCAnR290IHRoZSA8ZW1wdHk+IHJvdXRlJyApO1xuXHRcdFx0fSlcblx0XHR9XG5cdH1cblxuXHQvKiB0aGUgRGlyZWN0b3Igcm91dGUgaGFuZGxlciAqL1xuXHRyb3V0ZUhhbmRsZXIoIG1vZCwgcGF0aCwgcGFyYW1zICkge1xuXHRcdC8vIERpcmVjdG9yIGRvZXNuJ3Qgc3VwcG9ydCBxdWVyeSBzdHJpbmctbGlrZSBwYXJhbXMgaW4gdGhlIGhhc2guICBXZSBoYXZlIHRvIG1hbnVhbGx5IGdldCB0aGVtLlxuXHRcdGxldCBoYXNoID0gd2luZG93LmxvY2F0aW9uLmhhc2guc2xpY2UoMSksXG5cdFx0cG9zID0gaGFzaC5pbmRleE9mKCAnPycgKSxcblx0XHRxc1BhcmFtcyA9IHt9O1xuXG5cdFx0aWYoIHBvcyA+PSAwICYmIGhhc2gubGVuZ3RoID4gcG9zICkge1xuXHRcdFx0Ly8gdXNlIDNyZCBwYXJ0eSB0byBwYXJzZVxuXHRcdFx0cXNQYXJhbXMgPSBxdWVyeVN0cmluZy5wYXJzZSggaGFzaC5zdWJzdHJpbmcoIHBvcysxICkgKTtcblx0XHR9XG5cdFx0dGhpcy5maXJlKCAnc2Itcm91dGUtY29tcGxldGUnLCB7bW9kOiBtb2QsIHBhdGg6IHBhdGgsIHJvdXRlOiByb3V0ZXNbbW9kXVtwYXRoXSwgcGF0aFBhcmFtczogcGFyYW1zLCBwYXJhbXM6IHFzUGFyYW1zIH0gKTtcblx0fVxuXG5cdC8qKiBPYnNlcnZlciBmb3Igd2hlbiB0aGUgcm91dGUgcHJvcGVydHkgY2hhbmdlcy4gIFVwZGF0ZSB0aGUgd2luZG93IGhhc2ggYW5kIGZpcmUgZXZlbnQgaWYgbmVlZGVkICovXG5cdHJvdXRlQ2hhbmdlZCggbnYsIG92ICkge1xuXHRcdGlmKCB0aGlzLmF1dG9IYXNoICYmIG52ICkge1xuXHRcdFx0bGV0IHNhbWUgPSB3aW5kb3cubG9jYXRpb24uaGFzaC5zbGljZSgxKSA9PSB0aGlzLnJvdXRlO1xuXHRcdFx0d2luZG93LmxvY2F0aW9uLmhhc2ggPSB0aGlzLnJvdXRlO1xuXG5cdFx0XHQvLyBpZiB5b3Ugc2V0IHRoZSBoYXNoIHRvIGJlIHNhbWUgdmFsdWUgYXMgaXQgY3VycmVudGx5IGhhcyB5b3UgZG9uJ3QgZ2V0IGEgaGFzaGNoYW5nZSBldmVudFxuXHRcdFx0aWYoIHNhbWUgKSB7XG5cdFx0XHRcdC8vIHdpbmRvdy5kaXNwYXRjaEV2ZW50KG5ldyBIYXNoQ2hhbmdlRXZlbnQoXCJoYXNoY2hhbmdlXCIpKTsgIGRvZXNuJ3Qgd29yayBpbiBGRiBzbyBtYW51YWxseSBoYW5kbGUgcm91dGVcblx0XHRcdFx0bGV0IHBvcyA9IG52Lmxlbmd0aCA+IDEgPyBudi5pbmRleE9mKCAnLycsIDEgKSA6IDA7XG5cdFx0XHRcdGlmKCBwb3MgKSB7XG5cdFx0XHRcdFx0bGV0IHFQb3MgPSBudi5pbmRleE9mKCAnPycgKTtcblx0XHRcdFx0XHR0aGlzLnJvdXRlSGFuZGxlciggbnYuc3Vic3RyaW5nKCAwLCBwb3MgKSwgbnYuc3Vic3RyaW5nKCBwb3MsIHFQb3MgPiAwID8gcVBvcyA6IG51bGwgKSApO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG5cblBvbHltZXIoIFJvdXRlciApO1xuIl19
'use strict';

System.register('common/core-old/sb-i18n/I18n.js', ['../Page.js'], function (_export, _context) {
	var Page, _createClass, I18n;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_PageJs) {
			Page = _PageJs.Page;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('I18n', I18n = function (_Page) {
				_inherits(I18n, _Page);

				function I18n() {
					_classCallCheck(this, I18n);

					return _possibleConstructorReturn(this, Object.getPrototypeOf(I18n).apply(this, arguments));
				}

				_createClass(I18n, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-i18n';
						this.properties = {
							locale: {
								type: String,
								notify: false,
								value: function value() {
									return '';
								}
							},

							key: {
								type: String,
								notify: false
							}
						};
					}
				}, {
					key: 'attached',
					value: function attached() {
						var key = this.key ? this.key : this.innerHTML;
						this.innerHTML = this.l(key);
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}]);

				return I18n;
			}(Page));

			_export('I18n', I18n);

			Polymer(I18n);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkkxOG4uanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFROzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7bUJBRUs7Ozs7Ozs7Ozs7O3NDQU1LO0FBQ2hCLFdBQUssRUFBTCxHQUFVLFNBQVYsQ0FEZ0I7QUFFaEIsV0FBSyxVQUFMLEdBQWtCO0FBTWpCLGVBQVE7QUFDUCxjQUFNLE1BQU47QUFDQSxnQkFBUSxLQUFSO0FBQ0EsZUFBTyxpQkFBVztBQUFFLGdCQUFPLEVBQVAsQ0FBRjtTQUFYO1FBSFI7O0FBVUEsWUFBSztBQUNKLGNBQU0sTUFBTjtBQUNBLGdCQUFRLEtBQVI7UUFGRDtPQWhCRCxDQUZnQjs7OztnQ0F5Qk47QUFDVixVQUFJLE1BQU0sS0FBSyxHQUFMLEdBQVcsS0FBSyxHQUFMLEdBQVcsS0FBSyxTQUFMLENBRHRCO0FBRVYsV0FBSyxTQUFMLEdBQWlCLEtBQUssQ0FBTCxDQUFPLEdBQVAsQ0FBakIsQ0FGVTs7Ozt5QkE3Qks7QUFDZixhQUFPLENBQUMsR0FBRyxNQUFILENBQVUsSUFBVixDQUFlLElBQWYsQ0FBUixDQURlOzs7O1dBRko7S0FBYTs7OztBQXFDMUIsV0FBUyxJQUFUIiwiZmlsZSI6IkkxOG4uanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1BhZ2V9IGZyb20gJy4uL1BhZ2UuanMnO1xuXG5leHBvcnQgY2xhc3MgSTE4biBleHRlbmRzIFBhZ2Uge1xuXG5cdGdldCBiZWhhdmlvcnMoKSB7XG5cdFx0cmV0dXJuIFtzYi5jb21tb24uY29yZS5QYWdlXTtcblx0fVxuXHRcblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1pMThuJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSB7XG5cdFx0XHQvKipcblx0XHRcdCogVGhlIEJDUCA0NyBsb2NhbGUgdG8gdXNlIHRvIGZvcm1hdCB0aGUgZGF0YSB2YWx1ZSBvciB0cmFuc2xhdGUgdGhlIG1lc3NhZ2Ugc3RyaW5nIChpLmUuIHRoZSBsYW5ndWFnZSkuXG5cdFx0XHQqIFRoaXMgd2lsbCBkZWZhdWx0IHRvIHRoZSB1c2VyJ3MgbG9jYWxlIG9yIGxhbmd1YWdlIHNvIHlvdSBvbmx5IG5lZWQgdG8gc2V0IGl0IGluIFwib3ZlcnJpZGVcIiBzaXR1YXRpb25zLlxuXHRcdFx0KiBAdHlwZSB7U3RyaW5nfVxuXHRcdFx0Ki9cblx0XHRcdGxvY2FsZToge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdG5vdGlmeTogZmFsc2UsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuICcnIH1cblx0XHRcdH0sXG5cblx0XHRcdC8qKlxuXHRcdFx0KiBUaGUga2V5IHRvIHVzZSB0byBsb29rdXAgdGhlIHRyYW5zbGF0ZWQgbWVzc2FnZSBzdHJpbmcuIE9ubHkgc2V0IGZvciBvdmVycmlkZXMgb3IgY29tcGxleC9sb25nIG1lc3NhZ2VzLlxuXHRcdFx0KiBAdHlwZSB7U3RyaW5nfVxuXHRcdFx0Ki9cblx0XHRcdGtleToge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdG5vdGlmeTogZmFsc2Vcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHRhdHRhY2hlZCgpIHtcblx0XHRsZXQga2V5ID0gdGhpcy5rZXkgPyB0aGlzLmtleSA6IHRoaXMuaW5uZXJIVE1MO1xuXHRcdHRoaXMuaW5uZXJIVE1MID0gdGhpcy5sKGtleSk7XG5cdH1cbn1cblxuUG9seW1lciggSTE4biApO1xuIl19
'use strict';

System.register('common/core-old/sb-page-container/PageContainer.js', [], function (_export, _context) {
	var _createClass, PageContainer;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('PageContainer', PageContainer = function () {
				function PageContainer() {
					_classCallCheck(this, PageContainer);
				}

				_createClass(PageContainer, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-page-container';
						this.properties = {
							route: String,
							allRoutes: {
								type: Object,
								value: function value() {
									return {};
								},
								observer: '_allRoutesChanged'
							}
						};
					}
				}, {
					key: 'renderPage',
					value: function renderPage(e, detail, sender) {
						var _this = this;

						if (detail.route.comp && detail.route.comp != '') {
							(function () {
								var ctx = {};
								ctx.params = detail.params;
								ctx.pathParams = detail.pathParams;

								var html = '<' + detail.route.comp + ' ctx=\'' + JSON.stringify(ctx) + '\'></' + detail.route.comp + '>';
								if (detail.route.mod) {
									System.import(detail.route.mod).then(function (m) {
										this.$.content.innerHTML = html;
										Polymer.updateStyles();
									}.bind(_this));
								} else {
									_this.$.content.innerHTML = html;
									Polymer.updateStyles();
								}
							})();
						} else {
							this.$.ajax.url = detail.route.view;
							if (this.$.ajax.url) this.$.ajax.go();
						}
					}
				}, {
					key: '_allRoutesChanged',
					value: function _allRoutesChanged(nv) {
						this.$.router.init(nv);
					}
				}]);

				return PageContainer;
			}());

			_export('PageContainer', PageContainer);

			Polymer(PageContainer);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlBhZ2VDb250YWluZXIuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7NEJBQWE7Ozs7Ozs7c0NBRUs7QUFDaEIsV0FBSyxFQUFMLEdBQVUsbUJBQVYsQ0FEZ0I7QUFFaEIsV0FBSyxVQUFMLEdBQWtCO0FBQ2pCLGNBQU8sTUFBUDtBQUNBLGtCQUFXO0FBQ1YsY0FBTSxNQUFOO0FBQ0EsZUFBTyxpQkFBVztBQUFFLGdCQUFPLEVBQVAsQ0FBRjtTQUFYO0FBQ1Asa0JBQVUsbUJBQVY7UUFIRDtPQUZELENBRmdCOzs7O2dDQVlMLEdBQUcsUUFBUSxRQUFTOzs7QUFFL0IsVUFBSSxPQUFPLEtBQVAsQ0FBYSxJQUFiLElBQXFCLE9BQU8sS0FBUCxDQUFhLElBQWIsSUFBcUIsRUFBckIsRUFBMEI7O0FBQ2xELFlBQUksTUFBTSxFQUFOO0FBQ0osWUFBSSxNQUFKLEdBQWEsT0FBTyxNQUFQO0FBQ2IsWUFBSSxVQUFKLEdBQWlCLE9BQU8sVUFBUDs7QUFJakIsWUFBSSxPQUFPLE1BQU0sT0FBTyxLQUFQLENBQWEsSUFBYixHQUFvQixTQUExQixHQUFzQyxLQUFLLFNBQUwsQ0FBZSxHQUFmLENBQXRDLEdBQTRELE9BQTVELEdBQXNFLE9BQU8sS0FBUCxDQUFhLElBQWIsR0FBb0IsR0FBMUY7QUFDWCxZQUFJLE9BQU8sS0FBUCxDQUFhLEdBQWIsRUFBbUI7QUFDdEIsZ0JBQU8sTUFBUCxDQUFlLE9BQU8sS0FBUCxDQUFhLEdBQWIsQ0FBZixDQUFrQyxJQUFsQyxDQUF3QyxVQUFTLENBQVQsRUFBWTtBQUNuRCxlQUFLLENBQUwsQ0FBTyxPQUFQLENBQWUsU0FBZixHQUEyQixJQUEzQixDQURtRDtBQUVuRCxrQkFBUSxZQUFSLEdBRm1EO1VBQVosQ0FHdEMsSUFIc0MsT0FBeEMsRUFEc0I7U0FBdkIsTUFNSztBQUNKLGVBQUssQ0FBTCxDQUFPLE9BQVAsQ0FBZSxTQUFmLEdBQTJCLElBQTNCLENBREk7QUFFSixpQkFBUSxZQUFSLEdBRkk7U0FOTDtZQVJrRDtPQUFuRCxNQW1CSztBQUVKLFlBQUssQ0FBTCxDQUFPLElBQVAsQ0FBWSxHQUFaLEdBQWtCLE9BQU8sS0FBUCxDQUFhLElBQWIsQ0FGZDtBQUdKLFdBQUksS0FBSyxDQUFMLENBQU8sSUFBUCxDQUFZLEdBQVosRUFDSixLQUFLLENBQUwsQ0FBTyxJQUFQLENBQVksRUFBWixHQURBO09BdEJEOzs7O3VDQTJCa0IsSUFBSztBQUN2QixXQUFLLENBQUwsQ0FBTyxNQUFQLENBQWMsSUFBZCxDQUFvQixFQUFwQixFQUR1Qjs7OztXQTNDWjs7Ozs7QUFnRGIsV0FBUyxhQUFUIiwiZmlsZSI6IlBhZ2VDb250YWluZXIuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgUGFnZUNvbnRhaW5lciB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1wYWdlLWNvbnRhaW5lcic7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0ge1xuXHRcdFx0cm91dGU6IFN0cmluZyxcblx0XHRcdGFsbFJvdXRlczoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHt9OyB9LFxuXHRcdFx0XHRvYnNlcnZlcjogJ19hbGxSb3V0ZXNDaGFuZ2VkJ1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdHJlbmRlclBhZ2UoIGUsIGRldGFpbCwgc2VuZGVyICkge1xuXG5cdFx0aWYoIGRldGFpbC5yb3V0ZS5jb21wICYmIGRldGFpbC5yb3V0ZS5jb21wICE9ICcnICkge1xuXHRcdFx0bGV0IGN0eCA9IHt9O1xuXHRcdFx0Y3R4LnBhcmFtcyA9IGRldGFpbC5wYXJhbXM7XG5cdFx0XHRjdHgucGF0aFBhcmFtcyA9IGRldGFpbC5wYXRoUGFyYW1zO1xuXG5cdFx0XHQvLyBkeW5hbWljYWxseSBhZGQgY29tcG9uZW50XG5cdFx0XHQvLyB0b2RvOiB1bmJpbmQgc3R1ZmY/XG5cdFx0XHRsZXQgaHRtbCA9ICc8JyArIGRldGFpbC5yb3V0ZS5jb21wICsgJyBjdHg9XFwnJyArIEpTT04uc3RyaW5naWZ5KGN0eCkgKyAnXFwnPjwvJyArIGRldGFpbC5yb3V0ZS5jb21wICsgJz4nO1xuXHRcdFx0aWYoIGRldGFpbC5yb3V0ZS5tb2QgKSB7XG5cdFx0XHRcdFN5c3RlbS5pbXBvcnQoIGRldGFpbC5yb3V0ZS5tb2QgKS50aGVuKCBmdW5jdGlvbihtKSB7XG5cdFx0XHRcdFx0dGhpcy4kLmNvbnRlbnQuaW5uZXJIVE1MID0gaHRtbDtcblx0XHRcdFx0XHRQb2x5bWVyLnVwZGF0ZVN0eWxlcygpO1xuXHRcdFx0XHR9LmJpbmQodGhpcykgKTtcblx0XHRcdH1cblx0XHRcdGVsc2Uge1xuXHRcdFx0XHR0aGlzLiQuY29udGVudC5pbm5lckhUTUwgPSBodG1sO1xuXHRcdFx0XHRQb2x5bWVyLnVwZGF0ZVN0eWxlcygpO1xuXHRcdFx0fVxuXHRcdH1cblx0XHRlbHNlIHtcblx0XHRcdC8vIGxvYWQgdmlldyBIVE1MIGZpbGUgLSB0b2RvOiBjYWNoZVxuXHRcdFx0dGhpcy4kLmFqYXgudXJsID0gZGV0YWlsLnJvdXRlLnZpZXc7XG5cdFx0XHRpZiggdGhpcy4kLmFqYXgudXJsIClcblx0XHRcdHRoaXMuJC5hamF4LmdvKCk7XG5cdFx0fVxuXHR9XG5cblx0X2FsbFJvdXRlc0NoYW5nZWQoIG52ICkge1xuXHRcdHRoaXMuJC5yb3V0ZXIuaW5pdCggbnYgKTtcblx0fVxufVxuXG5Qb2x5bWVyKCBQYWdlQ29udGFpbmVyICk7XG4iXX0=
'use strict';

System.register('common/core-old/sb-page-header/PageHeader.js', [], function (_export, _context) {
	var _createClass, PageHeader;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('PageHeader', PageHeader = function () {
				function PageHeader() {
					_classCallCheck(this, PageHeader);
				}

				_createClass(PageHeader, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-page-header';
						this.properties = {
							info: String,
							icon: String,
							subtitle: String,
							title: String
						};
					}
				}]);

				return PageHeader;
			}());

			_export('PageHeader', PageHeader);

			Polymer(PageHeader);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlBhZ2VIZWFkZXIuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7eUJBQWE7Ozs7Ozs7c0NBRUs7QUFDaEIsV0FBSyxFQUFMLEdBQVUsZ0JBQVYsQ0FEZ0I7QUFFaEIsV0FBSyxVQUFMLEdBQWtCO0FBQ2pCLGFBQU0sTUFBTjtBQUNBLGFBQU0sTUFBTjtBQUNBLGlCQUFVLE1BQVY7QUFDQSxjQUFPLE1BQVA7T0FKRCxDQUZnQjs7OztXQUZMOzs7OztBQWFiLFdBQVMsVUFBVCIsImZpbGUiOiJQYWdlSGVhZGVyLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIFBhZ2VIZWFkZXIge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItcGFnZS1oZWFkZXInO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdGluZm86IFN0cmluZyxcblx0XHRcdGljb246IFN0cmluZyxcblx0XHRcdHN1YnRpdGxlOiBTdHJpbmcsXG5cdFx0XHR0aXRsZTogU3RyaW5nXG5cdFx0fVxuXHR9XG59XG5cblBvbHltZXIoIFBhZ2VIZWFkZXIgKTtcbiJdfQ==
'use strict';

System.register('common/core-old/sb-router/Router.js', [], function (_export, _context) {
	var _createClass, private_router, routes, PATH_PARAM_REGEX, Router;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			private_router = undefined;
			routes = undefined;
			PATH_PARAM_REGEX = /:[a-z0-9_$]*/g;

			_export('Router', Router = function () {
				function Router() {
					_classCallCheck(this, Router);
				}

				_createClass(Router, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-router';
						this.properties = {
							autoHash: {
								type: Boolean,
								value: function value() {
									return false;
								}
							},

							route: {
								type: String,
								observer: 'routeChanged'
							},

							router: {
								type: Object,
								readOnly: true,
								value: function value() {
									if (!private_router) {
										private_router = new window.Router();
										private_router.init();
									}
									return private_router;
								}
							}
						};
					}
				}, {
					key: 'init',
					value: function init(allRoutes) {
						var _this = this;

						var modules = Object.keys(allRoutes);

						if (!routes && modules.length) {
							routes = allRoutes;
							var router = this.router,
							    len = modules ? modules.length : 0;

							for (var i = 0; i < len; i++) {
								var mod = modules[i],
								    modulePaths = Object.keys(routes[mod]),
								    pLen = modulePaths ? modulePaths.length : 0;

								var _loop = function _loop(p) {
									var path = modulePaths[p],
									    pathParams = path ? path.match(PATH_PARAM_REGEX) : null,
									    paramNames = [],
									    paramMap = {};

									if (pathParams) {
										paramNames = pathParams.map(function (val, index) {
											var p = val.substring(1);
											paramMap[p] = null;
											return p;
										});
									}

									router.on(mod + path, function (m, p, paramNames, paramMap) {
										var pathParams = JSON.parse(JSON.stringify(paramMap)),
										    params = Array.prototype.slice.call(arguments, 4),
										    paramsLen = params ? params.length : 0;

										for (var j = 0; j < paramsLen; j++) {
											pathParams[paramNames[j]] = params[j];
										}this.routeHandler(m, p, pathParams);
									}.bind(_this, mod, path, paramNames, paramMap));
								};

								for (var p = 0; p < pLen; p++) {
									_loop(p);
								}
							}

							router.on('/*', function () {
								console.log('got an unknown route. need to show 404 here');
							});

							router.on('', function () {
								console.log('Got the <empty> route');
							});
						}
					}
				}, {
					key: 'routeHandler',
					value: function routeHandler(mod, path, params) {
						var hash = window.location.hash.slice(1),
						    pos = hash.indexOf('?'),
						    qsParams = {};

						if (pos >= 0 && hash.length > pos) {
							qsParams = queryString.parse(hash.substring(pos + 1));
						}
						this.fire('sb-route-complete', { mod: mod, path: path, route: routes[mod][path], pathParams: params, params: qsParams });
					}
				}, {
					key: 'routeChanged',
					value: function routeChanged(nv, ov) {
						if (this.autoHash && nv) {
							var same = window.location.hash.slice(1) == this.route;
							window.location.hash = this.route;

							if (same) window.dispatchEvent(new HashChangeEvent("hashchange"));
						}
					}
				}]);

				return Router;
			}());

			_export('Router', Router);

			Polymer(Router);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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dGVyLmpzIiwic291cmNlc0NvbnRlbnQiOlsibGV0IHByaXZhdGVfcm91dGVyLFxuXHRcdHJvdXRlcyxcblx0XHRQQVRIX1BBUkFNX1JFR0VYID0gLzpbYS16MC05XyRdKi9nO1xuXG5leHBvcnQgY2xhc3MgUm91dGVyIHtcblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLXJvdXRlcic7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0ge1xuXHRcdFx0YXV0b0hhc2g6IHtcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4gZmFsc2U7IH1cblx0XHRcdH0sXG5cblx0XHRcdHJvdXRlOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0b2JzZXJ2ZXI6ICdyb3V0ZUNoYW5nZWQnXG5cdFx0XHR9LFxuXG5cdFx0XHRyb3V0ZXI6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHRyZWFkT25seTogdHJ1ZSxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkge1xuXHRcdFx0XHRcdGlmKCAhcHJpdmF0ZV9yb3V0ZXIgKSB7XG5cdFx0XHRcdFx0XHRwcml2YXRlX3JvdXRlciA9IG5ldyB3aW5kb3cuUm91dGVyKCk7XG5cdFx0XHRcdFx0XHRwcml2YXRlX3JvdXRlci5pbml0KCk7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHRcdHJldHVybiBwcml2YXRlX3JvdXRlcjtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdGluaXQoIGFsbFJvdXRlcyApIHtcblx0XHRsZXQgbW9kdWxlcyA9IE9iamVjdC5rZXlzKGFsbFJvdXRlcyk7XG5cblx0XHRpZiggIXJvdXRlcyAmJiBtb2R1bGVzLmxlbmd0aCApIHtcblx0XHRcdHJvdXRlcyA9IGFsbFJvdXRlcztcblx0XHRcdGxldCByb3V0ZXIgPSB0aGlzLnJvdXRlcixcblx0XHRcdGxlbiA9IG1vZHVsZXMgPyBtb2R1bGVzLmxlbmd0aCA6IDA7XG5cblx0XHRcdC8vIGF0dGFjaCBhIERpcmVjdG9yIGhhbmRsZXIgZm9yIGFsbCBjb25maWd1cmVkIHJvdXRlcyAobW9kdWxlICsgcGF0aCA9IHJvdXRlKVxuXHRcdFx0Zm9yKCBsZXQgaT0wOyBpIDwgbGVuOyBpKysgKSB7XG5cdFx0XHRcdGxldCBtb2QgPSBtb2R1bGVzW2ldLFxuXHRcdFx0XHRtb2R1bGVQYXRocyA9IE9iamVjdC5rZXlzKCByb3V0ZXNbbW9kXSApLFxuXHRcdFx0XHRwTGVuID0gbW9kdWxlUGF0aHMgPyBtb2R1bGVQYXRocy5sZW5ndGggOiAwO1xuXG5cdFx0XHRcdGZvciggbGV0IHA9MDsgcCA8IHBMZW47IHArKyApIHtcblx0XHRcdFx0XHRsZXQgcGF0aCA9IG1vZHVsZVBhdGhzW3BdLFxuXHRcdFx0XHRcdHBhdGhQYXJhbXMgPSBwYXRoID8gcGF0aC5tYXRjaCggUEFUSF9QQVJBTV9SRUdFWCApIDogbnVsbCxcblx0XHRcdFx0XHRwYXJhbU5hbWVzID0gW10sXG5cdFx0XHRcdFx0cGFyYW1NYXAgPSB7fTtcblxuXHRcdFx0XHRcdC8vIGlmIHBhdGggcGFyYW1zIGV4aXN0IGJ1aWxkIG1hcCBvZiBuYW1lPXZhbHVlIGZvciBlYXN5IGFjY2Vzc1xuXHRcdFx0XHRcdGlmKCBwYXRoUGFyYW1zICkge1xuXHRcdFx0XHRcdFx0cGFyYW1OYW1lcyA9IHBhdGhQYXJhbXMubWFwKCBmdW5jdGlvbiggdmFsLCBpbmRleCApIHtcblx0XHRcdFx0XHRcdFx0bGV0IHAgPSB2YWwuc3Vic3RyaW5nKDEpO1xuXHRcdFx0XHRcdFx0XHRwYXJhbU1hcFtwXSA9IG51bGw7XG5cdFx0XHRcdFx0XHRcdHJldHVybiBwO1xuXHRcdFx0XHRcdFx0fSk7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0cm91dGVyLm9uKCBtb2QgKyBwYXRoLCBmdW5jdGlvbiggbSwgcCwgcGFyYW1OYW1lcywgcGFyYW1NYXAgKSB7XG5cdFx0XHRcdFx0XHRsZXQgcGF0aFBhcmFtcyA9IEpTT04ucGFyc2UoSlNPTi5zdHJpbmdpZnkoIHBhcmFtTWFwICkpLCAgLy8gY2xvbmVcblx0XHRcdFx0XHRcdHBhcmFtcyA9IEFycmF5LnByb3RvdHlwZS5zbGljZS5jYWxsKGFyZ3VtZW50cyw0KSxcblx0XHRcdFx0XHRcdHBhcmFtc0xlbiA9IHBhcmFtcyA/IHBhcmFtcy5sZW5ndGggOiAwO1xuXG5cdFx0XHRcdFx0XHQvLyBtYXAgcGF0aCBwYXJhbWV0ZXIgbmFtZSB0byBhY3R1YWwgdmFsdWVcblx0XHRcdFx0XHRcdGZvciggbGV0IGo9MDsgaiA8IHBhcmFtc0xlbjsgaisrIClcblx0XHRcdFx0XHRcdHBhdGhQYXJhbXNbcGFyYW1OYW1lc1tqXV0gPSBwYXJhbXNbal07XG5cblx0XHRcdFx0XHRcdHRoaXMucm91dGVIYW5kbGVyKCBtLCBwLCBwYXRoUGFyYW1zICk7XG5cdFx0XHRcdFx0fS5iaW5kKHRoaXMsIG1vZCwgcGF0aCwgcGFyYW1OYW1lcywgcGFyYW1NYXApKTtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXG5cdFx0XHRyb3V0ZXIub24oICcvKicsIGZ1bmN0aW9uKCkge1xuXHRcdFx0XHRjb25zb2xlLmxvZyggJ2dvdCBhbiB1bmtub3duIHJvdXRlLiBuZWVkIHRvIHNob3cgNDA0IGhlcmUnICk7IC8vIHRvZG9cblx0XHRcdH0pO1xuXG5cdFx0XHRyb3V0ZXIub24oICcnLCBmdW5jdGlvbigpIHtcblx0XHRcdFx0Y29uc29sZS5sb2coICdHb3QgdGhlIDxlbXB0eT4gcm91dGUnICk7XG5cdFx0XHR9KVxuXHRcdH1cblx0fVxuXG5cdC8qIHRoZSBEaXJlY3RvciByb3V0ZSBoYW5kbGVyICovXG5cdHJvdXRlSGFuZGxlciggbW9kLCBwYXRoLCBwYXJhbXMgKSB7XG5cdFx0Ly8gRGlyZWN0b3IgZG9lc24ndCBzdXBwb3J0IHF1ZXJ5IHN0cmluZy1saWtlIHBhcmFtcyBpbiB0aGUgaGFzaC4gIFdlIGhhdmUgdG8gbWFudWFsbHkgZ2V0IHRoZW0uXG5cdFx0bGV0IGhhc2ggPSB3aW5kb3cubG9jYXRpb24uaGFzaC5zbGljZSgxKSxcblx0XHRwb3MgPSBoYXNoLmluZGV4T2YoICc/JyApLFxuXHRcdHFzUGFyYW1zID0ge307XG5cblx0XHRpZiggcG9zID49IDAgJiYgaGFzaC5sZW5ndGggPiBwb3MgKSB7XG5cdFx0XHQvLyB1c2UgM3JkIHBhcnR5IHRvIHBhcnNlXG5cdFx0XHRxc1BhcmFtcyA9IHF1ZXJ5U3RyaW5nLnBhcnNlKCBoYXNoLnN1YnN0cmluZyggcG9zKzEgKSApO1xuXHRcdH1cblx0XHR0aGlzLmZpcmUoICdzYi1yb3V0ZS1jb21wbGV0ZScsIHttb2Q6IG1vZCwgcGF0aDogcGF0aCwgcm91dGU6IHJvdXRlc1ttb2RdW3BhdGhdLCBwYXRoUGFyYW1zOiBwYXJhbXMsIHBhcmFtczogcXNQYXJhbXMgfSApO1xuXHR9XG5cblx0LyoqIE9ic2VydmVyIGZvciB3aGVuIHRoZSByb3V0ZSBwcm9wZXJ0eSBjaGFuZ2VzLiAgVXBkYXRlIHRoZSB3aW5kb3cgaGFzaCBhbmQgZmlyZSBldmVudCBpZiBuZWVkZWQgKi9cblx0cm91dGVDaGFuZ2VkKCBudiwgb3YgKSB7XG5cdFx0aWYoIHRoaXMuYXV0b0hhc2ggJiYgbnYgKSB7XG5cdFx0XHRsZXQgc2FtZSA9IHdpbmRvdy5sb2NhdGlvbi5oYXNoLnNsaWNlKDEpID09IHRoaXMucm91dGU7XG5cdFx0XHR3aW5kb3cubG9jYXRpb24uaGFzaCA9IHRoaXMucm91dGU7XG5cblx0XHRcdC8vIGlmIHlvdSBzZXQgdGhlIGhhc2ggdG8gYmUgc2FtZSB2YWx1ZSBhcyBpdCBjdXJyZW50bHkgaGFzIHlvdSBkb24ndCBnZXQgYSBoYXNoY2hhbmdlIGV2ZW50XG5cdFx0XHRpZiggc2FtZSApXG5cdFx0XHR3aW5kb3cuZGlzcGF0Y2hFdmVudChuZXcgSGFzaENoYW5nZUV2ZW50KFwiaGFzaGNoYW5nZVwiKSk7XG5cdFx0fVxuXHR9XG59XG5cblBvbHltZXIoIFJvdXRlciApO1xuIl19
"use strict";

System.register("common/data/cache/Cache.js", [], function (_export, _context) {
    var _createClass, map, Cache;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            map = {};

            _export("Cache", Cache = function () {
                function Cache() {
                    _classCallCheck(this, Cache);
                }

                _createClass(Cache, null, [{
                    key: "add",
                    value: function add(name, id, object) {
                        if (!name || !id || !object) return;

                        if (!map[name]) map[name] = {};

                        map[name][id] = object;
                    }
                }, {
                    key: "get",
                    value: function get(name, id) {
                        if (!name || !id) return null;

                        var cache = map[name];
                        if (!cache) return null;

                        return cache[id];
                    }
                }]);

                return Cache;
            }());

            _export("Cache", Cache);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkNhY2hlLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBQUksa0JBQU07OzZCQUVHOzs7Ozs7O3dDQUVFLE1BQU0sSUFBSSxRQUFRO0FBQ3pCLDRCQUFHLENBQUMsSUFBRCxJQUFTLENBQUMsRUFBRCxJQUFPLENBQUMsTUFBRCxFQUNmLE9BREo7O0FBR0EsNEJBQUcsQ0FBQyxJQUFJLElBQUosQ0FBRCxFQUNDLElBQUksSUFBSixJQUFZLEVBQVosQ0FESjs7QUFHQSw0QkFBSSxJQUFKLEVBQVUsRUFBVixJQUFnQixNQUFoQixDQVB5Qjs7Ozt3Q0FVbEIsTUFBTSxJQUFJO0FBQ2pCLDRCQUFHLENBQUMsSUFBRCxJQUFTLENBQUMsRUFBRCxFQUNSLE9BQU8sSUFBUCxDQURKOztBQUdBLDRCQUFJLFFBQVEsSUFBSSxJQUFKLENBQVIsQ0FKYTtBQUtqQiw0QkFBRyxDQUFDLEtBQUQsRUFDQyxPQUFPLElBQVAsQ0FESjs7QUFHQSwrQkFBTyxNQUFNLEVBQU4sQ0FBUCxDQVJpQjs7Ozt1QkFaWiIsImZpbGUiOiJDYWNoZS5qcyIsInNvdXJjZXNDb250ZW50IjpbImxldCBtYXAgPSB7fTtcblxuZXhwb3J0IGNsYXNzIENhY2hlIHtcblxuICAgIHN0YXRpYyBhZGQobmFtZSwgaWQsIG9iamVjdCkge1xuICAgICAgICBpZighbmFtZSB8fCAhaWQgfHwgIW9iamVjdClcbiAgICAgICAgICAgIHJldHVybjtcblxuICAgICAgICBpZighbWFwW25hbWVdKVxuICAgICAgICAgICAgbWFwW25hbWVdID0ge307XG5cbiAgICAgICAgbWFwW25hbWVdW2lkXSA9IG9iamVjdDtcbiAgICB9XG5cbiAgICBzdGF0aWMgZ2V0KG5hbWUsIGlkKSB7XG4gICAgICAgIGlmKCFuYW1lIHx8ICFpZClcbiAgICAgICAgICAgIHJldHVybiBudWxsO1xuXG4gICAgICAgIHZhciBjYWNoZSA9IG1hcFtuYW1lXTtcbiAgICAgICAgaWYoIWNhY2hlKVxuICAgICAgICAgICAgcmV0dXJuIG51bGw7XG5cbiAgICAgICAgcmV0dXJuIGNhY2hlW2lkXTtcbiAgICB9XG59Il19
'use strict';

System.register('common/data/client/OAuthClient.js', ['common/oauth/OAuth.js', 'common/data/client/RemoteOAuth.js'], function (_export, _context) {
	var OAuth, RemoteOAuth, _createClass, OAuthClient;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_commonOauthOAuthJs) {
			OAuth = _commonOauthOAuthJs.OAuth;
		}, function (_commonDataClientRemoteOAuthJs) {
			RemoteOAuth = _commonDataClientRemoteOAuthJs.RemoteOAuth;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('OAuthClient', OAuthClient = function () {
				function OAuthClient(prefix) {
					_classCallCheck(this, OAuthClient);

					this.prefix = prefix;
				}

				_createClass(OAuthClient, [{
					key: 'getConnection',
					value: function getConnection() {
						if (typeof Visualforce !== 'undefined') {
							return new Promise(function (resolve, reject) {
								resolve(new RemoteOAuth(this.prefix).getConnection());
							}.bind(this));
						} else {
							return new OAuth().getConnection();
						}
					}
				}]);

				return OAuthClient;
			}());

			_export('OAuthClient', OAuthClient);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIk9BdXRoQ2xpZW50LmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7QUFBUTs7QUFDQTs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzBCQUVLO0FBRVosYUFGWSxXQUVaLENBQVksTUFBWixFQUFvQjsyQkFGUixhQUVROztBQUNuQixVQUFLLE1BQUwsR0FBYyxNQUFkLENBRG1CO0tBQXBCOztpQkFGWTs7cUNBTUk7QUFDZixVQUFHLE9BQU8sV0FBUCxLQUF1QixXQUF2QixFQUFvQztBQUN0QyxjQUFPLElBQUksT0FBSixDQUFZLFVBQVMsT0FBVCxFQUFrQixNQUFsQixFQUEwQjtBQUM1QyxnQkFBUSxJQUFJLFdBQUosQ0FBZ0IsS0FBSyxNQUFMLENBQWhCLENBQTZCLGFBQTdCLEVBQVIsRUFENEM7UUFBMUIsQ0FFakIsSUFGaUIsQ0FFWixJQUZZLENBQVosQ0FBUCxDQURzQztPQUF2QyxNQUlPO0FBQ04sY0FBTyxJQUFJLEtBQUosR0FBWSxhQUFaLEVBQVAsQ0FETTtPQUpQOzs7O1dBUFciLCJmaWxlIjoiT0F1dGhDbGllbnQuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge09BdXRofSBmcm9tICdjb21tb24vb2F1dGgvT0F1dGguanMnO1xuaW1wb3J0IHtSZW1vdGVPQXV0aH0gZnJvbSAnY29tbW9uL2RhdGEvY2xpZW50L1JlbW90ZU9BdXRoLmpzJztcblxuZXhwb3J0IGNsYXNzIE9BdXRoQ2xpZW50IHtcblxuXHRjb25zdHJ1Y3RvcihwcmVmaXgpIHtcblx0XHR0aGlzLnByZWZpeCA9IHByZWZpeDtcblx0fVxuXG5cdGdldENvbm5lY3Rpb24oKSB7XG5cdFx0aWYodHlwZW9mIFZpc3VhbGZvcmNlICE9PSAndW5kZWZpbmVkJykge1xuXHRcdFx0cmV0dXJuIG5ldyBQcm9taXNlKGZ1bmN0aW9uKHJlc29sdmUsIHJlamVjdCkge1xuXHRcdFx0XHRyZXNvbHZlKG5ldyBSZW1vdGVPQXV0aCh0aGlzLnByZWZpeCkuZ2V0Q29ubmVjdGlvbigpKTtcblx0XHRcdH0uYmluZCh0aGlzKSk7XG5cdFx0fSBlbHNlIHtcblx0XHRcdHJldHVybiBuZXcgT0F1dGgoKS5nZXRDb25uZWN0aW9uKCk7XG5cdFx0fVxuXHR9XG59Il19
'use strict';

System.register('common/data/client/RemoteClient.js', [], function (_export, _context) {
    var _createClass, RemoteClient;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('RemoteClient', RemoteClient = function () {
                function RemoteClient() {
                    _classCallCheck(this, RemoteClient);
                }

                _createClass(RemoteClient, [{
                    key: 'read',
                    value: function read(prefix, reader, uid) {
                        this.prefix = prefix;
                        return this._remote('read', reader, uid);
                    }
                }, {
                    key: 'load',
                    value: function load(prefix, loader, uid, context) {
                        this.prefix = prefix;
                        return this._remote('load', loader, uid, JSON.stringify(context));
                    }
                }, {
                    key: 'save',
                    value: function save(prefix, saver, model) {
                        this.prefix = prefix;
                        return this._remote('save', saver, JSON.stringify(model));
                    }
                }, {
                    key: '_remote',
                    value: function _remote(method, provider, input, context) {
                        var action = this._getAction() + '.' + method;
                        if (context) return new Promise(function (resolve, reject) {
                            Visualforce.remoting.Manager.invokeAction(action, provider, input, context, function (obj, event) {
                                this._callback(obj, event, resolve, reject);
                            }.bind(this));
                        }.bind(this));

                        return new Promise(function (resolve, reject) {
                            Visualforce.remoting.Manager.invokeAction(action, provider, input, function (obj, event) {
                                this._callback(obj, event, resolve, reject);
                            }.bind(this));
                        }.bind(this));
                    }
                }, {
                    key: '_getAction',
                    value: function _getAction() {
                        return this._getPrefix() + 'ServiceRouter';
                    }
                }, {
                    key: '_getPrefix',
                    value: function _getPrefix() {
                        return this.prefix ? this.prefix + '.' : '';
                    }
                }, {
                    key: '_callback',
                    value: function _callback(obj, event, resolve, reject) {
                        if (!event.status) reject(event.message);else resolve(this._parse(obj));
                    }
                }, {
                    key: '_parse',
                    value: function _parse(obj) {
                        obj = obj.replace(/&quot;/g, '"');
                        try {
                            return JSON.parse(obj);
                        } catch (e) {
                            return obj;
                        }
                    }
                }]);

                return RemoteClient;
            }());

            _export('RemoteClient', RemoteClient);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlJlbW90ZUNsaWVudC5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztvQ0FBYTs7Ozs7Ozt5Q0FFSixRQUFRLFFBQVEsS0FBSztBQUN0Qiw2QkFBSyxNQUFMLEdBQWMsTUFBZCxDQURzQjtBQUV0QiwrQkFBTyxLQUFLLE9BQUwsQ0FBYSxNQUFiLEVBQXFCLE1BQXJCLEVBQTZCLEdBQTdCLENBQVAsQ0FGc0I7Ozs7eUNBS3JCLFFBQVEsUUFBUSxLQUFLLFNBQVM7QUFDL0IsNkJBQUssTUFBTCxHQUFjLE1BQWQsQ0FEK0I7QUFFL0IsK0JBQU8sS0FBSyxPQUFMLENBQWEsTUFBYixFQUFxQixNQUFyQixFQUE2QixHQUE3QixFQUFrQyxLQUFLLFNBQUwsQ0FBZSxPQUFmLENBQWxDLENBQVAsQ0FGK0I7Ozs7eUNBSzlCLFFBQVEsT0FBTyxPQUFPO0FBQ3ZCLDZCQUFLLE1BQUwsR0FBYyxNQUFkLENBRHVCO0FBRXZCLCtCQUFPLEtBQUssT0FBTCxDQUFhLE1BQWIsRUFBcUIsS0FBckIsRUFBNEIsS0FBSyxTQUFMLENBQWUsS0FBZixDQUE1QixDQUFQLENBRnVCOzs7OzRDQUtuQixRQUFRLFVBQVUsT0FBTyxTQUFTO0FBQ3RDLDRCQUFJLFNBQVMsS0FBSyxVQUFMLEtBQW9CLEdBQXBCLEdBQTBCLE1BQTFCLENBRHlCO0FBRXRDLDRCQUFHLE9BQUgsRUFDSSxPQUFPLElBQUksT0FBSixDQUFZLFVBQVUsT0FBVixFQUFtQixNQUFuQixFQUEyQjtBQUMxQyx3Q0FBWSxRQUFaLENBQXFCLE9BQXJCLENBQTZCLFlBQTdCLENBQTBDLE1BQTFDLEVBQWtELFFBQWxELEVBQTRELEtBQTVELEVBQW1FLE9BQW5FLEVBQTRFLFVBQVMsR0FBVCxFQUFjLEtBQWQsRUFBcUI7QUFDN0YscUNBQUssU0FBTCxDQUFlLEdBQWYsRUFBb0IsS0FBcEIsRUFBMkIsT0FBM0IsRUFBb0MsTUFBcEMsRUFENkY7NkJBQXJCLENBRTNFLElBRjJFLENBRXRFLElBRnNFLENBQTVFLEVBRDBDO3lCQUEzQixDQUlqQixJQUppQixDQUlaLElBSlksQ0FBWixDQUFQLENBREo7O0FBT0EsK0JBQU8sSUFBSSxPQUFKLENBQVksVUFBVSxPQUFWLEVBQW1CLE1BQW5CLEVBQTJCO0FBQzFDLHdDQUFZLFFBQVosQ0FBcUIsT0FBckIsQ0FBNkIsWUFBN0IsQ0FBMEMsTUFBMUMsRUFBa0QsUUFBbEQsRUFBNEQsS0FBNUQsRUFBbUUsVUFBUyxHQUFULEVBQWMsS0FBZCxFQUFxQjtBQUNwRixxQ0FBSyxTQUFMLENBQWUsR0FBZixFQUFvQixLQUFwQixFQUEyQixPQUEzQixFQUFvQyxNQUFwQyxFQURvRjs2QkFBckIsQ0FFbEUsSUFGa0UsQ0FFN0QsSUFGNkQsQ0FBbkUsRUFEMEM7eUJBQTNCLENBSWpCLElBSmlCLENBSVosSUFKWSxDQUFaLENBQVAsQ0FUc0M7Ozs7aURBZ0I3QjtBQUNULCtCQUFPLEtBQUssVUFBTCxLQUFvQixlQUFwQixDQURFOzs7O2lEQUlBO0FBQ1QsK0JBQU8sS0FBSyxNQUFMLEdBQWUsS0FBSyxNQUFMLEdBQWMsR0FBZCxHQUFxQixFQUFwQyxDQURFOzs7OzhDQUlILEtBQUssT0FBTyxTQUFTLFFBQVE7QUFDbkMsNEJBQUcsQ0FBQyxNQUFNLE1BQU4sRUFDQSxPQUFPLE1BQU0sT0FBTixDQUFQLENBREosS0FHSSxRQUFRLEtBQUssTUFBTCxDQUFZLEdBQVosQ0FBUixFQUhKOzs7OzJDQU1HLEtBQUs7QUFDUiw4QkFBTSxJQUFJLE9BQUosQ0FBWSxTQUFaLEVBQXNCLEdBQXRCLENBQU4sQ0FEUTtBQUVSLDRCQUFJO0FBQ0EsbUNBQU8sS0FBSyxLQUFMLENBQVcsR0FBWCxDQUFQLENBREE7eUJBQUosQ0FFRSxPQUFNLENBQU4sRUFBUztBQUNQLG1DQUFPLEdBQVAsQ0FETzt5QkFBVDs7Ozt1QkFwREciLCJmaWxlIjoiUmVtb3RlQ2xpZW50LmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIFJlbW90ZUNsaWVudCB7XG5cbiAgICByZWFkKHByZWZpeCwgcmVhZGVyLCB1aWQpIHtcbiAgICAgICAgdGhpcy5wcmVmaXggPSBwcmVmaXg7XG4gICAgICAgIHJldHVybiB0aGlzLl9yZW1vdGUoJ3JlYWQnLCByZWFkZXIsIHVpZCk7XG4gICAgfVxuXG4gICAgbG9hZChwcmVmaXgsIGxvYWRlciwgdWlkLCBjb250ZXh0KSB7XG4gICAgICAgIHRoaXMucHJlZml4ID0gcHJlZml4O1xuICAgICAgICByZXR1cm4gdGhpcy5fcmVtb3RlKCdsb2FkJywgbG9hZGVyLCB1aWQsIEpTT04uc3RyaW5naWZ5KGNvbnRleHQpKTtcbiAgICB9XG5cbiAgICBzYXZlKHByZWZpeCwgc2F2ZXIsIG1vZGVsKSB7XG4gICAgICAgIHRoaXMucHJlZml4ID0gcHJlZml4O1xuICAgICAgICByZXR1cm4gdGhpcy5fcmVtb3RlKCdzYXZlJywgc2F2ZXIsIEpTT04uc3RyaW5naWZ5KG1vZGVsKSk7XG4gICAgfVxuXG4gICAgX3JlbW90ZShtZXRob2QsIHByb3ZpZGVyLCBpbnB1dCwgY29udGV4dCkge1xuICAgICAgICB2YXIgYWN0aW9uID0gdGhpcy5fZ2V0QWN0aW9uKCkgKyAnLicgKyBtZXRob2Q7XG4gICAgICAgIGlmKGNvbnRleHQpXG4gICAgICAgICAgICByZXR1cm4gbmV3IFByb21pc2UoZnVuY3Rpb24gKHJlc29sdmUsIHJlamVjdCkge1xuICAgICAgICAgICAgICAgIFZpc3VhbGZvcmNlLnJlbW90aW5nLk1hbmFnZXIuaW52b2tlQWN0aW9uKGFjdGlvbiwgcHJvdmlkZXIsIGlucHV0LCBjb250ZXh0LCBmdW5jdGlvbihvYmosIGV2ZW50KSB7XG4gICAgICAgICAgICAgICAgICAgIHRoaXMuX2NhbGxiYWNrKG9iaiwgZXZlbnQsIHJlc29sdmUsIHJlamVjdCk7XG4gICAgICAgICAgICAgICB9LmJpbmQodGhpcykpO1xuICAgICAgICAgICAgfS5iaW5kKHRoaXMpKTtcblxuICAgICAgICByZXR1cm4gbmV3IFByb21pc2UoZnVuY3Rpb24gKHJlc29sdmUsIHJlamVjdCkge1xuICAgICAgICAgICAgVmlzdWFsZm9yY2UucmVtb3RpbmcuTWFuYWdlci5pbnZva2VBY3Rpb24oYWN0aW9uLCBwcm92aWRlciwgaW5wdXQsIGZ1bmN0aW9uKG9iaiwgZXZlbnQpIHtcbiAgICAgICAgICAgICAgICB0aGlzLl9jYWxsYmFjayhvYmosIGV2ZW50LCByZXNvbHZlLCByZWplY3QpO1xuICAgICAgICAgICB9LmJpbmQodGhpcykpO1xuICAgICAgICB9LmJpbmQodGhpcykpO1xuICAgIH1cblxuICAgIF9nZXRBY3Rpb24oKSB7XG4gICAgICAgIHJldHVybiB0aGlzLl9nZXRQcmVmaXgoKSArICdTZXJ2aWNlUm91dGVyJztcbiAgICB9XG5cbiAgICBfZ2V0UHJlZml4KCkge1xuICAgICAgICByZXR1cm4gdGhpcy5wcmVmaXggPyAodGhpcy5wcmVmaXggKyAnLicpIDogJyc7XG4gICAgfVxuXG4gICAgX2NhbGxiYWNrKG9iaiwgZXZlbnQsIHJlc29sdmUsIHJlamVjdCkge1xuICAgICAgICBpZighZXZlbnQuc3RhdHVzKVxuICAgICAgICAgICAgcmVqZWN0KGV2ZW50Lm1lc3NhZ2UpO1xuICAgICAgICBlbHNlXG4gICAgICAgICAgICByZXNvbHZlKHRoaXMuX3BhcnNlKG9iaikpO1xuICAgIH1cblxuICAgIF9wYXJzZShvYmopIHtcbiAgICAgICAgb2JqID0gb2JqLnJlcGxhY2UoLyZxdW90Oy9nLCdcIicpO1xuICAgICAgICB0cnkge1xuICAgICAgICAgICAgcmV0dXJuIEpTT04ucGFyc2Uob2JqKTtcbiAgICAgICAgfSBjYXRjaChlKSB7XG4gICAgICAgICAgICByZXR1cm4gb2JqO1xuICAgICAgICB9XG4gICAgfVxufSJdfQ==
'use strict';

System.register('common/data/client/RemoteOAuth.js', [], function (_export, _context) {
    var _createClass, RemoteOAuth;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('RemoteOAuth', RemoteOAuth = function () {
                function RemoteOAuth(prefix) {
                    _classCallCheck(this, RemoteOAuth);

                    this.remoteAction = 'OAuthExtension.refreshAccessToken';
                    if (prefix) this.remoteAction = prefix + '.' + this.remoteAction;

                    jsforce.OAuth2.prototype.refreshToken = function (refreshToken, callback) {
                        Visualforce.remoting.Manager.invokeAction(this.remoteAction, function (accessToken, event) {
                            this.cacheToken(accessToken);
                            callback(!accessToken ? { message: event.message } : false, { access_token: accessToken, id: '' });
                        }.bind(this));
                    }.bind(this);
                }

                _createClass(RemoteOAuth, [{
                    key: 'getConnection',
                    value: function getConnection() {
                        return new jsforce.Connection({
                            oauth2: new jsforce.OAuth2({ clientId: true, clientSecret: true }),
                            accessToken: this.getCachedToken(),
                            refreshToken: ''
                        });
                    }
                }, {
                    key: 'getCachedToken',
                    value: function getCachedToken() {
                        if (typeof sessionStorage === 'undefined') return '';

                        return sessionStorage.getItem(this.remoteAction);
                    }
                }, {
                    key: 'cacheToken',
                    value: function cacheToken(accessToken) {
                        if (typeof sessionStorage === 'undefined') return;

                        sessionStorage.setItem(this.remoteAction, accessToken);
                    }
                }]);

                return RemoteOAuth;
            }());

            _export('RemoteOAuth', RemoteOAuth);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlJlbW90ZU9BdXRoLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O21DQUFhO0FBRVQseUJBRlMsV0FFVCxDQUFZLE1BQVosRUFBb0I7MENBRlgsYUFFVzs7QUFDaEIseUJBQUssWUFBTCxHQUFvQixtQ0FBcEIsQ0FEZ0I7QUFFaEIsd0JBQUksTUFBSixFQUNJLEtBQUssWUFBTCxHQUFvQixTQUFTLEdBQVQsR0FBZSxLQUFLLFlBQUwsQ0FEdkM7O0FBR0EsNEJBQVEsTUFBUixDQUFlLFNBQWYsQ0FBeUIsWUFBekIsR0FBd0MsVUFBVSxZQUFWLEVBQXdCLFFBQXhCLEVBQWtDO0FBQ3RFLG9DQUFZLFFBQVosQ0FBcUIsT0FBckIsQ0FBNkIsWUFBN0IsQ0FBMEMsS0FBSyxZQUFMLEVBQW1CLFVBQVUsV0FBVixFQUF1QixLQUF2QixFQUE4QjtBQUN2RixpQ0FBSyxVQUFMLENBQWdCLFdBQWhCLEVBRHVGO0FBRXZGLHFDQUFVLENBQUMsV0FBRCxHQUFlLEVBQUMsU0FBUyxNQUFNLE9BQU4sRUFBekIsR0FBMEMsS0FBMUMsRUFBa0QsRUFBQyxjQUFjLFdBQWQsRUFBMkIsSUFBSSxFQUFKLEVBQXhGLEVBRnVGO3lCQUE5QixDQUczRCxJQUgyRCxDQUd0RCxJQUhzRCxDQUE3RCxFQURzRTtxQkFBbEMsQ0FLdEMsSUFMc0MsQ0FLakMsSUFMaUMsQ0FBeEMsQ0FMZ0I7aUJBQXBCOzs2QkFGUzs7b0RBZU87QUFDWiwrQkFBTyxJQUFJLFFBQVEsVUFBUixDQUFtQjtBQUMxQixvQ0FBUyxJQUFJLFFBQVEsTUFBUixDQUFlLEVBQUMsVUFBVyxJQUFYLEVBQWlCLGNBQWMsSUFBZCxFQUFyQyxDQUFUO0FBQ0EseUNBQWMsS0FBSyxjQUFMLEVBQWQ7QUFDQSwwQ0FBYyxFQUFkO3lCQUhHLENBQVAsQ0FEWTs7OztxREFRQztBQUNiLDRCQUFHLE9BQU8sY0FBUCxLQUEwQixXQUExQixFQUNDLE9BQU8sRUFBUCxDQURKOztBQUdBLCtCQUFPLGVBQWUsT0FBZixDQUF1QixLQUFLLFlBQUwsQ0FBOUIsQ0FKYTs7OzsrQ0FPTixhQUFhO0FBQ3BCLDRCQUFHLE9BQU8sY0FBUCxLQUEwQixXQUExQixFQUNDLE9BREo7O0FBR0EsdUNBQWUsT0FBZixDQUF1QixLQUFLLFlBQUwsRUFBbUIsV0FBMUMsRUFKb0I7Ozs7dUJBOUJmIiwiZmlsZSI6IlJlbW90ZU9BdXRoLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIFJlbW90ZU9BdXRoIHtcblxuICAgIGNvbnN0cnVjdG9yKHByZWZpeCkge1xuICAgICAgICB0aGlzLnJlbW90ZUFjdGlvbiA9ICdPQXV0aEV4dGVuc2lvbi5yZWZyZXNoQWNjZXNzVG9rZW4nO1xuICAgICAgICBpZiAocHJlZml4KVxuICAgICAgICAgICAgdGhpcy5yZW1vdGVBY3Rpb24gPSBwcmVmaXggKyAnLicgKyB0aGlzLnJlbW90ZUFjdGlvbjtcblxuICAgICAgICBqc2ZvcmNlLk9BdXRoMi5wcm90b3R5cGUucmVmcmVzaFRva2VuID0gZnVuY3Rpb24gKHJlZnJlc2hUb2tlbiwgY2FsbGJhY2spIHtcbiAgICAgICAgICAgIFZpc3VhbGZvcmNlLnJlbW90aW5nLk1hbmFnZXIuaW52b2tlQWN0aW9uKHRoaXMucmVtb3RlQWN0aW9uLCBmdW5jdGlvbiAoYWNjZXNzVG9rZW4sIGV2ZW50KSB7XG4gICAgICAgICAgICAgICAgdGhpcy5jYWNoZVRva2VuKGFjY2Vzc1Rva2VuKTtcbiAgICAgICAgICAgICAgICBjYWxsYmFjaygoIWFjY2Vzc1Rva2VuID8ge21lc3NhZ2U6IGV2ZW50Lm1lc3NhZ2V9IDogZmFsc2UpLCB7YWNjZXNzX3Rva2VuOiBhY2Nlc3NUb2tlbiwgaWQ6ICcnfSk7XG4gICAgICAgICAgICB9LmJpbmQodGhpcykpO1xuICAgICAgICB9LmJpbmQodGhpcyk7XG4gICAgfVxuXG4gICAgZ2V0Q29ubmVjdGlvbigpIHtcbiAgICAgICAgcmV0dXJuIG5ldyBqc2ZvcmNlLkNvbm5lY3Rpb24oe1xuICAgICAgICAgICAgb2F1dGgyIDogbmV3IGpzZm9yY2UuT0F1dGgyKHtjbGllbnRJZCA6IHRydWUsIGNsaWVudFNlY3JldDogdHJ1ZX0pLFxuICAgICAgICAgICAgYWNjZXNzVG9rZW4gOiB0aGlzLmdldENhY2hlZFRva2VuKCksXG4gICAgICAgICAgICByZWZyZXNoVG9rZW46ICcnXG4gICAgICAgIH0pO1xuICAgIH1cblxuICAgIGdldENhY2hlZFRva2VuKCkge1xuICAgICAgICBpZih0eXBlb2Ygc2Vzc2lvblN0b3JhZ2UgPT09ICd1bmRlZmluZWQnKVxuICAgICAgICAgICAgcmV0dXJuICcnO1xuXG4gICAgICAgIHJldHVybiBzZXNzaW9uU3RvcmFnZS5nZXRJdGVtKHRoaXMucmVtb3RlQWN0aW9uKTtcbiAgICB9XG5cbiAgICBjYWNoZVRva2VuKGFjY2Vzc1Rva2VuKSB7XG4gICAgICAgIGlmKHR5cGVvZiBzZXNzaW9uU3RvcmFnZSA9PT0gJ3VuZGVmaW5lZCcpXG4gICAgICAgICAgICByZXR1cm47XG5cbiAgICAgICAgc2Vzc2lvblN0b3JhZ2Uuc2V0SXRlbSh0aGlzLnJlbW90ZUFjdGlvbiwgYWNjZXNzVG9rZW4pO1xuICAgIH1cbn0iXX0=
'use strict';

System.register('common/data/client/RestClient.js', ['common/oauth/OAuth.js'], function (_export, _context) {
    var OAuth, _createClass, RestClient;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [function (_commonOauthOAuthJs) {
            OAuth = _commonOauthOAuthJs.OAuth;
        }],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('RestClient', RestClient = function () {
                function RestClient() {
                    _classCallCheck(this, RestClient);
                }

                _createClass(RestClient, [{
                    key: 'read',
                    value: function read(prefix, reader, uid) {
                        this.prefix = prefix;
                        return new Promise(function (resolve, reject) {
                            this._getApex().then(function (apex) {
                                apex.get(this._getEndpoint() + '?reader=' + reader + '&uid=' + uid).then(function (result) {
                                    this._handleResult(resolve, reject, result);
                                }.bind(this), function (err) {
                                    reject(err.message || err);
                                });
                            }.bind(this), function (err) {
                                reject(err.message || err);
                            });
                        }.bind(this));
                    }
                }, {
                    key: 'load',
                    value: function load(prefix, loader, uid, context) {
                        this.prefix = prefix;
                        return new Promise(function (resolve, reject) {
                            this._getApex().then(function (apex) {
                                apex.patch(this._getEndpoint() + '?loader=' + loader + '&uid=' + uid, {
                                    context: JSON.stringify(context)
                                }).then(function (result) {
                                    this._handleResult(resolve, reject, result);
                                }.bind(this), function (err) {
                                    reject(err.message || err);
                                });
                            }.bind(this), function (err) {
                                reject(err.message || err);
                            });
                        }.bind(this));
                    }
                }, {
                    key: 'save',
                    value: function save(prefix, saver, model) {
                        this.prefix = prefix;
                        return new Promise(function (resolve, reject) {
                            this._getApex().then(function (apex) {
                                apex.post(this._getEndpoint(), {
                                    saver: saver,
                                    model: JSON.stringify(model)
                                }).then(function (result) {
                                    this._handleResult(resolve, reject, result);
                                }.bind(this), function (err) {
                                    reject(err.message || err);
                                });
                            }.bind(this), function (err) {
                                reject(err.message || err);
                            });
                        }.bind(this));
                    }
                }, {
                    key: 'setConnection',
                    value: function setConnection(conn) {
                        this.connection = conn;
                    }
                }, {
                    key: '_getApex',
                    value: function _getApex() {
                        if (this.connection) return Promise.resolve(this.connection.apex);

                        if (typeof window === 'undefined') return Promise.reject('Connection not set');

                        this.oauth = this.oauth || new OAuth();
                        return this._getConnection(this.oauth);
                    }
                }, {
                    key: '_getConnection',
                    value: function _getConnection(oauth) {
                        return new Promise(function (resolve, reject) {
                            oauth.getConnection().then(function (conn) {
                                this.connection = conn;
                                resolve(this.connection.apex);
                            }.bind(this), function (err) {
                                reject(err.message || err);
                            });
                        }.bind(this));
                    }
                }, {
                    key: '_getEndpoint',
                    value: function _getEndpoint() {
                        return this._getPrefix() + '/ServiceRouter';
                    }
                }, {
                    key: '_getPrefix',
                    value: function _getPrefix() {
                        return this.prefix ? '/' + this.prefix : '';
                    }
                }, {
                    key: '_handleResult',
                    value: function _handleResult(resolve, reject, result) {
                        if (result.proxy) {
                            this._handleProxyResult(resolve, reject, result.proxy);
                            return;
                        }
                        resolve(parse(result));
                    }
                }, {
                    key: '_handleProxyResult',
                    value: function _handleProxyResult(resolve, reject, proxyResult) {
                        if (proxyResult.error) {
                            this._handleProxyErrorResult(reject, proxyResult.error);
                            return;
                        }
                        if (this.oauth && proxyResult.accessToken) this.oauth.accessToken = proxyResult.accessToken;

                        resolve(this._parse(proxyResult.response));
                    }
                }, {
                    key: '_handleProxyErrorResult',
                    value: function _handleProxyErrorResult(reject, error) {
                        console.warn('Service Proxy Exception: ' + this._adjustProxyErrorMessage(error));
                        reject(error);
                    }
                }, {
                    key: '_adjustProxyErrorMessage',
                    value: function _adjustProxyErrorMessage(errorMessage) {
                        if (errorMessage === 'expired access/refresh token') errorMessage += ' - to authorize go to http://localhost:' + location.port + '/common/oauth';

                        return errorMessage;
                    }
                }, {
                    key: '_parse',
                    value: function _parse(obj) {
                        try {
                            return JSON.parse(obj);
                        } catch (e) {
                            return obj;
                        }
                    }
                }]);

                return RestClient;
            }());

            _export('RestClient', RestClient);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,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c3RDbGllbnQuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge09BdXRofSBmcm9tICdjb21tb24vb2F1dGgvT0F1dGguanMnO1xuXG5leHBvcnQgY2xhc3MgUmVzdENsaWVudCB7XG5cbiAgICByZWFkKHByZWZpeCwgcmVhZGVyLCB1aWQpIHtcbiAgICAgICAgdGhpcy5wcmVmaXggPSBwcmVmaXg7XG4gICAgICAgIHJldHVybiBuZXcgUHJvbWlzZShmdW5jdGlvbihyZXNvbHZlLCByZWplY3QpIHtcbiAgICAgICAgICAgIHRoaXMuX2dldEFwZXgoKS50aGVuKGZ1bmN0aW9uKGFwZXgpIHtcbiAgICAgICAgICAgICAgICBhcGV4LmdldCh0aGlzLl9nZXRFbmRwb2ludCgpICsgJz9yZWFkZXI9JyArIHJlYWRlciArICcmdWlkPScgKyB1aWQpLnRoZW4oZnVuY3Rpb24ocmVzdWx0KSB7XG4gICAgICAgICAgICAgICAgICAgIHRoaXMuX2hhbmRsZVJlc3VsdChyZXNvbHZlLCByZWplY3QsIHJlc3VsdCk7XG4gICAgICAgICAgICAgICAgfS5iaW5kKHRoaXMpLCBmdW5jdGlvbihlcnIpIHtcbiAgICAgICAgICAgICAgICAgICAgcmVqZWN0KGVyci5tZXNzYWdlIHx8IGVycik7XG4gICAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICB9LmJpbmQodGhpcyksIGZ1bmN0aW9uKGVycikge1xuICAgICAgICAgICAgICAgIHJlamVjdChlcnIubWVzc2FnZSB8fCBlcnIpO1xuICAgICAgICAgICB9KTtcbiAgICAgICAgfS5iaW5kKHRoaXMpKTtcbiAgICB9XG5cbiAgICBsb2FkKHByZWZpeCwgbG9hZGVyLCB1aWQsIGNvbnRleHQpIHtcbiAgICAgICAgdGhpcy5wcmVmaXggPSBwcmVmaXg7XG4gICAgICAgIHJldHVybiBuZXcgUHJvbWlzZShmdW5jdGlvbihyZXNvbHZlLCByZWplY3QpIHtcbiAgICAgICAgICAgIHRoaXMuX2dldEFwZXgoKS50aGVuKGZ1bmN0aW9uKGFwZXgpIHtcbiAgICAgICAgICAgICAgICBhcGV4LnBhdGNoKHRoaXMuX2dldEVuZHBvaW50KCkgKyAnP2xvYWRlcj0nICsgbG9hZGVyICsgJyZ1aWQ9JyArIHVpZCwge1xuICAgICAgICAgICAgICAgICAgICAgICAgY29udGV4dDogSlNPTi5zdHJpbmdpZnkoY29udGV4dClcbiAgICAgICAgICAgICAgICAgICAgfSkudGhlbihmdW5jdGlvbihyZXN1bHQpIHtcbiAgICAgICAgICAgICAgICAgICAgdGhpcy5faGFuZGxlUmVzdWx0KHJlc29sdmUsIHJlamVjdCwgcmVzdWx0KTtcbiAgICAgICAgICAgICAgICB9LmJpbmQodGhpcyksIGZ1bmN0aW9uKGVycikge1xuICAgICAgICAgICAgICAgICAgICByZWplY3QoZXJyLm1lc3NhZ2UgfHwgZXJyKTtcbiAgICAgICAgICAgICAgICB9KTtcbiAgICAgICAgICAgIH0uYmluZCh0aGlzKSwgZnVuY3Rpb24oZXJyKSB7XG4gICAgICAgICAgICAgICAgcmVqZWN0KGVyci5tZXNzYWdlIHx8IGVycik7XG4gICAgICAgICAgIH0pO1xuICAgICAgICB9LmJpbmQodGhpcykpO1xuICAgIH1cblxuICAgIHNhdmUocHJlZml4LCBzYXZlciwgbW9kZWwpIHtcbiAgICAgICAgdGhpcy5wcmVmaXggPSBwcmVmaXg7XG4gICAgICAgIHJldHVybiBuZXcgUHJvbWlzZShmdW5jdGlvbihyZXNvbHZlLCByZWplY3QpIHtcbiAgICAgICAgICAgIHRoaXMuX2dldEFwZXgoKS50aGVuKGZ1bmN0aW9uKGFwZXgpIHtcbiAgICAgICAgICAgICAgICBhcGV4LnBvc3QodGhpcy5fZ2V0RW5kcG9pbnQoKSwge1xuICAgICAgICAgICAgICAgICAgICBzYXZlcjogc2F2ZXIsXG4gICAgICAgICAgICAgICAgICAgIG1vZGVsOiBKU09OLnN0cmluZ2lmeShtb2RlbClcbiAgICAgICAgICAgICAgICB9KS50aGVuKGZ1bmN0aW9uKHJlc3VsdCkge1xuICAgICAgICAgICAgICAgICAgICB0aGlzLl9oYW5kbGVSZXN1bHQocmVzb2x2ZSwgcmVqZWN0LCByZXN1bHQpO1xuICAgICAgICAgICAgICAgIH0uYmluZCh0aGlzKSwgZnVuY3Rpb24oZXJyKSB7XG4gICAgICAgICAgICAgICAgICAgIHJlamVjdChlcnIubWVzc2FnZSB8fCBlcnIpO1xuICAgICAgICAgICAgICAgIH0pO1xuICAgICAgICAgICAgfS5iaW5kKHRoaXMpLCBmdW5jdGlvbihlcnIpIHtcbiAgICAgICAgICAgICAgIHJlamVjdChlcnIubWVzc2FnZSB8fCBlcnIpO1xuICAgICAgICAgICAgfSk7XG4gICAgICAgIH0uYmluZCh0aGlzKSk7XG4gICAgfVxuXG4gICAgc2V0Q29ubmVjdGlvbihjb25uKSB7XG4gICAgICAgIHRoaXMuY29ubmVjdGlvbiA9IGNvbm47XG4gICAgfVxuXG4gICAgX2dldEFwZXgoKSB7XG4gICAgICAgIGlmKHRoaXMuY29ubmVjdGlvbilcbiAgICAgICAgICAgIHJldHVybiBQcm9taXNlLnJlc29sdmUodGhpcy5jb25uZWN0aW9uLmFwZXgpO1xuXG4gICAgICAgIGlmKHR5cGVvZiB3aW5kb3cgPT09ICd1bmRlZmluZWQnKVxuICAgICAgICAgICAgcmV0dXJuIFByb21pc2UucmVqZWN0KCdDb25uZWN0aW9uIG5vdCBzZXQnKVxuXG4gICAgICAgIHRoaXMub2F1dGggPSB0aGlzLm9hdXRoIHx8IG5ldyBPQXV0aCgpO1xuICAgICAgICByZXR1cm4gdGhpcy5fZ2V0Q29ubmVjdGlvbih0aGlzLm9hdXRoKTtcbiAgICB9XG5cbiAgICBfZ2V0Q29ubmVjdGlvbihvYXV0aCkge1xuICAgICAgICByZXR1cm4gbmV3IFByb21pc2UoZnVuY3Rpb24ocmVzb2x2ZSwgcmVqZWN0KSB7XG4gICAgICAgICAgICBvYXV0aC5nZXRDb25uZWN0aW9uKCkudGhlbihmdW5jdGlvbihjb25uKSB7XG4gICAgICAgICAgICAgICAgdGhpcy5jb25uZWN0aW9uID0gY29ubjtcbiAgICAgICAgICAgICAgICByZXNvbHZlKHRoaXMuY29ubmVjdGlvbi5hcGV4KTtcbiAgICAgICAgICAgIH0uYmluZCh0aGlzKSwgZnVuY3Rpb24oZXJyKSB7XG4gICAgICAgICAgICAgICAgcmVqZWN0KGVyci5tZXNzYWdlIHx8IGVycik7XG4gICAgICAgICAgICB9KTtcbiAgICAgICAgfS5iaW5kKHRoaXMpKTtcbiAgICB9XG5cbiAgICBfZ2V0RW5kcG9pbnQoKSB7XG4gICAgICAgIHJldHVybiB0aGlzLl9nZXRQcmVmaXgoKSArICcvU2VydmljZVJvdXRlcic7XG4gICAgfVxuXG4gICAgX2dldFByZWZpeCgpIHtcbiAgICAgICAgcmV0dXJuIHRoaXMucHJlZml4ID8gKCcvJyArIHRoaXMucHJlZml4KSA6ICcnO1xuICAgIH1cblxuICAgIF9oYW5kbGVSZXN1bHQocmVzb2x2ZSwgcmVqZWN0LCByZXN1bHQpIHtcbiAgICAgICAgaWYocmVzdWx0LnByb3h5KSB7XG4gICAgICAgICAgICB0aGlzLl9oYW5kbGVQcm94eVJlc3VsdChyZXNvbHZlLCByZWplY3QsIHJlc3VsdC5wcm94eSk7XG4gICAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgICAgcmVzb2x2ZShwYXJzZShyZXN1bHQpKTtcbiAgICB9XG5cbiAgICBfaGFuZGxlUHJveHlSZXN1bHQocmVzb2x2ZSwgcmVqZWN0LCBwcm94eVJlc3VsdCkge1xuICAgICAgICBpZihwcm94eVJlc3VsdC5lcnJvcikge1xuICAgICAgICAgICAgdGhpcy5faGFuZGxlUHJveHlFcnJvclJlc3VsdChyZWplY3QsIHByb3h5UmVzdWx0LmVycm9yKTtcbiAgICAgICAgICAgIHJldHVybjtcbiAgICAgICAgfVxuICAgICAgICBpZih0aGlzLm9hdXRoICYmIHByb3h5UmVzdWx0LmFjY2Vzc1Rva2VuKVxuICAgICAgICAgICAgdGhpcy5vYXV0aC5hY2Nlc3NUb2tlbiA9IHByb3h5UmVzdWx0LmFjY2Vzc1Rva2VuO1xuXG4gICAgICAgIHJlc29sdmUodGhpcy5fcGFyc2UocHJveHlSZXN1bHQucmVzcG9uc2UpKTtcbiAgICB9XG5cbiAgICBfaGFuZGxlUHJveHlFcnJvclJlc3VsdChyZWplY3QsIGVycm9yKSB7XG4gICAgICAgIGNvbnNvbGUud2FybignU2VydmljZSBQcm94eSBFeGNlcHRpb246ICcgKyB0aGlzLl9hZGp1c3RQcm94eUVycm9yTWVzc2FnZShlcnJvcikpO1xuICAgICAgICByZWplY3QoZXJyb3IpO1xuICAgIH1cblxuICAgIF9hZGp1c3RQcm94eUVycm9yTWVzc2FnZShlcnJvck1lc3NhZ2UpIHtcbiAgICAgICAgaWYoZXJyb3JNZXNzYWdlID09PSAnZXhwaXJlZCBhY2Nlc3MvcmVmcmVzaCB0b2tlbicpXG4gICAgICAgICAgICBlcnJvck1lc3NhZ2UgKz0gJyAtIHRvIGF1dGhvcml6ZSBnbyB0byBodHRwOi8vbG9jYWxob3N0OicgKyBsb2NhdGlvbi5wb3J0ICsgJy9jb21tb24vb2F1dGgnO1xuXG4gICAgICAgIHJldHVybiBlcnJvck1lc3NhZ2U7XG4gICAgfVxuXG4gICAgX3BhcnNlKG9iaikge1xuICAgICAgICB0cnkge1xuICAgICAgICAgICAgcmV0dXJuIEpTT04ucGFyc2Uob2JqKTtcbiAgICAgICAgfSBjYXRjaChlKSB7XG4gICAgICAgICAgICByZXR1cm4gb2JqO1xuICAgICAgICB9XG4gICAgfVxufSJdfQ==
'use strict';

System.register('common/data/client/ServiceClient.js', ['common/data/client/RemoteClient.js', 'common/data/client/RestClient.js'], function (_export, _context) {
    var RemoteClient, RestClient, _createClass, ServiceClient;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [function (_commonDataClientRemoteClientJs) {
            RemoteClient = _commonDataClientRemoteClientJs.RemoteClient;
        }, function (_commonDataClientRestClientJs) {
            RestClient = _commonDataClientRestClientJs.RestClient;
        }],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('ServiceClient', ServiceClient = function () {
                function ServiceClient() {
                    _classCallCheck(this, ServiceClient);

                    this.client = typeof Visualforce !== 'undefined' ? new RemoteClient() : new RestClient();
                }

                _createClass(ServiceClient, [{
                    key: 'read',
                    value: function read(prefix, reader, uid) {
                        return this.client.read(prefix, reader, uid);
                    }
                }, {
                    key: 'load',
                    value: function load(prefix, loader, uid, context) {
                        return this.client.load(prefix, loader, uid, context);
                    }
                }, {
                    key: 'save',
                    value: function save(prefix, saver, model) {
                        return this.client.save(prefix, saver, model);
                    }
                }, {
                    key: 'setConnection',
                    value: function setConnection(conn) {
                        if (typeof this.client.setConnection === 'function') this.client.setConnection(conn);
                    }
                }]);

                return ServiceClient;
            }());

            _export('ServiceClient', ServiceClient);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlNlcnZpY2VDbGllbnQuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztBQUFROztBQUNBOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7cUNBRUs7QUFFVCx5QkFGUyxhQUVULEdBQWM7MENBRkwsZUFFSzs7QUFDVix5QkFBSyxNQUFMLEdBQWMsT0FBTyxXQUFQLEtBQXVCLFdBQXZCLEdBQXFDLElBQUksWUFBSixFQUFyQyxHQUEwRCxJQUFJLFVBQUosRUFBMUQsQ0FESjtpQkFBZDs7NkJBRlM7O3lDQU1KLFFBQVEsUUFBUSxLQUFLO0FBQ3RCLCtCQUFPLEtBQUssTUFBTCxDQUFZLElBQVosQ0FBaUIsTUFBakIsRUFBeUIsTUFBekIsRUFBaUMsR0FBakMsQ0FBUCxDQURzQjs7Ozt5Q0FJckIsUUFBUSxRQUFRLEtBQUssU0FBUztBQUMvQiwrQkFBTyxLQUFLLE1BQUwsQ0FBWSxJQUFaLENBQWlCLE1BQWpCLEVBQXlCLE1BQXpCLEVBQWlDLEdBQWpDLEVBQXNDLE9BQXRDLENBQVAsQ0FEK0I7Ozs7eUNBSTlCLFFBQVEsT0FBTyxPQUFPO0FBQ3ZCLCtCQUFPLEtBQUssTUFBTCxDQUFZLElBQVosQ0FBaUIsTUFBakIsRUFBeUIsS0FBekIsRUFBZ0MsS0FBaEMsQ0FBUCxDQUR1Qjs7OztrREFJYixNQUFNO0FBQ2hCLDRCQUFHLE9BQU8sS0FBSyxNQUFMLENBQVksYUFBWixLQUE4QixVQUFyQyxFQUNDLEtBQUssTUFBTCxDQUFZLGFBQVosQ0FBMEIsSUFBMUIsRUFESjs7Ozt1QkFuQksiLCJmaWxlIjoiU2VydmljZUNsaWVudC5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7UmVtb3RlQ2xpZW50fSBmcm9tICdjb21tb24vZGF0YS9jbGllbnQvUmVtb3RlQ2xpZW50LmpzJztcbmltcG9ydCB7UmVzdENsaWVudH0gZnJvbSAnY29tbW9uL2RhdGEvY2xpZW50L1Jlc3RDbGllbnQuanMnO1xuXG5leHBvcnQgY2xhc3MgU2VydmljZUNsaWVudCB7XG5cbiAgICBjb25zdHJ1Y3RvcigpIHtcbiAgICAgICAgdGhpcy5jbGllbnQgPSB0eXBlb2YgVmlzdWFsZm9yY2UgIT09ICd1bmRlZmluZWQnID8gbmV3IFJlbW90ZUNsaWVudCgpIDogbmV3IFJlc3RDbGllbnQoKTtcbiAgICB9XG5cbiAgICByZWFkKHByZWZpeCwgcmVhZGVyLCB1aWQpIHtcbiAgICAgICAgcmV0dXJuIHRoaXMuY2xpZW50LnJlYWQocHJlZml4LCByZWFkZXIsIHVpZCk7XG4gICAgfVxuXG4gICAgbG9hZChwcmVmaXgsIGxvYWRlciwgdWlkLCBjb250ZXh0KSB7XG4gICAgICAgIHJldHVybiB0aGlzLmNsaWVudC5sb2FkKHByZWZpeCwgbG9hZGVyLCB1aWQsIGNvbnRleHQpO1xuICAgIH1cblxuICAgIHNhdmUocHJlZml4LCBzYXZlciwgbW9kZWwpIHtcbiAgICAgICAgcmV0dXJuIHRoaXMuY2xpZW50LnNhdmUocHJlZml4LCBzYXZlciwgbW9kZWwpO1xuICAgIH1cblxuICAgIHNldENvbm5lY3Rpb24oY29ubikge1xuICAgICAgICBpZih0eXBlb2YgdGhpcy5jbGllbnQuc2V0Q29ubmVjdGlvbiA9PT0gJ2Z1bmN0aW9uJylcbiAgICAgICAgICAgIHRoaXMuY2xpZW50LnNldENvbm5lY3Rpb24oY29ubik7XG4gICAgfVxufSJdfQ==
'use strict';

System.register('common/data/sb-db/Db.js', ['common/data/sb-db/Metadata.js'], function (_export, _context) {
	var Metadata, _createClass, ID_DELIM, JS_DEF, REL_PROP, md, Db, Model;

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function enhanceProperties(obj) {
		if (obj && obj.properties) {
			var requiredProps = {};
			for (var p in obj.required) {
				requiredProps[obj.required[p]] = true;
			}for (var prop in obj.properties) {
				var p = obj.properties[prop],
				    type = p.type;

				p.id = p.id ? p.id : prop;
				if (requiredProps[prop]) p.required = true;

				switch (p.type) {
					case 'array':
						if (p.items && p.items.enum) type = 'enum';else if (p.items && p.items.$ref) type = p.$_md ? 'md' : 'lookup';
						break;
					case 'string':
						switch (p.format) {
							case 'date':
								type = 'date';break;
							case 'date-time':
								type = 'datetime';break;
							case 'email':
								type = 'email';break;
							case 'html':
								type = 'richstring';break;
							case 'uri':
								type = 'url';break;
							case 'phone':
								type = 'phone';break;
							case 'autonumber':
								type = 'autonumber';break;
						}
						break;
					case 'integer':
						type = 'number';
						break;
					case 'number':
						switch (p.format) {
							case 'currency':
								type = 'currency';break;
							case 'percent':
								type = 'percent';break;
							case 'rollup':
								type = 'rollup';break;
						}
						break;
				}

				if (p.$ref) type = p.$_md ? 'md' : 'lookup';

				type = p.enum ? 'enum' : type;
				type = p.$_formula ? 'formula' : type;

				p.$_type = type;
			}
		}
	}

	function initRelationships(obj, defs) {
		if (obj.schema && obj.schema.properties) {
			for (var p in obj.schema.properties) {
				var $ref = obj.schema.properties[p].$ref,
				    isArray = obj.schema.properties[p].type === 'array',
				    items = obj.schema.properties[p].items;

				if ($ref || isArray && items && items.$ref) {
					var rels = obj.schema[REL_PROP] || {};
					rels[p] = { obj: $ref };

					if (isArray) {
						rels[p].obj = items.$ref;
						rels[p].isMany = true;
					}
					obj.schema[REL_PROP] = rels;
				}
			}
		}
	}

	return {
		setters: [function (_commonDataSbDbMetadataJs) {
			Metadata = _commonDataSbDbMetadataJs;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			ID_DELIM = '_';
			JS_DEF = '#/definitions/';
			REL_PROP = '$_relations';
			md = {
				schema: Metadata.schema,
				objectLayouts: Metadata.objectLayouts
			};

			_export('Db', Db = function () {
				function Db() {
					_classCallCheck(this, Db);
				}

				_createClass(Db, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-db';
						this.properties = {
							item: {
								type: Object,
								notify: true
							},

							uid: String,

							items: {
								type: Array,
								notify: true
							},

							model: {
								type: String,
								observer: '_modelChanged'
							},

							modelClass: {
								type: Object
							}
						};

						Db.initObjectLayouts(md.objectLayouts, this);
						Db.fromSchema(md.schema, this);
					}
				}, {
					key: 'get',
					value: function get() {
						if (!this.modelClass) throw new Error('sb-db cannot get all records because modelClass is null');

						return this.modelClass.get().then(function (records) {
							var len = records ? records.length : 0;
							for (var i = 0; i < len; i++) {
								records[i] = new this.modelClass(records[i]);
							}this.items = records;
							this.foo = records;
						}.bind(this));
					}
				}, {
					key: 'save',
					value: function save() {}
				}, {
					key: 'remove',
					value: function remove(o) {
						if (Array.isArray(o)) {
							for (var obj in o) {
								o[obj]._deleted = true;
							}

							return this.modelClass.remove(o).then(function () {
								this.items = this.items.filter(function (n) {
									return !n._deleted;
								});
							}.bind(this));
						} else if (o && o.id && o.remove) {
							return o.remove().then(function () {
								this.item = {};
							});
						}
					}
				}, {
					key: '_get',
					value: function _get(modelClass, id) {
						if (modelClass && id && typeof id === 'string') {
							modelClass.get(id).then(function (item) {
								this.item = new modelClass(item);
							}.bind(this));
						}
					}
				}, {
					key: '_getNew',
					value: function _getNew(modelClass, item) {
						if (item && !item.id && modelClass && item.constructor !== modelClass) {
							this.item = new modelClass(item);
						}
					}
				}, {
					key: '_modelChanged',
					value: function _modelChanged(nv, ov) {
						if (!this.modelClass) this.modelClass = Db[nv];
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['_get( modelClass, uid )', '_getNew( modelClass, item )'];
					}
				}], [{
					key: 'initObjectLayouts',
					value: function initObjectLayouts(layouts, con) {
						Db.objectLayouts = md.objectLayouts = layouts;
						if (con) con.objectLayouts = layouts;
					}
				}, {
					key: 'fromSchema',
					value: function fromSchema(schema, con) {
						if (schema && schema.definitions) {
							md.schema = schema;
							for (var d in schema.definitions) {
								var clazz = function (_Model) {
									_inherits(DomainObject, _Model);

									function DomainObject() {
										_classCallCheck(this, DomainObject);

										return _possibleConstructorReturn(this, Object.getPrototypeOf(DomainObject).apply(this, arguments));
									}

									return DomainObject;
								}(Model);
								clazz.schema = schema.definitions[d];
								clazz.db = Db;

								enhanceProperties(clazz.schema);
								initRelationships(clazz);

								Db[d] = clazz;
								if (con) con[d] = clazz;
							}
						}
					}
				}]);

				return Db;
			}());

			_export('Db', Db);

			Model = function () {
				function Model(obj) {
					_classCallCheck(this, Model);

					var keys = Object.keys(obj),
					    len = keys ? keys.length : 0;

					for (var i = 0; i < len; i++) {
						var key = keys[i];
						if (key !== 'save' && key !== 'remove') this[key] = obj[key];
					}
				}

				_createClass(Model, [{
					key: 'save',
					value: function save() {
						return this.constructor.db.adapter.save(this);
					}
				}, {
					key: 'remove',
					value: function remove() {
						return this.constructor.db.adapter.remove(this);
					}
				}], [{
					key: 'save',
					value: function save(objs) {
						return this.db.adapter.save(objs);
					}
				}, {
					key: 'remove',
					value: function remove(objs) {
						return this.db.adapter.remove(objs);
					}
				}, {
					key: 'get',
					value: function get(id) {
						return this.db.adapter.get(id, this);
					}
				}, {
					key: 'md',
					value: function md() {
						return this.schema;
					}
				}, {
					key: 'relationships',
					value: function relationships() {
						return this.schema[REL_PROP];
					}
				}]);

				return Model;
			}();

			Polymer(Db);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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LGFBQU8sS0FBSyxNQUFMLENBQVksUUFBWixDQUFQLENBRHNCOzs7O1dBakVsQjs7O0FBdUVOLFdBQVMsRUFBVCIsImZpbGUiOiJEYi5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCAqIGFzIE1ldGFkYXRhIGZyb20gJ2NvbW1vbi9kYXRhL3NiLWRiL01ldGFkYXRhLmpzJztcblxubGV0IElEX0RFTElNID0gJ18nLFxuXHRcdEpTX0RFRiA9ICcjL2RlZmluaXRpb25zLycsXG5cdFx0UkVMX1BST1AgPSAnJF9yZWxhdGlvbnMnLFxuXHRcdG1kID0geyAgLy8gYSBzaW5nbGV0b24gZm9yIG9wdGltaXplZCBQb2x5bWVyIHJlZ2lzdHJhdGlvbi9kYXRhIHNoYXJpbmdcblx0XHRcdHNjaGVtYTogTWV0YWRhdGEuc2NoZW1hLCAgLy8gZGVmYXVsdCB2YWx1ZVxuXHRcdFx0b2JqZWN0TGF5b3V0czogTWV0YWRhdGEub2JqZWN0TGF5b3V0c1xuXHRcdH07XG5cbi8qKlxuKiBUaGUgRGF0YWJhc2UvUGVyc2lzdGVuY2UgbGF5ZXIgY2xhc3NcbipcbiogVGhlcmUgYXJlIDIgXCJtb2Rlc1wiIGluIHdoaWNoIHRoaXMgY29tcG9uZW50IG9wZXJhdGVzOiAgc2luZ2xlIGl0ZW0gYW5kIG11bHRpLWl0ZW06XG4qICAtIFNpbmdsZSBpdGVtIGlzIHdoZXJlIHlvdSB3YW50IHRvIGdldC9zYXZlIDEgZG9tYWluIG9iamVjdCBhdCBhIHRpbWUsIGUuZy4gYSBEZXRhaWwgcGFnZVxuKiAgLSBNdWx0aSBpdGVtIGlzIHdoZXJlIHlvdSB3YW50IHRvIGdldC9zYXZlIG11bHRpcGxlIGRvbWFpbiBvYmplY3RzIGF0IGEgdGltZSAob2Ygc2FtZSB0eXBlL2NsYXNzKSwgZS5nLiBhIExpc3QgcGFnZVxuKlxuKiBJbiBib3RoIGNhc2VzLCB0aG91Z2gsIGRvbWFpbiBvYmplY3RzIGNhbiBpbmNsdWRlIHRoZWlyIHJlbGF0aW9ucyBzbyBzaW5nbGUgaXRlbSBtb2RlIGNhbiBzdGlsbCBwcmVzZW50IGEgXCJsaXN0XCIgb2YgcmVhbHRlZCBpdGVtcy5cbipcbiogTWV0YWRhdGFcbiogPT09PT09PT09PT09PVxuKiBFYWNoIGVudGl0eSBpbiB0aGUgZG9tYWluIG1vZGVsIHdpbGwgYmUgYSBzdGF0aWMgcHJvcGVydHkgb2YgdGhpcyBjbGFzcyBhbmQgd2lsbCBleHRlbmQgdGhlIE1vZGVsIGNsYXNzIGJlbG93LlxuKiBGb3IgZXhhbXBsZSwgRGIuUXVvdGUgd291bGQgYmUgdGhlIHNhbWUgYXM6XG4qICAgY2xhc3MgUXVvdGUgZXh0ZW5kcyBNb2RlbCB7fVxuKiAgIERiLlF1b3RlID0gUXVvdGU7XG4qXG4qIEBjbGFzc1xuKi9cbmV4cG9ydCBjbGFzcyBEYiB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1kYic7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0ge1xuXHRcdFx0LyoqIFRoZSBvYmplY3QgaW5zdGFuY2UgKHNpbmdsZSBpdGVtIG1vZGUpICovXG5cdFx0XHRpdGVtOiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0bm90aWZ5OiB0cnVlXG5cdFx0XHR9LFxuXHRcdFx0LyoqIFRoZSBpZCBvZiB0aGUgaXRlbSAoc2luZ2xlIGl0ZW0gbW9kZSkgKi9cblx0XHRcdHVpZDogU3RyaW5nLFxuXHRcdFx0LyoqIFRoZSBhcnJheSBvZiBpdGVtcyAobXVsdGkgaXRlbSBtb2RlKSAqL1xuXHRcdFx0aXRlbXM6IHtcblx0XHRcdFx0dHlwZTogQXJyYXksXG5cdFx0XHRcdG5vdGlmeTogdHJ1ZVxuXHRcdFx0fSxcblx0XHRcdC8qKiBUaGUgc3RyaW5nIG5hbWUvdHlwZSBvZiB0aGUgTW9kZWxDbGFzcy4gIE9ubHkgbmVlZGVkIGlmIG1vZGVsQ2xhc3MgaXMgbm90IHNldCBhbmQgd2lsbCBzZXQgbW9kZWxDbGFzcyB3aGVuIGNoYW5nZWQuICovXG5cdFx0XHRtb2RlbDoge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdG9ic2VydmVyOiAnX21vZGVsQ2hhbmdlZCdcblx0XHRcdH0sXG5cdFx0XHQvKiogVGhlIGNsYXNzIGluc3RhbmNlIChEb21haW5PYmplY3QpIHRoYXQgYmFja3MgdGhpcyBjb21wb25lbnQgaW5zdGFuY2UsIGUuZy4gRGIuUXVvdGUsIERiLlF1b3RlTGluZSwgZXRjLiAqL1xuXHRcdFx0bW9kZWxDbGFzczoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3Rcblx0XHRcdH1cblx0XHR9O1xuXG5cdFx0Ly8gUG9seW1lciBkb2Vzbid0IHRyYW5zZmVyL2V4dGVuZCBzdGF0aWMgcHJvcGVydGllcyB0byBjb21wb25lbnQgaW5zdGFuY2VzLCBlLmcuIHRoaXMuJC5kYi5RdW90ZSB3aWxsIGJlIHVuZGVmaW5lZCBldmVuIHRob3VnaCBEYi5RdW90ZSBpcyB2YWxpZCAoYWZ0ZXIgYSBmcm9tU2NoZW1hKCkgY2FsbCkuXG5cdFx0Ly8gU28gd2UgY2FsbCB0aGUgaW5pdGlhbGl6YXRpb24gZnVuY3Rpb25zIGhlcmUsIHVzaW5nIHRoZSBzaW5nbGV0b24gbWQgZGF0YSAod2hpY2ggbXVzdCBiZSBwcmV2aW91c2x5IHNldCB2aWEgRGIgc3RhdGljIGZ1bmN0aW9uIGludm9rYXRpb25zKVxuXHRcdC8vIGJlZm9yZVJlZ2lzdGVyKCkgaXMgb25seSBjYWxsZWQgb25jZSBieSBQb2x5bWVyIHNvIHdlIGRvbid0IGV4ZWN1dGUgdGhlc2UgZXZlcnkgdGltZSBhIG5ldyA8c2ItZGI+IGlzIGFkZGVkIHRvIGEgcGFnZS5cblx0XHQvLyBJZiBsYXlvdXRzIGFuZCBzY2hlbWEgY2hhbmdlIGluIHRoZSBtaWRkbGUgb2YgYSB1c2VyIHNlc3Npb24gd2Ugc2hvdWxkIGRvIGEgaGFyZCBwYWdlIHJlZnJlc2ggc28gYmVmb3JlUmVnaXN0ZXIoKSBnZXRzIGNhbGxlZCBhZ2Fpbi5cblx0XHREYi5pbml0T2JqZWN0TGF5b3V0cyggbWQub2JqZWN0TGF5b3V0cywgdGhpcyApO1xuXHRcdERiLmZyb21TY2hlbWEoIG1kLnNjaGVtYSwgdGhpcyApO1xuXHR9XG5cblx0Z2V0IG9ic2VydmVycygpIHtcblx0XHRyZXR1cm4gW1xuXHRcdFx0J19nZXQoIG1vZGVsQ2xhc3MsIHVpZCApJyxcblx0XHRcdCdfZ2V0TmV3KCBtb2RlbENsYXNzLCBpdGVtICknXG5cdFx0XVxuXHR9XG5cblx0LyoqXG5cdCogR2V0IGFsbCB0aGUgaXRlbXMgZm9yIHRoZSBtb2RlbENsYXNzIGFuZCBzZXQgdG8gXCJpdGVtc1wiIHByb3BlcnR5XG5cdCovXG5cdGdldCgpIHtcblx0XHRpZiggIXRoaXMubW9kZWxDbGFzcyApXG5cdFx0dGhyb3cgbmV3IEVycm9yKCAnc2ItZGIgY2Fubm90IGdldCBhbGwgcmVjb3JkcyBiZWNhdXNlIG1vZGVsQ2xhc3MgaXMgbnVsbCcgKTtcblxuXHRcdHJldHVybiB0aGlzLm1vZGVsQ2xhc3MuZ2V0KCkudGhlbiggZnVuY3Rpb24ocmVjb3Jkcykge1xuXHRcdFx0bGV0IGxlbiA9IHJlY29yZHMgPyByZWNvcmRzLmxlbmd0aCA6IDA7XG5cdFx0XHRmb3IoIGxldCBpPTA7IGkgPCBsZW47IGkrKyApXG5cdFx0XHRyZWNvcmRzW2ldID0gbmV3IHRoaXMubW9kZWxDbGFzcyggcmVjb3Jkc1tpXSApO1xuXG5cdFx0XHR0aGlzLml0ZW1zID0gcmVjb3Jkcztcblx0XHRcdHRoaXMuZm9vID0gcmVjb3Jkcztcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0c2F2ZSgpIHtcblx0fVxuXG5cdHJlbW92ZSggbyApIHtcblx0XHRpZiggQXJyYXkuaXNBcnJheShvKSApIHtcblx0XHRcdGZvciggbGV0IG9iaiBpbiBvIClcblx0XHRcdG9bb2JqXS5fZGVsZXRlZCA9IHRydWU7ICAvLyB0ZW1wIGZsYWcgYXMgZGVsZXRlZFxuXG5cdFx0XHRyZXR1cm4gdGhpcy5tb2RlbENsYXNzLnJlbW92ZSggbyApLnRoZW4oIGZ1bmN0aW9uKCkge1xuXHRcdFx0XHQvLyByZW1vdmUgYWxsIGRlbGV0ZWQgdmFsdWVzIGZyb20gaXRlbXMgYXJyYXlcblx0XHRcdFx0dGhpcy5pdGVtcyA9IHRoaXMuaXRlbXMuZmlsdGVyKCBmdW5jdGlvbihuKSB7IHJldHVybiAhbi5fZGVsZXRlZCB9ICk7XG5cdFx0XHR9LmJpbmQodGhpcykgKTtcblx0XHR9XG5cdFx0ZWxzZSBpZiggbyAmJiBvLmlkICYmIG8ucmVtb3ZlICkge1xuXHRcdFx0cmV0dXJuIG8ucmVtb3ZlKCkudGhlbiggZnVuY3Rpb24oKSB7XG5cdFx0XHRcdHRoaXMuaXRlbSA9IHt9O1xuXHRcdFx0fSk7XG5cdFx0fVxuXHR9XG5cblx0X2dldCggbW9kZWxDbGFzcywgaWQgKSB7XG5cdFx0aWYoIG1vZGVsQ2xhc3MgJiYgaWQgJiYgdHlwZW9mIGlkID09PSAnc3RyaW5nJyApIHtcblx0XHRcdC8vIHF1ZXJ5IGRiIGZvciBpdGVtIGluc3RhbmNlIHVzaW5nIGlkXG5cdFx0XHRtb2RlbENsYXNzLmdldCggaWQgKS50aGVuKCBmdW5jdGlvbihpdGVtKSB7XG5cdFx0XHRcdHRoaXMuaXRlbSA9IG5ldyBtb2RlbENsYXNzKCBpdGVtICk7XG5cdFx0XHR9LmJpbmQodGhpcykpO1xuXHRcdH1cblx0fVxuXG5cdF9nZXROZXcoIG1vZGVsQ2xhc3MsIGl0ZW0gKSB7XG5cdFx0aWYoIGl0ZW0gJiYgIWl0ZW0uaWQgJiYgbW9kZWxDbGFzcyAmJiBpdGVtLmNvbnN0cnVjdG9yICE9PSBtb2RlbENsYXNzICkge1xuXHRcdFx0Ly8gbXVzdCBiZSBjcmVhdGluZyBhIG5ldyByZWNvcmQgd2l0aCBzaW1wbGUgSlNPTiBvYmplY3Qgc28gaW5zdGFudGlhdGUgY29ycmVjdCBtb2RlbENsYXNzIGluc3RhbmNlXG5cdFx0XHR0aGlzLml0ZW0gPSBuZXcgbW9kZWxDbGFzcyggaXRlbSApO1xuXHRcdH1cblx0fVxuXG5cdF9tb2RlbENoYW5nZWQoIG52LCBvdiApIHtcblx0XHRpZiggIXRoaXMubW9kZWxDbGFzcyApXG5cdFx0dGhpcy5tb2RlbENsYXNzID0gRGJbbnZdO1xuXHR9XG5cblx0c3RhdGljIGluaXRPYmplY3RMYXlvdXRzKCBsYXlvdXRzLCBjb24gKSB7XG5cdFx0RGIub2JqZWN0TGF5b3V0cyA9IG1kLm9iamVjdExheW91dHMgPSBsYXlvdXRzO1xuXHRcdGlmKCBjb24gKVxuXHRcdGNvbi5vYmplY3RMYXlvdXRzID0gbGF5b3V0cztcblx0fVxuXG5cdHN0YXRpYyBmcm9tU2NoZW1hKCBzY2hlbWEsIGNvbiApIHtcblx0XHRpZiggc2NoZW1hICYmIHNjaGVtYS5kZWZpbml0aW9ucyApIHtcblx0XHRcdG1kLnNjaGVtYSA9IHNjaGVtYTtcblx0XHRcdGZvciggbGV0IGQgaW4gc2NoZW1hLmRlZmluaXRpb25zICkge1xuXHRcdFx0XHRsZXQgY2xhenogPSBjbGFzcyBEb21haW5PYmplY3QgZXh0ZW5kcyBNb2RlbCB7fTtcblx0XHRcdFx0Y2xhenouc2NoZW1hID0gc2NoZW1hLmRlZmluaXRpb25zW2RdO1xuXHRcdFx0XHRjbGF6ei5kYiA9IERiO1xuXG5cdFx0XHRcdGVuaGFuY2VQcm9wZXJ0aWVzKCBjbGF6ei5zY2hlbWEgKTtcblx0XHRcdFx0aW5pdFJlbGF0aW9uc2hpcHMoIGNsYXp6ICk7XG5cblx0XHRcdFx0RGJbZF0gPSBjbGF6ejtcblx0XHRcdFx0aWYoIGNvbiApXG5cdFx0XHRcdGNvbltkXSA9IGNsYXp6O1xuXHRcdFx0fVxuXHRcdH1cblx0fVxufVxuLyoqXG4qIEpTT04gU2NoZW1hIGhhcyB2ZXJ5IHByaW1pdGl2ZSB0eXBlcy4gIFRoaXMgZnVuY3Rpb24gYWRkcyBhIHNwZWNpYWwgcHJvcGVydHkgdG8gcHJvcGVydGllcyBjYWxsZWQgXCIkX3R5cGVcIlxuKiB0aGF0IGVudW1lcmF0ZXMgb3VyIGxvZ2ljYWwgdHlwZXMuICBQb3NzaWJsZSB2YWx1ZXMgYXJlOlxuKiBzdHJpbmcsIG51bWJlciwgYm9vbGVhbiwgZGF0ZSwgZGF0ZXRpbWUsIGVudW0sIHJpY2hzdHJpbmcsIGN1cnJlbmN5LCBwZXJjZW50LCBsb29rdXAsIHJvbGx1cCwgYXV0b251bWJlciwgZm9ybXVsYSwgZW1haWwsIHBob25lLCB1cmwsIG1kXG4qXG4qIFRoaXMgbGlzdCBjbG9zZWx5IG1pcnJvcnMgdGhlIFNGIGRhdGF0eXBlcyB3aXRoIHRoZXNlIGRpZmZlcmVuY2VzOlxuKlxuKiBlbnVtID0gcGlja2xpc3QgIChpZiBzY2hlbWEudHlwZSA9PSAnYXJyYXknIHdlIGtub3cgaXQgaXMgbXVsdGktc2VsZWN0IHBpY2tsaXN0KVxuKiByaWNoc3RyaW5nID09IHRleHQgYXJlYSAocmljaClcbiogbG9va3VwIChzYW1lIGFzIFNGIGJ1dCBpZiBzY2hlbWEudHlwZSA9PSAnYXJyYXknIHdlIGtub3cgaXQgaXMgXCJjaGlsZCByZWxhdGlvbnNoaXBcIiBzaWRlIG9mIGxvb2t1cClcbiogbWQgKHBhcnQgb2YgTWFzdGVyLURldGFpbCByZWxhdGlvbnNoaXAuICBUaGUgSlNPTiBzY2hlbWEgbG9va3MgdmVyeSBzaW1pbGFyIHRvIGxvb2t1cCBidXQgd2UgYWRkIGEgXCIkX21kOiB0cnVlXCIgdG8gaXQgZm9yIHRoaXMgc3BlY2lhbCBjYXNlKVxuKlxuKiBXZSBhbHNvIHNldCB0aGUgaWQgcHJvcGVydHkgb2YgdGhlIGFjdHVhbCBwcm9wZXJ0eSBvYmplY3QsIGlmIGl0IGRvZXNuJ3QgYWxyZWFkeSBleGlzdCwgdG8gdGhlIGtleSB2YWx1ZSBpdCBoYXMgaW4gXCJwcm9wZXJ0aWVzXCIuXG4qIFdlIGFsc28gc2V0IHJlcXVpcmVkOiB0cnVlIG9uIHRoZSBwcm9wZXJ0eSBvYmplY3QgaXRzZWxmIGluIGFkZGl0aW9uIHRvIHRoZSBKU09OIHNjaGVtYSBzdGFuZGFyZCBcInJlcXVpcmVkXCIgYXJyYXkgKGZvciBlYXNpZXIgdXNlIGRvd25zdHJlYW0pLlxuKlxuKiBAcGFyYW0gIHtbdHlwZV19IG9iaiBbZGVzY3JpcHRpb25dXG4qIEByZXR1cm4ge1t0eXBlXX0gICAgIFtkZXNjcmlwdGlvbl1cbiovXG5mdW5jdGlvbiBlbmhhbmNlUHJvcGVydGllcyggb2JqICkge1xuXHRpZiggb2JqICYmIG9iai5wcm9wZXJ0aWVzICkge1xuXHRcdGxldCByZXF1aXJlZFByb3BzID0ge307XG5cdFx0Zm9yKCBsZXQgcCBpbiBvYmoucmVxdWlyZWQgKVxuXHRcdHJlcXVpcmVkUHJvcHNbb2JqLnJlcXVpcmVkW3BdXSA9IHRydWU7XG5cblx0XHRmb3IoIGxldCBwcm9wIGluIG9iai5wcm9wZXJ0aWVzICkge1xuXHRcdFx0bGV0IHAgPSBvYmoucHJvcGVydGllc1twcm9wXSxcblx0XHRcdHR5cGUgPSBwLnR5cGU7XG5cblx0XHRcdHAuaWQgPSBwLmlkID8gcC5pZCA6IHByb3A7IC8vIGNvbnZpZW5lbmNlXG5cdFx0XHRpZiggcmVxdWlyZWRQcm9wc1twcm9wXSApXG5cdFx0XHRwLnJlcXVpcmVkID0gdHJ1ZTtcblxuXHRcdFx0c3dpdGNoKCBwLnR5cGUgKSB7XG5cdFx0XHRcdGNhc2UgJ2FycmF5Jzpcblx0XHRcdFx0aWYoIHAuaXRlbXMgJiYgcC5pdGVtcy5lbnVtIClcblx0XHRcdFx0dHlwZSA9ICdlbnVtJzsgLy8gZS5nLiBwaWNrbGlzdCBtdWx0aXBsZVxuXHRcdFx0XHRlbHNlIGlmKCBwLml0ZW1zICYmIHAuaXRlbXMuJHJlZiApXG5cdFx0XHRcdHR5cGUgPSBwLiRfbWQgPyAnbWQnIDogJ2xvb2t1cCc7XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0XHRjYXNlICdzdHJpbmcnOlxuXHRcdFx0XHRzd2l0Y2goIHAuZm9ybWF0ICkge1xuXHRcdFx0XHRcdGNhc2UgJ2RhdGUnOiB0eXBlID0gJ2RhdGUnOyBicmVhaztcblx0XHRcdFx0XHRjYXNlICdkYXRlLXRpbWUnOiB0eXBlID0gJ2RhdGV0aW1lJzsgYnJlYWs7XG5cdFx0XHRcdFx0Y2FzZSAnZW1haWwnOiB0eXBlID0gJ2VtYWlsJzsgYnJlYWs7XG5cdFx0XHRcdFx0Y2FzZSAnaHRtbCc6IHR5cGUgPSAncmljaHN0cmluZyc7IGJyZWFrO1xuXHRcdFx0XHRcdGNhc2UgJ3VyaSc6IHR5cGUgPSAndXJsJzsgYnJlYWs7XG5cdFx0XHRcdFx0Y2FzZSAncGhvbmUnOiB0eXBlID0gJ3Bob25lJzsgYnJlYWs7XG5cdFx0XHRcdFx0Y2FzZSAnYXV0b251bWJlcic6IHR5cGUgPSAnYXV0b251bWJlcic7IGJyZWFrO1xuXHRcdFx0XHR9XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0XHRjYXNlICdpbnRlZ2VyJzpcblx0XHRcdFx0dHlwZSA9ICdudW1iZXInOyAvLyBUT0RPOiBzZXQgc2NhbGU/XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0XHRjYXNlICdudW1iZXInOlxuXHRcdFx0XHRzd2l0Y2goIHAuZm9ybWF0ICkge1xuXHRcdFx0XHRcdGNhc2UgJ2N1cnJlbmN5JzogdHlwZSA9ICdjdXJyZW5jeSc7IGJyZWFrO1xuXHRcdFx0XHRcdGNhc2UgJ3BlcmNlbnQnOiB0eXBlID0gJ3BlcmNlbnQnOyBicmVhaztcblx0XHRcdFx0XHRjYXNlICdyb2xsdXAnOiB0eXBlID0gJ3JvbGx1cCc7IGJyZWFrO1xuXHRcdFx0XHR9XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0fVxuXG5cdFx0XHRpZiggcC4kcmVmIClcblx0XHRcdHR5cGUgPSBwLiRfbWQgPyAnbWQnIDogJ2xvb2t1cCc7XG5cblx0XHRcdHR5cGUgPSBwLmVudW0gPyAnZW51bScgOiB0eXBlOyAgLy8gZS5nLiBwaWNrbGlzdFxuXHRcdFx0dHlwZSA9IHAuJF9mb3JtdWxhID8gJ2Zvcm11bGEnIDogdHlwZTtcblxuXHRcdFx0cC4kX3R5cGUgPSB0eXBlO1xuXHRcdH1cblx0fVxufVxuXG5mdW5jdGlvbiBpbml0UmVsYXRpb25zaGlwcyggb2JqLCBkZWZzICkge1xuXHRpZiggb2JqLnNjaGVtYSAmJiBvYmouc2NoZW1hLnByb3BlcnRpZXMgKSB7XG5cdFx0Zm9yKCBsZXQgcCBpbiBvYmouc2NoZW1hLnByb3BlcnRpZXMgKSB7XG5cdFx0XHRsZXQgJHJlZiA9IG9iai5zY2hlbWEucHJvcGVydGllc1twXS4kcmVmLFxuXHRcdFx0aXNBcnJheSA9IG9iai5zY2hlbWEucHJvcGVydGllc1twXS50eXBlID09PSAnYXJyYXknLFxuXHRcdFx0aXRlbXMgPSBvYmouc2NoZW1hLnByb3BlcnRpZXNbcF0uaXRlbXM7XG5cblx0XHRcdGlmKCAkcmVmIHx8IChpc0FycmF5ICYmIGl0ZW1zICYmIGl0ZW1zLiRyZWYpICkge1xuXHRcdFx0XHRsZXQgcmVscyA9IG9iai5zY2hlbWFbUkVMX1BST1BdIHx8IHt9O1xuXHRcdFx0XHRyZWxzW3BdID0geyBvYmo6ICRyZWYgfTtcblxuXHRcdFx0XHRpZiggaXNBcnJheSApIHtcblx0XHRcdFx0XHRyZWxzW3BdLm9iaiA9IGl0ZW1zLiRyZWY7XG5cdFx0XHRcdFx0cmVsc1twXS5pc01hbnkgPSB0cnVlO1xuXHRcdFx0XHR9XG5cdFx0XHRcdG9iai5zY2hlbWFbUkVMX1BST1BdID0gcmVscztcblx0XHRcdH1cblx0XHR9XG5cdH1cbn1cblxuLyoqXG4qIEEgYmFzZSBNb2RlbCBjbGFzc1xuKi9cbmNsYXNzIE1vZGVsIHtcblx0Y29uc3RydWN0b3IoIG9iaiApIHtcblx0XHRsZXQga2V5cyA9IE9iamVjdC5rZXlzKCBvYmogKSxcblx0XHRsZW4gPSBrZXlzID8ga2V5cy5sZW5ndGggOiAwO1xuXG5cdFx0Zm9yKCBsZXQgaT0wOyBpIDwgbGVuOyBpKysgKSB7XG5cdFx0XHRsZXQga2V5ID0ga2V5c1tpXTtcblx0XHRcdGlmKCBrZXkgIT09ICdzYXZlJyAmJiBrZXkgIT09ICdyZW1vdmUnIClcblx0XHRcdHRoaXNba2V5XSA9IG9ialtrZXldO1xuXHRcdH1cblx0fVxuXG5cdC8qKlxuXHQqIENyZWF0ZSBvciB1cGRhdGUgdGhpcyBvYmplY3QgdG8gZGJcblx0KiBAcmV0dXJuIHtQcm9taXNlLjxPYmplY3Q+fSB0aGUgbmV3bHkgY3JlYXRlZCBvciB1cGRhdGVkIG9iamVjdFxuXHQqL1xuXHRzYXZlKCkge1xuXHRcdC8vVE9ETzogdmFsaWRhdGlvbiBjb2RlIGhlcmVcblx0XHRyZXR1cm4gdGhpcy5jb25zdHJ1Y3Rvci5kYi5hZGFwdGVyLnNhdmUoIHRoaXMgKTtcblx0fVxuXG5cdC8qKlxuXHQqIENyZWF0ZSBvciB1cGRhdGUgdGhlIG9iamVjdCBpbnN0YW5jZShzKSB0byB0aGUgZGJcblx0KiBAcGFyYW0gIHtBcnJheXxPYmplY3R9IG9ianMgdGhlIG9iamVjdCBpbnN0YW5jZShzKSB0byBjcmVhdGUgb3IgdXBkYXRlXG5cdCogQHJldHVybiB7UHJvbWlzZS48KEFycmF5fE9iamVjdCk+fVxuXHQqL1xuXHRzdGF0aWMgc2F2ZSggb2JqcyApIHtcblx0XHQvL1RPRE86IHZhbGlkYXRpb24gY29kZSBoZXJlXG5cdFx0cmV0dXJuIHRoaXMuZGIuYWRhcHRlci5zYXZlKCBvYmpzICk7XG5cdH1cblxuXHQvKipcblx0KiBEZWxldGUgdGhpcyBvYmplY3QgZnJvbSB0aGUgZGJcblx0KiBAcmV0dXJuIHtQcm9taXNlfVxuXHQqL1xuXHRyZW1vdmUoKSB7XG5cdFx0cmV0dXJuIHRoaXMuY29uc3RydWN0b3IuZGIuYWRhcHRlci5yZW1vdmUoIHRoaXMgKTtcblx0fVxuXG5cdC8qKlxuXHQqIERlbGV0ZSB0aGUgb2JqZWN0KHMpIGZyb20gdGhlIGRiXG5cdCogQHBhcmFtIHtBcnJheXxPYmplY3R8U3RyaW5nfSBvYmpzIHRoZSBvYmplY3QgaW5zdGFuY2UocykgdG8gZGVsZXRlLCBvciB0aGUgaWRzIG9mIHRoZSBpbnN0YW5jZXMgKFN0cmluZylcblx0KiBAcmV0dXJuIHtQcm9taXNlfVxuXHQqL1xuXHRzdGF0aWMgcmVtb3ZlKCBvYmpzICkge1xuXHRcdHJldHVybiB0aGlzLmRiLmFkYXB0ZXIucmVtb3ZlKCBvYmpzICk7XG5cdH1cblxuXHQvKipcblx0KiBSZXRyaWV2ZXMgdGhlIGluc3RhbmNlIChyZWNvcmQpIGZyb20gdGhlIGRiXG5cdCogQHBhcmFtICB7U3RyaW5nfSBpZCB0aGUgaWQgb2YgdGhlIGluc3RhbmNlIChyZWNvcmQpXG5cdCogQHJldHVybiB7UHJvbWlzZS48T2JqZWN0Pn0gICAgW2Rlc2NyaXB0aW9uXVxuXHQqL1xuXHRzdGF0aWMgZ2V0KCBpZCApIHtcblx0XHRyZXR1cm4gdGhpcy5kYi5hZGFwdGVyLmdldCggaWQsIHRoaXMgKTtcblx0fVxuXG5cdC8qKlxuXHQqIFJldHVybnMgdGhlIG1ldGFkYXRhIG9mIHRoaXMgbW9kZWwgaW4gSlNPTiBTY2hlbWEgZm9ybWF0XG5cdCogQHJldHVybiB7T2JqZWN0fSB0aGUgc2NoZW1hIG9mIHRoaXMgbW9kZWxcblx0Ki9cblx0c3RhdGljIG1kKCkge1xuXHRcdHJldHVybiB0aGlzLnNjaGVtYTtcblx0fVxuXG5cdHN0YXRpYyByZWxhdGlvbnNoaXBzKCkge1xuXHRcdHJldHVybiB0aGlzLnNjaGVtYVtSRUxfUFJPUF07XG5cdH1cblxufVxuXG5Qb2x5bWVyKCBEYiApO1xuIl19
"use strict";

System.register("common/data/sb-db/Metadata.js", [], function (_export, _context) {
	var schema, objectLayouts;
	return {
		setters: [],
		execute: function () {
			_export("schema", schema = {
				"$schema": "http://json-schema.org/draft-04/schema#",
				"id": "/",
				"definitions": {
					"Product": {
						"id": "Product",
						"title": "Product",
						"titlePlural": "Products",
						"type": "object",
						"properties": {
							"id": {
								"title": "ID",
								"type": "string"
							},
							"name": {
								"title": "Name",
								"type": "string"
							},
							"code": {
								"title": "Code",
								"type": "string"
							},
							"createdBy": {
								"title": "Created By",
								"$ref": "User"
							},
							"createdDate": {
								"title": "Created Date",
								"type": "string",
								"format": "date-time"
							},
							"lastModifiedBy": {
								"title": "Modified By",
								"$ref": "User"
							},
							"lastModified": {
								"title": "Last Modified Date",
								"type": "string",
								"format": "date-time"
							}
						},
						"required": ["id", "createdBy", "createdDate", "lastModifiedBy", "lastModifiedDate", "name"]
					},
					"Opportunity": {
						"id": "Opportunity",
						"title": "Opportunity",
						"titlePlural": "Opportunities",
						"type": "object",
						"properties": {
							"id": {
								"title": "ID",
								"type": "string"
							},
							"name": {
								"title": "Name",
								"type": "string"
							},
							"createdBy": {
								"title": "Created By",
								"$ref": "User"
							},
							"createdDate": {
								"title": "Created Date",
								"type": "string",
								"format": "date-time"
							},
							"lastModifiedBy": {
								"title": "Modified By",
								"$ref": "User"
							},
							"lastModified": {
								"title": "Last Modified Date",
								"type": "string",
								"format": "date-time"
							},
							"account": {
								"title": "Account",
								"$ref": "Account"
							},
							"amount": {
								"title": "Amount",
								"type": "number"
							},
							"description": {
								"title": "Description",
								"type": "string",
								"maxLength": 32000
							},
							"probability": {
								"title": "Probability",
								"type": "number"
							},
							"closeDate": {
								"title": "Close Date",
								"type": "string",
								"format": "date-time"
							},
							"nextStep": {
								"title": "Next Step",
								"type": "string"
							},
							"stageName": {
								"title": "Stage Name",
								"enum": ["Open", "Closed"]
							},
							"leadSource": {
								"title": "Lead Source",
								"enum": ["Web", "Phone Inquiry", "Partner Retai", "Purchased List", "Other"]
							},
							"type": {
								"title": "Type",
								"enum": ["Existing Customer - Upgrade", "Existing Customer - Replacement", "Existing Customer - Downgrade", "New Customer"]
							},
							"stageName": {
								"title": "Stage",
								"enum": ["Prospecting", "Qualification", "Needs Analysis", "Value Proposition", "Id. Decision Makers", "Perception Analysis", "Proposal/Price Quote", "Negotiation/Review", "Closed Won", "Closed Lost"]
							},
							"owner": {
								"title": "Owner",
								"$ref": "User"
							},
							"primaryQuote": {
								"title": "Primary Quote",
								"$ref": "Quote"
							},
							"quotePricebookId": {
								"title": "Quote Pricebook ID",
								"type": "string"
							},
							"renewal": {
								"title": "Renewal",
								"type": "boolean"
							},
							"contracted": {
								"title": "Contracted",
								"type": "boolean"
							},
							"renewedContract": {
								"title": "Renewed Contract",
								"$ref": "Quote"
							}
						},
						"required": ["id", "createdBy", "createdDate", "lastModifiedBy", "lastModifiedDate", "name"]
					},
					"User": {
						"id": "User",
						"title": "User",
						"titlePlural": "Users",
						"type": "object",
						"properties": {
							"id": {
								"title": "ID",
								"type": "string"
							},
							"lastname": {
								"title": "Last Name",
								"type": "string"
							},
							"firstname": {
								"title": "First Name",
								"type": "string"
							},
							"fullname": {
								"title": "Full Name",
								"type": "string"
							},
							"email": {
								"title": "Email",
								"type": "string",
								"format": "email"
							},
							"username": {
								"title": "Username",
								"type": "string"
							},
							"active": {
								"title": "Active",
								"type": "boolean"
							}
						},
						"required": ["id", "name", "username"]
					},
					"Quote": {
						"id": "Quote",
						"title": "Quote",
						"titlePlural": "Quotes",
						"type": "object",
						"properties": {
							"additionalDiscount": {
								"title": "Additional Discount",
								"type": "number"
							},
							"createdBy": {
								"title": "Created By",
								"$ref": "User"
							},
							"createdDate": {
								"title": "Created Date",
								"type": "string",
								"format": "date-time"
							},
							"endDate": {
								"title": "End Date",
								"type": "string",
								"format": "date-time"
							},
							"lastModifiedBy": {
								"title": "Modified By",
								"$ref": "User"
							},
							"lastModified": {
								"title": "Last Modified Date",
								"type": "string",
								"format": "date-time"
							},
							"lineItemCount": {
								"title": "Line Item Count",
								"type": "integer",
								"minimum": 0
							},
							"lines": {
								"title": "Lines",
								"type": "array",
								"items": { "$ref": "QuoteLine" },
								"$_md": true
							},
							"name": {
								"title": "Name",
								"type": "string"
							},
							"note": {
								"title": "Note",
								"type": "string"
							},
							"opportunity": {
								"title": "Opportunity",
								"$ref": "Opportunity"
							},
							"startDate": {
								"title": "Start Date",
								"type": "string",
								"format": "date-time"
							},
							"status": {
								"title": "Status",
								"enum": ["Draft", "In Review", "Approved", "Denied", "Presented", "Accepted", "Rejected"]
							},
							"paymentTerms": {
								"title": "Payment Terms",
								"enum": ["Due on Receipt", "Net 15", "Net 30", "Net 45", "Net 60", "Net 90"]
							},
							"type": {
								"title": "Type",
								"enum": ["Quote", "Renewal", "Amendment", "Change Order"]
							}
						}
					},
					"QuoteLine": {
						"id": "QuoteLine",
						"title": "Quote Line",
						"titlePlural": "Quote Lines",
						"type": "object",
						"properties": {
							"additionalDiscount": {
								"title": "Additional Discount",
								"type": "number"
							},
							"createdBy": {
								"title": "Created By",
								"$ref": "User"
							},
							"createdDate": {
								"title": "Created Date",
								"type": "string",
								"format": "date-time"
							},
							"endDate": {
								"title": "End Date",
								"type": "string",
								"format": "date-time"
							},
							"netUnitPrice": {
								"title": "Net Unit Price",
								"type": "number",
								"multipleOf": "0.01"
							},
							"netTotal": {
								"title": "Net Total",
								"type": "number",
								"multipleOf": "0.01",
								"$_formula": "netUnitPrice * quantity"
							},
							"lastModifiedBy": {
								"title": "Modified By",
								"$ref": "User"
							},
							"lastModified": {
								"title": "Last Modified Date",
								"type": "string",
								"format": "date-time"
							},
							"listUnitPrice": {
								"title": "List Unit Price",
								"type": "number",
								"multipleOf": "0.01"
							},
							"product": {
								"title": "Product",
								"$ref": "Product"
							},
							"productCode": {
								"title": "Product Code",
								"type": "string",
								"$_formula": "product.code"
							},
							"productName": {
								"title": "Product Name",
								"type": "string",
								"$_formula": "product.name"
							},
							"quantity": {
								"title": "Quantity",
								"type": "number",
								"multipleOf": "0.01"
							},
							"quote": {
								"title": "Quote",
								"$ref": "Quote",
								"$_md": true
							},
							"startDate": {
								"title": "Start Date",
								"type": "string",
								"format": "date-time"
							}
						}
					}
				}
			});

			_export("schema", schema);

			_export("objectLayouts", objectLayouts = {
				Quote: {
					list: {
						'all': {
							label: 'All',
							columns: [{ field: 'name', link: true }, { field: 'Opportunity', link: true }, { field: 'type' }, { field: 'primary' }, { field: 'lineItemsGrouped' }, { field: 'netAmount' }, { field: 'status' }, { field: 'expirationDate' }, { field: 'lastModifiedDate' }, { field: 'lastModifiedBy' }]
						}
					},
					detail: {
						'default': {
							titleAttr: 'Name',
							sections: [{
								label: 'Information',
								fields: [[{ name: 'name' }, { name: 'Primary' }, { name: 'Status', required: true }, { name: 'ExpirationDate' }, { name: 'SalesRep' }, { name: 'PrimaryContact' }, { name: 'SubscriptionTerm' }, { name: 'DeliveryMethod' }, { name: 'MasterContract' }], [{ name: 'Opportunity' }, { name: 'NetAmount' }, { name: 'CustomerAmount' }, { name: 'RegularAmount' }, { name: 'ListAmount' }, { name: 'Type', required: true }, { name: 'PaymentTerms' }]]
							}, {
								label: 'Discount Information',
								fields: []
							}]
						}
					}
				},

				Opportunity: {
					list: {
						'all': {
							label: 'All',
							columns: [{ field: 'name', link: true }, { field: 'account', link: true }, { field: 'amount' }, { field: 'closeDate' }, { field: 'stageName' }, { field: 'owner' }]
						}
					},
					detail: {
						'default': {
							titleAttr: 'name',
							sections: [{
								label: 'Opportunity Information',
								fields: [[{ name: 'owner', editable: false }, { name: 'name', required: true }, { name: 'account' }, { name: 'type' }, { name: 'leadSource' }], [{ name: 'closeDate', required: true }, { name: 'stageName', required: true }, { name: 'nextStep' }, { name: 'probability' }, { name: 'amount' }]]
							}, {
								label: 'Description Information',
								fields: [[{ name: 'description' }]]
							}, {
								label: 'SteelBrick Information',
								fields: [[{ name: 'primaryQuote' }, { name: 'quotePricebookId' }], [{ name: 'contracted' }, { name: 'renewal' }, { name: 'renewedContract' }]]
							}],
							relatedLists: [{ entity: 'quote' }, { entity: 'quotedoc' }]
						}
					}
				},

				User: {
					list: {
						'all': {
							label: 'All',
							columns: [{ field: 'Username', link: true }, { field: 'Firstname' }, { field: 'Lastname' }, { field: 'Active' }, { field: 'Alias' }]
						}
					},
					detail: {
						'default': {
							titleAttr: 'Username',
							sections: [{
								label: 'General Information',
								fields: [[{ name: 'Id', editable: false }, { name: 'Username' }, { name: 'Firstname' }, { name: 'Lastname' }, { name: 'Email' }, { name: 'Alias' }, { name: 'Active' }]]
							}]
						}
					}
				}
			});

			_export("objectLayouts", objectLayouts);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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QVEsQ0FDUCxDQUNDLEVBQUUsTUFBTSxJQUFOLEVBQVksVUFBVSxLQUFWLEVBRGYsRUFFQyxFQUFFLE1BQU0sVUFBTixFQUZILEVBR0MsRUFBRSxNQUFNLFdBQU4sRUFISCxFQUlDLEVBQUUsTUFBTSxVQUFOLEVBSkgsRUFLQyxFQUFFLE1BQU0sT0FBTixFQUxILEVBTUMsRUFBRSxNQUFNLE9BQU4sRUFOSCxFQU9DLEVBQUUsTUFBTSxRQUFOLEVBUEgsQ0FETyxDQUFSO1FBSFEsQ0FBVjtPQUZEO01BREQ7S0FiRCIsImZpbGUiOiJNZXRhZGF0YS5qcyIsInNvdXJjZXNDb250ZW50IjpbIlxuZXhwb3J0IGxldCBzY2hlbWEgPSB7XG5cdFwiJHNjaGVtYVwiOiBcImh0dHA6Ly9qc29uLXNjaGVtYS5vcmcvZHJhZnQtMDQvc2NoZW1hI1wiLFxuXHRcImlkXCI6IFwiL1wiLFxuXHRcImRlZmluaXRpb25zXCI6IHtcblx0XHRcIlByb2R1Y3RcIjoge1xuXHRcdFx0XCJpZFwiOiBcIlByb2R1Y3RcIixcblx0XHRcdFwidGl0bGVcIjogXCJQcm9kdWN0XCIsXG5cdFx0XHRcInRpdGxlUGx1cmFsXCI6IFwiUHJvZHVjdHNcIixcblx0XHRcdFwidHlwZVwiOiBcIm9iamVjdFwiLFxuXHRcdFx0XCJwcm9wZXJ0aWVzXCI6IHtcblx0XHRcdFx0XCJpZFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIklEXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJuYW1lXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTmFtZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwiY29kZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkNvZGVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImNyZWF0ZWRCeVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkNyZWF0ZWQgQnlcIixcblx0XHRcdFx0XHRcIiRyZWZcIjogXCJVc2VyXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJjcmVhdGVkRGF0ZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkNyZWF0ZWQgRGF0ZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiZm9ybWF0XCI6IFwiZGF0ZS10aW1lXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJsYXN0TW9kaWZpZWRCeVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIk1vZGlmaWVkIEJ5XCIsXG5cdFx0XHRcdFx0XCIkcmVmXCI6IFwiVXNlclwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibGFzdE1vZGlmaWVkXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTGFzdCBNb2RpZmllZCBEYXRlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJmb3JtYXRcIjogXCJkYXRlLXRpbWVcIlxuXHRcdFx0XHR9XG5cdFx0XHR9LFxuXHRcdFx0XCJyZXF1aXJlZFwiOiBbXG5cdFx0XHRcdFwiaWRcIixcblx0XHRcdFx0XCJjcmVhdGVkQnlcIixcblx0XHRcdFx0XCJjcmVhdGVkRGF0ZVwiLFxuXHRcdFx0XHRcImxhc3RNb2RpZmllZEJ5XCIsXG5cdFx0XHRcdFwibGFzdE1vZGlmaWVkRGF0ZVwiLFxuXHRcdFx0XHRcIm5hbWVcIlxuXHRcdFx0XVxuXHRcdH0sXG5cdFx0XCJPcHBvcnR1bml0eVwiOiB7XG5cdFx0XHRcImlkXCI6IFwiT3Bwb3J0dW5pdHlcIixcblx0XHRcdFwidGl0bGVcIjogXCJPcHBvcnR1bml0eVwiLFxuXHRcdFx0XCJ0aXRsZVBsdXJhbFwiOiBcIk9wcG9ydHVuaXRpZXNcIixcblx0XHRcdFwidHlwZVwiOiBcIm9iamVjdFwiLFxuXHRcdFx0XCJwcm9wZXJ0aWVzXCI6IHtcblx0XHRcdFx0XCJpZFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIklEXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJuYW1lXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTmFtZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwiY3JlYXRlZEJ5XCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiQ3JlYXRlZCBCeVwiLFxuXHRcdFx0XHRcdFwiJHJlZlwiOiBcIlVzZXJcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImNyZWF0ZWREYXRlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiQ3JlYXRlZCBEYXRlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJmb3JtYXRcIjogXCJkYXRlLXRpbWVcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImxhc3RNb2RpZmllZEJ5XCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTW9kaWZpZWQgQnlcIixcblx0XHRcdFx0XHRcIiRyZWZcIjogXCJVc2VyXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJsYXN0TW9kaWZpZWRcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJMYXN0IE1vZGlmaWVkIERhdGVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIixcblx0XHRcdFx0XHRcImZvcm1hdFwiOiBcImRhdGUtdGltZVwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwiYWNjb3VudFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkFjY291bnRcIixcblx0XHRcdFx0XHRcIiRyZWZcIjogXCJBY2NvdW50XCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJhbW91bnRcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJBbW91bnRcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJudW1iZXJcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImRlc2NyaXB0aW9uXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiRGVzY3JpcHRpb25cIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIixcblx0XHRcdFx0XHRcIm1heExlbmd0aFwiOiAzMjAwMFxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcInByb2JhYmlsaXR5XCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiUHJvYmFiaWxpdHlcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJudW1iZXJcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImNsb3NlRGF0ZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkNsb3NlIERhdGVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIixcblx0XHRcdFx0XHRcImZvcm1hdFwiOiBcImRhdGUtdGltZVwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibmV4dFN0ZXBcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJOZXh0IFN0ZXBcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcInN0YWdlTmFtZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlN0YWdlIE5hbWVcIixcblx0XHRcdFx0XHRcImVudW1cIjogW1wiT3BlblwiLCBcIkNsb3NlZFwiXVxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImxlYWRTb3VyY2VcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJMZWFkIFNvdXJjZVwiLFxuXHRcdFx0XHRcdFwiZW51bVwiOiBbXCJXZWJcIiwgXCJQaG9uZSBJbnF1aXJ5XCIsIFwiUGFydG5lciBSZXRhaVwiLCBcIlB1cmNoYXNlZCBMaXN0XCIsIFwiT3RoZXJcIl1cblx0XHRcdFx0fSxcblx0XHRcdFx0XCJ0eXBlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiVHlwZVwiLFxuXHRcdFx0XHRcdFwiZW51bVwiOiBbXCJFeGlzdGluZyBDdXN0b21lciAtIFVwZ3JhZGVcIiwgXCJFeGlzdGluZyBDdXN0b21lciAtIFJlcGxhY2VtZW50XCIsIFwiRXhpc3RpbmcgQ3VzdG9tZXIgLSBEb3duZ3JhZGVcIiwgXCJOZXcgQ3VzdG9tZXJcIl1cblx0XHRcdFx0fSxcblx0XHRcdFx0XCJzdGFnZU5hbWVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJTdGFnZVwiLFxuXHRcdFx0XHRcdFwiZW51bVwiOiBbXCJQcm9zcGVjdGluZ1wiLFwiUXVhbGlmaWNhdGlvblwiLFwiTmVlZHMgQW5hbHlzaXNcIixcIlZhbHVlIFByb3Bvc2l0aW9uXCIsXCJJZC4gRGVjaXNpb24gTWFrZXJzXCIsXCJQZXJjZXB0aW9uIEFuYWx5c2lzXCIsXCJQcm9wb3NhbC9QcmljZSBRdW90ZVwiLFwiTmVnb3RpYXRpb24vUmV2aWV3XCIsXCJDbG9zZWQgV29uXCIsXCJDbG9zZWQgTG9zdFwiXVxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcIm93bmVyXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiT3duZXJcIixcblx0XHRcdFx0XHRcIiRyZWZcIjogXCJVc2VyXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJwcmltYXJ5UXVvdGVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJQcmltYXJ5IFF1b3RlXCIsXG5cdFx0XHRcdFx0XCIkcmVmXCI6IFwiUXVvdGVcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcInF1b3RlUHJpY2Vib29rSWRcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJRdW90ZSBQcmljZWJvb2sgSURcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcInJlbmV3YWxcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJSZW5ld2FsXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwiYm9vbGVhblwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwiY29udHJhY3RlZFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkNvbnRyYWN0ZWRcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJib29sZWFuXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJyZW5ld2VkQ29udHJhY3RcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJSZW5ld2VkIENvbnRyYWN0XCIsXG5cdFx0XHRcdFx0XCIkcmVmXCI6IFwiUXVvdGVcIlxuXHRcdFx0XHR9XG5cdFx0XHR9LFxuXHRcdFx0XCJyZXF1aXJlZFwiOiBbXG5cdFx0XHRcdFwiaWRcIixcblx0XHRcdFx0XCJjcmVhdGVkQnlcIixcblx0XHRcdFx0XCJjcmVhdGVkRGF0ZVwiLFxuXHRcdFx0XHRcImxhc3RNb2RpZmllZEJ5XCIsXG5cdFx0XHRcdFwibGFzdE1vZGlmaWVkRGF0ZVwiLFxuXHRcdFx0XHRcIm5hbWVcIlxuXHRcdFx0XVxuXHRcdH0sXG5cdFx0XCJVc2VyXCI6IHtcblx0XHRcdFwiaWRcIjogXCJVc2VyXCIsXG5cdFx0XHRcInRpdGxlXCI6IFwiVXNlclwiLFxuXHRcdFx0XCJ0aXRsZVBsdXJhbFwiOiBcIlVzZXJzXCIsXG5cdFx0XHRcInR5cGVcIjogXCJvYmplY3RcIixcblx0XHRcdFwicHJvcGVydGllc1wiOiB7XG5cdFx0XHRcdFwiaWRcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJJRFwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibGFzdG5hbWVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJMYXN0IE5hbWVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImZpcnN0bmFtZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkZpcnN0IE5hbWVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImZ1bGxuYW1lXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiRnVsbCBOYW1lXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJlbWFpbFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkVtYWlsXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJmb3JtYXRcIjogXCJlbWFpbFwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwidXNlcm5hbWVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJVc2VybmFtZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwiYWN0aXZlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiQWN0aXZlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwiYm9vbGVhblwiXG5cdFx0XHRcdH1cblx0XHRcdH0sXG5cdFx0XHRcInJlcXVpcmVkXCI6IFtcblx0XHRcdFx0XCJpZFwiLFxuXHRcdFx0XHRcIm5hbWVcIixcblx0XHRcdFx0XCJ1c2VybmFtZVwiXG5cdFx0XHRdXG5cdFx0fSxcblx0XHRcIlF1b3RlXCI6IHtcblx0XHRcdFwiaWRcIjogXCJRdW90ZVwiLFxuXHRcdFx0XCJ0aXRsZVwiOiBcIlF1b3RlXCIsXG5cdFx0XHRcInRpdGxlUGx1cmFsXCI6IFwiUXVvdGVzXCIsXG5cdFx0XHRcInR5cGVcIjogXCJvYmplY3RcIixcblx0XHRcdFwicHJvcGVydGllc1wiOiB7XG5cdFx0XHRcdFwiYWRkaXRpb25hbERpc2NvdW50XCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiQWRkaXRpb25hbCBEaXNjb3VudFwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcIm51bWJlclwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwiY3JlYXRlZEJ5XCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiQ3JlYXRlZCBCeVwiLFxuXHRcdFx0XHRcdFwiJHJlZlwiOiBcIlVzZXJcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImNyZWF0ZWREYXRlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiQ3JlYXRlZCBEYXRlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJmb3JtYXRcIjogXCJkYXRlLXRpbWVcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImVuZERhdGVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJFbmQgRGF0ZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiZm9ybWF0XCI6IFwiZGF0ZS10aW1lXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJsYXN0TW9kaWZpZWRCeVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIk1vZGlmaWVkIEJ5XCIsXG5cdFx0XHRcdFx0XCIkcmVmXCI6IFwiVXNlclwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibGFzdE1vZGlmaWVkXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTGFzdCBNb2RpZmllZCBEYXRlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJmb3JtYXRcIjogXCJkYXRlLXRpbWVcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImxpbmVJdGVtQ291bnRcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJMaW5lIEl0ZW0gQ291bnRcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJpbnRlZ2VyXCIsXG5cdFx0XHRcdFx0XCJtaW5pbXVtXCI6IDBcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJsaW5lc1wiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkxpbmVzXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwiYXJyYXlcIixcblx0XHRcdFx0XHRcIml0ZW1zXCI6IHsgXCIkcmVmXCI6IFwiUXVvdGVMaW5lXCIgfSxcblx0XHRcdFx0XHRcIiRfbWRcIjogdHJ1ZVxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcIm5hbWVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJOYW1lXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJub3RlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTm90ZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwib3Bwb3J0dW5pdHlcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJPcHBvcnR1bml0eVwiLFxuXHRcdFx0XHRcdFwiJHJlZlwiOiBcIk9wcG9ydHVuaXR5XCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJzdGFydERhdGVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJTdGFydCBEYXRlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJmb3JtYXRcIjogXCJkYXRlLXRpbWVcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcInN0YXR1c1wiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlN0YXR1c1wiLFxuXHRcdFx0XHRcdFwiZW51bVwiOiBbXCJEcmFmdFwiLCBcIkluIFJldmlld1wiLCBcIkFwcHJvdmVkXCIsIFwiRGVuaWVkXCIsIFwiUHJlc2VudGVkXCIsIFwiQWNjZXB0ZWRcIiwgXCJSZWplY3RlZFwiXVxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcInBheW1lbnRUZXJtc1wiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlBheW1lbnQgVGVybXNcIixcblx0XHRcdFx0XHRcImVudW1cIjogW1wiRHVlIG9uIFJlY2VpcHRcIiwgXCJOZXQgMTVcIiwgXCJOZXQgMzBcIiwgXCJOZXQgNDVcIiwgXCJOZXQgNjBcIiwgXCJOZXQgOTBcIl1cblx0XHRcdFx0fSxcblx0XHRcdFx0XCJ0eXBlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiVHlwZVwiLFxuXHRcdFx0XHRcdFwiZW51bVwiOiBbXCJRdW90ZVwiLCBcIlJlbmV3YWxcIiwgXCJBbWVuZG1lbnRcIiwgXCJDaGFuZ2UgT3JkZXJcIl1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH0sXG5cdFx0XCJRdW90ZUxpbmVcIjoge1xuXHRcdFx0XCJpZFwiOiBcIlF1b3RlTGluZVwiLFxuXHRcdFx0XCJ0aXRsZVwiOiBcIlF1b3RlIExpbmVcIixcblx0XHRcdFwidGl0bGVQbHVyYWxcIjogXCJRdW90ZSBMaW5lc1wiLFxuXHRcdFx0XCJ0eXBlXCI6IFwib2JqZWN0XCIsXG5cdFx0XHRcInByb3BlcnRpZXNcIjoge1xuXHRcdFx0XHRcImFkZGl0aW9uYWxEaXNjb3VudFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkFkZGl0aW9uYWwgRGlzY291bnRcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJudW1iZXJcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImNyZWF0ZWRCeVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkNyZWF0ZWQgQnlcIixcblx0XHRcdFx0XHRcIiRyZWZcIjogXCJVc2VyXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJjcmVhdGVkRGF0ZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkNyZWF0ZWQgRGF0ZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiZm9ybWF0XCI6IFwiZGF0ZS10aW1lXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJlbmREYXRlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiRW5kIERhdGVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIixcblx0XHRcdFx0XHRcImZvcm1hdFwiOiBcImRhdGUtdGltZVwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibmV0VW5pdFByaWNlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTmV0IFVuaXQgUHJpY2VcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJudW1iZXJcIixcblx0XHRcdFx0XHRcIm11bHRpcGxlT2ZcIjogXCIwLjAxXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJuZXRUb3RhbFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIk5ldCBUb3RhbFwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcIm51bWJlclwiLFxuXHRcdFx0XHRcdFwibXVsdGlwbGVPZlwiOiBcIjAuMDFcIixcblx0XHRcdFx0XHRcIiRfZm9ybXVsYVwiOiBcIm5ldFVuaXRQcmljZSAqIHF1YW50aXR5XCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJsYXN0TW9kaWZpZWRCeVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIk1vZGlmaWVkIEJ5XCIsXG5cdFx0XHRcdFx0XCIkcmVmXCI6IFwiVXNlclwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibGFzdE1vZGlmaWVkXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTGFzdCBNb2RpZmllZCBEYXRlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJmb3JtYXRcIjogXCJkYXRlLXRpbWVcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImxpc3RVbml0UHJpY2VcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJMaXN0IFVuaXQgUHJpY2VcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJudW1iZXJcIixcblx0XHRcdFx0XHRcIm11bHRpcGxlT2ZcIjogXCIwLjAxXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJwcm9kdWN0XCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiUHJvZHVjdFwiLFxuXHRcdFx0XHRcdFwiJHJlZlwiOiBcIlByb2R1Y3RcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcInByb2R1Y3RDb2RlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiUHJvZHVjdCBDb2RlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCIkX2Zvcm11bGFcIjogXCJwcm9kdWN0LmNvZGVcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcInByb2R1Y3ROYW1lXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiUHJvZHVjdCBOYW1lXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCIkX2Zvcm11bGFcIjogXCJwcm9kdWN0Lm5hbWVcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcInF1YW50aXR5XCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiUXVhbnRpdHlcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJudW1iZXJcIixcblx0XHRcdFx0XHRcIm11bHRpcGxlT2ZcIjogXCIwLjAxXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJxdW90ZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlF1b3RlXCIsXG5cdFx0XHRcdFx0XCIkcmVmXCI6IFwiUXVvdGVcIixcblx0XHRcdFx0XHRcIiRfbWRcIjogdHJ1ZVxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcInN0YXJ0RGF0ZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlN0YXJ0IERhdGVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIixcblx0XHRcdFx0XHRcImZvcm1hdFwiOiBcImRhdGUtdGltZVwiXG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cbn1cblxuLypcbkV4YW1wbGUgSW5zdGFuY2UgRG9jdW1lbnRcbntcblwib3Bwb3J0dW5pdHlcIjoge1xuXCJpZFwiOiBcImFiY1wiLFxuXCJuYW1lXCI6IFwidGVzdCBvcHBcIlxufSxcblwidXNlclwiOiB7XG5cImlkXCI6IFwiYWJjXCIsXG5cImxhc3RuYW1lXCI6IFwiT2JhbWFcIixcblwiZmlyc3RuYW1lXCI6IFwiQmFyYWNrXCIsXG5cImZ1bGxuYW1lXCI6IFwiQmFyYWNrIE9iYW1hXCIsXG5cImVtYWlsXCI6IFwiZm9vQGJhci5jb21cIixcblwidXNlcm5hbWVcIjogXCJib2JhbWFcIixcblwiYWN0aXZlXCI6IHRydWVcbn0sXG5cInF1b3RlXCI6IHtcblwiYWRkaXRpb25hbERpc2NvdW50XCI6IDAuMzQsXG5cImNyZWF0ZWRCeVwiOiBcImFiY1wiLFxuXCJjcmVhdGVkRGF0ZVwiOiBcIjIwMTUtMDUtMDZUMDA6MDA6MDBcIixcblwiZW5kRGF0ZVwiOiBcIjIwMTUtMDUtMDZUMDA6MDA6MDBcIixcblwibGFzdE1vZGlmaWVkQnlcIjogXCIyMDE1LTA1LTA2VDAwOjAwOjAwXCIsXG5cImxhc3RNb2RpZmllZFwiOiBcImFiY1wiLFxuXCJsaW5lSXRlbUNvdW50XCI6IDM0LFxuXCJuYW1lXCI6IFwidGVzdFwiLFxuXCJub3RlXCI6IFwiYmxhaCBibGFoXCIsXG5cIm9wcG9ydHVuaXR5XCI6IFwiYWJjXCIsXG5cInN0YXJ0RGF0ZVwiOiBcIjIwMTUtMDUtMDZUMDA6MDA6MDBcIixcblwic3RhdHVzXCI6IFwiT3BlblwiLFxuXCJ0eXBlXCI6IFwiUXVvdGVcIlxufVxufVxuKi9cblxuXG5leHBvcnQgbGV0IG9iamVjdExheW91dHMgPSB7XG5cdFF1b3RlOiB7XG5cdFx0bGlzdDoge1xuXHRcdFx0J2FsbCc6IHtcblx0XHRcdFx0bGFiZWw6ICdBbGwnLFxuXHRcdFx0XHRjb2x1bW5zOiBbXG5cdFx0XHRcdFx0eyBmaWVsZDogJ25hbWUnLCBsaW5rOiB0cnVlIH0sXG5cdFx0XHRcdFx0eyBmaWVsZDogJ09wcG9ydHVuaXR5JywgbGluazogdHJ1ZSB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICd0eXBlJyB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdwcmltYXJ5JyB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdsaW5lSXRlbXNHcm91cGVkJyB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICduZXRBbW91bnQnIH0sXG5cdFx0XHRcdFx0eyBmaWVsZDogJ3N0YXR1cycgfSxcblx0XHRcdFx0XHR7IGZpZWxkOiAnZXhwaXJhdGlvbkRhdGUnIH0sXG5cdFx0XHRcdFx0eyBmaWVsZDogJ2xhc3RNb2RpZmllZERhdGUnIH0sXG5cdFx0XHRcdFx0eyBmaWVsZDogJ2xhc3RNb2RpZmllZEJ5JyB9XG5cdFx0XHRcdF1cblx0XHRcdH1cblx0XHR9LFxuXHRcdGRldGFpbDoge1xuXHRcdFx0J2RlZmF1bHQnOiB7XG5cdFx0XHRcdHRpdGxlQXR0cjogJ05hbWUnLFxuXHRcdFx0XHRzZWN0aW9uczogW1xuXHRcdFx0XHRcdHtcblx0XHRcdFx0XHRcdGxhYmVsOiAnSW5mb3JtYXRpb24nLFxuXHRcdFx0XHRcdFx0ZmllbGRzOiBbXG5cdFx0XHRcdFx0XHRcdFtcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICduYW1lJyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ1ByaW1hcnknIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnU3RhdHVzJywgcmVxdWlyZWQ6IHRydWUgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdFeHBpcmF0aW9uRGF0ZScgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdTYWxlc1JlcCcgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdQcmltYXJ5Q29udGFjdCcgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdTdWJzY3JpcHRpb25UZXJtJyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ0RlbGl2ZXJ5TWV0aG9kJyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ01hc3RlckNvbnRyYWN0JyB9XG5cdFx0XHRcdFx0XHRcdF0sXG5cdFx0XHRcdFx0XHRcdFtcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdPcHBvcnR1bml0eScgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdOZXRBbW91bnQnIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnQ3VzdG9tZXJBbW91bnQnIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnUmVndWxhckFtb3VudCcgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdMaXN0QW1vdW50JyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ1R5cGUnLCByZXF1aXJlZDogdHJ1ZSB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ1BheW1lbnRUZXJtcycgfS8vLFxuXHRcdFx0XHRcdFx0XHRcdC8veyBuYW1lOiAnU3RhcnREYXRlJyB9LFxuXHRcdFx0XHRcdFx0XHRcdC8veyBuYW1lOiAnRW5kRGF0ZScgfVxuXHRcdFx0XHRcdFx0XHRdXG5cdFx0XHRcdFx0XHRdXG5cdFx0XHRcdFx0fSxcblx0XHRcdFx0XHR7XG5cdFx0XHRcdFx0XHRsYWJlbDogJ0Rpc2NvdW50IEluZm9ybWF0aW9uJyxcblx0XHRcdFx0XHRcdGZpZWxkczogW1xuXHRcdFx0XHRcdFx0XVxuXHRcdFx0XHRcdH1cblx0XHRcdFx0XVxuXHRcdFx0fVxuXHRcdH1cblx0fSxcblxuXHRPcHBvcnR1bml0eToge1xuXHRcdGxpc3Q6IHtcblx0XHRcdCdhbGwnOiB7XG5cdFx0XHRcdGxhYmVsOiAnQWxsJyxcblx0XHRcdFx0Y29sdW1uczogW1xuXHRcdFx0XHRcdHsgZmllbGQ6ICduYW1lJywgbGluazogdHJ1ZSB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdhY2NvdW50JywgbGluazogdHJ1ZSB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdhbW91bnQnIH0sXG5cdFx0XHRcdFx0eyBmaWVsZDogJ2Nsb3NlRGF0ZScgfSxcblx0XHRcdFx0XHR7IGZpZWxkOiAnc3RhZ2VOYW1lJyB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdvd25lcicgfVxuXHRcdFx0XHRdXG5cdFx0XHR9XG5cdFx0fSxcblx0XHRkZXRhaWw6IHtcblx0XHRcdCdkZWZhdWx0Jzoge1xuXHRcdFx0XHR0aXRsZUF0dHI6ICduYW1lJyxcblx0XHRcdFx0c2VjdGlvbnM6IFtcblx0XHRcdFx0XHR7XG5cdFx0XHRcdFx0XHRsYWJlbDogJ09wcG9ydHVuaXR5IEluZm9ybWF0aW9uJyxcblx0XHRcdFx0XHRcdGZpZWxkczogW1xuXHRcdFx0XHRcdFx0XHRbXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnb3duZXInLCBlZGl0YWJsZTogZmFsc2UgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICduYW1lJywgcmVxdWlyZWQ6IHRydWUgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdhY2NvdW50JyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ3R5cGUnIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnbGVhZFNvdXJjZScgfSxcblx0XHRcdFx0XHRcdFx0XSxcblx0XHRcdFx0XHRcdFx0W1xuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ2Nsb3NlRGF0ZScsIHJlcXVpcmVkOiB0cnVlIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnc3RhZ2VOYW1lJywgcmVxdWlyZWQ6IHRydWUgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICduZXh0U3RlcCcgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdwcm9iYWJpbGl0eScgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdhbW91bnQnIH1cblx0XHRcdFx0XHRcdFx0XVxuXHRcdFx0XHRcdFx0XVxuXHRcdFx0XHRcdH0sXG5cdFx0XHRcdFx0e1xuXHRcdFx0XHRcdFx0bGFiZWw6ICdEZXNjcmlwdGlvbiBJbmZvcm1hdGlvbicsXG5cdFx0XHRcdFx0XHRmaWVsZHM6IFtcblx0XHRcdFx0XHRcdFx0W1xuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ2Rlc2NyaXB0aW9uJyB9XG5cdFx0XHRcdFx0XHRcdF1cblx0XHRcdFx0XHRcdF1cblx0XHRcdFx0XHR9LFxuXHRcdFx0XHRcdHtcblx0XHRcdFx0XHRcdGxhYmVsOiAnU3RlZWxCcmljayBJbmZvcm1hdGlvbicsXG5cdFx0XHRcdFx0XHRmaWVsZHM6IFtcblx0XHRcdFx0XHRcdFx0W1xuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ3ByaW1hcnlRdW90ZScgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdxdW90ZVByaWNlYm9va0lkJyB9XG5cdFx0XHRcdFx0XHRcdF0sXG5cdFx0XHRcdFx0XHRcdFtcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdjb250cmFjdGVkJyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ3JlbmV3YWwnIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAncmVuZXdlZENvbnRyYWN0JyB9XG5cdFx0XHRcdFx0XHRcdF1cblx0XHRcdFx0XHRcdF1cblx0XHRcdFx0XHR9XG5cdFx0XHRcdF0sXG5cdFx0XHRcdHJlbGF0ZWRMaXN0czogW1xuXHRcdFx0XHRcdHsgZW50aXR5OiAncXVvdGUnfSxcblx0XHRcdFx0XHR7IGVudGl0eTogJ3F1b3RlZG9jJyB9LFxuXHRcdFx0XHRdXG5cdFx0XHR9XG5cdFx0fVxuXHR9LFxuXG5cdFVzZXI6IHtcblx0XHRsaXN0OiB7XG5cdFx0XHQnYWxsJzoge1xuXHRcdFx0XHRsYWJlbDogJ0FsbCcsXG5cdFx0XHRcdGNvbHVtbnM6IFtcblx0XHRcdFx0XHR7IGZpZWxkOiAnVXNlcm5hbWUnLCBsaW5rOiB0cnVlIH0sXG5cdFx0XHRcdFx0eyBmaWVsZDogJ0ZpcnN0bmFtZScgfSxcblx0XHRcdFx0XHR7IGZpZWxkOiAnTGFzdG5hbWUnIH0sXG5cdFx0XHRcdFx0eyBmaWVsZDogJ0FjdGl2ZScgfSxcblx0XHRcdFx0XHR7IGZpZWxkOiAnQWxpYXMnIH1cblx0XHRcdFx0XVxuXHRcdFx0fVxuXHRcdH0sXG5cdFx0ZGV0YWlsOiB7XG5cdFx0XHQnZGVmYXVsdCc6IHtcblx0XHRcdFx0dGl0bGVBdHRyOiAnVXNlcm5hbWUnLFxuXHRcdFx0XHRzZWN0aW9uczogW1xuXHRcdFx0XHRcdHtcblx0XHRcdFx0XHRcdGxhYmVsOiAnR2VuZXJhbCBJbmZvcm1hdGlvbicsXG5cdFx0XHRcdFx0XHRmaWVsZHM6IFtcblx0XHRcdFx0XHRcdFx0W1xuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ0lkJywgZWRpdGFibGU6IGZhbHNlIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnVXNlcm5hbWUnIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnRmlyc3RuYW1lJyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ0xhc3RuYW1lJyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ0VtYWlsJyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ0FsaWFzJyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ0FjdGl2ZScgfVxuXHRcdFx0XHRcdFx0XHRdXG5cdFx0XHRcdFx0XHRdXG5cdFx0XHRcdFx0fVxuXHRcdFx0XHRdXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG4iXX0=
'use strict';

System.register('common/data/sb-service/Service.js', ['common/data/client/ServiceClient.js', 'common/data/cache/Cache.js'], function (_export, _context) {
    var ServiceClient, Cache, _createClass, Service;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [function (_commonDataClientServiceClientJs) {
            ServiceClient = _commonDataClientServiceClientJs.ServiceClient;
        }, function (_commonDataCacheCacheJs) {
            Cache = _commonDataCacheCacheJs.Cache;
        }],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('Service', Service = function () {
                function Service() {
                    _classCallCheck(this, Service);
                }

                _createClass(Service, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-service';
                        this.properties = {
                            prefix: String,
                            reader: String,
                            loader: String,
                            saver: String,
                            uid: String,
                            model: Object,
                            context: Object,
                            cache: String,
                            waiting: {
                                type: Boolean,
                                notify: true
                            },
                            response: {
                                type: Object,
                                notify: true
                            },
                            error: {
                                type: Object,
                                notify: true
                            },
                            client: {
                                type: Object,
                                value: function value() {
                                    return new ServiceClient();
                                }
                            }
                        };
                    }
                }, {
                    key: 'read',
                    value: function read(request) {
                        Polymer.Base.extend(this, request);
                        var cachedResponse = Cache.get(this.cache, this.uid);
                        if (cachedResponse) return this._response(Promise.resolve(cachedResponse));
                        return this._response(this.client.read(this.prefix, this.reader, this.uid));
                    }
                }, {
                    key: 'load',
                    value: function load(request) {
                        Polymer.Base.extend(this, request);
                        var cachedResponse = Cache.get(this.cache, this.uid);
                        if (cachedResponse) return this._response(Promise.resolve(cachedResponse));
                        return this._response(this.client.load(this.prefix, this.loader, this.uid, this.context));
                    }
                }, {
                    key: 'save',
                    value: function save(request) {
                        Polymer.Base.extend(this, request);
                        return this._response(this.client.save(this.prefix, this.saver, this.model));
                    }
                }, {
                    key: '_read',
                    value: function _read() {
                        this.read().then(function () {}, function (err) {
                            console.error(err.message || err);
                        });
                    }
                }, {
                    key: '_load',
                    value: function _load() {
                        this.load().then(function () {}, function (err) {
                            console.error(err.message || err);
                        });
                    }
                }, {
                    key: '_save',
                    value: function _save() {
                        this.save().then(function () {}, function (err) {
                            console.error(err.message || err);
                        });;
                    }
                }, {
                    key: '_response',
                    value: function _response(promise) {
                        this.waiting = true;
                        return new Promise(function (resolve, reject) {
                            promise.then(function (res) {
                                this.waiting = false;
                                if (res) this.response = res;
                                resolve(this.response);
                            }.bind(this), function (err) {
                                this.waiting = false;
                                if (err) this.error = this._createError(err);
                                reject(this.error);
                            }.bind(this));
                        }.bind(this));
                    }
                }, {
                    key: '_cache',
                    value: function _cache() {
                        Cache.add(this.cache, this.uid, this.response);
                    }
                }, {
                    key: '_createError',
                    value: function _createError(err) {
                        var msg = err.message || err;
                        var error = { message: msg };

                        var validations;
                        if (msg.indexOf('ServiceRouter.DMLRouterException: [') != -1 || msg.startsWith('[')) {
                            var start = msg.indexOf('[');
                            var end = msg.indexOf(']', start) + 1;
                            if (end > start) validations = msg.substring(start, end);
                        }

                        if (validations) {
                            try {
                                var validationsArray = JSON.parse(validations);
                                error.validations = validationsArray;
                            } catch (e) {}
                        }

                        return error;
                    }
                }, {
                    key: 'listeners',
                    get: function get() {
                        return {
                            'response-changed': '_cache'
                        };
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['_read(prefix, reader, uid)', '_save(prefix, saver, model)', '_load(prefix, loader, uid, context)'];
                    }
                }]);

                return Service;
            }());

            _export('Service', Service);

            Polymer(Service);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,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S0FBakIsSUFBMEIsQ0FBMUIsQ0FGc0U7QUFHaEYsZ0NBQUcsTUFBTSxLQUFOLEVBQ0MsY0FBYyxJQUFJLFNBQUosQ0FBYyxLQUFkLEVBQXFCLEdBQXJCLENBQWQsQ0FESjt5QkFISjs7QUFPQSw0QkFBRyxXQUFILEVBQWdCO0FBQ1osZ0NBQUk7QUFDQSxvQ0FBSSxtQkFBbUIsS0FBSyxLQUFMLENBQVcsV0FBWCxDQUFuQixDQURKO0FBRUEsc0NBQU0sV0FBTixHQUFvQixnQkFBcEIsQ0FGQTs2QkFBSixDQUdFLE9BQU8sQ0FBUCxFQUFVLEVBQVY7eUJBSk47O0FBUUEsK0JBQU8sS0FBUCxDQXBCYzs7Ozt3Q0FoRUY7QUFDWiwrQkFBTztBQUNILGdEQUFxQixRQUFyQjt5QkFESixDQURZOzs7O3dDQU1BO0FBQ1osK0JBQU8sQ0FBQyw0QkFBRCxFQUErQiw2QkFBL0IsRUFBOEQscUNBQTlELENBQVAsQ0FEWTs7Ozt1QkF0Q1A7Ozs7O0FBd0hiLG9CQUFTLE9BQVQiLCJmaWxlIjoiU2VydmljZS5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7U2VydmljZUNsaWVudH0gZnJvbSAnY29tbW9uL2RhdGEvY2xpZW50L1NlcnZpY2VDbGllbnQuanMnO1xuaW1wb3J0IHtDYWNoZX0gZnJvbSAnY29tbW9uL2RhdGEvY2FjaGUvQ2FjaGUuanMnO1xuXG5leHBvcnQgY2xhc3MgU2VydmljZSB7XG5cbiAgICBiZWZvcmVSZWdpc3RlcigpIHtcbiAgICAgICAgdGhpcy5pcyA9ICdzYi1zZXJ2aWNlJztcbiAgICAgICAgdGhpcy5wcm9wZXJ0aWVzID0ge1xuICAgICAgICAgICAgcHJlZml4OiBTdHJpbmcsXG4gICAgICAgICAgICByZWFkZXI6IFN0cmluZyxcbiAgICAgICAgICAgIGxvYWRlcjogU3RyaW5nLFxuICAgICAgICAgICAgc2F2ZXI6IFN0cmluZyxcbiAgICAgICAgICAgIHVpZDogU3RyaW5nLCAvLyB1c2VkIGZvciByZWFkZXIsIGxvYWRlciwgYW5kIHNhdmVyXG4gICAgICAgICAgICBtb2RlbDogT2JqZWN0LCAvLyB1c2VyIGZvciBzYXZlclxuICAgICAgICAgICAgY29udGV4dDogT2JqZWN0LCAvLyB1c2VkIGZvciBsb2FkZXJcbiAgICAgICAgICAgIGNhY2hlOiBTdHJpbmcsIC8vIHRoZSBuYW1lZCBjYWNoZSB1c2VkIG1hbmFnZSB0aGUgc2VydmVyIHJldHJpZXZlIHJlc3BvbnNlXG4gICAgICAgICAgICB3YWl0aW5nOiB7XG4gICAgICAgICAgICAgICAgdHlwZTogQm9vbGVhbixcbiAgICAgICAgICAgICAgICBub3RpZnk6IHRydWVcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICByZXNwb25zZToge1xuICAgICAgICAgICAgICAgIHR5cGU6IE9iamVjdCxcbiAgICAgICAgICAgICAgICBub3RpZnk6IHRydWVcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBlcnJvcjoge1xuICAgICAgICAgICAgICAgIHR5cGU6IE9iamVjdCxcbiAgICAgICAgICAgICAgICBub3RpZnk6IHRydWVcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBjbGllbnQ6IHtcbiAgICAgICAgICAgICAgICB0eXBlOiBPYmplY3QsXG4gICAgICAgICAgICAgICAgdmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4gbmV3IFNlcnZpY2VDbGllbnQoKTsgfVxuICAgICAgICAgICAgfVxuICAgICAgICB9O1xuICAgIH1cblxuICAgIGdldCBsaXN0ZW5lcnMoKSB7XG4gICAgICAgIHJldHVybiB7XG4gICAgICAgICAgICAncmVzcG9uc2UtY2hhbmdlZCcgOiAnX2NhY2hlJ1xuICAgICAgICB9O1xuICAgIH1cblxuICAgIGdldCBvYnNlcnZlcnMoKSB7XG4gICAgICAgIHJldHVybiBbJ19yZWFkKHByZWZpeCwgcmVhZGVyLCB1aWQpJywgJ19zYXZlKHByZWZpeCwgc2F2ZXIsIG1vZGVsKScsICdfbG9hZChwcmVmaXgsIGxvYWRlciwgdWlkLCBjb250ZXh0KSddO1xuICAgIH1cblxuICAgIHJlYWQocmVxdWVzdCkge1xuICAgICAgICBQb2x5bWVyLkJhc2UuZXh0ZW5kKHRoaXMsIHJlcXVlc3QpO1xuICAgICAgICB2YXIgY2FjaGVkUmVzcG9uc2UgPSBDYWNoZS5nZXQodGhpcy5jYWNoZSwgdGhpcy51aWQpO1xuICAgICAgICBpZihjYWNoZWRSZXNwb25zZSlcbiAgICAgICAgICAgIHJldHVybiB0aGlzLl9yZXNwb25zZShQcm9taXNlLnJlc29sdmUoY2FjaGVkUmVzcG9uc2UpKTtcbiAgICAgICAgcmV0dXJuIHRoaXMuX3Jlc3BvbnNlKHRoaXMuY2xpZW50LnJlYWQodGhpcy5wcmVmaXgsIHRoaXMucmVhZGVyLCB0aGlzLnVpZCkpO1xuICAgIH1cblxuICAgIGxvYWQocmVxdWVzdCkge1xuICAgICAgICBQb2x5bWVyLkJhc2UuZXh0ZW5kKHRoaXMsIHJlcXVlc3QpO1xuICAgICAgICB2YXIgY2FjaGVkUmVzcG9uc2UgPSBDYWNoZS5nZXQodGhpcy5jYWNoZSwgdGhpcy51aWQpO1xuICAgICAgICBpZihjYWNoZWRSZXNwb25zZSlcbiAgICAgICAgICAgIHJldHVybiB0aGlzLl9yZXNwb25zZShQcm9taXNlLnJlc29sdmUoY2FjaGVkUmVzcG9uc2UpKTtcbiAgICAgICAgcmV0dXJuIHRoaXMuX3Jlc3BvbnNlKHRoaXMuY2xpZW50LmxvYWQodGhpcy5wcmVmaXgsIHRoaXMubG9hZGVyLCB0aGlzLnVpZCwgdGhpcy5jb250ZXh0KSk7XG4gICAgfVxuXG4gICAgc2F2ZShyZXF1ZXN0KSB7XG4gICAgICAgIFBvbHltZXIuQmFzZS5leHRlbmQodGhpcywgcmVxdWVzdCk7XG4gICAgICAgIHJldHVybiB0aGlzLl9yZXNwb25zZSh0aGlzLmNsaWVudC5zYXZlKHRoaXMucHJlZml4LCB0aGlzLnNhdmVyLCB0aGlzLm1vZGVsKSk7XG4gICAgfVxuXG4gICAgX3JlYWQoKSB7XG4gICAgICAgIHRoaXMucmVhZCgpLnRoZW4oZnVuY3Rpb24oKSB7fSwgZnVuY3Rpb24oZXJyKSB7Y29uc29sZS5lcnJvcihlcnIubWVzc2FnZSB8fCBlcnIpfSk7XG4gICAgfVxuXG4gICAgX2xvYWQoKSB7XG4gICAgICAgIHRoaXMubG9hZCgpLnRoZW4oZnVuY3Rpb24oKSB7fSwgZnVuY3Rpb24oZXJyKSB7Y29uc29sZS5lcnJvcihlcnIubWVzc2FnZSB8fCBlcnIpfSk7XG4gICAgfVxuXG4gICAgX3NhdmUoKSB7XG4gICAgICAgIHRoaXMuc2F2ZSgpLnRoZW4oZnVuY3Rpb24oKSB7fSwgZnVuY3Rpb24oZXJyKSB7Y29uc29sZS5lcnJvcihlcnIubWVzc2FnZSB8fCBlcnIpfSk7O1xuICAgIH1cblxuICAgIF9yZXNwb25zZShwcm9taXNlKSB7XG4gICAgICAgIHRoaXMud2FpdGluZyA9IHRydWU7XG4gICAgICAgIHJldHVybiBuZXcgUHJvbWlzZShmdW5jdGlvbihyZXNvbHZlLCByZWplY3QpIHtcbiAgICAgICAgICAgIHByb21pc2UudGhlbihmdW5jdGlvbihyZXMpIHtcbiAgICAgICAgICAgICAgICB0aGlzLndhaXRpbmcgPSBmYWxzZTtcbiAgICAgICAgICAgICAgICBpZihyZXMpXG4gICAgICAgICAgICAgICAgICAgIHRoaXMucmVzcG9uc2UgPSByZXM7XG4gICAgICAgICAgICAgICAgcmVzb2x2ZSh0aGlzLnJlc3BvbnNlKTtcbiAgICAgICAgICAgIH0uYmluZCh0aGlzKSwgZnVuY3Rpb24oZXJyKSB7XG4gICAgICAgICAgICAgICAgdGhpcy53YWl0aW5nID0gZmFsc2U7XG4gICAgICAgICAgICAgICAgaWYoZXJyKVxuICAgICAgICAgICAgICAgICAgICB0aGlzLmVycm9yID0gdGhpcy5fY3JlYXRlRXJyb3IoZXJyKTtcbiAgICAgICAgICAgICAgICByZWplY3QodGhpcy5lcnJvcik7XG4gICAgICAgICAgICB9LmJpbmQodGhpcykpXG4gICAgICAgIH0uYmluZCh0aGlzKSk7XG4gICAgfVxuXG4gICAgX2NhY2hlKCkge1xuICAgICAgICBDYWNoZS5hZGQodGhpcy5jYWNoZSwgdGhpcy51aWQsIHRoaXMucmVzcG9uc2UpO1xuICAgIH1cblxuICAgIF9jcmVhdGVFcnJvcihlcnIpIHtcbiAgICAgICAgdmFyIG1zZyA9IGVyci5tZXNzYWdlIHx8IGVycjtcbiAgICAgICAgdmFyIGVycm9yID0ge21lc3NhZ2UgOiBtc2d9O1xuXG4gICAgICAgIHZhciB2YWxpZGF0aW9ucztcbiAgICAgICAgaWYobXNnLmluZGV4T2YoJ1NlcnZpY2VSb3V0ZXIuRE1MUm91dGVyRXhjZXB0aW9uOiBbJykgIT0gLTEgfHwgbXNnLnN0YXJ0c1dpdGgoJ1snKSkge1xuICAgICAgICAgICAgdmFyIHN0YXJ0ID0gbXNnLmluZGV4T2YoJ1snKTtcbiAgICAgICAgICAgIHZhciBlbmQgPSBtc2cuaW5kZXhPZignXScsIHN0YXJ0KSArIDE7XG4gICAgICAgICAgICBpZihlbmQgPiBzdGFydClcbiAgICAgICAgICAgICAgICB2YWxpZGF0aW9ucyA9IG1zZy5zdWJzdHJpbmcoc3RhcnQsIGVuZCk7XG4gICAgICAgIH1cblxuICAgICAgICBpZih2YWxpZGF0aW9ucykge1xuICAgICAgICAgICAgdHJ5IHtcbiAgICAgICAgICAgICAgICB2YXIgdmFsaWRhdGlvbnNBcnJheSA9IEpTT04ucGFyc2UodmFsaWRhdGlvbnMpO1xuICAgICAgICAgICAgICAgIGVycm9yLnZhbGlkYXRpb25zID0gdmFsaWRhdGlvbnNBcnJheTtcbiAgICAgICAgICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIHJldHVybiBlcnJvcjtcbiAgICB9XG59XG5cblBvbHltZXIoIFNlcnZpY2UgKTsiXX0=
'use strict';

System.register('common/entities/sb-entity-detail/EntityDetail.js', ['../../core/Page.js'], function (_export, _context) {
	var Page, _createClass, EntityDetail;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_corePageJs) {
			Page = _corePageJs.Page;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('EntityDetail', EntityDetail = function (_Page) {
				_inherits(EntityDetail, _Page);

				function EntityDetail() {
					_classCallCheck(this, EntityDetail);

					return _possibleConstructorReturn(this, Object.getPrototypeOf(EntityDetail).apply(this, arguments));
				}

				_createClass(EntityDetail, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-entity-detail';
						this.properties = Polymer.Base.extend({
							model: String,
							modelClass: {
								type: Object,
								value: function value() {
									return {};
								}
							},
							id: {
								type: String,
								value: function value() {
									return '';
								}
							},
							isNew: {
								type: Boolean,
								value: function value() {
									return true;
								}
							},
							layout: {
								type: Object,
								value: function value() {
									return {};
								}
							},
							obj: {
								type: Object,
								value: function value() {
									return {};
								}
							}
						}, Page.properties);
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.model = this.ctx.pathParams.type;
						this.modelClass = this.$.db[this.model];
						this.fields = this.modelClass.schema.properties;
						this.layout = this.$.db.objectLayouts[this.model].detail['default'];
						this.isNew = this.ctx.params.id ? false : true;
						this.id = this.ctx.params.id;
					}
				}, {
					key: 'getEntityField',
					value: function getEntityField(viewField) {
						return this.fields[viewField.name];
					}
				}, {
					key: 'getObjTitleLabel',
					value: function getObjTitleLabel(obj, layout) {
						return this.obj[layout.titleAttr];
					}
				}, {
					key: 'getObjFieldLabel',
					value: function getObjFieldLabel(viewField) {
						return this.getEntityField(viewField).title;
					}
				}, {
					key: 'getFieldValue',
					value: function getFieldValue(viewField) {
						return this.obj[viewField.name];
					}
				}, {
					key: 'isViewable',
					value: function isViewable(field) {
						var f = this.fields[field.name];
						if (!this.isNew || this.isNew && f.$_type != 'formula' && f.$_type != 'autonumber') return true;

						return false;
					}
				}, {
					key: 'cancel',
					value: function cancel() {
						this.nav('/entities/' + this.model);
					}
				}, {
					key: 'preview',
					value: function preview() {
						this.nav('/docgen/preview?id=' + this.obj.id);
					}
				}, {
					key: 'save',
					value: function save(e, detail, sender, navUrl) {
						return this.obj.save().then(function (o) {
							this.nav(navUrl ? navUrl : '/entities/' + this.model + '/detail?id=' + o.id);
						}.bind(this));
					}
				}, {
					key: 'saveNew',
					value: function saveNew(e, detail, sender) {
						this.save(e, detail, sender, '/entities/' + this.model + '/new').then(function () {
							window.dispatchEvent(new HashChangeEvent("hashchange"));
						});
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}]);

				return EntityDetail;
			}(Page));

			_export('EntityDetail', EntityDetail);

			Polymer(EntityDetail);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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S0FBTCxHQUFhLGFBQTVCLEdBQTRDLEVBQUUsRUFBRixDQUF4RSxDQUQwQztPQUFkLENBRTNCLElBRjJCLENBRXRCLElBRnNCLENBQXRCLENBQVAsQ0FEaUM7Ozs7NkJBTXpCLEdBQUcsUUFBUSxRQUFTO0FBQzVCLFdBQUssSUFBTCxDQUFXLENBQVgsRUFBYyxNQUFkLEVBQXNCLE1BQXRCLEVBQThCLGVBQWUsS0FBSyxLQUFMLEdBQWEsTUFBNUIsQ0FBOUIsQ0FBbUUsSUFBbkUsQ0FBeUUsWUFBVztBQUVuRixjQUFPLGFBQVAsQ0FBcUIsSUFBSSxlQUFKLENBQW9CLFlBQXBCLENBQXJCLEVBRm1GO09BQVgsQ0FBekUsQ0FENEI7Ozs7eUJBNUViO0FBQ2YsYUFBTyxDQUFDLEdBQUcsTUFBSCxDQUFVLElBQVYsQ0FBZSxJQUFmLENBQVIsQ0FEZTs7OztXQUZKO0tBQXFCOzs7O0FBc0ZsQyxXQUFTLFlBQVQiLCJmaWxlIjoiRW50aXR5RGV0YWlsLmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtQYWdlfSBmcm9tICcuLi8uLi9jb3JlL1BhZ2UuanMnO1xuXG5leHBvcnQgY2xhc3MgRW50aXR5RGV0YWlsIGV4dGVuZHMgUGFnZSB7XG5cblx0Z2V0IGJlaGF2aW9ycygpIHtcblx0XHRyZXR1cm4gW3NiLmNvbW1vbi5jb3JlLlBhZ2VdO1xuXHR9XG5cdFxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLWVudGl0eS1kZXRhaWwnO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IFBvbHltZXIuQmFzZS5leHRlbmQoIHtcblx0XHRcdG1vZGVsOiBTdHJpbmcsXG5cdFx0XHRtb2RlbENsYXNzOiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4ge307IH1cblx0XHRcdH0sXG5cdFx0XHRpZDoge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuICcnOyB9XG5cdFx0XHR9LFxuXHRcdFx0aXNOZXc6IHtcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4gdHJ1ZTsgfVxuXHRcdFx0fSxcblx0XHRcdGxheW91dDoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHt9OyB9XG5cdFx0XHR9LFxuXHRcdFx0b2JqOiB7ICAvLyBvYmplY3QgaW5zdGFuY2Vcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiB7fTsgfVxuXHRcdFx0fVxuXHRcdH0sIFBhZ2UucHJvcGVydGllcyApO1xuXHR9XG5cblx0cmVhZHkoKSB7XG5cdFx0dGhpcy5tb2RlbCA9IHRoaXMuY3R4LnBhdGhQYXJhbXMudHlwZTtcblx0XHR0aGlzLm1vZGVsQ2xhc3MgPSB0aGlzLiQuZGJbIHRoaXMubW9kZWwgXTtcblx0XHR0aGlzLmZpZWxkcyA9IHRoaXMubW9kZWxDbGFzcy5zY2hlbWEucHJvcGVydGllcztcblx0XHR0aGlzLmxheW91dCA9IHRoaXMuJC5kYi5vYmplY3RMYXlvdXRzWyB0aGlzLm1vZGVsIF0uZGV0YWlsWydkZWZhdWx0J107ICAvL3RvZG86IGxvYWQgc3BlY2lmaWMgbGF5b3V0XG5cdFx0dGhpcy5pc05ldyA9IHRoaXMuY3R4LnBhcmFtcy5pZCA/IGZhbHNlIDogdHJ1ZTtcblx0XHR0aGlzLmlkID0gdGhpcy5jdHgucGFyYW1zLmlkO1xuXHR9XG5cblx0Z2V0RW50aXR5RmllbGQoIHZpZXdGaWVsZCApIHtcblx0XHRyZXR1cm4gdGhpcy5maWVsZHNbIHZpZXdGaWVsZC5uYW1lIF07XG5cdH1cblx0Z2V0T2JqVGl0bGVMYWJlbCggb2JqLCBsYXlvdXQgKSB7XG5cdFx0cmV0dXJuIHRoaXMub2JqW2xheW91dC50aXRsZUF0dHJdO1xuXHR9XG5cdGdldE9iakZpZWxkTGFiZWwoIHZpZXdGaWVsZCApIHtcblx0XHRyZXR1cm4gdGhpcy5nZXRFbnRpdHlGaWVsZCggdmlld0ZpZWxkICkudGl0bGU7ICAvLyB0b2RvOiBjaGVjayBmb3Igdmlldy1sZXZlbCBvdmVycmlkZVxuXHR9XG5cdGdldEZpZWxkVmFsdWUoIHZpZXdGaWVsZCApIHtcblx0XHRyZXR1cm4gdGhpcy5vYmpbIHZpZXdGaWVsZC5uYW1lIF07XG5cdH1cblxuXHQvKiogUmV0dXJucyB0cnVlIGlmIHRoZSBmaWVsZCBpcyB2aWV3YWJsZSBpbiB0aGlzIHBhZ2UgKi9cblx0aXNWaWV3YWJsZSggZmllbGQgKSB7XG5cdFx0bGV0IGYgPSB0aGlzLmZpZWxkc1tmaWVsZC5uYW1lXTtcblx0XHRpZiggIXRoaXMuaXNOZXcgfHwgKCB0aGlzLmlzTmV3ICYmIGYuJF90eXBlICE9ICdmb3JtdWxhJyAmJiBmLiRfdHlwZSAhPSAnYXV0b251bWJlcicgKSApIC8vIGRvbid0IHNob3cgb24gY3JlYXRlIHZpZXdzXG5cdFx0cmV0dXJuIHRydWU7XG5cblx0XHRyZXR1cm4gZmFsc2U7XG5cdH1cblxuXHRjYW5jZWwoKSB7XG5cdFx0dGhpcy5uYXYoICcvZW50aXRpZXMvJyArIHRoaXMubW9kZWwgKTtcblx0fVxuXG5cdHByZXZpZXcoKSB7XG5cdFx0dGhpcy5uYXYoICcvZG9jZ2VuL3ByZXZpZXc/aWQ9JyArIHRoaXMub2JqLmlkICk7XG5cdH1cblxuXHRzYXZlKCBlLCBkZXRhaWwsIHNlbmRlciwgbmF2VXJsICkge1xuXHRcdHJldHVybiB0aGlzLm9iai5zYXZlKCkudGhlbiggZnVuY3Rpb24oIG8gKSB7XG5cdFx0XHR0aGlzLm5hdiggbmF2VXJsID8gbmF2VXJsIDogJy9lbnRpdGllcy8nICsgdGhpcy5tb2RlbCArICcvZGV0YWlsP2lkPScgKyBvLmlkICk7XG5cdFx0fS5iaW5kKHRoaXMpICk7XG5cdH1cblxuXHRzYXZlTmV3KCBlLCBkZXRhaWwsIHNlbmRlciApIHtcblx0XHR0aGlzLnNhdmUoIGUsIGRldGFpbCwgc2VuZGVyLCAnL2VudGl0aWVzLycgKyB0aGlzLm1vZGVsICsgJy9uZXcnICkudGhlbiggZnVuY3Rpb24oKSB7XG5cdFx0XHQvLyBpZiB5b3Ugc2V0IHRoZSBoYXNoIHRvIGJlIHNhbWUgdmFsdWUgYXMgaXQgY3VycmVudGx5IGhhcyB5b3UgZG9uJ3QgZ2V0IGEgaGFzaGNoYW5nZSBldmVudFxuXHRcdFx0d2luZG93LmRpc3BhdGNoRXZlbnQobmV3IEhhc2hDaGFuZ2VFdmVudChcImhhc2hjaGFuZ2VcIikpO1xuXHRcdH0pO1xuXHR9XG59XG5cblBvbHltZXIoIEVudGl0eURldGFpbCApO1xuIl19
'use strict';

System.register('common/entities/sb-entity-field/EntityField.js', ['../../core/Page.js'], function (_export, _context) {
	var Page, _createClass, INPUT, CHECKBOX, DATE, TEXTAREA, EntityField;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_corePageJs) {
			Page = _corePageJs.Page;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			INPUT = '<input is="iron-input">';
			CHECKBOX = '<paper-checkbox></paper-checkbox>';
			DATE = '<input is="iron-input" type="date">';
			TEXTAREA = '<textarea is="iron-autogrow-textarea"></textarea>';

			_export('EntityField', EntityField = function () {
				function EntityField() {
					_classCallCheck(this, EntityField);
				}

				_createClass(EntityField, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-entity-field';
						this.properties = Polymer.Base.extend({
							field: {
								type: Object,
								value: function value() {
									return {};
								}
							},
							viewField: {
								type: Object,
								value: function value() {
									return {};
								}
							},
							object: {
								type: Object,
								value: function value() {
									return undefined;
								}
							},
							refRows: {
								type: Array,
								value: function value() {
									return [];
								}
							}
						}, Page.properties);
					}
				}, {
					key: 'render',
					value: function render() {
						var type = this.field ? this.field.$_type : undefined,
						    dValue = this.field ? this.field.defaultValue : undefined,
						    con = Polymer.dom(this.$.f);

						if (this.object && !this.object.id && this.field && this.field.id) this.object[this.field.id] = this.field.defaultValue;

						switch (type) {
							case 'boolean':
								var el = this.createBaseElement(CHECKBOX);
								el.checked = this.object[this.field.id];
								el.addEventListener('change', function (e) {
									if (this.object && this.field) this.object[this.field.id] = el.checked ? true : false;
								}.bind(this));
								break;

							case 'date':
							case 'datetime':
								el = this.createBaseElement(DATE, 'value');
								el.addEventListener('bind-value-changed', function (e) {
									if (this.object && this.field) this.object[this.field.id] = e.detail.value ? e.detail.value : null;
								}.bind(this));
								break;

							case 'number':
							case 'currency':
							case 'percent':
								el = this.createBaseElement(INPUT, 'value');
								el.addEventListener('bind-value-changed', function (e) {
									if (this.object && this.field) this.object[this.field.id] = e.detail.value ? parseFloat(e.detail.value) : null;
								}.bind(this));
								break;

							case 'autonumber':
								con.textContent = this.object[this.field.id];
								break;

							case 'enum':
								var none = !this.field.required && !this.viewField.required ? '-- None --' : '',
								    len = this.field.enum ? this.field.enum.length : 0,
								    html = '<select>' + (none ? '<option value>' + none + '</option>' : '');

								if (this.field.defaultValue && !this.object.id) this.object[this.field.id] = this.field.enum[i].value;

								for (var _i = 0; _i < len; _i++) {
									var selected = this.object[this.field.id] === this.field.enum[_i] ? true : false;
									html += '<option value="' + this.field.enum[_i] + '"' + (selected ? ' selected' : '') + '>' + this.field.enum[_i] + '</option>';
								}

								html += '</select>';
								el = this.createBaseElement(html);

								el.addEventListener('change', function (e) {
									if (this.object && this.field) this.object[this.field.id] = el.value ? el.value : null;
								}.bind(this));
								break;

							case 'lookup':
								break;

							case 'autonumber':
								con.textContent = this.object[this.field.id];
								break;

							case 'string':
								if (this.field.maxLength > 255 || this.field.format === 'multiline') {
									el = this.createBaseElement(TEXTAREA, 'value');
									el.addEventListener('bind-value-changed', function (e) {
										if (this.object && this.field) this.object[this.field.id] = e.detail.value ? e.detail.value : null;
									}.bind(this));
								} else {
									var _el = this.createBaseElement(INPUT, 'value');
									_el.addEventListener('bind-value-changed', function (e) {
										if (this.object && this.field) this.object[this.field.id] = e.detail.value ? e.detail.value : null;
									}.bind(this));
								}
								break;
						}
					}
				}, {
					key: 'createBaseElement',
					value: function createBaseElement(html, valueProp) {
						Polymer.dom(this.$.f).innerHTML = html;
						var el = this.$$('#f > *');

						if (valueProp && this.field && this.field.id && this.object[this.field.id]) el[valueProp] = this.object[this.field.id];

						return el;
					}
				}, {
					key: 'setDefaultValue',
					value: function setDefaultValue(v) {
						if (this.value == undefined) this.value = v;
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['render( field, object, viewField )'];
					}
				}]);

				return EntityField;
			}());

			_export('EntityField', EntityField);

			Polymer(EntityField);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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QU8sQ0FBQyxHQUFHLE1BQUgsQ0FBVSxJQUFWLENBQWUsSUFBZixDQUFSLENBRGU7Ozs7eUJBMEJBO0FBQ2YsYUFBTyxDQUFDLG9DQUFELENBQVAsQ0FEZTs7OztXQTVCSjs7Ozs7QUErSWIsV0FBUyxXQUFUIiwiZmlsZSI6IkVudGl0eUZpZWxkLmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtQYWdlfSBmcm9tICcuLi8uLi9jb3JlL1BhZ2UuanMnO1xuXG5sZXQgSU5QVVQgPSAnPGlucHV0IGlzPVwiaXJvbi1pbnB1dFwiPicsXG5cdFx0Q0hFQ0tCT1ggPSAnPHBhcGVyLWNoZWNrYm94PjwvcGFwZXItY2hlY2tib3g+Jyxcblx0XHREQVRFID0gJzxpbnB1dCBpcz1cImlyb24taW5wdXRcIiB0eXBlPVwiZGF0ZVwiPicsXG5cdFx0VEVYVEFSRUEgPSAnPHRleHRhcmVhIGlzPVwiaXJvbi1hdXRvZ3Jvdy10ZXh0YXJlYVwiPjwvdGV4dGFyZWE+JztcblxuZXhwb3J0IGNsYXNzIEVudGl0eUZpZWxkIHtcblxuXHRnZXQgYmVoYXZpb3JzKCkge1xuXHRcdHJldHVybiBbc2IuY29tbW9uLmNvcmUuUGFnZV07XG5cdH1cblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLWVudGl0eS1maWVsZCc7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0gUG9seW1lci5CYXNlLmV4dGVuZCgge1xuXHRcdFx0ZmllbGQ6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiB7fTsgfVxuXHRcdFx0fSxcblx0XHRcdHZpZXdGaWVsZDoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHt9OyB9XG5cdFx0XHR9LFxuXHRcdFx0b2JqZWN0OiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4gdW5kZWZpbmVkOyB9XG5cdFx0XHR9LFxuXHRcdFx0cmVmUm93czoge1xuXHRcdFx0XHR0eXBlOiBBcnJheSxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4gW107IH1cblx0XHRcdH1cblx0XHR9LCBQYWdlLnByb3BlcnRpZXMgKTtcblx0fVxuXG5cdGdldCBvYnNlcnZlcnMoKSB7XG5cdFx0cmV0dXJuIFsncmVuZGVyKCBmaWVsZCwgb2JqZWN0LCB2aWV3RmllbGQgKSddO1xuXHR9XG5cblx0cmVuZGVyKCkge1xuXHRcdGxldCB0eXBlID0gdGhpcy5maWVsZCA/IHRoaXMuZmllbGQuJF90eXBlIDogdW5kZWZpbmVkLFxuXHRcdGRWYWx1ZSA9IHRoaXMuZmllbGQgPyB0aGlzLmZpZWxkLmRlZmF1bHRWYWx1ZSA6IHVuZGVmaW5lZCxcblx0XHRjb24gPSBQb2x5bWVyLmRvbSh0aGlzLiQuZik7XG5cblx0XHQvLyBzZXQgZGVmYXVsdCB2YWx1ZSBmb3IgZmllbGQgb24gbmV3IG9iamVjdFxuXHRcdGlmKCB0aGlzLm9iamVjdCAmJiAhdGhpcy5vYmplY3QuaWQgJiYgdGhpcy5maWVsZCAmJiB0aGlzLmZpZWxkLmlkIClcblx0XHR0aGlzLm9iamVjdFt0aGlzLmZpZWxkLmlkXSA9IHRoaXMuZmllbGQuZGVmYXVsdFZhbHVlO1xuXG5cdFx0Ly8gZHluYW1pY2FsbHkgY3JlYXRlIERPTSBlbGVtZXQgYW5kIGhvb2sgdXAgbGlzdGVuZXJzXG5cdFx0Ly8gQXMgb2YgUG9seW1lciAxLjIsIGl0IGNhbid0IGJpbmQgd2l0aCBkeW5hbWljIGZpZWxkIGV4cHJlc3Npb25zIHNvIG11c3QgdXNlIG1hbnVhbCBldmVudCBsaXN0ZW5lcnMgaGVyZSA6KFxuXHRcdHN3aXRjaCggdHlwZSApIHtcblx0XHRcdGNhc2UgJ2Jvb2xlYW4nOlxuXHRcdFx0bGV0IGVsID0gdGhpcy5jcmVhdGVCYXNlRWxlbWVudCggQ0hFQ0tCT1ggKTtcblx0XHRcdGVsLmNoZWNrZWQgPSB0aGlzLm9iamVjdFt0aGlzLmZpZWxkLmlkXTtcblx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdjaGFuZ2UnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdGlmKCB0aGlzLm9iamVjdCAmJiB0aGlzLmZpZWxkIClcblx0XHRcdFx0dGhpcy5vYmplY3RbdGhpcy5maWVsZC5pZF0gPSBlbC5jaGVja2VkID8gdHJ1ZSA6IGZhbHNlO1xuXHRcdFx0fS5iaW5kKHRoaXMpICk7XG5cdFx0XHRicmVhaztcblxuXHRcdFx0Y2FzZSAnZGF0ZSc6XG5cdFx0XHRjYXNlICdkYXRldGltZSc6XG5cdFx0XHRlbCA9IHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoIERBVEUsICd2YWx1ZScgKTtcblx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdiaW5kLXZhbHVlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdGlmKCB0aGlzLm9iamVjdCAmJiB0aGlzLmZpZWxkIClcblx0XHRcdFx0dGhpcy5vYmplY3RbdGhpcy5maWVsZC5pZF0gPSBlLmRldGFpbC52YWx1ZSA/IGUuZGV0YWlsLnZhbHVlIDogbnVsbDtcblx0XHRcdH0uYmluZCh0aGlzKSApO1xuXHRcdFx0YnJlYWs7XG5cblx0XHRcdGNhc2UgJ251bWJlcic6XG5cdFx0XHRjYXNlICdjdXJyZW5jeSc6XG5cdFx0XHRjYXNlICdwZXJjZW50Jzpcblx0XHRcdGVsID0gdGhpcy5jcmVhdGVCYXNlRWxlbWVudCggSU5QVVQsICd2YWx1ZScgKTtcblx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdiaW5kLXZhbHVlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdGlmKCB0aGlzLm9iamVjdCAmJiB0aGlzLmZpZWxkIClcblx0XHRcdFx0dGhpcy5vYmplY3RbdGhpcy5maWVsZC5pZF0gPSBlLmRldGFpbC52YWx1ZSA/IHBhcnNlRmxvYXQoIGUuZGV0YWlsLnZhbHVlICkgOiBudWxsO1xuXHRcdFx0fS5iaW5kKHRoaXMpICk7XG5cdFx0XHRicmVhaztcblxuXHRcdFx0Y2FzZSAnYXV0b251bWJlcic6XG5cdFx0XHRjb24udGV4dENvbnRlbnQgPSB0aGlzLm9iamVjdFt0aGlzLmZpZWxkLmlkXTtcblx0XHRcdGJyZWFrO1xuXG5cdFx0XHRjYXNlICdlbnVtJzpcblx0XHRcdGxldCBub25lID0gIXRoaXMuZmllbGQucmVxdWlyZWQgJiYgIXRoaXMudmlld0ZpZWxkLnJlcXVpcmVkID8gJy0tIE5vbmUgLS0nIDogJycsXG5cdFx0XHRsZW4gPSB0aGlzLmZpZWxkLmVudW0gPyB0aGlzLmZpZWxkLmVudW0ubGVuZ3RoIDogMCxcblx0XHRcdGh0bWwgPSAnPHNlbGVjdD4nICsgKG5vbmUgPyAnPG9wdGlvbiB2YWx1ZT4nICsgbm9uZSArICc8L29wdGlvbj4nIDogJycpO1xuXG5cdFx0XHRpZiggdGhpcy5maWVsZC5kZWZhdWx0VmFsdWUgJiYgIXRoaXMub2JqZWN0LmlkICkgLy8gc2V0IGRlZmF1bHQgdmFsdWUgZm9yIG5ld2x5IGNyZWF0ZWQgb2JqZWN0c1xuXHRcdFx0dGhpcy5vYmplY3RbdGhpcy5maWVsZC5pZF0gPSB0aGlzLmZpZWxkLmVudW1baV0udmFsdWU7XG5cblx0XHRcdGZvciggbGV0IGk9MDsgaSA8IGxlbjsgaSsrICkge1xuXHRcdFx0XHRsZXQgc2VsZWN0ZWQgPSB0aGlzLm9iamVjdFt0aGlzLmZpZWxkLmlkXSA9PT0gdGhpcy5maWVsZC5lbnVtW2ldID8gdHJ1ZSA6IGZhbHNlO1xuXHRcdFx0XHRodG1sICs9ICc8b3B0aW9uIHZhbHVlPVwiJyArIHRoaXMuZmllbGQuZW51bVtpXSArICdcIicgKyAoc2VsZWN0ZWQgPyAnIHNlbGVjdGVkJyA6ICcnKSArICc+JyArIHRoaXMuZmllbGQuZW51bVtpXSArICc8L29wdGlvbj4nO1xuXHRcdFx0fVxuXG5cdFx0XHRodG1sICs9ICc8L3NlbGVjdD4nO1xuXHRcdFx0ZWwgPSB0aGlzLmNyZWF0ZUJhc2VFbGVtZW50KCBodG1sICk7XG5cblx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdjaGFuZ2UnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdGlmKCB0aGlzLm9iamVjdCAmJiB0aGlzLmZpZWxkIClcblx0XHRcdFx0dGhpcy5vYmplY3RbdGhpcy5maWVsZC5pZF0gPSBlbC52YWx1ZSA/IGVsLnZhbHVlIDogbnVsbDtcblx0XHRcdH0uYmluZCh0aGlzKSk7XG5cdFx0XHRicmVhaztcblxuXHRcdFx0Y2FzZSAnbG9va3VwJzpcblx0XHRcdC8vY29tcGxleCA9ICc8c2ItdHlwZWFoZWFkIGlkPVwidHlwZWFoZWFkXCIgaXRlbXM9XCJ7e3JlZlJvd3N9fVwiIHZhbHVlPVwie3t2YWx1ZX19XCIgdmFsdWVBdHRyPVwiaWRcIiBsYWJlbEF0dHI9XCJOYW1lXCI+PC9zYi10eXBlYWhlYWQ+Jztcblx0XHRcdGJyZWFrO1xuXG5cdFx0XHRjYXNlICdhdXRvbnVtYmVyJzpcblx0XHRcdGNvbi50ZXh0Q29udGVudCA9IHRoaXMub2JqZWN0W3RoaXMuZmllbGQuaWRdO1xuXHRcdFx0YnJlYWs7XG5cblx0XHRcdGNhc2UgJ3N0cmluZyc6XG5cdFx0XHRpZiggdGhpcy5maWVsZC5tYXhMZW5ndGggPiAyNTUgfHwgdGhpcy5maWVsZC5mb3JtYXQgPT09ICdtdWx0aWxpbmUnICkge1xuXHRcdFx0XHRlbCA9IHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoIFRFWFRBUkVBLCAndmFsdWUnICk7XG5cdFx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdiaW5kLXZhbHVlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdFx0aWYoIHRoaXMub2JqZWN0ICYmIHRoaXMuZmllbGQgKVxuXHRcdFx0XHRcdHRoaXMub2JqZWN0W3RoaXMuZmllbGQuaWRdID0gZS5kZXRhaWwudmFsdWUgPyBlLmRldGFpbC52YWx1ZSA6IG51bGw7XG5cdFx0XHRcdH0uYmluZCh0aGlzKSApO1xuXHRcdFx0fVxuXHRcdFx0ZWxzZSB7XG5cdFx0XHRcdGxldCBlbCA9IHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoIElOUFVULCAndmFsdWUnICk7XG5cdFx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdiaW5kLXZhbHVlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdFx0aWYoIHRoaXMub2JqZWN0ICYmIHRoaXMuZmllbGQgKVxuXHRcdFx0XHRcdHRoaXMub2JqZWN0W3RoaXMuZmllbGQuaWRdID0gZS5kZXRhaWwudmFsdWUgPyBlLmRldGFpbC52YWx1ZSA6IG51bGw7XG5cdFx0XHRcdH0uYmluZCh0aGlzKSApO1xuXHRcdFx0fVxuXHRcdFx0YnJlYWs7XG5cdFx0fVxuXHR9XG5cblx0Y3JlYXRlQmFzZUVsZW1lbnQoIGh0bWwsIHZhbHVlUHJvcCApIHtcblx0XHRQb2x5bWVyLmRvbSh0aGlzLiQuZikuaW5uZXJIVE1MID0gaHRtbDtcblx0XHRsZXQgZWwgPSB0aGlzLiQkKCcjZiA+IConKTtcblxuXHRcdC8vIHNldCB2YWx1ZSBpZiB0aGVyZSBpcyBvbmVcblx0XHRpZiggdmFsdWVQcm9wICYmIHRoaXMuZmllbGQgJiYgdGhpcy5maWVsZC5pZCAmJiB0aGlzLm9iamVjdFt0aGlzLmZpZWxkLmlkXSApXG5cdFx0ZWxbdmFsdWVQcm9wXSA9IHRoaXMub2JqZWN0W3RoaXMuZmllbGQuaWRdO1xuXG5cdFx0cmV0dXJuIGVsO1xuXHR9XG5cblx0LyogU2V0cyB0aGUgZGVmYXVsdCB2YWx1ZSBvZiB0aGUgZmllbGQgdG8gYmUgdGhlIHZhbHVlIChpbml0aWFsbHkpIGlmIG5vIHZhbHVlIGV4aXN0cyAqL1xuXHRzZXREZWZhdWx0VmFsdWUoIHYgKSB7XG5cdFx0aWYoIHRoaXMudmFsdWUgPT0gdW5kZWZpbmVkIClcblx0XHR0aGlzLnZhbHVlID0gdjtcblx0fVxufVxuXG5Qb2x5bWVyKCBFbnRpdHlGaWVsZCApO1xuIl19
'use strict';

System.register('common/entities/sb-entity-list/EntityList.js', ['../../core/Page.js'], function (_export, _context) {
	var Page, _typeof, _createClass, EntityList;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_corePageJs) {
			Page = _corePageJs.Page;
		}],
		execute: function () {
			_typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) {
				return typeof obj;
			} : function (obj) {
				return obj && typeof Symbol === "function" && obj.constructor === Symbol ? "symbol" : typeof obj;
			};

			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('EntityList', EntityList = function (_Page) {
				_inherits(EntityList, _Page);

				function EntityList() {
					_classCallCheck(this, EntityList);

					return _possibleConstructorReturn(this, Object.getPrototypeOf(EntityList).apply(this, arguments));
				}

				_createClass(EntityList, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-entity-list';
						this.properties = Polymer.Base.extend({
							rows: {
								type: Array,
								notify: true,
								value: function value() {
									return [];
								},
								observer: '_rowsChanged'
							},

							hasRows: {
								type: Number,
								computed: 'getHasRows(rows)'
							},

							entity: {
								type: Object,
								value: function value() {
									return {};
								}
							},

							entityType: String,

							layout: {
								type: Object,
								value: function value() {
									return {};
								}
							}
						}, Page.properties);
					}
				}, {
					key: '_rowsChanged',
					value: function _rowsChanged() {
						var op = this.rows && this.rows.length ? 'remove' : 'add';
						this.$.new.classList[op]('end');
					}
				}, {
					key: 'columnLabel',
					value: function columnLabel(col, e) {
						return this.fields[col.field].title;
					}
				}, {
					key: 'getHasRows',
					value: function getHasRows(rows) {
						return rows ? rows.length > 0 : false;
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.model = this.ctx.pathParams.type;
						this.modelClass = this.$.db[this.model];
						this.fields = this.modelClass.schema.properties;

						this.layout = this.$.db.objectLayouts[this.model] ? this.$.db.objectLayouts[this.model].list['all'] : {};

						this.$.db.get();
					}
				}, {
					key: 'checkAll',
					value: function checkAll(e, detail, sender) {
						var boxes = Polymer.dom(this.$.list).querySelectorAll('paper-checkbox'),
						    len = boxes ? boxes.length : 0;
						for (var i = 0; i < len; i++) {
							boxes[i].checked = e.currentTarget.checked;
						}
					}
				}, {
					key: 'linkUrl',
					value: function linkUrl(col, row) {
						var value = row && col ? row[col.field] : null,
						    obj = value && value.id ? value : row,
						    link = obj && obj.type && obj.id ? '#/entities/' + obj.constructor.schema.id + '/detail?id=' + obj.id : '';

						return link;
					}
				}, {
					key: 'getCell',
					value: function getCell(col, row) {
						var h = row && col ? row[col.field] : null;
						return this._format(h, col.field);
					}
				}, {
					key: '_format',
					value: function _format(value, field) {
						var ret = value,
						    type = field && this.fields[field] ? this.fields[field].type : null;

						switch (type) {
							case 'boolean':
								ret = value ? this.i18n.l('Yes') : '';

								break;

							case 'date':
							case 'datetime':
								ret = this.i18n.format(value, { date: true });
								break;
							case 'reference':
								if ((typeof value === 'undefined' ? 'undefined' : _typeof(value)) === 'object' && value) {
									if (value.type === 'user') ret = value.Lastname + ', ' + value.Firstname;else ret = value.Name;
								}
						}
						return ret;
					}
				}, {
					key: 'goNew',
					value: function goNew(e, detail, sender) {
						this.nav('/entities/' + this.model + '/new');
					}
				}, {
					key: 'delete',
					value: function _delete(e, detail, sender) {

						var sel = Polymer.dom(this.$.list).querySelectorAll('paper-checkbox'),
						    len = sel ? sel.length : 0,
						    toDel = [],
						    toDelIdx = {};

						for (var i = 0; i < len; i++) {
							if (sel[i].checked) toDel.push(this.rows[i]);
						}

						if (toDel.length) return this.$.db.remove(toDel);else return Promise.resolve();
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}]);

				return EntityList;
			}(Page));

			_export('EntityList', EntityList);

			Polymer(EntityList);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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QU0sUUFBUSxHQUFSLENBQVksS0FBSyxDQUFMLENBQU8sSUFBUCxDQUFaLENBQXlCLGdCQUF6QixDQUEyQyxnQkFBM0MsQ0FBTjtVQUNKLE1BQU0sTUFBTSxJQUFJLE1BQUosR0FBYSxDQUFuQjtVQUNOLFFBQVEsRUFBUjtVQUNBLFdBQVcsRUFBWCxDQUwyQjs7QUFPM0IsV0FBSyxJQUFJLElBQUUsQ0FBRixFQUFLLElBQUksR0FBSixFQUFTLEdBQXZCLEVBQTZCO0FBQzVCLFdBQUksSUFBSSxDQUFKLEVBQU8sT0FBUCxFQUNKLE1BQU0sSUFBTixDQUFZLEtBQUssSUFBTCxDQUFVLENBQVYsQ0FBWixFQURBO09BREQ7O0FBS0EsVUFBSSxNQUFNLE1BQU4sRUFDSixPQUFPLEtBQUssQ0FBTCxDQUFPLEVBQVAsQ0FBVSxNQUFWLENBQWtCLEtBQWxCLENBQVAsQ0FEQSxLQUdBLE9BQU8sUUFBUSxPQUFSLEVBQVAsQ0FIQTs7Ozt5QkFuSWU7QUFDZixhQUFPLENBQUMsR0FBRyxNQUFILENBQVUsSUFBVixDQUFlLElBQWYsQ0FBUixDQURlOzs7O1dBRko7S0FBbUI7Ozs7QUE0SWhDLFdBQVMsVUFBVCIsImZpbGUiOiJFbnRpdHlMaXN0LmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtQYWdlfSBmcm9tICcuLi8uLi9jb3JlL1BhZ2UuanMnO1xuXG5leHBvcnQgY2xhc3MgRW50aXR5TGlzdCBleHRlbmRzIFBhZ2Uge1xuXG5cdGdldCBiZWhhdmlvcnMoKSB7XG5cdFx0cmV0dXJuIFtzYi5jb21tb24uY29yZS5QYWdlXTtcblx0fVxuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItZW50aXR5LWxpc3QnO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IFBvbHltZXIuQmFzZS5leHRlbmQoIHtcblx0XHRcdC8qKlxuXHRcdFx0KiBUaGUgcm93cyBvZiBkYXRhL3JlY29yZHMgc2hvd24gaW4gdGhlIGxpc3Rcblx0XHRcdCovXG5cdFx0XHRyb3dzOiB7XG5cdFx0XHRcdHR5cGU6IEFycmF5LFxuXHRcdFx0XHRub3RpZnk6IHRydWUsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIFtdOyB9LFxuXHRcdFx0XHRvYnNlcnZlcjogJ19yb3dzQ2hhbmdlZCdcblx0XHRcdH0sXG5cdFx0XHQvKipcblx0XHRcdCogVHJ1ZSBpZiB0aGUgY29tcG9uZW50IGhhcyByb3dzIHRvIHJlbmRlclxuXHRcdFx0Ki9cblx0XHRcdGhhc1Jvd3M6IHtcblx0XHRcdFx0dHlwZTogTnVtYmVyLFxuXHRcdFx0XHRjb21wdXRlZDogJ2dldEhhc1Jvd3Mocm93cyknXG5cdFx0XHR9LFxuXHRcdFx0LyoqXG5cdFx0XHQqIFRoZSBPYmplY3QgbWV0YWRhdGEgZm9yIHRoZSBnaXZlbiBgZW50aXR5VHlwZWBcblx0XHRcdCovXG5cdFx0XHRlbnRpdHk6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiB7fTsgfVxuXHRcdFx0fSxcblx0XHRcdC8qKlxuXHRcdFx0KiBUaGUgaW50ZXJuYWwgbmFtZS9jb2RlIG9mIHRoZSBFbnRpdHkvT2JqZWN0IHRvIHNob3dcblx0XHRcdCovXG5cdFx0XHRlbnRpdHlUeXBlOiBTdHJpbmcsXG5cdFx0XHQvKipcblx0XHRcdCogVGhlIExheW91dCBtZXRhZGF0YSB1c2VkIHRvIHJlbmRlciB0aGUgdmlldy9wYWdlLlxuXHRcdFx0Ki9cblx0XHRcdGxheW91dDoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHt9OyB9XG5cdFx0XHR9XG5cdFx0fSwgUGFnZS5wcm9wZXJ0aWVzICk7XG5cdH1cblxuXHRfcm93c0NoYW5nZWQoKSB7XG5cdFx0Ly8gbXVzdCBtYW51YWxseSBhZGQvcmVtb3ZlICdlbmQnIGNsYXNzIHRvIE5ldyBoZWFkZXIgYnV0dG9uIGFzIERlbGV0ZSBidXR0b24gaXMgZHluYW1pY2FsbHkgaGlkZGVuXG5cdFx0bGV0IG9wID0gdGhpcy5yb3dzICYmIHRoaXMucm93cy5sZW5ndGggPyAncmVtb3ZlJyA6ICdhZGQnO1xuXHRcdHRoaXMuJC5uZXcuY2xhc3NMaXN0W29wXSggJ2VuZCcgKTtcblx0fVxuXG5cdGNvbHVtbkxhYmVsKCBjb2wsZSApIHtcblx0XHRyZXR1cm4gdGhpcy5maWVsZHNbY29sLmZpZWxkXS50aXRsZTtcblx0fVxuXG5cdGdldEhhc1Jvd3MoIHJvd3MgKSB7XG5cdFx0cmV0dXJuIHJvd3MgPyByb3dzLmxlbmd0aCA+IDAgOiBmYWxzZTtcblx0fVxuXG5cdHJlYWR5KCkge1xuXHRcdHRoaXMubW9kZWwgPSB0aGlzLmN0eC5wYXRoUGFyYW1zLnR5cGU7XG5cdFx0dGhpcy5tb2RlbENsYXNzID0gdGhpcy4kLmRiWyB0aGlzLm1vZGVsIF07XG5cdFx0dGhpcy5maWVsZHMgPSB0aGlzLm1vZGVsQ2xhc3Muc2NoZW1hLnByb3BlcnRpZXM7XG5cdFx0Ly8gZGVmYXVsdCB0byBhbGxcblx0XHR0aGlzLmxheW91dCA9IHRoaXMuJC5kYi5vYmplY3RMYXlvdXRzWyB0aGlzLm1vZGVsIF0gPyB0aGlzLiQuZGIub2JqZWN0TGF5b3V0c1sgdGhpcy5tb2RlbCBdLmxpc3RbJ2FsbCddIDoge307XG5cblx0XHR0aGlzLiQuZGIuZ2V0KCk7XG5cdFx0Ly8gcmVtYXBFbnRpdHkoIHRoaXMuZW50aXR5ICk7IC8vIGxvY2FsIGRldiBmdW5jdGlvblxuXHR9XG5cblx0Y2hlY2tBbGwoIGUsIGRldGFpbCwgc2VuZGVyICkge1xuXHRcdHZhciBib3hlcyA9IFBvbHltZXIuZG9tKHRoaXMuJC5saXN0KS5xdWVyeVNlbGVjdG9yQWxsKCAncGFwZXItY2hlY2tib3gnICksXG5cdFx0bGVuID0gYm94ZXMgPyBib3hlcy5sZW5ndGg6IDA7XG5cdFx0Zm9yKCB2YXIgaT0wOyBpIDwgbGVuOyBpKysgKVxuXHRcdGJveGVzW2ldLmNoZWNrZWQgPSBlLmN1cnJlbnRUYXJnZXQuY2hlY2tlZDtcblx0fVxuXG5cdGxpbmtVcmwoIGNvbCwgcm93ICkge1xuXHRcdGxldCB2YWx1ZSA9IHJvdyAmJiBjb2wgPyByb3dbY29sLmZpZWxkXSA6IG51bGwsXG5cdFx0b2JqID0gdmFsdWUgJiYgdmFsdWUuaWQgPyB2YWx1ZSA6IHJvdyxcblx0XHRsaW5rID0gb2JqICYmIG9iai50eXBlICYmIG9iai5pZCA/ICcjL2VudGl0aWVzLycgKyBvYmouY29uc3RydWN0b3Iuc2NoZW1hLmlkICsgJy9kZXRhaWw/aWQ9JyArIG9iai5pZCA6ICcnO1xuXG5cdFx0cmV0dXJuIGxpbms7XG5cdH1cblxuXHRnZXRDZWxsKCBjb2wsIHJvdyApIHtcblx0XHRsZXQgaCA9IHJvdyAmJiBjb2wgPyByb3dbY29sLmZpZWxkXSA6IG51bGw7XG5cdFx0cmV0dXJuIHRoaXMuX2Zvcm1hdCggaCwgY29sLmZpZWxkICk7XG5cdH1cblxuXHRfZm9ybWF0KCB2YWx1ZSwgZmllbGQgKSB7XG5cdFx0bGV0IHJldCA9IHZhbHVlLFxuXHRcdHR5cGUgPSBmaWVsZCAmJiB0aGlzLmZpZWxkc1tmaWVsZF0gPyB0aGlzLmZpZWxkc1tmaWVsZF0udHlwZSA6IG51bGw7XG5cblx0XHRzd2l0Y2goIHR5cGUgKSB7XG5cdFx0XHRjYXNlICdib29sZWFuJzpcblx0XHRcdHJldCA9IHZhbHVlID8gdGhpcy5pMThuLmwoICdZZXMnICkgOiAnJztcblx0XHRcdC8vIHJldCA9IHZhbHVlID8gJzxwYXBlci1jaGVja2JveD48L3BhcGVyLWNoZWNrYm94PicgOiAnJztcblx0XHRcdC8vIHJldCA9IHZhbHVlID8gJzxhIGhyZWY9XCIjXCI+Rm9vYmFyPC9hPicgOiAnJztcblx0XHRcdGJyZWFrO1xuXG5cdFx0XHRjYXNlICdkYXRlJzpcblx0XHRcdGNhc2UgJ2RhdGV0aW1lJzpcblx0XHRcdHJldCA9IHRoaXMuaTE4bi5mb3JtYXQoIHZhbHVlLCB7IGRhdGU6IHRydWUgfSApO1xuXHRcdFx0YnJlYWs7XG5cdFx0XHRjYXNlICdyZWZlcmVuY2UnOlxuXHRcdFx0aWYoIHR5cGVvZiB2YWx1ZSA9PT0gJ29iamVjdCcgJiYgdmFsdWUgKSB7XG5cdFx0XHRcdGlmKCB2YWx1ZS50eXBlID09PSAndXNlcicgKVxuXHRcdFx0XHRyZXQgPSB2YWx1ZS5MYXN0bmFtZSArICcsICcgKyB2YWx1ZS5GaXJzdG5hbWUgLy8gdG9kbzogYWx3YXlzIHRoaXMgZm9ybWF0P1xuXHRcdFx0XHRlbHNlXG5cdFx0XHRcdHJldCA9IHZhbHVlLk5hbWU7ICAvLyB0b2RvOiB1c2Ugb3RoZXIgZmllbGQ/XG5cdFx0XHR9XG5cdFx0fVxuXHRcdHJldHVybiByZXQ7XG5cdH1cblxuXHRnb05ldyggZSwgZGV0YWlsLCBzZW5kZXIgKSB7XG5cdFx0dGhpcy5uYXYoICcvZW50aXRpZXMvJyArIHRoaXMubW9kZWwgKyAnL25ldycgKTtcblx0fVxuXG5cdGRlbGV0ZSggZSwgZGV0YWlsLCBzZW5kZXIgKSB7XG5cblx0XHRsZXQgc2VsID0gUG9seW1lci5kb20odGhpcy4kLmxpc3QpLnF1ZXJ5U2VsZWN0b3JBbGwoICdwYXBlci1jaGVja2JveCcgKSxcblx0XHRsZW4gPSBzZWwgPyBzZWwubGVuZ3RoIDogMCxcblx0XHR0b0RlbCA9IFtdLFxuXHRcdHRvRGVsSWR4ID0ge307IC8vIHJlbWVtYmVyIHRoZSBpbmRleGVzIHRvIGRlbGV0ZVxuXG5cdFx0Zm9yKCB2YXIgaT0wOyBpIDwgbGVuOyBpKysgKSB7XG5cdFx0XHRpZiggc2VsW2ldLmNoZWNrZWQgKVxuXHRcdFx0dG9EZWwucHVzaCggdGhpcy5yb3dzW2ldICk7XG5cdFx0fVxuXG5cdFx0aWYoIHRvRGVsLmxlbmd0aCApXG5cdFx0cmV0dXJuIHRoaXMuJC5kYi5yZW1vdmUoIHRvRGVsICk7XG5cdFx0ZWxzZVxuXHRcdHJldHVybiBQcm9taXNlLnJlc29sdmUoKTtcblx0fVxufVxuXG5Qb2x5bWVyKCBFbnRpdHlMaXN0ICk7XG4iXX0=
'use strict';

System.register('common/forms/sb-datepicker/Datepicker.js', ['common/core/AppContext.js'], function (_export, _context) {
	var AppContext, _createClass, Datepicker;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCoreAppContextJs) {
			AppContext = _commonCoreAppContextJs.AppContext;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('Datepicker', Datepicker = function (_AppContext) {
				_inherits(Datepicker, _AppContext);

				function Datepicker() {
					_classCallCheck(this, Datepicker);

					return _possibleConstructorReturn(this, Object.getPrototypeOf(Datepicker).apply(this, arguments));
				}

				_createClass(Datepicker, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-datepicker';

						this.properties = Polymer.Base.extend({
							selectedDate: {
								type: Date,
								value: function value() {
									return new Date();
								},
								observer: 'selectedDateChanged'
							},
							isBlank: {
								type: Boolean,
								value: false,
								observer: 'clearDate'
							},
							range: {
								type: Number,
								value: 30
							}
						}, AppContext.properties);
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.isActive = false;

						this.weeks = [];
						this.weekDays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
						this.months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

						this.year = this.date.getFullYear();
						this.month = this.date.getMonth();
						this.monthName = this.months[this.month].toUpperCase();
						this.day = this.date.getDate();

						this.years = [];
						var start = this.year - this.range;
						var end = this.year + this.range + 1;
						for (var i = start; i < end; i++) {
							this.push('years', i);
						}

						this.invalidInput = false;
						this.parseDateTimePattern();

						Polymer.dom.flush();
						this.yearSelection = this.$.years;
						this.yearSelection.selectedOptions[0].selected = '';
						this.yearSelection.options[this.range].selected = 'selected';
					}
				}, {
					key: 'getDate',
					value: function getDate(date) {
						return date.getDate();
					}
				}, {
					key: 'clearDate',
					value: function clearDate() {
						if (this.isBlank) {
							this.$.selectedDate = '';
							this.dateFormatted = '';
						}
					}
				}, {
					key: 'getClass',
					value: function getClass(day) {
						var className = '';
						if (day.getMonth() !== this.month) {
							className += 'notCurrent';
						} else {
							if (day.getFullYear() === this.date.getFullYear() && day.getMonth() === this.date.getMonth() && day.getDate() === this.date.getDate()) {
								className += 'selected';
							}
							if (day.getFullYear() === this.year && day.getMonth() === this.month && day.getDate() === this.date.getDate()) {
								className += ' current';
							}
						}
						return className;
					}
				}, {
					key: 'selectedDateChanged',
					value: function selectedDateChanged() {
						var dateObj = null;

						if (this.selectedDate && typeof this.selectedDate === 'string') {
							var pos = this.selectedDate.indexOf('T');
							if (pos < 0) {
								var ymd = this.selectedDate.split('-');
								if (ymd && ymd.length == 3) {
									dateObj = new Date(ymd[0], ymd[1] - 1, ymd[2]);
								}
							}
						}

						if (!dateObj) {
							dateObj = new Date(this.selectedDate);
						}

						this.date = dateObj;
						this.dateFormatted = this.date.toLocaleDateString(this.user.locale);
						this.updateVariables();
						this.fire('selected-date-changed', { value: this.selectedDate });
					}
				}, {
					key: 'showCalendar',
					value: function showCalendar() {
						this.isActive = true;
						this.updateCalendar();
						this.$.open.focus();
					}
				}, {
					key: 'hideCalendar',
					value: function hideCalendar() {
						this.isActive = false;
						this.$.dateInput.blur();
					}
				}, {
					key: 'findToday',
					value: function findToday() {
						this.date = new Date();
						this.updateYearSelection(this.year, this.date.getFullYear());
						this.updateVariables();
						this.updateCalendar();
						this.$.open.focus();
					}
				}, {
					key: 'changeYear',
					value: function changeYear() {
						var selectedYear = parseInt(this.yearSelection.selectedOptions[0].text);
						this.date = new Date(selectedYear, this.month, this.day);
						this.updateVariables();
						this.updateCalendar();
						this.$.open.focus();
					}
				}, {
					key: 'decreaseMonth',
					value: function decreaseMonth() {
						this.date = new Date(this.year, this.month - 1, this.day);
						this.updateYearSelection(this.year, this.date.getFullYear());
						this.updateVariables();
						this.updateCalendar();
						this.$.open.focus();
					}
				}, {
					key: 'increaseMonth',
					value: function increaseMonth() {
						this.date = new Date(this.year, this.month + 1, this.day);
						this.updateYearSelection(this.year, this.date.getFullYear());
						this.updateVariables();
						this.updateCalendar();
						this.$.open.focus();
					}
				}, {
					key: 'selectDay',
					value: function selectDay(e) {
						this.selectedDate = e.model ? e.model.day : this.date;
						this.hideCalendar();
						this.$.open.blur();
					}
				}, {
					key: 'updateYearSelection',
					value: function updateYearSelection(oldValue, newValue) {
						if (oldValue !== newValue) {
							var selectedYearIdx = this.yearSelection.selectedIndex;
							var index = selectedYearIdx + (newValue - oldValue);
							this.yearSelection.options[selectedYearIdx].selected = '';
							this.yearSelection.options[index].selected = 'selected';
						}
					}
				}, {
					key: 'updateVariables',
					value: function updateVariables() {
						this.year = this.date.getFullYear();
						this.month = this.date.getMonth();
						this.monthName = this.months ? this.months[this.month].toUpperCase() : '';
						this.day = this.date.getDate();
					}
				}, {
					key: 'updateDate',
					value: function updateDate(increment) {
						this.date.setDate(this.date.getDate() + increment);
						this.updateYearSelection(this.year, this.date.getFullYear());
						this.updateVariables();
						this.updateCalendar();
					}
				}, {
					key: 'updateCalendar',
					value: function updateCalendar() {
						this.weeks = [];
						var firstDay = new Date(this.date.getFullYear(), this.month, 1);
						var index = firstDay.getDay();
						var numOfDays = 6 * 7;
						var week = [];
						var dayIdx = 0;
						for (var i = 0; i < numOfDays; i++) {
							var day = new Date(firstDay);
							day.setDate(firstDay.getDate() + (i - index));
							week[dayIdx] = day;
							dayIdx++;

							if ((i + 1) % 7 === 0 || i + 1 === numOfDays) {
								this.push('weeks', week);
								week = [];
								dayIdx = 0;
							}
						}
					}
				}, {
					key: 'parseDateTimePattern',
					value: function parseDateTimePattern() {
						var dateTimeFormat = UserContext && UserContext.dateFormat ? UserContext.dateFormat : Intl.DateTimeFormat(this.user.locale).resolved.pattern;

						var dateTimeFormatSimple = dateTimeFormat.replace(new RegExp('[dD]+'), 'D').replace(new RegExp('[mM]+'), 'M').replace(new RegExp('[yY]+'), 'Y');

						this.separator = dateTimeFormatSimple.match(new RegExp('[\/.-]'))[0];

						this.dateTimeElements = dateTimeFormatSimple.split(this.separator);
						this.dateIdx = this.dateTimeElements.indexOf('D');
						this.monthIdx = this.dateTimeElements.indexOf('M');
						this.yearIdx = this.dateTimeElements.indexOf('Y');
					}
				}, {
					key: 'validateInput',
					value: function validateInput() {
						this.invalidInput = true;
						var dateString = this.$.dateInput.value;
						if (dateString !== this.date.toLocaleDateString(this.user.locale)) {
							var elements = dateString.split(this.separator),
							    day = elements[this.dateIdx],
							    month = elements[this.monthIdx],
							    year = elements[this.yearIdx];

							if (year && year.length == 4 && month && month.length > 0 && month.length <= 2 && day && day.length > 0 && day.length <= 2) {
								day = parseInt(day);
								month = parseInt(month);
								year = parseInt(year);

								if (elements.length && !isNaN(year) && !isNaN(month) && !isNaN(day)) {
									if (year >= this.year - this.range && year <= this.year + this.range) {
										if (month >= 1 && month <= 12) {
											var monthEnd = 31;
											if (month == 2) {
												monthEnd = 28;
												if (year % 4 == 0) {
													if (year % 100 != 0) {
														monthEnd = 29;
													} else {
														if (year % 400 == 0) {
															monthEnd = 29;
														}
													}
												}
											} else {
												if (month == 4 || month == 6 || month == 9 || month == 11) {
													monthEnd = 30;
												}
											}

											if (day >= 1 && day <= monthEnd) {
												this.invalidInput = false;
											}
										}
									}
								}

								if (!this.invalidInput) {
									this.updateYearSelection(this.year, year);
									this.selectedDate = new Date(year, month - 1, day);
									this.updateVariables();
								}
							}
						} else {
							this.invalidInput = false;
						}
					}
				}, {
					key: 'navigate',
					value: function navigate(e) {
						e.preventDefault();

						switch (e.keyCode) {
							case 13:
								this.selectDay(e);
								break;
							case 27:
								this.hideCalendar();
								break;
							case 37:
								this.updateDate(-1);
								break;
							case 38:
								this.updateDate(-7);
								break;
							case 39:
								this.updateDate(+1);
								break;
							case 40:
								this.updateDate(+7);
								break;
							default:
								break;
						}
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.AppContext];
					}
				}]);

				return Datepicker;
			}(AppContext));

			_export('Datepicker', Datepicker);

			Polymer(Datepicker);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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O0FBRUMsY0FGRDtBQVZELFlBYU0sRUFBTDtBQUNDLGFBQUssVUFBTCxDQUFnQixDQUFDLENBQUQsQ0FBaEIsQ0FERDtBQUVDLGNBRkQ7QUFiRCxZQWdCTSxFQUFMO0FBQ0MsYUFBSyxVQUFMLENBQWdCLENBQUMsQ0FBRCxDQUFoQixDQUREO0FBRUMsY0FGRDtBQWhCRDtBQW9CRSxjQUREO0FBbkJELE9BSFc7Ozs7eUJBblJJO0FBQ2YsYUFBTyxDQUFDLEdBQUcsTUFBSCxDQUFVLElBQVYsQ0FBZSxVQUFmLENBQVIsQ0FEZTs7OztXQUZKO0tBQW1COzs7O0FBa1RoQyxXQUFTLFVBQVQiLCJmaWxlIjoiRGF0ZXBpY2tlci5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7QXBwQ29udGV4dH0gZnJvbSAnY29tbW9uL2NvcmUvQXBwQ29udGV4dC5qcyc7XG5cbmV4cG9ydCBjbGFzcyBEYXRlcGlja2VyIGV4dGVuZHMgQXBwQ29udGV4dCB7XG5cblx0Z2V0IGJlaGF2aW9ycygpIHtcblx0XHRyZXR1cm4gW3NiLmNvbW1vbi5jb3JlLkFwcENvbnRleHRdO1xuXHR9XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1kYXRlcGlja2VyJztcblxuXHRcdHRoaXMucHJvcGVydGllcyA9IFBvbHltZXIuQmFzZS5leHRlbmQoe1xuXHRcdFx0c2VsZWN0ZWREYXRlOiB7XG5cdFx0XHRcdHR5cGU6IERhdGUsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIG5ldyBEYXRlKCk7IH0sXG5cdFx0XHRcdG9ic2VydmVyOiAnc2VsZWN0ZWREYXRlQ2hhbmdlZCdcblx0XHRcdH0sXG5cdFx0XHRpc0JsYW5rOiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmYWxzZSxcblx0XHRcdFx0b2JzZXJ2ZXI6ICdjbGVhckRhdGUnXG5cdFx0XHR9LFxuXHRcdFx0cmFuZ2U6IHtcblx0XHRcdFx0dHlwZTogTnVtYmVyLFxuXHRcdFx0XHR2YWx1ZTogMzBcblx0XHRcdH1cblx0XHR9LCBBcHBDb250ZXh0LnByb3BlcnRpZXMgKTtcblx0fVxuXG5cdHJlYWR5KCkge1xuXHRcdHRoaXMuaXNBY3RpdmUgPSBmYWxzZTtcblxuXHRcdHRoaXMud2Vla3MgPSBbXTtcblx0XHR0aGlzLndlZWtEYXlzID0gWydTdW4nLCAnTW9uJywgJ1R1ZScsICdXZWQnLCAnVGh1JywgJ0ZyaScsICdTYXQnXTsgLy8gVE9ETzogVXBkYXRlIGRlcGVuZGluZyBvbiB0aGUgbG9jYWxlXG5cdFx0dGhpcy5tb250aHMgPSBbJ0phbnVhcnknLCAnRmVicnVhcnknLCAnTWFyY2gnLCAnQXByaWwnLCAnTWF5JywgJ0p1bmUnLCAnSnVseScsICdBdWd1c3QnLCAnU2VwdGVtYmVyJywgJ09jdG9iZXInLCAnTm92ZW1iZXInLCAnRGVjZW1iZXInXTsgLy8gVE9ETzogVXBkYXRlIGRlcGVuZGluZyBvbiB0aGUgbG9jYWxlXG5cblx0XHR0aGlzLnllYXIgPSB0aGlzLmRhdGUuZ2V0RnVsbFllYXIoKTtcblx0XHR0aGlzLm1vbnRoID0gdGhpcy5kYXRlLmdldE1vbnRoKCk7XG5cdFx0dGhpcy5tb250aE5hbWUgPSB0aGlzLm1vbnRoc1t0aGlzLm1vbnRoXS50b1VwcGVyQ2FzZSgpO1xuXHRcdHRoaXMuZGF5ID0gdGhpcy5kYXRlLmdldERhdGUoKTtcblxuXHRcdHRoaXMueWVhcnMgPSBbXTtcblx0XHR2YXIgc3RhcnQgPSB0aGlzLnllYXIgLSB0aGlzLnJhbmdlO1xuXHRcdHZhciBlbmQgPSB0aGlzLnllYXIgKyB0aGlzLnJhbmdlICsgMTtcblx0XHRmb3IgKCB2YXIgaSA9IHN0YXJ0OyBpIDwgZW5kOyBpKyspIHtcblx0XHRcdHRoaXMucHVzaCgneWVhcnMnLCBpKTtcblx0XHR9XG5cblx0XHR0aGlzLmludmFsaWRJbnB1dCA9IGZhbHNlO1xuXHRcdHRoaXMucGFyc2VEYXRlVGltZVBhdHRlcm4oKTtcblxuXHRcdFBvbHltZXIuZG9tLmZsdXNoKCk7XG5cdFx0dGhpcy55ZWFyU2VsZWN0aW9uID0gdGhpcy4kLnllYXJzO1xuXHRcdHRoaXMueWVhclNlbGVjdGlvbi5zZWxlY3RlZE9wdGlvbnNbMF0uc2VsZWN0ZWQgPSAnJztcblx0XHR0aGlzLnllYXJTZWxlY3Rpb24ub3B0aW9uc1t0aGlzLnJhbmdlXS5zZWxlY3RlZCA9ICdzZWxlY3RlZCc7XG5cdH1cblxuXHQvLyBtZXRob2RzIGZvciByZW5kZXJpbmdcblx0Z2V0RGF0ZShkYXRlKSB7XG5cdFx0cmV0dXJuIGRhdGUuZ2V0RGF0ZSgpO1xuXHR9XG5cblx0Y2xlYXJEYXRlKCkge1xuXHRcdGlmICh0aGlzLmlzQmxhbmspIHtcblx0XHRcdHRoaXMuJC5zZWxlY3RlZERhdGUgPSAnJztcblx0XHRcdHRoaXMuZGF0ZUZvcm1hdHRlZCA9ICcnO1xuXHRcdH1cblx0fVxuXG5cdGdldENsYXNzKGRheSkge1xuXHRcdHZhciBjbGFzc05hbWUgPSAnJztcblx0XHRpZiAoZGF5LmdldE1vbnRoKCkgIT09IHRoaXMubW9udGggKSB7XG5cdFx0XHRjbGFzc05hbWUgKz0gJ25vdEN1cnJlbnQnO1xuXHRcdH0gZWxzZSB7XG5cdFx0XHRpZiAoIChkYXkuZ2V0RnVsbFllYXIoKSA9PT0gdGhpcy5kYXRlLmdldEZ1bGxZZWFyKCkpICYmIChkYXkuZ2V0TW9udGgoKSA9PT0gdGhpcy5kYXRlLmdldE1vbnRoKCkpICYmIChkYXkuZ2V0RGF0ZSgpID09PSB0aGlzLmRhdGUuZ2V0RGF0ZSgpKSApIHtcblx0XHRcdFx0Y2xhc3NOYW1lICs9ICdzZWxlY3RlZCc7XG5cdFx0XHR9XG5cdFx0XHRpZiAoIChkYXkuZ2V0RnVsbFllYXIoKSA9PT0gdGhpcy55ZWFyKSAmJiAoZGF5LmdldE1vbnRoKCkgPT09IHRoaXMubW9udGgpICYmIChkYXkuZ2V0RGF0ZSgpID09PSB0aGlzLmRhdGUuZ2V0RGF0ZSgpKSApIHtcblx0XHRcdFx0Y2xhc3NOYW1lICs9ICcgY3VycmVudCc7XG5cdFx0XHR9XG5cdFx0fVxuXHRcdHJldHVybiBjbGFzc05hbWU7XG5cdH1cblxuXHQvLyBvYnNlcnZlcnNcblx0c2VsZWN0ZWREYXRlQ2hhbmdlZCgpIHtcblx0XHRsZXQgZGF0ZU9iaiA9IG51bGw7XG5cdFx0Ly8gaWYgc3RyaW5nIGFuZCBpbiBZWVlZLU1NLUREIGZvcm1hdCB0aGFuIGluc3RhbnRpYXRlIGV4cGxpY2l0bHlcblx0XHRpZiggdGhpcy5zZWxlY3RlZERhdGUgJiYgdHlwZW9mIHRoaXMuc2VsZWN0ZWREYXRlID09PSAnc3RyaW5nJyApIHtcblx0XHRcdGxldCBwb3MgPSB0aGlzLnNlbGVjdGVkRGF0ZS5pbmRleE9mKCAnVCcgKTtcblx0XHRcdGlmKCBwb3MgPCAwICkge1xuXHRcdFx0XHRsZXQgeW1kID0gdGhpcy5zZWxlY3RlZERhdGUuc3BsaXQoICctJyApO1xuXHRcdFx0XHRpZiggeW1kICYmIHltZC5sZW5ndGggPT0gMyApe1xuXHRcdFx0XHRcdGRhdGVPYmogPSBuZXcgRGF0ZSggeW1kWzBdLCB5bWRbMV0tMSwgeW1kWzJdICk7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cblx0XHQvLyBkZWZhdWx0XG5cdFx0aWYoICFkYXRlT2JqICkge1xuXHRcdFx0ZGF0ZU9iaiA9IG5ldyBEYXRlKCB0aGlzLnNlbGVjdGVkRGF0ZSApO1xuXHRcdH1cblxuXHRcdHRoaXMuZGF0ZSA9IGRhdGVPYmo7XG5cdFx0dGhpcy5kYXRlRm9ybWF0dGVkID0gdGhpcy5kYXRlLnRvTG9jYWxlRGF0ZVN0cmluZyggdGhpcy51c2VyLmxvY2FsZSApO1xuXHRcdHRoaXMudXBkYXRlVmFyaWFibGVzKCk7XG5cdFx0dGhpcy5maXJlKCAnc2VsZWN0ZWQtZGF0ZS1jaGFuZ2VkJywgeyB2YWx1ZTogdGhpcy5zZWxlY3RlZERhdGUgfSApO1xuXHR9XG5cblx0Ly8gZXZlbnQgaGFuZGxlcnNcblx0c2hvd0NhbGVuZGFyKCkge1xuXHRcdHRoaXMuaXNBY3RpdmUgPSB0cnVlO1xuXHRcdHRoaXMudXBkYXRlQ2FsZW5kYXIoKTtcblx0XHR0aGlzLiQub3Blbi5mb2N1cygpO1xuXHR9XG5cblx0aGlkZUNhbGVuZGFyKCkge1xuXHRcdHRoaXMuaXNBY3RpdmUgPSBmYWxzZTtcblx0XHR0aGlzLiQuZGF0ZUlucHV0LmJsdXIoKTtcblx0fVxuXG5cdGZpbmRUb2RheSgpIHtcblx0XHR0aGlzLmRhdGUgPSBuZXcgRGF0ZSgpO1xuXHRcdHRoaXMudXBkYXRlWWVhclNlbGVjdGlvbih0aGlzLnllYXIsIHRoaXMuZGF0ZS5nZXRGdWxsWWVhcigpKTtcblx0XHR0aGlzLnVwZGF0ZVZhcmlhYmxlcygpO1xuXHRcdHRoaXMudXBkYXRlQ2FsZW5kYXIoKTtcblx0XHR0aGlzLiQub3Blbi5mb2N1cygpO1xuXHR9XG5cblx0Y2hhbmdlWWVhcigpIHtcblx0XHR2YXIgc2VsZWN0ZWRZZWFyID0gcGFyc2VJbnQodGhpcy55ZWFyU2VsZWN0aW9uLnNlbGVjdGVkT3B0aW9uc1swXS50ZXh0KTtcblx0XHR0aGlzLmRhdGUgPSBuZXcgRGF0ZShzZWxlY3RlZFllYXIsIHRoaXMubW9udGgsIHRoaXMuZGF5KTtcblx0XHR0aGlzLnVwZGF0ZVZhcmlhYmxlcygpO1xuXHRcdHRoaXMudXBkYXRlQ2FsZW5kYXIoKTtcblx0XHR0aGlzLiQub3Blbi5mb2N1cygpO1xuXHR9XG5cblx0ZGVjcmVhc2VNb250aCgpIHtcblx0XHR0aGlzLmRhdGUgPSBuZXcgRGF0ZSh0aGlzLnllYXIsIHRoaXMubW9udGggLSAxLCB0aGlzLmRheSk7XG5cdFx0dGhpcy51cGRhdGVZZWFyU2VsZWN0aW9uKHRoaXMueWVhciwgdGhpcy5kYXRlLmdldEZ1bGxZZWFyKCkpO1xuXHRcdHRoaXMudXBkYXRlVmFyaWFibGVzKCk7XG5cdFx0dGhpcy51cGRhdGVDYWxlbmRhcigpO1xuXHRcdHRoaXMuJC5vcGVuLmZvY3VzKCk7XG5cdH1cblxuXHRpbmNyZWFzZU1vbnRoKCkge1xuXHRcdHRoaXMuZGF0ZSA9IG5ldyBEYXRlKHRoaXMueWVhciwgdGhpcy5tb250aCArIDEsIHRoaXMuZGF5KTtcblx0XHR0aGlzLnVwZGF0ZVllYXJTZWxlY3Rpb24odGhpcy55ZWFyLCB0aGlzLmRhdGUuZ2V0RnVsbFllYXIoKSk7XG5cdFx0dGhpcy51cGRhdGVWYXJpYWJsZXMoKTtcblx0XHR0aGlzLnVwZGF0ZUNhbGVuZGFyKCk7XG5cdFx0dGhpcy4kLm9wZW4uZm9jdXMoKTtcblx0fVxuXG5cdHNlbGVjdERheShlKSB7XG5cdFx0dGhpcy5zZWxlY3RlZERhdGUgPSBlLm1vZGVsID8gZS5tb2RlbC5kYXkgOiB0aGlzLmRhdGU7XG5cdFx0dGhpcy5oaWRlQ2FsZW5kYXIoKTtcblx0XHR0aGlzLiQub3Blbi5ibHVyKCk7XG5cdH1cblxuXHQvLyBoZWxwZXIgbWV0aG9kc1xuXHR1cGRhdGVZZWFyU2VsZWN0aW9uKG9sZFZhbHVlLCBuZXdWYWx1ZSkge1xuXHRcdGlmIChvbGRWYWx1ZSAhPT0gbmV3VmFsdWUpIHtcblx0XHRcdHZhciBzZWxlY3RlZFllYXJJZHggPSB0aGlzLnllYXJTZWxlY3Rpb24uc2VsZWN0ZWRJbmRleDtcblx0XHRcdHZhciBpbmRleCA9IHNlbGVjdGVkWWVhcklkeCArIChuZXdWYWx1ZSAtIG9sZFZhbHVlKTtcblx0XHRcdHRoaXMueWVhclNlbGVjdGlvbi5vcHRpb25zW3NlbGVjdGVkWWVhcklkeF0uc2VsZWN0ZWQgPSAnJztcblx0XHRcdHRoaXMueWVhclNlbGVjdGlvbi5vcHRpb25zW2luZGV4XS5zZWxlY3RlZCA9ICdzZWxlY3RlZCc7XG5cdFx0fVxuXHR9XG5cblx0dXBkYXRlVmFyaWFibGVzKCkge1xuXHRcdHRoaXMueWVhciA9IHRoaXMuZGF0ZS5nZXRGdWxsWWVhcigpO1xuXHRcdHRoaXMubW9udGggPSB0aGlzLmRhdGUuZ2V0TW9udGgoKTtcblx0XHR0aGlzLm1vbnRoTmFtZSA9IHRoaXMubW9udGhzID8gdGhpcy5tb250aHNbdGhpcy5tb250aF0udG9VcHBlckNhc2UoKTogJyc7XG5cdFx0dGhpcy5kYXkgPSB0aGlzLmRhdGUuZ2V0RGF0ZSgpO1xuXHR9XG5cblx0dXBkYXRlRGF0ZShpbmNyZW1lbnQpIHtcblx0XHR0aGlzLmRhdGUuc2V0RGF0ZSh0aGlzLmRhdGUuZ2V0RGF0ZSgpICsgaW5jcmVtZW50KTtcblx0XHR0aGlzLnVwZGF0ZVllYXJTZWxlY3Rpb24odGhpcy55ZWFyLCB0aGlzLmRhdGUuZ2V0RnVsbFllYXIoKSk7XG5cdFx0dGhpcy51cGRhdGVWYXJpYWJsZXMoKTtcblx0XHR0aGlzLnVwZGF0ZUNhbGVuZGFyKCk7XG5cdH1cblxuXHR1cGRhdGVDYWxlbmRhcigpIHtcblx0XHR0aGlzLndlZWtzID0gW107XG5cdFx0dmFyIGZpcnN0RGF5ID0gbmV3IERhdGUodGhpcy5kYXRlLmdldEZ1bGxZZWFyKCksIHRoaXMubW9udGgsIDEpO1xuXHRcdHZhciBpbmRleCA9IGZpcnN0RGF5LmdldERheSgpO1xuXHRcdHZhciBudW1PZkRheXMgPSA2ICogNztcblx0XHR2YXIgd2VlayA9IFtdO1xuXHRcdHZhciBkYXlJZHggPSAwO1xuXHRcdGZvciAoIHZhciBpID0gMDsgaSA8IG51bU9mRGF5czsgaSsrKSB7XG5cdFx0XHR2YXIgZGF5ID0gbmV3IERhdGUoZmlyc3REYXkpO1xuXHRcdFx0ZGF5LnNldERhdGUoZmlyc3REYXkuZ2V0RGF0ZSgpICsgKGkgLSBpbmRleCkpO1xuXHRcdFx0d2Vla1tkYXlJZHhdID0gZGF5O1xuXHRcdFx0ZGF5SWR4Kys7XG5cblx0XHRcdGlmICggKChpKzEpICUgNykgPT09IDAgfHwgaSsxID09PSBudW1PZkRheXMpIHtcblx0XHRcdFx0dGhpcy5wdXNoKCd3ZWVrcycsIHdlZWspO1xuXHRcdFx0XHR3ZWVrID0gW107XG5cdFx0XHRcdGRheUlkeCA9IDA7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0cGFyc2VEYXRlVGltZVBhdHRlcm4oKSB7XG5cdFx0Ly8gdXNlciBTRiBVc2VyQ29udGV4dCBpZiB3ZSBoYXZlIGl0XG5cdFx0dmFyIGRhdGVUaW1lRm9ybWF0ID0gVXNlckNvbnRleHQgJiYgVXNlckNvbnRleHQuZGF0ZUZvcm1hdCA/IFVzZXJDb250ZXh0LmRhdGVGb3JtYXQgOiBJbnRsLkRhdGVUaW1lRm9ybWF0KCB0aGlzLnVzZXIubG9jYWxlICkucmVzb2x2ZWQucGF0dGVybjtcblx0XHQvLyBzaW1wbGlmeSBkYXRlVGltZUZvcm1hdCBzdHJpbmcgZm9yIHJlcGVhdGluZyBjaGFyYWN0ZXJzXG5cdFx0dmFyIGRhdGVUaW1lRm9ybWF0U2ltcGxlID0gZGF0ZVRpbWVGb3JtYXQucmVwbGFjZShuZXcgUmVnRXhwKCdbZERdKycpLCAnRCcpLnJlcGxhY2UobmV3IFJlZ0V4cCgnW21NXSsnKSwgJ00nKS5yZXBsYWNlKG5ldyBSZWdFeHAoJ1t5WV0rJyksICdZJyk7XG5cdFx0Ly8gZ2V0IHRoZSBzZXBhcmF0b3Jcblx0XHR0aGlzLnNlcGFyYXRvciA9IGRhdGVUaW1lRm9ybWF0U2ltcGxlLm1hdGNoKG5ldyBSZWdFeHAoJ1tcXC8uLV0nKSlbMF07XG5cdFx0Ly8gc3BsaXQgYnkgc2VwYXJhdG9yIHRvIGdldCBkYXksIG1vbnRoLCBhbmQgeWVhciBpbmRleGVzXG5cdFx0dGhpcy5kYXRlVGltZUVsZW1lbnRzID0gZGF0ZVRpbWVGb3JtYXRTaW1wbGUuc3BsaXQodGhpcy5zZXBhcmF0b3IpO1xuXHRcdHRoaXMuZGF0ZUlkeCA9IHRoaXMuZGF0ZVRpbWVFbGVtZW50cy5pbmRleE9mKCdEJyk7XG5cdFx0dGhpcy5tb250aElkeCA9IHRoaXMuZGF0ZVRpbWVFbGVtZW50cy5pbmRleE9mKCdNJyk7XG5cdFx0dGhpcy55ZWFySWR4ID0gdGhpcy5kYXRlVGltZUVsZW1lbnRzLmluZGV4T2YoJ1knKTtcblx0fVxuXG5cdHZhbGlkYXRlSW5wdXQoKSB7XG5cdFx0dGhpcy5pbnZhbGlkSW5wdXQgPSB0cnVlO1xuXHRcdHZhciBkYXRlU3RyaW5nID0gdGhpcy4kLmRhdGVJbnB1dC52YWx1ZTtcblx0XHRpZiAoZGF0ZVN0cmluZyAhPT0gdGhpcy5kYXRlLnRvTG9jYWxlRGF0ZVN0cmluZyggdGhpcy51c2VyLmxvY2FsZSApKSB7XG5cdFx0XHQvLyBwdWxsIGRheSwgbW9udGgsIGFuZCB5ZWFyIGZyb20gdGhlIGRhdGVcblx0XHRcdHZhciBlbGVtZW50cyA9IGRhdGVTdHJpbmcuc3BsaXQodGhpcy5zZXBhcmF0b3IpLFxuXHRcdFx0XHRkYXkgPSBlbGVtZW50c1t0aGlzLmRhdGVJZHhdLFxuXHRcdFx0XHRtb250aCA9IGVsZW1lbnRzW3RoaXMubW9udGhJZHhdLFxuXHRcdFx0XHR5ZWFyID0gZWxlbWVudHNbdGhpcy55ZWFySWR4XTtcblxuXHRcdFx0Ly8gY2hlY2sgZGF5LCBtb250aCwgYW5kIHllYXIgc3RyaW5ncyBmb3IgdmFsaWRpdHlcblx0XHRcdGlmICgoeWVhciAmJiB5ZWFyLmxlbmd0aCA9PSA0KSAmJiAobW9udGggJiYgbW9udGgubGVuZ3RoID4gMCAmJiBtb250aC5sZW5ndGggPD0gMikgJiYgKGRheSAmJiBkYXkubGVuZ3RoID4gMCAmJiBkYXkubGVuZ3RoIDw9IDIpKSB7XG5cdFx0XHRcdGRheSA9IHBhcnNlSW50KGRheSk7XG5cdFx0XHRcdG1vbnRoID0gcGFyc2VJbnQobW9udGgpO1xuXHRcdFx0XHR5ZWFyID0gcGFyc2VJbnQoeWVhcik7XG5cblx0XHRcdFx0Ly8gY2hlY2sgd2hldGhlciBpbnB1dCBpcyBzcGxpdCBpbnRvIHNlcGFyYXRlIGVsZW1lbnRzIGFuZCB0aGF0IGlucHV0IGVsZW1lbnRzIGFyZSBudW1iZXJzXG5cdFx0XHRcdGlmIChlbGVtZW50cy5sZW5ndGggJiYgIWlzTmFOKHllYXIpICYmICFpc05hTihtb250aCkgJiYgIWlzTmFOKGRheSkpIHtcblx0XHRcdFx0XHQvLyBjaGVjayB5ZWFyXG5cdFx0XHRcdFx0aWYgKHllYXIgPj0gdGhpcy55ZWFyIC0gdGhpcy5yYW5nZSAgJiYgeWVhciA8PSB0aGlzLnllYXIgKyB0aGlzLnJhbmdlKSB7XG5cdFx0XHRcdFx0XHQvLyBjaGVjayBtb250aHNcblx0XHRcdFx0XHRcdGlmIChtb250aCA+PSAxICYmIG1vbnRoIDw9IDEyKSB7XG5cdFx0XHRcdFx0XHRcdC8vIGNoZWNrIGRheXMgaW5jbHVkaW5nIGxlYXAgeWVhcnNcblx0XHRcdFx0XHRcdFx0dmFyIG1vbnRoRW5kID0gMzE7XG5cdFx0XHRcdFx0XHRcdGlmIChtb250aCA9PSAyKSB7XG5cdFx0XHRcdFx0XHRcdFx0bW9udGhFbmQgPSAyODtcblx0XHRcdFx0XHRcdFx0XHRpZiAoeWVhciAlIDQgPT0gMCkge1xuXHRcdFx0XHRcdFx0XHRcdFx0aWYgKHllYXIgJSAxMDAgIT0gMCkge1xuXHRcdFx0XHRcdFx0XHRcdFx0XHRtb250aEVuZCA9IDI5O1xuXHRcdFx0XHRcdFx0XHRcdFx0fSBlbHNlIHtcblx0XHRcdFx0XHRcdFx0XHRcdFx0aWYgKHllYXIgJSA0MDAgPT0gMCkge1xuXHRcdFx0XHRcdFx0XHRcdFx0XHRcdG1vbnRoRW5kID0gMjk7XG5cdFx0XHRcdFx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0XHRcdH0gZWxzZSB7XG5cdFx0XHRcdFx0XHRcdFx0aWYgKChtb250aCA9PSA0KSB8fCAobW9udGggPT0gNikgfHwgKG1vbnRoID09IDkpIHx8IChtb250aCA9PSAxMSkpIHtcblx0XHRcdFx0XHRcdFx0XHRcdG1vbnRoRW5kID0gMzA7XG5cdFx0XHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRcdFx0aWYgKGRheSA+PSAxICYmIGRheSA8PSBtb250aEVuZCkge1xuXHRcdFx0XHRcdFx0XHRcdHRoaXMuaW52YWxpZElucHV0ID0gZmFsc2U7XG5cdFx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQvLyB1cGRhdGUgZGF0ZSB0byByZWZsZWN0IHRoZSBpbnB1dCBjaGFuZ2Vcblx0XHRcdFx0aWYgKCF0aGlzLmludmFsaWRJbnB1dCkge1xuXHRcdFx0XHRcdHRoaXMudXBkYXRlWWVhclNlbGVjdGlvbih0aGlzLnllYXIsIHllYXIpO1xuXHRcdFx0XHRcdHRoaXMuc2VsZWN0ZWREYXRlID0gbmV3IERhdGUoeWVhciwgbW9udGggLSAxLCBkYXkpO1xuXHRcdFx0XHRcdHRoaXMudXBkYXRlVmFyaWFibGVzKCk7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9IGVsc2Uge1xuXHRcdFx0dGhpcy5pbnZhbGlkSW5wdXQgPSBmYWxzZTtcblx0XHR9XG5cblx0fVxuXG5cdG5hdmlnYXRlKGUpIHtcblx0XHRlLnByZXZlbnREZWZhdWx0KCk7XG5cblx0XHRzd2l0Y2goZS5rZXlDb2RlKSB7XG5cdFx0XHRjYXNlIDEzOiAvL2VudGVyIC0gc3VibWl0IHRoZSBzZWxlY3RlZCBvcHRpb25cblx0XHRcdFx0dGhpcy5zZWxlY3REYXkoZSk7XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0Y2FzZSAyNzogLy8gZXNjIC0gcHJlc2VydmUgb2xkL29yaWdpbmFsbHkgcGVyc2lzdGVkIHZhbHVlXG5cdFx0XHRcdHRoaXMuaGlkZUNhbGVuZGFyKCk7XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0Y2FzZSAzNzogLy8gbGVmdCBhcnJvd1xuXHRcdFx0XHR0aGlzLnVwZGF0ZURhdGUoLTEpO1xuXHRcdFx0XHRicmVhaztcblx0XHRcdGNhc2UgMzg6IC8vIHVwIGFycm93XG5cdFx0XHRcdHRoaXMudXBkYXRlRGF0ZSgtNyk7XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0Y2FzZSAzOTogLy8gcmlnaHQgYXJyb3dcblx0XHRcdFx0dGhpcy51cGRhdGVEYXRlKCsxKTtcblx0XHRcdFx0YnJlYWs7XG5cdFx0XHRjYXNlIDQwOiAvLyBkb3duIGFycm93XG5cdFx0XHRcdHRoaXMudXBkYXRlRGF0ZSgrNyk7XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0ZGVmYXVsdDpcblx0XHRcdFx0YnJlYWs7XG5cdFx0fVxuXHR9XG5cbn1cblxuUG9seW1lciggRGF0ZXBpY2tlciApO1xuIl19
'use strict';

System.register('common/forms/sb-field/Field.js', ['common/core/AppContext.js'], function (_export, _context) {
	var AppContext, _createClass, INPUT, CHECKBOX, DATE, TEXTAREA, SF_REF_SUFFIX, Field;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCoreAppContextJs) {
			AppContext = _commonCoreAppContextJs.AppContext;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			INPUT = '<input is="iron-input">';
			CHECKBOX = '<paper-checkbox></paper-checkbox>';
			DATE = '<sb-datepicker></sb-datepicker>';
			TEXTAREA = '<textarea is="iron-autogrow-textarea"></textarea>';
			SF_REF_SUFFIX = 'Id';

			_export('Field', Field = function (_AppContext) {
				_inherits(Field, _AppContext);

				function Field() {
					_classCallCheck(this, Field);

					return _possibleConstructorReturn(this, Object.getPrototypeOf(Field).apply(this, arguments));
				}

				_createClass(Field, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-field';
						this.properties = Polymer.Base.extend({
							obj: {
								type: Object,
								value: function value() {
									return {};
								}
							},
							property: String,

							md: Object,

							refObjects: Array,
							editing: Boolean
						}, AppContext.properties);
					}
				}, {
					key: 'render',
					value: function render() {
						var con = Polymer.dom(this.$.f);

						var type = this.md && this.md.type ? this.md.type.toLowerCase() : '';
						switch (type) {
							case 'boolean':
								var el = this.createBaseElement(CHECKBOX);
								el.checked = this.obj[this.property];
								el.addEventListener('change', function (e) {
									if (this.obj && this.property) this.obj[this.property] = el.checked ? true : false;
								}.bind(this));
								break;

							case 'date':
							case 'datetime':
								if (this.editing) {
									el = this.createBaseElement(DATE, 'selectedDate');
									el.addEventListener('selected-date-changed', function (e) {
										if (this.obj && this.property) {
											var value = e.detail.value ? e.detail.value : null;
											if (type === 'date' && value instanceof Date) {
												value = value.getFullYear() + '-' + (value.getMonth() + 1) + '-' + value.getDate();
											} else if (value instanceof Date) {
												value = value.toISOString();
											}
											this.obj[this.property] = value;
										}
									}.bind(this));
								} else {
									con.textContent = this.i18n.format(this.obj[this.property], { date: true });
								}
								break;

							case 'double':
							case 'number':
							case 'currency':
							case 'percent':
								var opts = {};
								if (this.md.scale != undefined && this.md.scale >= 0) {
									opts.minimumFractionDigits = this.md.scale;
									opts.maxmfimumFractionDigits = this.md.scale;
								}

								if (type === 'currency') {
									opts.style = 'currency';
									opts.currency = 'USD';
								}

								var fValue = this.i18n.format(this.obj[this.property], opts);
								if (this.editing) {
									el = this.createBaseElement(INPUT, 'value', fValue);
									el.addEventListener('bind-value-changed', function (e) {
										var num = e.detail.value == '' ? '' : parseFloat(e.detail.value);
										if (this.obj && this.property) {
											this.obj[this.property] = num;
										}
									}.bind(this));
								} else {
									con.textContent = fValue;
								}
								break;

							case 'autonumber':
								con.textContent = this.obj[this.property];
								break;

							case 'reference':
								var pos = this.property.lastIndexOf(SF_REF_SUFFIX);
								var refObj = pos >= 0 ? this.property.substring(0, pos) : this.property.lastIndexOf('__c') >= 0 ? this.property.replace('__c', '__r') : null;

								var referenceId = this.obj[this.property];
								var refType = this.obj[refObj] ? this.obj[refObj].attributes.type : null;

								if (refObj && this.obj[refObj] && this.refObjects && refType && this.refObjects[refType]) {
									var nameProp = this.refObjects[refType].nameField.name;
									con.textContent = this.obj[refObj][nameProp];
								}
								if (con.textContent) {
									con.classList.add("link");
								}
								con.node.onclick = function () {
									window.open(window.location.origin + '/' + referenceId);
								}.bind(this);

								break;

							case 'picklist':
								if (this.editing) {
									var none = !this.md.required ? '-- None --' : '',
									    len = this.md.picklistValues ? this.md.picklistValues.length : 0,
									    html = '<select>' + (none ? '<option value>' + none + '</option>' : '');

									if (this.md.defaultValue && !this.obj.Id) this.obj[this.property] = this.md.defaultValue;

									for (var i = 0; i < len; i++) {
										var selected = this.obj[this.property] === this.md.picklistValues[i].value ? true : false;
										html += '<option value="' + this.md.picklistValues[i].value + '"' + (selected ? ' selected' : '') + '>' + this.md.picklistValues[i].label + '</option>';
									}

									html += '</select>';
									el = this.createBaseElement(html);

									el.addEventListener('change', function (e) {
										if (this.obj && this.property) this.obj[this.property] = el.value ? el.value : null;
									}.bind(this));
								} else {
									con.textContent = this.obj[this.property];
								}
								break;

							case 'string':
							case 'textarea':
								if (this.editing) {
									if (this.md.maxLength > 255 || this.md.format === 'multiline' || type === 'textarea') {
										el = this.createBaseElement(TEXTAREA, 'value');
										el.addEventListener('bind-value-changed', function (e) {
											if (this.obj && this.property) this.obj[this.property] = e.detail.value ? e.detail.value : null;
										}.bind(this));
									} else {
										var _el = this.createBaseElement(INPUT, 'value');
										_el.addEventListener('bind-value-changed', function (e) {
											if (this.obj && this.property) this.obj[this.property] = e.detail.value ? e.detail.value : null;
										}.bind(this));
									}
								} else {
									con.textContent = this.obj[this.property];
								}
								break;
						}
					}
				}, {
					key: 'createBaseElement',
					value: function createBaseElement(html, valueProp, value) {
						Polymer.dom(this.$.f).innerHTML = html;
						var el = this.$$('#f > *');

						if (value == undefined && valueProp && this.property) {
							if (this.obj[this.property]) {
								value = this.obj[this.property];
							} else if (valueProp == 'selectedDate' && this.obj[this.property] == undefined) {
								el['isBlank'] = true;
							}
						}

						if (value) el[valueProp] = value;

						return el;
					}
				}, {
					key: 'setDefaultValue',
					value: function setDefaultValue(v) {
						if (this.value == undefined) this.value = v;
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.AppContext];
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['render( obj, property, md, refObjects, editing )'];
					}
				}]);

				return Field;
			}(AppContext));

			_export('Field', Field);

			Polymer(Field);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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Q0FBVSxJQUFWLENBQWUsVUFBZixDQUFSLENBRGU7Ozs7eUJBOEJBO0FBQ2YsYUFBTyxDQUFDLGtEQUFELENBQVAsQ0FEZTs7OztXQWhDSjtLQUFjOzs7O0FBK00zQixXQUFTLEtBQVQiLCJmaWxlIjoiRmllbGQuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge0FwcENvbnRleHR9IGZyb20gJ2NvbW1vbi9jb3JlL0FwcENvbnRleHQuanMnO1xuXG5sZXQgSU5QVVQgPSAnPGlucHV0IGlzPVwiaXJvbi1pbnB1dFwiPicsXG5cdENIRUNLQk9YID0gJzxwYXBlci1jaGVja2JveD48L3BhcGVyLWNoZWNrYm94PicsXG5cdERBVEUgPSAnPHNiLWRhdGVwaWNrZXI+PC9zYi1kYXRlcGlja2VyPicsXG5cdFRFWFRBUkVBID0gJzx0ZXh0YXJlYSBpcz1cImlyb24tYXV0b2dyb3ctdGV4dGFyZWFcIj48L3RleHRhcmVhPicsXG5cdFNGX1JFRl9TVUZGSVggPSAnSWQnO1xuXG5leHBvcnQgY2xhc3MgRmllbGQgZXh0ZW5kcyBBcHBDb250ZXh0IHtcblxuXHRnZXQgYmVoYXZpb3JzKCkge1xuXHRcdHJldHVybiBbc2IuY29tbW9uLmNvcmUuQXBwQ29udGV4dF07XG5cdH1cblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLWZpZWxkJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSBQb2x5bWVyLkJhc2UuZXh0ZW5kKCB7XG5cdFx0XHRvYmo6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiB7fTsgfVxuXHRcdFx0fSxcblx0XHRcdHByb3BlcnR5OiBTdHJpbmcsXG5cdFx0XHQvKiogT2JqZWN0IHdpdGggc3RydWN0dXJlIG9mOlxuXHRcdFx0IHtcblx0XHRcdFx0dHlwZTogU1RSSU5HIHwgUkVGRVJFTkNFIHwgRE9VQkxFIHwgQ1VSUkVOQ1kgfCBQSUNLTElTVCB8IERBVEUgfCBEQVRFVElNRVxuXHRcdFx0XHRuYW1lOiA8b2JqZWN0IGZpZWxkIEFQSSBuYW1lPlxuXHRcdFx0XHRsYWJlbDogPG9iamVjdCBmaWVsZCBsYWJlbD5cblx0XHRcdFx0c2NhbGU6IGludGVnZXJcblx0XHRcdFx0dXBkYXRlYWJsZTogYm9vbGVhblxuXHRcdFx0XHRwaWNsaXN0VmFsdWVzOiBbIHsgbGFiZWw6IDxsYWJlbD4sIHZhbHVlOiA8dmFsdWU+IH1dXG5cdFx0XHRcdGNhbGN1bGF0ZWQ6IGJvb2xlYW5cblx0XHRcdCB9XG5cdFx0XHQgKi9cblx0XHRcdG1kOiBPYmplY3QsXG5cdFx0XHQvKiogTWV0YWRhdGEgZm9yIGFsbCByZWZlcmVuY2VkIG9iamVjdHMgaW4gc2FtZSBzdHJ1Y3R1cmUgYXMgbWQgKi9cblx0XHRcdHJlZk9iamVjdHM6IEFycmF5LFxuXHRcdFx0ZWRpdGluZzogQm9vbGVhbixcblx0XHR9LCBBcHBDb250ZXh0LnByb3BlcnRpZXMgKTtcblx0fVxuXG5cdGdldCBvYnNlcnZlcnMoKSB7XG5cdFx0cmV0dXJuIFsncmVuZGVyKCBvYmosIHByb3BlcnR5LCBtZCwgcmVmT2JqZWN0cywgZWRpdGluZyApJ107XG5cdH1cblxuXHRyZW5kZXIoKSB7XG5cdFx0bGV0IGNvbiA9IFBvbHltZXIuZG9tKHRoaXMuJC5mKTtcblxuXHRcdC8vIGR5bmFtaWNhbGx5IGNyZWF0ZSBET00gZWxlbWV0IGFuZCBob29rIHVwIGxpc3RlbmVyc1xuXHRcdC8vIEFzIG9mIFBvbHltZXIgMS4yLCBpdCBjYW4ndCBiaW5kIHdpdGggZHluYW1pYyBmaWVsZCBleHByZXNzaW9ucyBzbyBtdXN0IHVzZSBtYW51YWwgZXZlbnQgbGlzdGVuZXJzIGhlcmUgOihcblx0XHRsZXQgdHlwZSA9IHRoaXMubWQgJiYgdGhpcy5tZC50eXBlID8gdGhpcy5tZC50eXBlLnRvTG93ZXJDYXNlKCkgOiAnJztcblx0XHRzd2l0Y2goIHR5cGUgKSB7XG5cdFx0XHRjYXNlICdib29sZWFuJzpcblx0XHRcdFx0bGV0IGVsID0gdGhpcy5jcmVhdGVCYXNlRWxlbWVudCggQ0hFQ0tCT1ggKTtcblx0XHRcdFx0ZWwuY2hlY2tlZCA9IHRoaXMub2JqW3RoaXMucHJvcGVydHldO1xuXHRcdFx0XHRlbC5hZGRFdmVudExpc3RlbmVyKCAnY2hhbmdlJywgZnVuY3Rpb24oZSkge1xuXHRcdFx0XHRcdGlmKCB0aGlzLm9iaiAmJiB0aGlzLnByb3BlcnR5IClcblx0XHRcdFx0XHRcdHRoaXMub2JqW3RoaXMucHJvcGVydHldID0gZWwuY2hlY2tlZCA/IHRydWUgOiBmYWxzZTtcblx0XHRcdFx0fS5iaW5kKHRoaXMpICk7XG5cdFx0XHRcdGJyZWFrO1xuXG5cdFx0XHRjYXNlICdkYXRlJzpcblx0XHRcdGNhc2UgJ2RhdGV0aW1lJzpcblx0XHRcdFx0aWYoIHRoaXMuZWRpdGluZyApIHtcblx0XHRcdFx0XHRlbCA9IHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoIERBVEUsICdzZWxlY3RlZERhdGUnICk7XG5cdFx0XHRcdFx0ZWwuYWRkRXZlbnRMaXN0ZW5lciggJ3NlbGVjdGVkLWRhdGUtY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcblx0XHRcdFx0XHRcdGlmKCB0aGlzLm9iaiAmJiB0aGlzLnByb3BlcnR5ICkge1xuXHRcdFx0XHRcdFx0XHRsZXQgdmFsdWUgPSBlLmRldGFpbC52YWx1ZSA/IGUuZGV0YWlsLnZhbHVlIDogbnVsbDtcblx0XHRcdFx0XHRcdFx0aWYoIHR5cGUgPT09ICdkYXRlJyAmJiB2YWx1ZSBpbnN0YW5jZW9mIERhdGUgKSB7XG5cdFx0XHRcdFx0XHRcdFx0dmFsdWUgPSB2YWx1ZS5nZXRGdWxsWWVhcigpICsgJy0nICsgKHZhbHVlLmdldE1vbnRoKCkrMSkgKyAnLScgKyB2YWx1ZS5nZXREYXRlKCk7XG5cdFx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHRcdFx0ZWxzZSBpZiggdmFsdWUgaW5zdGFuY2VvZiBEYXRlICkge1xuXHRcdFx0XHRcdFx0XHRcdHZhbHVlID0gdmFsdWUudG9JU09TdHJpbmcoKTtcblx0XHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdFx0XHR0aGlzLm9ialt0aGlzLnByb3BlcnR5XSA9IHZhbHVlO1xuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH0uYmluZCh0aGlzKSApO1xuXHRcdFx0XHR9XG5cdFx0XHRcdGVsc2Uge1xuXHRcdFx0XHRcdGNvbi50ZXh0Q29udGVudCA9IHRoaXMuaTE4bi5mb3JtYXQoIHRoaXMub2JqWyB0aGlzLnByb3BlcnR5IF0sIHtkYXRlOiB0cnVlfSApO1xuXHRcdFx0XHR9XG5cdFx0XHRcdGJyZWFrO1xuXG5cdFx0XHRjYXNlICdkb3VibGUnOlxuXHRcdFx0Y2FzZSAnbnVtYmVyJzpcblx0XHRcdGNhc2UgJ2N1cnJlbmN5Jzpcblx0XHRcdGNhc2UgJ3BlcmNlbnQnOlxuXHRcdFx0XHRsZXQgb3B0cyA9IHt9O1xuXHRcdFx0XHRpZiggdGhpcy5tZC5zY2FsZSAhPSB1bmRlZmluZWQgJiYgdGhpcy5tZC5zY2FsZSA+PSAwICkge1xuXHRcdFx0XHRcdG9wdHMubWluaW11bUZyYWN0aW9uRGlnaXRzID0gdGhpcy5tZC5zY2FsZTtcblx0XHRcdFx0XHRvcHRzLm1heG1maW11bUZyYWN0aW9uRGlnaXRzID0gdGhpcy5tZC5zY2FsZTtcblx0XHRcdFx0fVxuXG5cdFx0XHRcdGlmKCB0eXBlID09PSAnY3VycmVuY3knICkge1xuXHRcdFx0XHRcdG9wdHMuc3R5bGUgPSAnY3VycmVuY3knO1xuXHRcdFx0XHRcdG9wdHMuY3VycmVuY3kgPSAnVVNEJzsgIC8vIFRPRE86IHVwZGF0ZVxuXHRcdFx0XHR9XG5cblx0XHRcdFx0bGV0IGZWYWx1ZSA9IHRoaXMuaTE4bi5mb3JtYXQoIHRoaXMub2JqWyB0aGlzLnByb3BlcnR5IF0sIG9wdHMgKTtcblx0XHRcdFx0aWYoIHRoaXMuZWRpdGluZyApIHtcblx0XHRcdFx0XHRlbCA9IHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoIElOUFVULCAndmFsdWUnLCBmVmFsdWUgKTtcblx0XHRcdFx0XHRlbC5hZGRFdmVudExpc3RlbmVyKCAnYmluZC12YWx1ZS1jaGFuZ2VkJywgZnVuY3Rpb24oZSkge1xuXHRcdFx0XHRcdFx0bGV0IG51bSA9IGUuZGV0YWlsLnZhbHVlID09ICcnID8gJycgOiBwYXJzZUZsb2F0KCBlLmRldGFpbC52YWx1ZSApOyAgLy8gVE9ETzogc3RyaWN0ZXIgcGFyc2luZyAoZS5nLiA0NWFxayA9PiA0NSlcblx0XHRcdFx0XHRcdGlmKCB0aGlzLm9iaiAmJiB0aGlzLnByb3BlcnR5ICkge1xuXHRcdFx0XHRcdFx0XHR0aGlzLm9ialt0aGlzLnByb3BlcnR5XSA9IG51bTtcblx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHR9LmJpbmQodGhpcykgKTtcblx0XHRcdFx0fVxuXHRcdFx0XHRlbHNlIHtcblx0XHRcdFx0XHRjb24udGV4dENvbnRlbnQgPSBmVmFsdWU7XG5cdFx0XHRcdH1cblx0XHRcdFx0YnJlYWs7XG5cblx0XHRcdGNhc2UgJ2F1dG9udW1iZXInOlxuXHRcdFx0XHRjb24udGV4dENvbnRlbnQgPSB0aGlzLm9ialt0aGlzLnByb3BlcnR5XTtcblx0XHRcdFx0YnJlYWs7XG5cblx0XHRcdGNhc2UgJ3JlZmVyZW5jZSc6XG5cdFx0XHRcdGxldCBwb3MgPSB0aGlzLnByb3BlcnR5Lmxhc3RJbmRleE9mKCBTRl9SRUZfU1VGRklYICk7XG5cdFx0XHRcdGxldCByZWZPYmogPSBwb3MgPj0gMCA/IHRoaXMucHJvcGVydHkuc3Vic3RyaW5nKCAwLCBwb3MgKSA6ICh0aGlzLnByb3BlcnR5Lmxhc3RJbmRleE9mKCdfX2MnKSA+PSAwID8gdGhpcy5wcm9wZXJ0eS5yZXBsYWNlKCdfX2MnLCAnX19yJykgOiBudWxsKTtcblxuXHRcdFx0XHRsZXQgcmVmZXJlbmNlSWQgPSB0aGlzLm9ialt0aGlzLnByb3BlcnR5XTtcblx0XHRcdFx0bGV0IHJlZlR5cGUgPSB0aGlzLm9ialtyZWZPYmpdID8gdGhpcy5vYmpbcmVmT2JqXS5hdHRyaWJ1dGVzLnR5cGUgOiBudWxsO1xuXG5cdFx0XHRcdGlmKCByZWZPYmogJiYgdGhpcy5vYmpbcmVmT2JqXSAmJiB0aGlzLnJlZk9iamVjdHMgJiYgcmVmVHlwZSAmJiB0aGlzLnJlZk9iamVjdHNbIHJlZlR5cGUgXSApIHtcblx0XHRcdFx0XHRsZXQgbmFtZVByb3AgPSB0aGlzLnJlZk9iamVjdHNbcmVmVHlwZV0ubmFtZUZpZWxkLm5hbWU7XG5cdFx0XHRcdFx0Y29uLnRleHRDb250ZW50ID0gdGhpcy5vYmpbIHJlZk9iaiBdWyBuYW1lUHJvcCBdO1xuXHRcdFx0XHR9XG5cdFx0XHRcdGlmIChjb24udGV4dENvbnRlbnQpIHtcblx0XHRcdFx0XHRjb24uY2xhc3NMaXN0LmFkZChcImxpbmtcIik7XG5cdFx0XHRcdH1cblx0XHRcdFx0Y29uLm5vZGUub25jbGljayA9IGZ1bmN0aW9uICgpIHtcblx0XHRcdFx0XHR3aW5kb3cub3Blbih3aW5kb3cubG9jYXRpb24ub3JpZ2luICsgJy8nICsgcmVmZXJlbmNlSWQpO1xuXHRcdFx0XHR9LmJpbmQodGhpcyk7XG5cblx0XHRcdFx0YnJlYWs7XG5cblx0XHRcdGNhc2UgJ3BpY2tsaXN0Jzpcblx0XHRcdFx0aWYoIHRoaXMuZWRpdGluZyApIHtcblx0XHRcdFx0XHRsZXQgbm9uZSA9ICF0aGlzLm1kLnJlcXVpcmVkID8gJy0tIE5vbmUgLS0nIDogJycsXG5cdFx0XHRcdFx0XHRsZW4gPSB0aGlzLm1kLnBpY2tsaXN0VmFsdWVzID8gdGhpcy5tZC5waWNrbGlzdFZhbHVlcy5sZW5ndGggOiAwLFxuXHRcdFx0XHRcdFx0aHRtbCA9ICc8c2VsZWN0PicgKyAobm9uZSA/ICc8b3B0aW9uIHZhbHVlPicgKyBub25lICsgJzwvb3B0aW9uPicgOiAnJyk7XG5cblx0XHRcdFx0XHRpZiggdGhpcy5tZC5kZWZhdWx0VmFsdWUgJiYgIXRoaXMub2JqLklkICkgLy8gc2V0IGRlZmF1bHQgdmFsdWUgZm9yIG5ld2x5IGNyZWF0ZWQgb2JqZWN0c1xuXHRcdFx0XHRcdFx0dGhpcy5vYmpbdGhpcy5wcm9wZXJ0eV0gPSB0aGlzLm1kLmRlZmF1bHRWYWx1ZTtcblxuXHRcdFx0XHRcdGZvciggbGV0IGk9MDsgaSA8IGxlbjsgaSsrICkge1xuXHRcdFx0XHRcdFx0bGV0IHNlbGVjdGVkID0gdGhpcy5vYmpbdGhpcy5wcm9wZXJ0eV0gPT09IHRoaXMubWQucGlja2xpc3RWYWx1ZXNbaV0udmFsdWUgPyB0cnVlIDogZmFsc2U7XG5cdFx0XHRcdFx0XHRodG1sICs9ICc8b3B0aW9uIHZhbHVlPVwiJyArIHRoaXMubWQucGlja2xpc3RWYWx1ZXNbaV0udmFsdWUgKyAnXCInICsgKHNlbGVjdGVkID8gJyBzZWxlY3RlZCcgOiAnJykgKyAnPicgKyB0aGlzLm1kLnBpY2tsaXN0VmFsdWVzW2ldLmxhYmVsICsgJzwvb3B0aW9uPic7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0aHRtbCArPSAnPC9zZWxlY3Q+Jztcblx0XHRcdFx0XHRlbCA9IHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoIGh0bWwgKTtcblxuXHRcdFx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdjaGFuZ2UnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdFx0XHRpZiggdGhpcy5vYmogJiYgdGhpcy5wcm9wZXJ0eSApXG5cdFx0XHRcdFx0XHRcdHRoaXMub2JqW3RoaXMucHJvcGVydHldID0gZWwudmFsdWUgPyBlbC52YWx1ZSA6IG51bGw7XG5cdFx0XHRcdFx0fS5iaW5kKHRoaXMpKTtcblx0XHRcdFx0fVxuXHRcdFx0XHRlbHNlIHtcblx0XHRcdFx0XHRjb24udGV4dENvbnRlbnQgPSB0aGlzLm9ialsgdGhpcy5wcm9wZXJ0eSBdO1xuXHRcdFx0XHR9XG5cdFx0XHRcdGJyZWFrO1xuXG5cdFx0XHRjYXNlICdzdHJpbmcnOlxuXHRcdFx0Y2FzZSAndGV4dGFyZWEnOlxuXHRcdFx0XHRpZiggdGhpcy5lZGl0aW5nICkge1xuXHRcdFx0XHRcdGlmKCB0aGlzLm1kLm1heExlbmd0aCA+IDI1NSB8fCB0aGlzLm1kLmZvcm1hdCA9PT0gJ211bHRpbGluZScgfHwgdHlwZSA9PT0gJ3RleHRhcmVhJyApIHtcblx0XHRcdFx0XHRcdGVsID0gdGhpcy5jcmVhdGVCYXNlRWxlbWVudCggVEVYVEFSRUEsICd2YWx1ZScgKTtcblx0XHRcdFx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdiaW5kLXZhbHVlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdFx0XHRcdGlmKCB0aGlzLm9iaiAmJiB0aGlzLnByb3BlcnR5IClcblx0XHRcdFx0XHRcdFx0XHR0aGlzLm9ialt0aGlzLnByb3BlcnR5XSA9IGUuZGV0YWlsLnZhbHVlID8gZS5kZXRhaWwudmFsdWUgOiBudWxsO1xuXHRcdFx0XHRcdFx0fS5iaW5kKHRoaXMpICk7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHRcdGVsc2Uge1xuXHRcdFx0XHRcdFx0bGV0IGVsID0gdGhpcy5jcmVhdGVCYXNlRWxlbWVudCggSU5QVVQsICd2YWx1ZScgKTtcblx0XHRcdFx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdiaW5kLXZhbHVlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdFx0XHRcdGlmKCB0aGlzLm9iaiAmJiB0aGlzLnByb3BlcnR5IClcblx0XHRcdFx0XHRcdFx0XHR0aGlzLm9ialt0aGlzLnByb3BlcnR5XSA9IGUuZGV0YWlsLnZhbHVlID8gZS5kZXRhaWwudmFsdWUgOiBudWxsO1xuXHRcdFx0XHRcdFx0fS5iaW5kKHRoaXMpICk7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHRcdGVsc2Uge1xuXHRcdFx0XHRcdGNvbi50ZXh0Q29udGVudCA9IHRoaXMub2JqWyB0aGlzLnByb3BlcnR5IF07XG5cdFx0XHRcdH1cblx0XHRcdFx0YnJlYWs7XG5cdFx0fVxuXHR9XG5cblx0Y3JlYXRlQmFzZUVsZW1lbnQoIGh0bWwsIHZhbHVlUHJvcCwgdmFsdWUgKSB7XG5cdFx0UG9seW1lci5kb20odGhpcy4kLmYpLmlubmVySFRNTCA9IGh0bWw7XG5cdFx0bGV0IGVsID0gdGhpcy4kJCgnI2YgPiAqJyk7XG5cblx0XHRpZiggdmFsdWUgPT0gdW5kZWZpbmVkICYmIHZhbHVlUHJvcCAmJiB0aGlzLnByb3BlcnR5ICkge1xuXHRcdFx0aWYgKCB0aGlzLm9ialt0aGlzLnByb3BlcnR5XSApIHtcblx0XHRcdFx0dmFsdWUgPSB0aGlzLm9ialt0aGlzLnByb3BlcnR5XTtcblx0XHRcdH0gZWxzZSBpZiAoIHZhbHVlUHJvcCA9PSAnc2VsZWN0ZWREYXRlJyAmJiB0aGlzLm9ialt0aGlzLnByb3BlcnR5XSA9PSB1bmRlZmluZWQgKSB7XG5cdFx0XHRcdC8vIEZvciBibGFuayB2YWx1ZXMgb24gRGF0ZXBpY2tlciwgd2UgY2xlYXIgdGhlIGRhdGUgdmFsdWVzIHNvIGl0IHJlbmRlcnMgYmxhbmtcblx0XHRcdFx0ZWxbJ2lzQmxhbmsnXSA9IHRydWU7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0Ly8gc2V0IHZhbHVlIGlmIHRoZXJlIGlzIG9uZVxuXHRcdGlmKCB2YWx1ZSApXG5cdFx0XHRlbFt2YWx1ZVByb3BdID0gdmFsdWU7XG5cblx0XHRyZXR1cm4gZWw7XG5cdH1cblxuXHQvKiBTZXRzIHRoZSBkZWZhdWx0IHZhbHVlIG9mIHRoZSBmaWVsZCB0byBiZSB0aGUgdmFsdWUgKGluaXRpYWxseSkgaWYgbm8gdmFsdWUgZXhpc3RzICovXG5cdHNldERlZmF1bHRWYWx1ZSggdiApIHtcblx0XHRpZiggdGhpcy52YWx1ZSA9PSB1bmRlZmluZWQgKVxuXHRcdFx0dGhpcy52YWx1ZSA9IHY7XG5cdH1cbn1cblxuUG9seW1lciggRmllbGQgKTsiXX0=
'use strict';

System.register('common/forms/sb-pagination/Pagination.js', [], function (_export, _context) {
	var _createClass, Pagination;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('Pagination', Pagination = function () {
				function Pagination() {
					_classCallCheck(this, Pagination);
				}

				_createClass(Pagination, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-pagination';
						this.properties = {
							pageIndex: {
								type: Number,
								value: 0
							},
							pageSize: Number,
							numItems: Number };
					}
				}, {
					key: 'next',
					value: function next() {
						this.pageIndex++;
						this.firePageEvent('next');
					}
				}, {
					key: 'previous',
					value: function previous() {
						this.pageIndex--;
						this.firePageEvent('previous');
					}
				}, {
					key: 'setNumberOfPages',
					value: function setNumberOfPages() {
						this.numPages = Math.ceil(this.numItems / this.pageSize);
					}
				}, {
					key: 'setPageWindow',
					value: function setPageWindow() {
						var start = this.pageIndex * this.pageSize;
						var end = start + this.pageSize;
						if (end >= this.numItems) end = this.numItems;
						this.pageWindow = [start, end];
					}
				}, {
					key: 'setNextDisabled',
					value: function setNextDisabled() {
						this.nextDisabled = this.pageIndex === this.numPages - 1;
					}
				}, {
					key: 'setPreviousDisabled',
					value: function setPreviousDisabled() {
						this.previousDisabled = this.pageIndex === 0;
					}
				}, {
					key: 'setPageNum',
					value: function setPageNum() {
						this.pageNum = this.pageIndex + 1;
					}
				}, {
					key: 'firePageEvent',
					value: function firePageEvent(direction) {
						this.fire('pagination-changed', { direction: direction, page: this.pageNum, index: this.pageIndex, window: this.pageWindow });
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['setNumberOfPages(pageSize, numItems)', 'setPageWindow(pageIndex, pageSize, numItems)', 'setNextDisabled(pageIndex, numPages)', 'setPreviousDisabled(pageIndex)', 'setPageNum(pageIndex)'];
					}
				}]);

				return Pagination;
			}());

			_export('Pagination', Pagination);

			Polymer(Pagination);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlBhZ2luYXRpb24uanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7eUJBQWE7Ozs7Ozs7c0NBRUs7QUFDaEIsV0FBSyxFQUFMLEdBQVUsZUFBVixDQURnQjtBQUVoQixXQUFLLFVBQUwsR0FBa0I7QUFDakIsa0JBQVc7QUFDVixjQUFNLE1BQU47QUFDQSxlQUFPLENBQVA7UUFGRDtBQUlBLGlCQUFVLE1BQVY7QUFDQSxpQkFBVSxNQUFWLEVBTkQsQ0FGZ0I7Ozs7NEJBZ0JWO0FBQ04sV0FBSyxTQUFMLEdBRE07QUFFTixXQUFLLGFBQUwsQ0FBbUIsTUFBbkIsRUFGTTs7OztnQ0FLSTtBQUNWLFdBQUssU0FBTCxHQURVO0FBRVYsV0FBSyxhQUFMLENBQW1CLFVBQW5CLEVBRlU7Ozs7d0NBS1E7QUFDbEIsV0FBSyxRQUFMLEdBQWdCLEtBQUssSUFBTCxDQUFVLEtBQUssUUFBTCxHQUFnQixLQUFLLFFBQUwsQ0FBMUMsQ0FEa0I7Ozs7cUNBSUg7QUFDZixVQUFJLFFBQVEsS0FBSyxTQUFMLEdBQWlCLEtBQUssUUFBTCxDQURkO0FBRWYsVUFBSSxNQUFNLFFBQVEsS0FBSyxRQUFMLENBRkg7QUFHZixVQUFHLE9BQU8sS0FBSyxRQUFMLEVBQ1QsTUFBTSxLQUFLLFFBQUwsQ0FEUDtBQUVBLFdBQUssVUFBTCxHQUFrQixDQUFDLEtBQUQsRUFBUSxHQUFSLENBQWxCLENBTGU7Ozs7dUNBUUU7QUFDakIsV0FBSyxZQUFMLEdBQW9CLEtBQUssU0FBTCxLQUFvQixLQUFLLFFBQUwsR0FBZ0IsQ0FBaEIsQ0FEdkI7Ozs7MkNBSUk7QUFDckIsV0FBSyxnQkFBTCxHQUF3QixLQUFLLFNBQUwsS0FBbUIsQ0FBbkIsQ0FESDs7OztrQ0FJVDtBQUNaLFdBQUssT0FBTCxHQUFlLEtBQUssU0FBTCxHQUFpQixDQUFqQixDQURIOzs7O21DQUlDLFdBQVc7QUFDeEIsV0FBSyxJQUFMLENBQVUsb0JBQVYsRUFBZ0MsRUFBQyxXQUFXLFNBQVgsRUFBc0IsTUFBTSxLQUFLLE9BQUwsRUFBYyxPQUFPLEtBQUssU0FBTCxFQUFnQixRQUFRLEtBQUssVUFBTCxFQUExRyxFQUR3Qjs7Ozt5QkF0Q1Q7QUFDZixhQUFPLENBQUMsc0NBQUQsRUFBeUMsOENBQXpDLEVBQXlGLHNDQUF6RixFQUFpSSxnQ0FBakksRUFBbUssdUJBQW5LLENBQVAsQ0FEZTs7OztXQWRKOzs7OztBQXlEYixXQUFRLFVBQVIiLCJmaWxlIjoiUGFnaW5hdGlvbi5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBQYWdpbmF0aW9uIHtcblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLXBhZ2luYXRpb24nO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdHBhZ2VJbmRleDogeyAvLyB0aGUgY3VycmVudCBwYWdlIHRoZSBwYWdpbmF0aW9uIHdpZGdldCBpcyBvblxuXHRcdFx0XHR0eXBlOiBOdW1iZXIsXG5cdFx0XHRcdHZhbHVlOiAwXG5cdFx0XHR9LFxuXHRcdFx0cGFnZVNpemU6IE51bWJlciwgLy8gdGhlIG51bWJlciBvZiBpdGVtcyBwZXIgcGFnZVxuXHRcdFx0bnVtSXRlbXM6IE51bWJlciAvLyB0aGUgbnVtYmVyIG9mIHRvdGFsIGl0ZW1zXG5cdFx0fVxuXHR9XG5cblx0Z2V0IG9ic2VydmVycygpIHtcblx0XHRyZXR1cm4gWydzZXROdW1iZXJPZlBhZ2VzKHBhZ2VTaXplLCBudW1JdGVtcyknLCAnc2V0UGFnZVdpbmRvdyhwYWdlSW5kZXgsIHBhZ2VTaXplLCBudW1JdGVtcyknLCAnc2V0TmV4dERpc2FibGVkKHBhZ2VJbmRleCwgbnVtUGFnZXMpJywgJ3NldFByZXZpb3VzRGlzYWJsZWQocGFnZUluZGV4KScsICdzZXRQYWdlTnVtKHBhZ2VJbmRleCknXVxuXHR9XG5cblx0bmV4dCgpIHtcblx0XHR0aGlzLnBhZ2VJbmRleCsrO1xuXHRcdHRoaXMuZmlyZVBhZ2VFdmVudCgnbmV4dCcpO1xuXHR9XG5cblx0cHJldmlvdXMoKSB7XG5cdFx0dGhpcy5wYWdlSW5kZXgtLTtcblx0XHR0aGlzLmZpcmVQYWdlRXZlbnQoJ3ByZXZpb3VzJyk7XG5cdH1cblxuXHRzZXROdW1iZXJPZlBhZ2VzKCkge1xuXHRcdHRoaXMubnVtUGFnZXMgPSBNYXRoLmNlaWwodGhpcy5udW1JdGVtcyAvIHRoaXMucGFnZVNpemUpO1xuXHR9XG5cblx0c2V0UGFnZVdpbmRvdygpIHtcblx0XHRsZXQgc3RhcnQgPSB0aGlzLnBhZ2VJbmRleCAqIHRoaXMucGFnZVNpemU7XG5cdFx0bGV0IGVuZCA9IHN0YXJ0ICsgdGhpcy5wYWdlU2l6ZTtcblx0XHRpZihlbmQgPj0gdGhpcy5udW1JdGVtcylcblx0XHRcdGVuZCA9IHRoaXMubnVtSXRlbXM7XG5cdFx0dGhpcy5wYWdlV2luZG93ID0gW3N0YXJ0LCBlbmRdO1xuXHR9XG5cblx0c2V0TmV4dERpc2FibGVkKCkge1xuXHRcdHRoaXMubmV4dERpc2FibGVkID0gdGhpcy5wYWdlSW5kZXggPT09ICh0aGlzLm51bVBhZ2VzIC0gMSk7XG5cdH1cblxuXHRzZXRQcmV2aW91c0Rpc2FibGVkKCkge1xuXHRcdHRoaXMucHJldmlvdXNEaXNhYmxlZCA9IHRoaXMucGFnZUluZGV4ID09PSAwO1xuXHR9XG5cblx0c2V0UGFnZU51bSgpIHtcblx0XHR0aGlzLnBhZ2VOdW0gPSB0aGlzLnBhZ2VJbmRleCArIDE7XG5cdH1cblxuXHRmaXJlUGFnZUV2ZW50KGRpcmVjdGlvbikge1xuXHRcdHRoaXMuZmlyZSgncGFnaW5hdGlvbi1jaGFuZ2VkJywge2RpcmVjdGlvbjogZGlyZWN0aW9uLCBwYWdlOiB0aGlzLnBhZ2VOdW0sIGluZGV4OiB0aGlzLnBhZ2VJbmRleCwgd2luZG93OiB0aGlzLnBhZ2VXaW5kb3d9KTtcblx0fVxufVxuXG5Qb2x5bWVyKFBhZ2luYXRpb24pOyJdfQ==
'use strict';

System.register('common/forms/sb-typeahead/Typeahead.js', [], function (_export, _context) {
	var _createClass, wildCards, resultLimit, Typeahead;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			wildCards = new RegExp('[*_%]+');
			resultLimit = 10;

			_export('Typeahead', Typeahead = function () {
				function Typeahead() {
					_classCallCheck(this, Typeahead);
				}

				_createClass(Typeahead, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-typeahead';

						this.properties = {
							items: {
								type: Array
							},
							selectedItem: {
								type: Object
							},
							itemsList: {
								type: Array,
								observer: 'itemsListChanged'
							},
							labels: {
								type: String,
								value: function value() {
									return this.getAttribute('labels') || ['label'];
								}
							},
							labelValue: {
								type: String
							},
							value: {
								type: String
							},
							delimiter: {
								type: String
							},
							savedLabelValue: {
								type: String
							},
							invalidLabel: {
								type: Boolean,
								value: function value() {
									return false;
								}
							},
							hasList: {
								type: Boolean,
								value: function value() {
									return false;
								}
							},
							hasLabel: {
								type: Boolean,
								value: function value() {
									return false;
								}
							},
							optionIndex: {
								type: Number,
								value: 0
							}
						};

						this.observers = ['itemsChanged(items, selectedItem, value)'];
					}
				}, {
					key: 'itemsChanged',
					value: function itemsChanged() {
						this.itemsList = this.items;
						var len = this.items.length;
						if (len && this.selectedItem) {
							this.valueAttr = this.value ? this.value : 'value';
							this.$.itemLabel.value = this.selectedItem[this.valueAttr];
						}
					}
				}, {
					key: 'itemsListChanged',
					value: function itemsListChanged() {
						Polymer.dom.flush();

						var options = this.$.selector.querySelectorAll('.option'),
						    numOfOptions = options.length,
						    numOfLabels = this.labels.length;
						if (numOfOptions > 0) {
							options[0].setAttribute('selected', '');
							for (var i = 0; i < numOfOptions; i++) {
								var item = this.itemsList[i],
								    html = '';
								for (var j = 0; j < numOfLabels; j++) {
									var label = '_' + this.labels[j],
									    delimiter = j === 0 ? '' : this.delimiter,
									    labelValue = item[label] ? item[label] : item[this.labels[j]];
									html += delimiter + labelValue;
								}
								options[i].innerHTML = html;
							}
						}
					}
				}, {
					key: 'getSelectedItemValue',
					value: function getSelectedItemValue() {
						return this.selectedItem ? this.selectedItem[this.valueAttr] : '';
					}
				}, {
					key: 'revert',
					value: function revert() {
						this.labelValue = this.selectedItem[this.valueAttr];
						this.$.itemLabel.blur();
					}
				}, {
					key: 'clear',
					value: function clear() {
						this.labelValue = '';
						this.$.itemLabel.focus();
						this.hide();
					}
				}, {
					key: 'hide',
					value: function hide() {
						this.hasList = false;
						this.hasLabel = false;
						this.invalidLabel = false;
						this.optionIndex = 0;
					}
				}, {
					key: 'cloneItem',
					value: function cloneItem(item) {
						var clone = {},
						    keys = Object.keys(item),
						    len = keys.length;
						for (var i = 0; i < len; i++) {
							var key = keys[i];
							clone[key] = item[key];
						}
						return clone;
					}
				}, {
					key: 'updateItem',
					value: function updateItem(item) {
						var keys = Object.keys(this.selectedItem),
						    len = keys.length;
						for (var i = 0; i < len; i++) {
							var key = keys[i];
							this.selectedItem[key] = item[key];
						}

						var labelValue = '',
						    numOfLabels = this.labels.length;
						for (var j = 0; j < numOfLabels; j++) {
							var delimiter = j === 0 ? '' : this.delimiter;
							labelValue += delimiter + this.selectedItem[this.labels[j]];
						}
						this.labelValue = labelValue;
					}
				}, {
					key: 'submitItem',
					value: function submitItem(e) {
						this.updateItem(e.model.item);
						this.hide();
					}
				}, {
					key: 'selectAdjacentItem',
					value: function selectAdjacentItem(keyCode) {
						var len = this.itemsList.length;
						if (this.optionIndex >= 0 && this.optionIndex < len) {
							this.$.selector.children[this.optionIndex].removeAttribute('selected');
							if (keyCode === 38) {
								this.optionIndex = this.optionIndex === 0 ? len - 1 : this.optionIndex - 1;
							} else if (keyCode === 40) {
								this.optionIndex = this.optionIndex === len - 1 ? 0 : this.optionIndex + 1;
							}
							this.$.selector.children[this.optionIndex].setAttribute('selected', '');
						}
					}
				}, {
					key: 'updateItemsList',
					value: function updateItemsList() {
						var result = [],
						    highlighted = false;
						if (this.labelValue) {
							var searchLabel = this.labelValue.replace(wildCards, '.+'),
							    searchText = new RegExp(searchLabel, 'i');

							var numOfItems = this.items.length,
							    numOfLabels = this.labels.length;
							for (var i = 0; i < numOfItems; i++) {
								var item = this.items[i],
								    clone = this.cloneItem(item);
								for (var j = 0; j < numOfLabels; j++) {
									var itemLabel = item[this.labels[j]];
									if (searchText.test(itemLabel)) {
										var label = '_' + this.labels[j];
										clone[label] = itemLabel.replace(searchText, '<span style="font-weight:bold;">$&</span>');
										highlighted = true;
									}
								}
								if (highlighted) {
									result.push(clone);
									highlighted = false;
								}
								if (result.length >= resultLimit) {
									break;
								}
							}
						}
						return result;
					}
				}, {
					key: 'suggest',
					value: function suggest(e) {
						switch (e.keyCode) {
							case 13:
								this.updateItem(this.itemsList[this.optionIndex]);
								this.$.itemLabel.blur();
								this.hide();
								break;
							case 27:
								this.revert();
								this.hide();
								break;
							case 38:
							case 40:
								this.selectAdjacentItem(e.keyCode);
								break;
							default:
								this.invalidLabel = false;
								if (this.labelValue) {
									this.hasList = true;
									this.hasLabel = true;
								}

								this.itemsList = this.updateItemsList();
								if (this.itemsList.length === 0) {
									if (this.labelValue) {
										this.invalidLabel = true;
									} else {
										this.hasLabel = false;
									}
									this.hasList = false;
								}
								break;
						}
					}
				}]);

				return Typeahead;
			}());

			_export('Typeahead', Typeahead);

			Polymer(Typeahead);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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LmpzIiwic291cmNlc0NvbnRlbnQiOlsiXG5jb25zdCB3aWxkQ2FyZHMgPSBuZXcgUmVnRXhwKCdbKl8lXSsnKTtcbmxldCByZXN1bHRMaW1pdCA9IDEwOyAvLyBmaXJzdCAxMCBtYXRjaGluZyBpdGVtc1xuXG5cbmV4cG9ydCBjbGFzcyBUeXBlYWhlYWQge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItdHlwZWFoZWFkJztcblxuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdGl0ZW1zOiB7XG5cdFx0XHRcdHR5cGU6IEFycmF5XG5cdFx0XHR9LFxuXHRcdFx0c2VsZWN0ZWRJdGVtOntcblx0XHRcdFx0dHlwZTogT2JqZWN0XG5cdFx0XHR9LFxuXHRcdFx0aXRlbXNMaXN0OiB7XG5cdFx0XHRcdHR5cGU6IEFycmF5LFxuXHRcdFx0XHRvYnNlcnZlcjogJ2l0ZW1zTGlzdENoYW5nZWQnXG5cdFx0XHR9LFxuXHRcdFx0bGFiZWxzOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uICgpIHsgcmV0dXJuIHRoaXMuZ2V0QXR0cmlidXRlKCdsYWJlbHMnKSB8fCBbJ2xhYmVsJ107IH1cblx0XHRcdH0sXG5cdFx0XHRsYWJlbFZhbHVlOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZ1xuXHRcdFx0fSxcblx0XHRcdHZhbHVlOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZ1xuXHRcdFx0fSxcblx0XHRcdGRlbGltaXRlcjoge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHR9LFxuXHRcdFx0c2F2ZWRMYWJlbFZhbHVlOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZ1xuXHRcdFx0fSxcblx0XHRcdGludmFsaWRMYWJlbDoge1xuXHRcdFx0XHR0eXBlOiBCb29sZWFuLFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiBmYWxzZTsgfSxcblx0XHRcdH0sXG5cdFx0XHRoYXNMaXN0OiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIGZhbHNlOyB9LFxuXHRcdFx0fSxcblx0XHRcdGhhc0xhYmVsOiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIGZhbHNlOyB9XG5cdFx0XHR9LFxuXHRcdFx0b3B0aW9uSW5kZXg6IHtcblx0XHRcdFx0dHlwZTogTnVtYmVyLFxuXHRcdFx0XHR2YWx1ZTogMFxuXHRcdFx0fVxuXHRcdH07XG5cblx0XHR0aGlzLm9ic2VydmVycyA9IFsnaXRlbXNDaGFuZ2VkKGl0ZW1zLCBzZWxlY3RlZEl0ZW0sIHZhbHVlKSddO1xuXHR9XG5cblx0aXRlbXNDaGFuZ2VkKCkge1xuXHRcdHRoaXMuaXRlbXNMaXN0ID0gdGhpcy5pdGVtcztcblx0XHRsZXQgbGVuID0gdGhpcy5pdGVtcy5sZW5ndGg7XG5cdFx0aWYoIGxlbiAmJiB0aGlzLnNlbGVjdGVkSXRlbSApIHtcblx0XHRcdC8vIHNldCBpbml0aWFsIGxhYmVsIHRvIHNlbGVjdGVkIGl0ZW0gdmFsdWVcblx0XHRcdHRoaXMudmFsdWVBdHRyID0gdGhpcy52YWx1ZSA/IHRoaXMudmFsdWUgOiAndmFsdWUnO1xuXHRcdFx0dGhpcy4kLml0ZW1MYWJlbC52YWx1ZSA9IHRoaXMuc2VsZWN0ZWRJdGVtW3RoaXMudmFsdWVBdHRyXTtcblx0XHR9XG5cdH1cblxuXHRpdGVtc0xpc3RDaGFuZ2VkKCkge1xuXHRcdFBvbHltZXIuZG9tLmZsdXNoKCk7IC8vIG5lZWQgdG8gdXBkYXRlIERPTSBiZWZvcmUgdXBkYXRpbmcgaW5uZXJIVE1MIG9mIHRoZSBuZXcgZWxlbWVudHMgb24gdGhlIGxpc3RcblxuXHRcdGxldCBvcHRpb25zID0gdGhpcy4kLnNlbGVjdG9yLnF1ZXJ5U2VsZWN0b3JBbGwoJy5vcHRpb24nKSxcblx0XHRcdG51bU9mT3B0aW9ucyA9IG9wdGlvbnMubGVuZ3RoLFxuXHRcdFx0bnVtT2ZMYWJlbHMgPSB0aGlzLmxhYmVscy5sZW5ndGg7XG5cdFx0aWYgKCBudW1PZk9wdGlvbnMgPiAwICkge1xuXHRcdFx0b3B0aW9uc1swXS5zZXRBdHRyaWJ1dGUoICdzZWxlY3RlZCcsICcnICk7IC8vaGlnaGxpZ2h0IHRoZSBmaXJzdCBvcHRpb25cblx0XHRcdGZvciAoIGxldCBpID0gMDsgaSA8IG51bU9mT3B0aW9uczsgaSsrICkgeyAvLyBoaWdobGlnaHQgbWF0Y2hpbmcgY2hhcmFjdGVycyBpbiB0aGUgbGFiZWxcblx0XHRcdFx0bGV0IGl0ZW0gPSB0aGlzLml0ZW1zTGlzdFtpXSxcblx0XHRcdFx0XHRodG1sID0gJyc7XG5cdFx0XHRcdGZvciAoIGxldCBqPTA7IGogPCBudW1PZkxhYmVsczsgaisrKSB7XG5cdFx0XHRcdFx0bGV0IGxhYmVsID0gJ18nICsgdGhpcy5sYWJlbHNbal0sXG5cdFx0XHRcdFx0XHRkZWxpbWl0ZXIgPSAoIGo9PT0wICkgPyAnJyA6IHRoaXMuZGVsaW1pdGVyLFxuXHRcdFx0XHRcdFx0bGFiZWxWYWx1ZSA9IGl0ZW1bbGFiZWxdID8gaXRlbVtsYWJlbF0gOiBpdGVtW3RoaXMubGFiZWxzW2pdXTtcblx0XHRcdFx0XHRodG1sICs9IGRlbGltaXRlciArIGxhYmVsVmFsdWU7XG5cdFx0XHRcdH1cblx0XHRcdFx0b3B0aW9uc1tpXS5pbm5lckhUTUwgPSBodG1sO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdGdldFNlbGVjdGVkSXRlbVZhbHVlKCkge1xuXHRcdHJldHVybiB0aGlzLnNlbGVjdGVkSXRlbSA/IHRoaXMuc2VsZWN0ZWRJdGVtW3RoaXMudmFsdWVBdHRyXSA6ICcnO1xuXHR9XG5cblx0cmV2ZXJ0KCkge1xuXHRcdHRoaXMubGFiZWxWYWx1ZSA9IHRoaXMuc2VsZWN0ZWRJdGVtW3RoaXMudmFsdWVBdHRyXTtcblx0XHR0aGlzLiQuaXRlbUxhYmVsLmJsdXIoKTtcblx0fVxuXG5cdGNsZWFyKCkge1xuXHRcdHRoaXMubGFiZWxWYWx1ZSA9ICcnO1xuXHRcdHRoaXMuJC5pdGVtTGFiZWwuZm9jdXMoKTtcblx0XHR0aGlzLmhpZGUoKTtcblx0fVxuXG5cdGhpZGUoKSB7XG5cdFx0dGhpcy5oYXNMaXN0ID0gZmFsc2U7XG5cdFx0dGhpcy5oYXNMYWJlbCA9IGZhbHNlO1xuXHRcdHRoaXMuaW52YWxpZExhYmVsID0gZmFsc2U7XG5cdFx0dGhpcy5vcHRpb25JbmRleCA9IDA7XG5cdH1cblxuXHRjbG9uZUl0ZW0oaXRlbSkge1xuXHRcdGxldCBjbG9uZSA9IHt9LFxuXHRcdFx0a2V5cyA9IE9iamVjdC5rZXlzKGl0ZW0pLFxuXHRcdFx0bGVuID0ga2V5cy5sZW5ndGg7XG5cdFx0Zm9yICggbGV0IGkgPSAwOyBpIDwgbGVuOyBpKysgKSB7XG5cdFx0XHRsZXQga2V5ID0ga2V5c1tpXTtcblx0XHRcdGNsb25lW2tleV0gPSBpdGVtW2tleV07XG5cdFx0fVxuXHRcdHJldHVybiBjbG9uZTtcblx0fVxuXG5cdHVwZGF0ZUl0ZW0oaXRlbSkge1xuXHRcdC8vdXBkYXRlIHNlbGVjdGVkSXRlbVxuXHRcdGxldCBrZXlzID0gT2JqZWN0LmtleXModGhpcy5zZWxlY3RlZEl0ZW0pLFxuXHRcdFx0bGVuID0ga2V5cy5sZW5ndGg7XG5cdFx0Zm9yICggbGV0IGk9MDsgaSA8IGxlbjsgaSsrKSB7XG5cdFx0XHRsZXQga2V5ID0ga2V5c1tpXTtcblx0XHRcdHRoaXMuc2VsZWN0ZWRJdGVtW2tleV0gPSBpdGVtW2tleV07XG5cdFx0fVxuXG5cdFx0Ly91cGRhdGUgdmFsdWUgaW4gdGhlIGlucHV0IGJveFxuXHRcdGxldCBsYWJlbFZhbHVlID0gJycsXG5cdFx0XHRudW1PZkxhYmVscyA9IHRoaXMubGFiZWxzLmxlbmd0aDtcblx0XHRmb3IgKCBsZXQgaj0wOyBqIDwgbnVtT2ZMYWJlbHM7IGorKykge1xuXHRcdFx0bGV0IGRlbGltaXRlciA9ICggaj09PTAgKSA/ICcnIDogdGhpcy5kZWxpbWl0ZXI7XG5cdFx0XHRsYWJlbFZhbHVlICs9IGRlbGltaXRlciArIHRoaXMuc2VsZWN0ZWRJdGVtW3RoaXMubGFiZWxzW2pdXTtcblx0XHR9XG5cdFx0dGhpcy5sYWJlbFZhbHVlID0gbGFiZWxWYWx1ZTtcblx0fVxuXG5cdHN1Ym1pdEl0ZW0oZSkge1xuXHRcdHRoaXMudXBkYXRlSXRlbSggZS5tb2RlbC5pdGVtICk7XG5cdFx0dGhpcy5oaWRlKCk7XG5cdH1cblxuXHRzZWxlY3RBZGphY2VudEl0ZW0oa2V5Q29kZSkge1xuXHRcdGxldCBsZW4gPSB0aGlzLml0ZW1zTGlzdC5sZW5ndGg7XG5cdFx0aWYgKCB0aGlzLm9wdGlvbkluZGV4ID49IDAgJiYgdGhpcy5vcHRpb25JbmRleCA8IGxlbiApIHtcblx0XHRcdHRoaXMuJC5zZWxlY3Rvci5jaGlsZHJlblt0aGlzLm9wdGlvbkluZGV4XS5yZW1vdmVBdHRyaWJ1dGUoICdzZWxlY3RlZCcgKTtcblx0XHRcdGlmICgga2V5Q29kZSA9PT0gMzggKSB7XG5cdFx0XHRcdHRoaXMub3B0aW9uSW5kZXggPSB0aGlzLm9wdGlvbkluZGV4ID09PSAwID8gbGVuIC0gMSA6IHRoaXMub3B0aW9uSW5kZXggLSAxO1xuXHRcdFx0fSBlbHNlIGlmICgga2V5Q29kZSA9PT0gNDAgKSB7XG5cdFx0XHRcdHRoaXMub3B0aW9uSW5kZXggPSB0aGlzLm9wdGlvbkluZGV4ID09PSBsZW4gLSAxID8gMCA6IHRoaXMub3B0aW9uSW5kZXggKyAxO1xuXHRcdFx0fVxuXHRcdFx0dGhpcy4kLnNlbGVjdG9yLmNoaWxkcmVuW3RoaXMub3B0aW9uSW5kZXhdLnNldEF0dHJpYnV0ZSggJ3NlbGVjdGVkJywgJycgKTtcblx0XHR9XG5cdH1cblxuXHR1cGRhdGVJdGVtc0xpc3QoKSB7XG5cdFx0bGV0IHJlc3VsdCA9IFtdLFxuXHRcdFx0aGlnaGxpZ2h0ZWQgPSBmYWxzZTtcblx0XHRpZiAoIHRoaXMubGFiZWxWYWx1ZSApIHtcblx0XHRcdGxldCBzZWFyY2hMYWJlbCA9IHRoaXMubGFiZWxWYWx1ZS5yZXBsYWNlKCB3aWxkQ2FyZHMsICcuKycgKSwgLy9jYXB0dXJlIHdpbGQgY2FyZCBjaGFyYWN0ZXJzICgxIG9yIG1vcmUpXG5cdFx0XHRcdHNlYXJjaFRleHQgPSBuZXcgUmVnRXhwKCBzZWFyY2hMYWJlbCwgJ2knICk7XG5cblx0XHRcdGxldCBudW1PZkl0ZW1zID0gdGhpcy5pdGVtcy5sZW5ndGgsXG5cdFx0XHRcdG51bU9mTGFiZWxzID0gdGhpcy5sYWJlbHMubGVuZ3RoO1xuXHRcdFx0Zm9yICggbGV0IGkgPSAwOyBpIDwgbnVtT2ZJdGVtczsgaSsrICkge1xuXHRcdFx0XHRsZXQgaXRlbSA9IHRoaXMuaXRlbXNbaV0sXG5cdFx0XHRcdFx0Y2xvbmUgPSB0aGlzLmNsb25lSXRlbShpdGVtKTsgLy8gY2xvbmUgaXRlbSB0byBwcmVzZXJ2ZSBvcmlnaW5hbCBvYmplY3Rcblx0XHRcdFx0Zm9yICggbGV0IGo9MDsgaiA8IG51bU9mTGFiZWxzOyBqKyspIHtcblx0XHRcdFx0XHRsZXQgaXRlbUxhYmVsID0gaXRlbVt0aGlzLmxhYmVsc1tqXV07XG5cdFx0XHRcdFx0aWYgKCBzZWFyY2hUZXh0LnRlc3QoaXRlbUxhYmVsKSApIHtcblx0XHRcdFx0XHRcdGxldCBsYWJlbCA9ICdfJyArIHRoaXMubGFiZWxzW2pdOyAvLyBjcmVhdGUgYSBuZXcgbGFiZWwgZm9yIGludGVybmFsbHkgc3RvcmluZyB0aGUgaGlnaGxpZ2h0ZWQgaHRtbCB0ZXh0XG5cdFx0XHRcdFx0XHRjbG9uZVtsYWJlbF0gPSBpdGVtTGFiZWwucmVwbGFjZSggc2VhcmNoVGV4dCwgJzxzcGFuIHN0eWxlPVwiZm9udC13ZWlnaHQ6Ym9sZDtcIj4kJjwvc3Bhbj4nICk7XG5cdFx0XHRcdFx0XHRoaWdobGlnaHRlZCA9IHRydWU7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHRcdGlmICggaGlnaGxpZ2h0ZWQgKSB7XG5cdFx0XHRcdFx0cmVzdWx0LnB1c2goY2xvbmUpO1xuXHRcdFx0XHRcdGhpZ2hsaWdodGVkID0gZmFsc2U7XG5cdFx0XHRcdH1cblx0XHRcdFx0aWYgKCByZXN1bHQubGVuZ3RoID49IHJlc3VsdExpbWl0ICkge1xuXHRcdFx0XHRcdGJyZWFrO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHRcdHJldHVybiByZXN1bHQ7XG5cdH1cblxuXHRzdWdnZXN0KGUpIHtcblx0XHRzd2l0Y2goIGUua2V5Q29kZSApIHtcblx0XHRcdGNhc2UgMTM6IC8vZW50ZXIgLSBzdWJtaXQgdGhlIHNlbGVjdGVkIG9wdGlvblxuXHRcdFx0XHR0aGlzLnVwZGF0ZUl0ZW0oIHRoaXMuaXRlbXNMaXN0W3RoaXMub3B0aW9uSW5kZXhdICk7XG5cdFx0XHRcdHRoaXMuJC5pdGVtTGFiZWwuYmx1cigpO1xuXHRcdFx0XHR0aGlzLmhpZGUoKTtcblx0XHRcdFx0YnJlYWs7XG5cdFx0XHRjYXNlIDI3OiAvLyBlc2MgLSBwcmVzZXJ2ZSBvbGQvb3JpZ2luYWxseSBwZXJzaXN0ZWQgdmFsdWVcblx0XHRcdFx0dGhpcy5yZXZlcnQoKTtcblx0XHRcdFx0dGhpcy5oaWRlKCk7XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0Y2FzZSAzODogLy8gdXAgYXJyb3dcblx0XHRcdGNhc2UgNDA6IC8vIGRvd24gYXJyb3cgLSBtb3ZlIHRyb3VnaCBtYXRjaGluZyBsaXN0IGl0ZW1zXG5cdFx0XHRcdHRoaXMuc2VsZWN0QWRqYWNlbnRJdGVtKCBlLmtleUNvZGUgKTtcblx0XHRcdFx0YnJlYWs7XG5cdFx0XHRkZWZhdWx0OiAvLyByZS1idWlsZCBpdGVtc0xpc3Rcblx0XHRcdFx0dGhpcy5pbnZhbGlkTGFiZWwgPSBmYWxzZTtcblx0XHRcdFx0aWYgKCB0aGlzLmxhYmVsVmFsdWUgKSB7XG5cdFx0XHRcdFx0dGhpcy5oYXNMaXN0ID0gdHJ1ZTtcblx0XHRcdFx0XHR0aGlzLmhhc0xhYmVsID0gdHJ1ZTtcblx0XHRcdFx0fVxuXG5cdFx0XHRcdHRoaXMuaXRlbXNMaXN0ID0gdGhpcy51cGRhdGVJdGVtc0xpc3QoKTtcblx0XHRcdFx0aWYgKCB0aGlzLml0ZW1zTGlzdC5sZW5ndGggPT09IDAgKSB7XG5cdFx0XHRcdFx0aWYgKCB0aGlzLmxhYmVsVmFsdWUgKSB7XG5cdFx0XHRcdFx0XHR0aGlzLmludmFsaWRMYWJlbCA9IHRydWU7XG5cdFx0XHRcdFx0fSBlbHNlIHtcblx0XHRcdFx0XHRcdHRoaXMuaGFzTGFiZWwgPSBmYWxzZTtcblx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0dGhpcy5oYXNMaXN0ID0gZmFsc2U7XG5cdFx0XHRcdH1cblx0XHRcdFx0YnJlYWs7XG5cdFx0fVxuXHR9XG5cbn1cblxuUG9seW1lciggVHlwZWFoZWFkICk7XG4iXX0=
'use strict';

System.register('common/layout/fields/FieldSetHandler.js', [], function (_export, _context) {
	var _createClass, FieldSetHandler;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('FieldSetHandler', FieldSetHandler = function () {
				function FieldSetHandler(fieldSets, desktop, tablet, phone) {
					_classCallCheck(this, FieldSetHandler);

					this.fieldSets = fieldSets;
					this.desktopFields = { name: desktop };
					if (tablet) this.tabletFields = { name: tablet };
					if (phone) this.phoneFields = { name: phone };
				}

				_createClass(FieldSetHandler, [{
					key: 'getByViewport',
					value: function getByViewport(viewport) {
						var size = viewport ? viewport.current().size : '';
						switch (size) {
							case 'XS':
								return this._getPhoneFieldSet();
							case 'S':
								return this._getTabletFieldSet();
							default:
								return this._getDesktopFieldSet();
						}
					}
				}, {
					key: '_getPhoneFieldSet',
					value: function _getPhoneFieldSet() {
						var fieldSet = this.phoneFields ? this.fieldSets[this.phoneFields.name] : null;
						if (!fieldSet || fieldSet.length === 0) return this._getTabletFieldSet();

						this.phoneFields.fields = fieldSet;
						return this.phoneFields;
					}
				}, {
					key: '_getTabletFieldSet',
					value: function _getTabletFieldSet() {
						var fieldSet = this.tabletFields ? this.fieldSets[this.tabletFields.name] : null;
						if (!fieldSet || fieldSet.length === 0) return this._getDesktopFieldSet();

						this.tabletFields.fields = fieldSet;
						return this.tabletFields;
					}
				}, {
					key: '_getDesktopFieldSet',
					value: function _getDesktopFieldSet() {
						this.desktopFields.fields = this.fieldSets[this.desktopFields.name];
						return this.desktopFields;
					}
				}]);

				return FieldSetHandler;
			}());

			_export('FieldSetHandler', FieldSetHandler);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkZpZWxkU2V0SGFuZGxlci5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs4QkFBYTtBQUVaLGFBRlksZUFFWixDQUFZLFNBQVosRUFBdUIsT0FBdkIsRUFBZ0MsTUFBaEMsRUFBd0MsS0FBeEMsRUFBK0M7MkJBRm5DLGlCQUVtQzs7QUFDOUMsVUFBSyxTQUFMLEdBQWlCLFNBQWpCLENBRDhDO0FBRTlDLFVBQUssYUFBTCxHQUFxQixFQUFDLE1BQU0sT0FBTixFQUF0QixDQUY4QztBQUc5QyxTQUFHLE1BQUgsRUFDQyxLQUFLLFlBQUwsR0FBb0IsRUFBQyxNQUFNLE1BQU4sRUFBckIsQ0FERDtBQUVBLFNBQUcsS0FBSCxFQUNDLEtBQUssV0FBTCxHQUFtQixFQUFDLE1BQU0sS0FBTixFQUFwQixDQUREO0tBTEQ7O2lCQUZZOzttQ0FXRSxVQUFVO0FBQ3ZCLFVBQUksT0FBTyxXQUFXLFNBQVMsT0FBVCxHQUFtQixJQUFuQixHQUEwQixFQUFyQyxDQURZO0FBRXZCLGNBQU8sSUFBUDtBQUNDLFlBQUssSUFBTDtBQUNDLGVBQU8sS0FBSyxpQkFBTCxFQUFQLENBREQ7QUFERCxZQUdNLEdBQUw7QUFDQyxlQUFPLEtBQUssa0JBQUwsRUFBUCxDQUREO0FBSEQ7QUFNRSxlQUFPLEtBQUssbUJBQUwsRUFBUCxDQUREO0FBTEQsT0FGdUI7Ozs7eUNBWUo7QUFDbkIsVUFBSSxXQUFXLEtBQUssV0FBTCxHQUFtQixLQUFLLFNBQUwsQ0FBZSxLQUFLLFdBQUwsQ0FBaUIsSUFBakIsQ0FBbEMsR0FBMkQsSUFBM0QsQ0FESTtBQUVuQixVQUFHLENBQUMsUUFBRCxJQUFhLFNBQVMsTUFBVCxLQUFvQixDQUFwQixFQUNmLE9BQU8sS0FBSyxrQkFBTCxFQUFQLENBREQ7O0FBR0EsV0FBSyxXQUFMLENBQWlCLE1BQWpCLEdBQTBCLFFBQTFCLENBTG1CO0FBTW5CLGFBQU8sS0FBSyxXQUFMLENBTlk7Ozs7MENBU0M7QUFDcEIsVUFBSSxXQUFXLEtBQUssWUFBTCxHQUFvQixLQUFLLFNBQUwsQ0FBZSxLQUFLLFlBQUwsQ0FBa0IsSUFBbEIsQ0FBbkMsR0FBNkQsSUFBN0QsQ0FESztBQUVwQixVQUFHLENBQUMsUUFBRCxJQUFhLFNBQVMsTUFBVCxLQUFvQixDQUFwQixFQUNmLE9BQU8sS0FBSyxtQkFBTCxFQUFQLENBREQ7O0FBR0EsV0FBSyxZQUFMLENBQWtCLE1BQWxCLEdBQTJCLFFBQTNCLENBTG9CO0FBTXBCLGFBQU8sS0FBSyxZQUFMLENBTmE7Ozs7MkNBU0M7QUFDckIsV0FBSyxhQUFMLENBQW1CLE1BQW5CLEdBQTRCLEtBQUssU0FBTCxDQUFlLEtBQUssYUFBTCxDQUFtQixJQUFuQixDQUEzQyxDQURxQjtBQUVyQixhQUFPLEtBQUssYUFBTCxDQUZjOzs7O1dBekNWIiwiZmlsZSI6IkZpZWxkU2V0SGFuZGxlci5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBGaWVsZFNldEhhbmRsZXIge1xuXG5cdGNvbnN0cnVjdG9yKGZpZWxkU2V0cywgZGVza3RvcCwgdGFibGV0LCBwaG9uZSkge1xuXHRcdHRoaXMuZmllbGRTZXRzID0gZmllbGRTZXRzO1xuXHRcdHRoaXMuZGVza3RvcEZpZWxkcyA9IHtuYW1lOiBkZXNrdG9wfTtcblx0XHRpZih0YWJsZXQpXG5cdFx0XHR0aGlzLnRhYmxldEZpZWxkcyA9IHtuYW1lOiB0YWJsZXR9O1xuXHRcdGlmKHBob25lKVxuXHRcdFx0dGhpcy5waG9uZUZpZWxkcyA9IHtuYW1lOiBwaG9uZX07XG5cdH1cblxuXHRnZXRCeVZpZXdwb3J0KHZpZXdwb3J0KSB7XG5cdFx0bGV0IHNpemUgPSB2aWV3cG9ydCA/IHZpZXdwb3J0LmN1cnJlbnQoKS5zaXplIDogJyc7XG5cdFx0c3dpdGNoKHNpemUpIHtcblx0XHRcdGNhc2UgJ1hTJzpcblx0XHRcdFx0cmV0dXJuIHRoaXMuX2dldFBob25lRmllbGRTZXQoKTtcblx0XHRcdGNhc2UgJ1MnOlxuXHRcdFx0XHRyZXR1cm4gdGhpcy5fZ2V0VGFibGV0RmllbGRTZXQoKTtcblx0XHRcdGRlZmF1bHQ6XG5cdFx0XHRcdHJldHVybiB0aGlzLl9nZXREZXNrdG9wRmllbGRTZXQoKTtcblx0XHR9XG5cdH1cblxuXHRfZ2V0UGhvbmVGaWVsZFNldCgpIHtcblx0XHRsZXQgZmllbGRTZXQgPSB0aGlzLnBob25lRmllbGRzID8gdGhpcy5maWVsZFNldHNbdGhpcy5waG9uZUZpZWxkcy5uYW1lXSA6IG51bGw7XG5cdFx0aWYoIWZpZWxkU2V0IHx8IGZpZWxkU2V0Lmxlbmd0aCA9PT0gMClcblx0XHRcdHJldHVybiB0aGlzLl9nZXRUYWJsZXRGaWVsZFNldCgpO1xuXG5cdFx0dGhpcy5waG9uZUZpZWxkcy5maWVsZHMgPSBmaWVsZFNldDtcblx0XHRyZXR1cm4gdGhpcy5waG9uZUZpZWxkcztcblx0fVxuXG5cdF9nZXRUYWJsZXRGaWVsZFNldCgpIHtcblx0XHRsZXQgZmllbGRTZXQgPSB0aGlzLnRhYmxldEZpZWxkcyA/IHRoaXMuZmllbGRTZXRzW3RoaXMudGFibGV0RmllbGRzLm5hbWVdIDogbnVsbDtcblx0XHRpZighZmllbGRTZXQgfHwgZmllbGRTZXQubGVuZ3RoID09PSAwKVxuXHRcdFx0cmV0dXJuIHRoaXMuX2dldERlc2t0b3BGaWVsZFNldCgpO1xuXG5cdFx0dGhpcy50YWJsZXRGaWVsZHMuZmllbGRzID0gZmllbGRTZXQ7XG5cdFx0cmV0dXJuIHRoaXMudGFibGV0RmllbGRzO1xuXHR9XG5cblx0X2dldERlc2t0b3BGaWVsZFNldCgpIHtcblx0XHR0aGlzLmRlc2t0b3BGaWVsZHMuZmllbGRzID0gdGhpcy5maWVsZFNldHNbdGhpcy5kZXNrdG9wRmllbGRzLm5hbWVdO1xuXHRcdHJldHVybiB0aGlzLmRlc2t0b3BGaWVsZHM7XG5cdH1cbn0iXX0=
'use strict';

System.register('common/layout/sb-div/Div.js', [], function (_export, _context) {
    var _createClass, Div;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('Div', Div = function () {
                function Div() {
                    _classCallCheck(this, Div);
                }

                _createClass(Div, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-div';
                    }
                }]);

                return Div;
            }());

            _export('Div', Div);

            Polymer(Div);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRpdi5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzsyQkFBYTs7Ozs7OztxREFFUTtBQUNiLDZCQUFLLEVBQUwsR0FBVSxRQUFWLENBRGE7Ozs7dUJBRlI7Ozs7O0FBT2Isb0JBQVEsR0FBUiIsImZpbGUiOiJEaXYuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgRGl2IHtcblxuICAgIGJlZm9yZVJlZ2lzdGVyKCkge1xuICAgICAgICB0aGlzLmlzID0gJ3NiLWRpdic7XG4gICAgfVxufVxuXG5Qb2x5bWVyKERpdik7Il19
'use strict';

System.register('common/layout/sb-group/Group.js', [], function (_export, _context) {
	var _createClass, Group;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('Group', Group = function () {
				function Group() {
					_classCallCheck(this, Group);
				}

				_createClass(Group, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-group';
						this.properties = {
							item: String,
							group: Array,
							data: {
								type: Object,
								notify: true
							},
							parent: {
								type: String,
								value: null
							},
							model: {
								type: Object,
								value: null
							},
							groupClass: String,
							itemClass: String,
							groupDisplay: Object,
							primaryIndex: Number };
					}
				}, {
					key: 'buildGroup',
					value: function buildGroup() {
						var template = Polymer.dom(this.$.g).querySelector('template');
						if (template) Polymer.dom(template.parentNode).removeChild(template);

						template = document.createElement('template', 'dom-bind');
						template.model = this.model;
						template.data = this.data;
						this.buildItems(template);
						Polymer.dom(this.$.g).appendChild(template);
						this.template = template;

						Polymer.dom(this.$.g).observeNodes(function (info) {
							if (info.addedNodes[0]) this.bindElementEvents(info.addedNodes[0].childNodes);
						}.bind(this));
					}
				}, {
					key: 'buildItems',
					value: function buildItems(template) {
						var doc = template.content.ownerDocument;
						var root = doc.createElement('div');
						if (this.groupClass) Polymer.dom(root).setAttribute('class', this.groupClass);
						this.group.forEach(function (item, index) {
							var html = '<' + this.item + ' ' + 'item="' + item + '" ' + 'value="{{data.' + item + '}}" ' + 'model="[[model]]"';

							if (this.primaryIndex !== index && this.groupDisplay && this.groupDisplay[item]) html += ' field-label="' + this.groupDisplay[item] + '"';

							var classes = '';
							if (this.itemClass) classes += this.itemClass + ' ';
							if (this.primaryIndex === index) classes += 'primary {{selected}} {{expanded}}';else if (this.primaryIndex >= 0) classes += 'secondary {{expanded}}';

							if (classes) {
								var equals = classes.indexOf('{{') != -1 ? '$=' : '=';
								html += ' class' + equals + '"' + classes + '"';
							}
							html += '></' + this.item + '>';

							var div = doc.createElement('div');
							div.innerHTML = html;
							Polymer.dom(root).appendChild(Polymer.dom(div).firstChild);
						}.bind(this));
						Polymer.dom(template.content).appendChild(root);
					}
				}, {
					key: 'bindElementEvents',
					value: function bindElementEvents(elements) {
						var numElements = elements ? elements.length : 0;
						for (var i = 0; i < numElements; i++) {
							elements[i].addEventListener('value-changed', function (e) {
								if (e.target.item && this.data[e.target.item] !== e.detail.value) this.set('data.' + e.target.item, e.detail.value);
							}.bind(this));
						}

						if (!this.parent) return;

						this.domHost.addEventListener(this.parent + '-changed', function (e) {
							if (!e.detail.path) return;

							var parts = e.detail.path.split('.');
							var item = parts[parts.length - 1];
							for (var i = 0; i < numElements; i++) {
								if (elements[i].item === item) elements[i].value = e.detail.value;
							}
						}.bind(this));
					}
				}, {
					key: 'handlePrimaryEvents',
					value: function handlePrimaryEvents() {
						this.addEventListener('group-selected', function (e) {
							var className = e.detail.selected ? 'selected' : '';
							this.template.selected = className;
						});
						this.addEventListener('group-expanded', function (e) {
							var primary = e.detail.path.filter(function (node) {
								var el = Polymer.dom(node);
								var tagName = el.node.tagName ? el.node.tagName.toLowerCase() : '';
								return tagName === this.item && el.classList.contains('primary');
							}.bind(this));
							if (primary && primary.length > 0) {
								var className = e.detail.expanded ? 'expanded' : '';
								this.template.expanded = className;
							}
						}.bind(this));
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['buildGroup(item, group, data)', 'handlePrimaryEvents(template, primaryIndex)'];
					}
				}]);

				return Group;
			}());

			_export('Group', Group);

			Polymer(Group);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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LENBQVEsT0FBUixDQUFnQixXQUFoQixFQUFsQixHQUFrRCxFQUFsRCxDQUZtQztBQUdqRCxlQUFPLFlBQVksS0FBSyxJQUFMLElBQWEsR0FBRyxTQUFILENBQWEsUUFBYixDQUFzQixTQUF0QixDQUF6QixDQUgwQztRQUFmLENBSWpDLElBSmlDLENBSTVCLElBSjRCLENBQXJCLENBQVYsQ0FEK0M7QUFNbkQsV0FBRyxXQUFXLFFBQVEsTUFBUixHQUFpQixDQUFqQixFQUFvQjtBQUNqQyxZQUFJLFlBQVksRUFBRSxNQUFGLENBQVMsUUFBVCxHQUFvQixVQUFwQixHQUFpQyxFQUFqQyxDQURpQjtBQUVqQyxhQUFLLFFBQUwsQ0FBYyxRQUFkLEdBQXlCLFNBQXpCLENBRmlDO1FBQWxDO09BTnVDLENBVXRDLElBVnNDLENBVWpDLElBVmlDLENBQXhDLEVBTHFCOzs7O3lCQXJGTjtBQUNmLGFBQU8sQ0FBQywrQkFBRCxFQUFrQyw2Q0FBbEMsQ0FBUCxDQURlOzs7O1dBMUJKOzs7OztBQWlJYixXQUFTLEtBQVQiLCJmaWxlIjoiR3JvdXAuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgR3JvdXAge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItZ3JvdXAnO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdGl0ZW06IFN0cmluZywgLy8gbmFtZSBvZiB0aGUgY29tcG9uZW50IHRoYXQgcmVwcmVzZW50cyBhbiBpdGVtIGluIHRoZSBncm91cFxuXHRcdFx0Z3JvdXA6IEFycmF5LCAvLyBhcnJheSBvZiBzdHJpbmdzIHRoYXQgcmVwcmVzZW50cyB0aGUgZ3JvdXBcblx0XHRcdGRhdGE6IHsgLy8gY29udGFpbnMgdGhlIGdyb3VwIGRhdGEgdGhhdCBjYW4gYmUgZGUtcmVmZXJlbmNlZCB1c2luZyB0aGUgdmFsdWVzIGluc2lkZSBvZiB0aGUgZ3JvdXAgYXJyYXlcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHRub3RpZnk6IHRydWVcblx0XHRcdH0sXG5cdFx0XHRwYXJlbnQ6IHtcblx0XHRcdFx0dHlwZTogU3RyaW5nLCAvLyBuYW1lIG9mIHRoZSBvYmplY3QgZnJvbSB0aGUgcGFyZW50IGNvbXBvbmVudCB3aGVyZSB0aGUgZ3JvdXAgZGF0YSBsaXZlcyAob3B0aW9uYWwpXG5cdFx0XHRcdHZhbHVlOiBudWxsXG5cdFx0XHR9LFxuXHRcdFx0bW9kZWw6IHsgLy8gb2JqZWN0IHRvIHBhc3MgdGhyb3VnaCB0byBlYWNoIGdyb3VwIGl0ZW0gY29tcG9uZW50IChvcHRpb25hbClcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogbnVsbFxuXHRcdFx0fSxcblx0XHRcdGdyb3VwQ2xhc3MgOiBTdHJpbmcsIC8vIGNsYXNzIHN0cmluZyB0byBiZSBhZGRlZCB0aGUgZGl2IHRoYXQgd3JhcHMgdGhlIGdyb3VwIGl0ZW1zXG5cdFx0XHRpdGVtQ2xhc3MgOiBTdHJpbmcsIC8vIGNsYXNzIHN0cmluZyB0byBiZSBhZGRlZCB0byBlYWNoIGdyb3VwIGl0ZW1cblx0XHRcdGdyb3VwRGlzcGxheTogT2JqZWN0LCAvLyBtYXAgd2hvc2Uga2V5cyBtYXRjaCB0aGUgZ3JvdXAgYXJyYXkgYW5kIHZhbHVlIGlzIHVzZWQgZm9yIGRpc3BsYXkgcHVycG9zZXNcblx0XHRcdHByaW1hcnlJbmRleDogTnVtYmVyIC8vIGlmIG5vbiBuZWdhdGl2ZSwgdGhpcyBpdGVtIGluIHRoZSBncm91cCBpcyBjb25zaWRlcmVkIHByaW1hcnkgYW5kIGFsbCBvdGhlciBpdGVtcyBjb25zaWRlcmVkIHNlY29uZGFyeVxuXHRcdH1cblx0fVxuXG5cdGdldCBvYnNlcnZlcnMoKSB7XG5cdFx0cmV0dXJuIFsnYnVpbGRHcm91cChpdGVtLCBncm91cCwgZGF0YSknLCAnaGFuZGxlUHJpbWFyeUV2ZW50cyh0ZW1wbGF0ZSwgcHJpbWFyeUluZGV4KSddO1xuXHR9XG5cblx0YnVpbGRHcm91cCgpIHtcblx0XHR2YXIgdGVtcGxhdGUgPSBQb2x5bWVyLmRvbSh0aGlzLiQuZykucXVlcnlTZWxlY3RvcigndGVtcGxhdGUnKTtcblx0XHRpZih0ZW1wbGF0ZSkgLy8gcmVtb3ZlIHRlbXBsYXRlIGlmIGFscmVhZHkgZXhpc3RzXG5cdFx0XHRQb2x5bWVyLmRvbSh0ZW1wbGF0ZS5wYXJlbnROb2RlKS5yZW1vdmVDaGlsZCh0ZW1wbGF0ZSk7XG5cblx0XHR0ZW1wbGF0ZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ3RlbXBsYXRlJywgJ2RvbS1iaW5kJyk7XG5cdFx0dGVtcGxhdGUubW9kZWwgPSB0aGlzLm1vZGVsO1xuXHRcdHRlbXBsYXRlLmRhdGEgPSB0aGlzLmRhdGE7XG5cdFx0dGhpcy5idWlsZEl0ZW1zKHRlbXBsYXRlKTtcblx0XHRQb2x5bWVyLmRvbSh0aGlzLiQuZykuYXBwZW5kQ2hpbGQodGVtcGxhdGUpO1xuXHRcdHRoaXMudGVtcGxhdGUgPSB0ZW1wbGF0ZTtcblxuXHRcdC8vIG9ic2VydmUgZm9yIHdoZW4gdGhlIGNoaWxkIGVsZW1lbnRzIGFyZSBib3VuZCB0byB0aGUgRE9NIHNvIHdlIGNhbiBiaW5kIGV2ZW50cyB0byB0aGVtXG5cdFx0UG9seW1lci5kb20odGhpcy4kLmcpLm9ic2VydmVOb2RlcyhmdW5jdGlvbihpbmZvKSB7XG5cdFx0XHRpZiAoaW5mby5hZGRlZE5vZGVzWzBdKVxuXHRcdFx0XHR0aGlzLmJpbmRFbGVtZW50RXZlbnRzKGluZm8uYWRkZWROb2Rlc1swXS5jaGlsZE5vZGVzKTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0YnVpbGRJdGVtcyh0ZW1wbGF0ZSkge1xuXHRcdHZhciBkb2MgPSB0ZW1wbGF0ZS5jb250ZW50Lm93bmVyRG9jdW1lbnQ7XG5cdFx0dmFyIHJvb3QgPSBkb2MuY3JlYXRlRWxlbWVudCgnZGl2Jyk7XG5cdFx0aWYodGhpcy5ncm91cENsYXNzKVxuXHRcdFx0UG9seW1lci5kb20ocm9vdCkuc2V0QXR0cmlidXRlKCdjbGFzcycsIHRoaXMuZ3JvdXBDbGFzcyk7XG5cdFx0dGhpcy5ncm91cC5mb3JFYWNoKGZ1bmN0aW9uKGl0ZW0sIGluZGV4KSB7XG5cdFx0XHRsZXQgaHRtbCA9ICc8JyArIHRoaXMuaXRlbSArICcgJyArXG5cdFx0XHRcdCdpdGVtPVwiJyArIGl0ZW0gKyAnXCIgJyArXG5cdFx0XHRcdCd2YWx1ZT1cInt7ZGF0YS4nICsgaXRlbSArICd9fVwiICcgK1xuXHRcdFx0XHQnbW9kZWw9XCJbW21vZGVsXV1cIic7XG5cblx0XHRcdGlmICh0aGlzLnByaW1hcnlJbmRleCAhPT0gaW5kZXggJiYgdGhpcy5ncm91cERpc3BsYXkgJiYgdGhpcy5ncm91cERpc3BsYXlbaXRlbV0pXG5cdFx0XHRcdGh0bWwgKz0gJyBmaWVsZC1sYWJlbD1cIicgKyBcdHRoaXMuZ3JvdXBEaXNwbGF5W2l0ZW1dICsgJ1wiJztcblxuXHRcdFx0bGV0IGNsYXNzZXMgPSAnJztcblx0XHRcdGlmKHRoaXMuaXRlbUNsYXNzKVxuXHRcdFx0XHRjbGFzc2VzICs9IHRoaXMuaXRlbUNsYXNzICsgJyAnO1xuXHRcdFx0aWYodGhpcy5wcmltYXJ5SW5kZXggPT09IGluZGV4KVxuXHRcdFx0XHRjbGFzc2VzICs9ICdwcmltYXJ5IHt7c2VsZWN0ZWR9fSB7e2V4cGFuZGVkfX0nO1xuXHRcdFx0ZWxzZSBpZih0aGlzLnByaW1hcnlJbmRleCA+PSAwKVxuXHRcdFx0XHRjbGFzc2VzICs9ICdzZWNvbmRhcnkge3tleHBhbmRlZH19JztcblxuXHRcdFx0aWYoY2xhc3Nlcykge1xuXHRcdFx0XHRsZXQgZXF1YWxzID0gY2xhc3Nlcy5pbmRleE9mKCd7eycpICE9IC0xID8gJyQ9JyA6ICc9Jztcblx0XHRcdFx0aHRtbCArPSAnIGNsYXNzJyArIGVxdWFscyArICdcIicgKyBjbGFzc2VzICsgJ1wiJztcblx0XHRcdH1cblx0XHRcdGh0bWwgKz0gJz48LycgKyB0aGlzLml0ZW0gKyAnPic7XG5cblx0XHRcdGxldCBkaXYgPSBkb2MuY3JlYXRlRWxlbWVudCgnZGl2Jyk7XG5cdFx0XHRkaXYuaW5uZXJIVE1MID0gaHRtbDtcblx0XHRcdFBvbHltZXIuZG9tKHJvb3QpLmFwcGVuZENoaWxkKFBvbHltZXIuZG9tKGRpdikuZmlyc3RDaGlsZCk7XG5cdFx0fS5iaW5kKHRoaXMpKTtcblx0XHRQb2x5bWVyLmRvbSh0ZW1wbGF0ZS5jb250ZW50KS5hcHBlbmRDaGlsZChyb290KTtcblx0fVxuXG5cdGJpbmRFbGVtZW50RXZlbnRzKGVsZW1lbnRzKSB7XG5cdFx0dmFyIG51bUVsZW1lbnRzID0gZWxlbWVudHMgPyBlbGVtZW50cy5sZW5ndGggOiAwO1xuXHRcdGZvcih2YXIgaSA9IDA7IGkgPCBudW1FbGVtZW50czsgaSsrKSB7XG5cdFx0XHQvLyBwcm9wYWdhdGVzIHZhbHVlIGNoYW5nZXMgZnJvbSBjaGlsZCBpdGVtIGNvbXBvbmVudHMgKGlmIG5vdGlmeTogdHJ1ZSkgdXAgdG8gcGFyZW50IGNvbXBvbmVudFxuXHRcdFx0ZWxlbWVudHNbaV0uYWRkRXZlbnRMaXN0ZW5lcigndmFsdWUtY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcblx0XHRcdFx0aWYoZS50YXJnZXQuaXRlbSAmJiB0aGlzLmRhdGFbZS50YXJnZXQuaXRlbV0gIT09IGUuZGV0YWlsLnZhbHVlKVxuXHRcdFx0XHRcdHRoaXMuc2V0KCdkYXRhLicgKyBlLnRhcmdldC5pdGVtLCBlLmRldGFpbC52YWx1ZSk7XG5cdFx0XHR9LmJpbmQodGhpcykpO1xuXHRcdH1cblxuXHRcdGlmKCF0aGlzLnBhcmVudClcblx0XHRcdHJldHVybjtcblxuXHRcdC8vIHByb3BhZ2F0ZXMgdmFsdWUgY2hhbmdlcyBmcm9tIHBhcmVudCBjb21wb25lbnQgZG93biB0byB0aGUgYXBwcm9wcmlhdGUgY2hpbGQgaXRlbSBjb21wb25lbnRcblx0XHR0aGlzLmRvbUhvc3QuYWRkRXZlbnRMaXN0ZW5lcih0aGlzLnBhcmVudCArICctY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcblx0XHRcdGlmKCFlLmRldGFpbC5wYXRoKVxuXHRcdFx0XHRyZXR1cm47XG5cblx0XHRcdHZhciBwYXJ0cyA9IGUuZGV0YWlsLnBhdGguc3BsaXQoJy4nKTtcblx0XHRcdHZhciBpdGVtID0gcGFydHNbcGFydHMubGVuZ3RoLTFdO1xuXHRcdFx0Zm9yKHZhciBpID0gMDsgaSA8IG51bUVsZW1lbnRzOyBpKyspIHtcblx0XHRcdFx0aWYoZWxlbWVudHNbaV0uaXRlbSA9PT0gaXRlbSlcblx0XHRcdFx0XHRlbGVtZW50c1tpXS52YWx1ZSA9IGUuZGV0YWlsLnZhbHVlO1xuXHRcdFx0fVxuXHRcdH0uYmluZCh0aGlzKSk7XG5cdH1cblxuXHRoYW5kbGVQcmltYXJ5RXZlbnRzKCkge1xuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcignZ3JvdXAtc2VsZWN0ZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRsZXQgY2xhc3NOYW1lID0gZS5kZXRhaWwuc2VsZWN0ZWQgPyAnc2VsZWN0ZWQnIDogJyc7XG5cdFx0XHR0aGlzLnRlbXBsYXRlLnNlbGVjdGVkID0gY2xhc3NOYW1lO1xuXHRcdH0pO1xuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcignZ3JvdXAtZXhwYW5kZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRsZXQgcHJpbWFyeSA9IGUuZGV0YWlsLnBhdGguZmlsdGVyKGZ1bmN0aW9uKG5vZGUpIHtcblx0XHRcdFx0bGV0IGVsID0gUG9seW1lci5kb20obm9kZSk7XG5cdFx0XHRcdGxldCB0YWdOYW1lID0gZWwubm9kZS50YWdOYW1lID8gZWwubm9kZS50YWdOYW1lLnRvTG93ZXJDYXNlKCkgOiAnJztcblx0XHRcdFx0cmV0dXJuIHRhZ05hbWUgPT09IHRoaXMuaXRlbSAmJiBlbC5jbGFzc0xpc3QuY29udGFpbnMoJ3ByaW1hcnknKTtcblx0XHRcdH0uYmluZCh0aGlzKSk7XG5cdFx0XHRpZihwcmltYXJ5ICYmIHByaW1hcnkubGVuZ3RoID4gMCkge1xuXHRcdFx0XHRsZXQgY2xhc3NOYW1lID0gZS5kZXRhaWwuZXhwYW5kZWQgPyAnZXhwYW5kZWQnIDogJyc7XG5cdFx0XHRcdHRoaXMudGVtcGxhdGUuZXhwYW5kZWQgPSBjbGFzc05hbWU7XG5cdFx0XHR9XG5cdFx0fS5iaW5kKHRoaXMpKTtcblx0fVxufVxuUG9seW1lciggR3JvdXAgKTsiXX0=
'use strict';

System.register('common/layout/sb-side-panel/SidePanel.js', [], function (_export, _context) {
	var _createClass, SidePanel;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('SidePanel', SidePanel = function () {
				function SidePanel() {
					_classCallCheck(this, SidePanel);
				}

				_createClass(SidePanel, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-side-panel';
					}
				}, {
					key: 'closeDrawer',
					value: function closeDrawer() {
						this.fire('x-clicked');
					}
				}, {
					key: 'keyCheck',
					value: function keyCheck(event) {
						if (event.keyCode == 13) this.fire('enter-keypress');
					}
				}]);

				return SidePanel;
			}());

			_export('SidePanel', SidePanel);

			Polymer(SidePanel);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlNpZGVQYW5lbC5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozt3QkFBYTs7Ozs7OztzQ0FFSztBQUNoQixXQUFLLEVBQUwsR0FBVSxlQUFWLENBRGdCOzs7O21DQUlIO0FBQ2IsV0FBSyxJQUFMLENBQVUsV0FBVixFQURhOzs7OzhCQUlMLE9BQU87QUFDZixVQUFJLE1BQU0sT0FBTixJQUFpQixFQUFqQixFQUNILEtBQUssSUFBTCxDQUFVLGdCQUFWLEVBREQ7Ozs7V0FYVzs7Ozs7QUFnQmIsV0FBUyxTQUFUIiwiZmlsZSI6IlNpZGVQYW5lbC5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBTaWRlUGFuZWx7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1zaWRlLXBhbmVsJztcblx0fVxuXG5cdGNsb3NlRHJhd2VyKCkge1xuXHRcdHRoaXMuZmlyZSgneC1jbGlja2VkJyk7XG5cdH1cblxuXHRrZXlDaGVjayhldmVudCkge1xuXHRcdGlmIChldmVudC5rZXlDb2RlID09IDEzKVxuXHRcdFx0dGhpcy5maXJlKCdlbnRlci1rZXlwcmVzcycpO1xuXHR9XG59XG5cblBvbHltZXIoIFNpZGVQYW5lbCApOyJdfQ==
'use strict';

System.register('common/layout/sb-table-cell/TableCell.js', [], function (_export, _context) {
	var _createClass, TableCell;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('TableCell', TableCell = function () {
				function TableCell() {
					_classCallCheck(this, TableCell);
				}

				_createClass(TableCell, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-table-cell';
						this.properties = {
							item: String,
							value: {
								notify: true
							},
							model: Object
						};
					}
				}, {
					key: 'buildCell',
					value: function buildCell() {
						if (this.model && this.model[this.item] && this.model[this.item].type) {
							this.md = this.model[this.item];
							return;
						}

						var type;
						switch (this.item) {
							case 'boolean':
							case 'radio':
								type = this.item;
								break;
							default:
								type = 'string';
						}

						this.md = this.md || { type: type };
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['buildCell(item, value)'];
					}
				}]);

				return TableCell;
			}());

			_export('TableCell', TableCell);

			Polymer(TableCell);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlRhYmxlQ2VsbC5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozt3QkFBYTs7Ozs7OztzQ0FFSztBQUNoQixXQUFLLEVBQUwsR0FBVSxlQUFWLENBRGdCO0FBRWhCLFdBQUssVUFBTCxHQUFrQjtBQUNqQixhQUFNLE1BQU47QUFDQSxjQUFPO0FBQ04sZ0JBQVEsSUFBUjtRQUREO0FBR0EsY0FBTyxNQUFQO09BTEQsQ0FGZ0I7Ozs7aUNBZUw7QUFDWCxVQUFHLEtBQUssS0FBTCxJQUFjLEtBQUssS0FBTCxDQUFXLEtBQUssSUFBTCxDQUF6QixJQUF1QyxLQUFLLEtBQUwsQ0FBVyxLQUFLLElBQUwsQ0FBWCxDQUFzQixJQUF0QixFQUE0QjtBQUNyRSxZQUFLLEVBQUwsR0FBVSxLQUFLLEtBQUwsQ0FBVyxLQUFLLElBQUwsQ0FBckIsQ0FEcUU7QUFFckUsY0FGcUU7T0FBdEU7O0FBS0EsVUFBSSxJQUFKLENBTlc7QUFPWCxjQUFPLEtBQUssSUFBTDtBQUNOLFlBQUssU0FBTCxDQUREO0FBRUMsWUFBSyxPQUFMO0FBQ0MsZUFBTyxLQUFLLElBQUwsQ0FEUjtBQUVDLGNBRkQ7QUFGRDtBQU1FLGVBQU8sUUFBUCxDQUREO0FBTEQsT0FQVzs7QUFnQlgsV0FBSyxFQUFMLEdBQVUsS0FBSyxFQUFMLElBQVcsRUFBQyxNQUFNLElBQU4sRUFBWixDQWhCQzs7Ozt5QkFKSTtBQUNmLGFBQU8sQ0FBQyx3QkFBRCxDQUFQLENBRGU7Ozs7V0FiSjs7Ozs7QUFxQ2IsV0FBUSxTQUFSIiwiZmlsZSI6IlRhYmxlQ2VsbC5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBUYWJsZUNlbGwge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItdGFibGUtY2VsbCc7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0ge1xuXHRcdFx0aXRlbTogU3RyaW5nLFxuXHRcdFx0dmFsdWU6IHtcblx0XHRcdFx0bm90aWZ5OiB0cnVlXG5cdFx0XHR9LFxuXHRcdFx0bW9kZWw6IE9iamVjdFxuXHRcdH1cblx0fVxuXG5cdGdldCBvYnNlcnZlcnMoKSB7XG5cdFx0cmV0dXJuIFsnYnVpbGRDZWxsKGl0ZW0sIHZhbHVlKSddO1xuXHR9XG5cblx0YnVpbGRDZWxsKCkge1xuXHRcdGlmKHRoaXMubW9kZWwgJiYgdGhpcy5tb2RlbFt0aGlzLml0ZW1dICYmIHRoaXMubW9kZWxbdGhpcy5pdGVtXS50eXBlKSB7XG5cdFx0XHR0aGlzLm1kID0gdGhpcy5tb2RlbFt0aGlzLml0ZW1dO1xuXHRcdFx0cmV0dXJuO1xuXHRcdH1cblx0XHQvLyBpZiBubyBtb2RlbCB0aGVuIGluZmVyIHRoZSB0eXBlIGJhc2VkIG9uIHRoZSBpdGVtIG5hbWVcblx0XHR2YXIgdHlwZTtcblx0XHRzd2l0Y2godGhpcy5pdGVtKSB7XG5cdFx0XHRjYXNlICdib29sZWFuJzpcblx0XHRcdGNhc2UgJ3JhZGlvJzpcblx0XHRcdFx0dHlwZSA9IHRoaXMuaXRlbTtcblx0XHRcdFx0YnJlYWs7XG5cdFx0XHRkZWZhdWx0OlxuXHRcdFx0XHR0eXBlID0gJ3N0cmluZyc7XG5cdFx0fVxuXG5cdFx0dGhpcy5tZCA9IHRoaXMubWQgfHwge3R5cGU6IHR5cGV9O1xuXHR9XG59XG5cblBvbHltZXIoVGFibGVDZWxsKTsiXX0=
'use strict';

System.register('common/layout/sb-table-header/TableHeader.js', [], function (_export, _context) {
	var _createClass, TableHeader;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('TableHeader', TableHeader = function () {
				function TableHeader() {
					_classCallCheck(this, TableHeader);
				}

				_createClass(TableHeader, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-table-header';
						this.properties = {
							cols: Array,
							selectable: Boolean,
							selectionType: {
								type: String,
								value: 'boolean'
							},
							selected: {
								type: Boolean,
								value: false
							}
						};
					}
				}, {
					key: 'buildLabels',
					value: function buildLabels() {
						var data = {};
						var group = [];

						this.cols.forEach(function (col) {
							if (!col) return;

							var item = col.replace(/\W/g, '');
							group.push(item);
							data[item] = col;
						});

						this.$.header.data = undefined;
						this.$.header.group = undefined;

						this.$.header.data = data;
						this.$.header.group = group;
					}
				}, {
					key: 'setSelectable',
					value: function setSelectable() {
						if (!this.selectable) return;

						this.$.selection.addEventListener('data-changed', function (e) {
							this.internal = true;
							this.selected = typeof e.detail.value[this.selectionType] !== 'undefined' ? e.detail.value[this.selectionType] : e.detail.value;
							this.internal = false;
							this.fire('header-selection-changed', { selected: this.selected });
						}.bind(this));
					}
				}, {
					key: 'setSelected',
					value: function setSelected() {
						if (!this.selectable || this.internal) return;

						var key = this.selectionType === 'boolean' ? 'boolean' : 'string';
						this.$.selection.group = [key];
						var selectionData = {};

						var value = this.selectionType === 'boolean' ? this.selected : '';
						selectionData[key] = value;
						this.$.selection.data = selectionData;
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['buildLabels(cols)', 'setSelectable(selectable, selectionType)', 'setSelected(selected, selectable, selectionType)'];
					}
				}]);

				return TableHeader;
			}());

			_export('TableHeader', TableHeader);

			Polymer(TableHeader);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlRhYmxlSGVhZGVyLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzBCQUFhOzs7Ozs7O3NDQUVLO0FBQ2hCLFdBQUssRUFBTCxHQUFVLGlCQUFWLENBRGdCO0FBRWhCLFdBQUssVUFBTCxHQUFrQjtBQUNqQixhQUFNLEtBQU47QUFDQSxtQkFBWSxPQUFaO0FBQ0Esc0JBQWU7QUFDZCxjQUFNLE1BQU47QUFDQSxlQUFPLFNBQVA7UUFGRDtBQUlBLGlCQUFVO0FBQ1QsY0FBTSxPQUFOO0FBQ0EsZUFBTyxLQUFQO1FBRkQ7T0FQRCxDQUZnQjs7OzttQ0FvQkg7QUFDYixVQUFJLE9BQU8sRUFBUCxDQURTO0FBRWIsVUFBSSxRQUFRLEVBQVIsQ0FGUzs7QUFJYixXQUFLLElBQUwsQ0FBVSxPQUFWLENBQWtCLFVBQVMsR0FBVCxFQUFjO0FBQy9CLFdBQUcsQ0FBQyxHQUFELEVBQ0YsT0FERDs7QUFHQSxXQUFJLE9BQU8sSUFBSSxPQUFKLENBQVksS0FBWixFQUFtQixFQUFuQixDQUFQLENBSjJCO0FBSy9CLGFBQU0sSUFBTixDQUFXLElBQVgsRUFMK0I7QUFNL0IsWUFBSyxJQUFMLElBQWEsR0FBYixDQU4rQjtPQUFkLENBQWxCLENBSmE7O0FBYWIsV0FBSyxDQUFMLENBQU8sTUFBUCxDQUFjLElBQWQsR0FBcUIsU0FBckIsQ0FiYTtBQWNiLFdBQUssQ0FBTCxDQUFPLE1BQVAsQ0FBYyxLQUFkLEdBQXNCLFNBQXRCLENBZGE7O0FBZ0JiLFdBQUssQ0FBTCxDQUFPLE1BQVAsQ0FBYyxJQUFkLEdBQXFCLElBQXJCLENBaEJhO0FBaUJiLFdBQUssQ0FBTCxDQUFPLE1BQVAsQ0FBYyxLQUFkLEdBQXNCLEtBQXRCLENBakJhOzs7O3FDQW9CRTtBQUNmLFVBQUcsQ0FBQyxLQUFLLFVBQUwsRUFDSCxPQUREOztBQUdBLFdBQUssQ0FBTCxDQUFPLFNBQVAsQ0FBaUIsZ0JBQWpCLENBQWtDLGNBQWxDLEVBQWtELFVBQVMsQ0FBVCxFQUFZO0FBQzdELFlBQUssUUFBTCxHQUFnQixJQUFoQixDQUQ2RDtBQUU3RCxZQUFLLFFBQUwsR0FBZ0IsT0FBTyxFQUFFLE1BQUYsQ0FBUyxLQUFULENBQWUsS0FBSyxhQUFMLENBQXRCLEtBQThDLFdBQTlDLEdBQTRELEVBQUUsTUFBRixDQUFTLEtBQVQsQ0FBZSxLQUFLLGFBQUwsQ0FBM0UsR0FBaUcsRUFBRSxNQUFGLENBQVMsS0FBVCxDQUZwRDtBQUc3RCxZQUFLLFFBQUwsR0FBZ0IsS0FBaEIsQ0FINkQ7QUFJN0QsWUFBSyxJQUFMLENBQVUsMEJBQVYsRUFBc0MsRUFBQyxVQUFVLEtBQUssUUFBTCxFQUFqRCxFQUo2RDtPQUFaLENBS2hELElBTGdELENBSzNDLElBTDJDLENBQWxELEVBSmU7Ozs7bUNBWUY7QUFDYixVQUFHLENBQUMsS0FBSyxVQUFMLElBQW1CLEtBQUssUUFBTCxFQUN0QixPQUREOztBQUdBLFVBQUksTUFBTSxLQUFLLGFBQUwsS0FBdUIsU0FBdkIsR0FBbUMsU0FBbkMsR0FBK0MsUUFBL0MsQ0FKRztBQUtiLFdBQUssQ0FBTCxDQUFPLFNBQVAsQ0FBaUIsS0FBakIsR0FBeUIsQ0FBQyxHQUFELENBQXpCLENBTGE7QUFNYixVQUFJLGdCQUFnQixFQUFoQixDQU5TOztBQVFiLFVBQUksUUFBUSxLQUFLLGFBQUwsS0FBdUIsU0FBdkIsR0FBbUMsS0FBSyxRQUFMLEdBQWdCLEVBQW5ELENBUkM7QUFTYixvQkFBYyxHQUFkLElBQXFCLEtBQXJCLENBVGE7QUFVYixXQUFLLENBQUwsQ0FBTyxTQUFQLENBQWlCLElBQWpCLEdBQXdCLGFBQXhCLENBVmE7Ozs7eUJBcENFO0FBQ2YsYUFBTyxDQUFDLG1CQUFELEVBQXNCLDBDQUF0QixFQUFrRSxrREFBbEUsQ0FBUCxDQURlOzs7O1dBbEJKOzs7OztBQW9FYixXQUFRLFdBQVIiLCJmaWxlIjoiVGFibGVIZWFkZXIuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgVGFibGVIZWFkZXIge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItdGFibGUtaGVhZGVyJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSB7XG5cdFx0XHRjb2xzOiBBcnJheSwgLy8gYXJyYXkgb2Ygc3RyaW5ncyB0aGF0IHJlcHJlc2VudHMgdGhlIGNvbHVtbnNcblx0XHRcdHNlbGVjdGFibGU6IEJvb2xlYW4sIC8vIHRydWUgaWYgdGhlIHJvdydzIGxlZnQgbW9zdCBjb2x1bW4gc2VsZWN0YWJsZVxuXHRcdFx0c2VsZWN0aW9uVHlwZTogeyAvLyBcImJvb2xlYW5cIiBmb3IgY2hlY2tib3ggb3IgXCJyYWRpb1wiIGZvciByYWRpb1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdHZhbHVlOiAnYm9vbGVhbidcblx0XHRcdH0sXG5cdFx0XHRzZWxlY3RlZDogeyAvLyB0cnVlIGlmIHRoZSByb3cgaXMgc2VsZWN0YWJsZSBhbmQgc2hvdWxkIGJlIHNlbGVjdGVkXG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmYWxzZVxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdGdldCBvYnNlcnZlcnMoKSB7XG5cdFx0cmV0dXJuIFsnYnVpbGRMYWJlbHMoY29scyknLCAnc2V0U2VsZWN0YWJsZShzZWxlY3RhYmxlLCBzZWxlY3Rpb25UeXBlKScsICdzZXRTZWxlY3RlZChzZWxlY3RlZCwgc2VsZWN0YWJsZSwgc2VsZWN0aW9uVHlwZSknXTtcblx0fVxuXG5cdGJ1aWxkTGFiZWxzKCkge1xuXHRcdHZhciBkYXRhID0ge307XG5cdFx0dmFyIGdyb3VwID0gW107XG5cblx0XHR0aGlzLmNvbHMuZm9yRWFjaChmdW5jdGlvbihjb2wpIHtcblx0XHRcdGlmKCFjb2wpXG5cdFx0XHRcdHJldHVybjtcblxuXHRcdFx0dmFyIGl0ZW0gPSBjb2wucmVwbGFjZSgvXFxXL2csICcnKTtcblx0XHRcdGdyb3VwLnB1c2goaXRlbSk7XG5cdFx0XHRkYXRhW2l0ZW1dID0gY29sO1xuXHRcdH0pO1xuXG5cdFx0dGhpcy4kLmhlYWRlci5kYXRhID0gdW5kZWZpbmVkO1xuXHRcdHRoaXMuJC5oZWFkZXIuZ3JvdXAgPSB1bmRlZmluZWQ7XG5cblx0XHR0aGlzLiQuaGVhZGVyLmRhdGEgPSBkYXRhO1xuXHRcdHRoaXMuJC5oZWFkZXIuZ3JvdXAgPSBncm91cDtcblx0fVxuXG5cdHNldFNlbGVjdGFibGUoKSB7XG5cdFx0aWYoIXRoaXMuc2VsZWN0YWJsZSlcblx0XHRcdHJldHVybjtcblxuXHRcdHRoaXMuJC5zZWxlY3Rpb24uYWRkRXZlbnRMaXN0ZW5lcignZGF0YS1jaGFuZ2VkJywgZnVuY3Rpb24oZSkge1xuXHRcdFx0dGhpcy5pbnRlcm5hbCA9IHRydWU7IC8vIGludGVybmFsIHNldHRpbmcgb2YgdGhpcy5zZWxlY3RlZCBzbyBkbyBub3QgZXhlY3V0ZSB0aGUgaW1wbGVtZW50YXRpb24gb2YgdGhlIHNldFNlbGVjdGVkIG9ic2VydmVyIGJlbG93XG5cdFx0XHR0aGlzLnNlbGVjdGVkID0gdHlwZW9mIGUuZGV0YWlsLnZhbHVlW3RoaXMuc2VsZWN0aW9uVHlwZV0gIT09ICd1bmRlZmluZWQnID8gZS5kZXRhaWwudmFsdWVbdGhpcy5zZWxlY3Rpb25UeXBlXSA6IGUuZGV0YWlsLnZhbHVlO1xuXHRcdFx0dGhpcy5pbnRlcm5hbCA9IGZhbHNlO1xuXHRcdFx0dGhpcy5maXJlKCdoZWFkZXItc2VsZWN0aW9uLWNoYW5nZWQnLCB7c2VsZWN0ZWQ6IHRoaXMuc2VsZWN0ZWR9KTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0c2V0U2VsZWN0ZWQoKSB7XG5cdFx0aWYoIXRoaXMuc2VsZWN0YWJsZSB8fCB0aGlzLmludGVybmFsKVxuXHRcdFx0cmV0dXJuO1xuXG5cdFx0bGV0IGtleSA9IHRoaXMuc2VsZWN0aW9uVHlwZSA9PT0gJ2Jvb2xlYW4nID8gJ2Jvb2xlYW4nIDogJ3N0cmluZyc7XG5cdFx0dGhpcy4kLnNlbGVjdGlvbi5ncm91cCA9IFtrZXldO1xuXHRcdGxldCBzZWxlY3Rpb25EYXRhID0ge307XG5cblx0XHRsZXQgdmFsdWUgPSB0aGlzLnNlbGVjdGlvblR5cGUgPT09ICdib29sZWFuJyA/IHRoaXMuc2VsZWN0ZWQgOiAnJztcblx0XHRzZWxlY3Rpb25EYXRhW2tleV0gPSB2YWx1ZTtcblx0XHR0aGlzLiQuc2VsZWN0aW9uLmRhdGEgPSBzZWxlY3Rpb25EYXRhO1xuXHR9XG59XG5cblBvbHltZXIoVGFibGVIZWFkZXIpOyJdfQ==
'use strict';

System.register('common/layout/sb-table-row/TableRow.js', [], function (_export, _context) {
	var _createClass, TableRow;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('TableRow', TableRow = function () {
				function TableRow() {
					_classCallCheck(this, TableRow);
				}

				_createClass(TableRow, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-table-row';
						this.properties = {
							cell: String,
							cols: Array,
							colsDisplay: Object,
							data: {
								type: Object,
								notify: true
							},
							model: {
								type: Object,
								value: null
							},
							selectable: {
								type: Boolean,
								value: false
							},
							selected: {
								type: Boolean,
								value: false
							},
							selectionType: {
								type: String,
								value: 'boolean'
							},
							selectionIdDataPath: {
								type: String,
								value: 'Id'
							}
						};
					}
				}, {
					key: 'buildRow',
					value: function buildRow() {
						this.$.row.data = undefined;
						this.$.row.groupDisplay = undefined;
						this.$.row.group = undefined;

						this.$.row.data = this.data;
						this.$.row.groupDisplay = this.colsDisplay;
						this.$.row.primaryIndex = 0;
						this.$.row.group = this.cols;

						this.rowDataChangedListener = this.rowDataChangedListener || function (e) {
							if (e.detail.path) this.set(e.detail.path, e.detail.value);
						}.bind(this);

						this.$.row.removeEventListener('data-changed', this.rowDataChangedListener);
						this.$.row.addEventListener('data-changed', this.rowDataChangedListener);
					}
				}, {
					key: 'setSelectable',
					value: function setSelectable() {
						if (!this.selectable) return;

						this.$.selection.addEventListener('data-changed', function (e) {
							this.internal = true;
							this.selected = typeof e.detail.value[this.selectionType] !== 'undefined' ? e.detail.value[this.selectionType] : e.detail.value;
							this.internal = false;
							this.fire('selection-changed', { selected: this.selected, Id: this.get('data.' + this.selectionIdDataPath) });
						}.bind(this));
					}
				}, {
					key: 'setSelected',
					value: function setSelected() {
						if (!this.selectable || this.internal) return;

						this.$.selection.group = [this.selectionType];
						var selectionData = {};
						selectionData[this.selectionType] = this.selected;
						this.$.selection.data = selectionData;
					}
				}, {
					key: 'select',
					value: function select(e) {
						var rootTarget = Polymer.dom(e).rootTarget;
						var tagName = rootTarget && rootTarget.tagName ? rootTarget.tagName.toLowerCase() : '';
						if (tagName === 'sb-group') this.selected = !this.selected;
						this.$.row.fire('group-selected', { selected: this.selected });
					}
				}, {
					key: 'expand',
					value: function expand(e) {
						this.expanded = !this.expanded;
						this.$.row.fire('group-expanded', { expanded: this.expanded, path: Polymer.dom(e).path });
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['buildRow(cell, cols, colsDisplay, data)', 'setSelectable(selectable)', 'setSelected(selected, selectable, selectionType)'];
					}
				}]);

				return TableRow;
			}());

			_export('TableRow', TableRow);

			Polymer(TableRow);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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dEIsT0FERDs7QUFHQSxXQUFLLENBQUwsQ0FBTyxTQUFQLENBQWlCLEtBQWpCLEdBQXlCLENBQUMsS0FBSyxhQUFMLENBQTFCLENBSmE7QUFLYixVQUFJLGdCQUFnQixFQUFoQixDQUxTO0FBTWIsb0JBQWMsS0FBSyxhQUFMLENBQWQsR0FBb0MsS0FBSyxRQUFMLENBTnZCO0FBT2IsV0FBSyxDQUFMLENBQU8sU0FBUCxDQUFpQixJQUFqQixHQUF3QixhQUF4QixDQVBhOzs7OzRCQVVQLEdBQUc7QUFDVCxVQUFJLGFBQWEsUUFBUSxHQUFSLENBQVksQ0FBWixFQUFlLFVBQWYsQ0FEUjtBQUVULFVBQUksVUFBVSxjQUFjLFdBQVcsT0FBWCxHQUFxQixXQUFXLE9BQVgsQ0FBbUIsV0FBbkIsRUFBbkMsR0FBc0UsRUFBdEUsQ0FGTDtBQUdULFVBQUcsWUFBWSxVQUFaLEVBQ0YsS0FBSyxRQUFMLEdBQWdCLENBQUMsS0FBSyxRQUFMLENBRGxCO0FBRUEsV0FBSyxDQUFMLENBQU8sR0FBUCxDQUFXLElBQVgsQ0FBZ0IsZ0JBQWhCLEVBQWtDLEVBQUMsVUFBVSxLQUFLLFFBQUwsRUFBN0MsRUFMUzs7Ozs0QkFRSCxHQUFHO0FBQ1QsV0FBSyxRQUFMLEdBQWdCLENBQUMsS0FBSyxRQUFMLENBRFI7QUFFVCxXQUFLLENBQUwsQ0FBTyxHQUFQLENBQVcsSUFBWCxDQUFnQixnQkFBaEIsRUFBa0MsRUFBQyxVQUFVLEtBQUssUUFBTCxFQUFlLE1BQU0sUUFBUSxHQUFSLENBQVksQ0FBWixFQUFlLElBQWYsRUFBbEUsRUFGUzs7Ozt5QkF0RE07QUFDZixhQUFPLENBQUMseUNBQUQsRUFBNEMsMkJBQTVDLEVBQXlFLGtEQUF6RSxDQUFQLENBRGU7Ozs7V0FuQ0o7Ozs7O0FBK0ZiLFdBQVEsUUFBUiIsImZpbGUiOiJUYWJsZVJvdy5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBUYWJsZVJvdyB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi10YWJsZS1yb3cnO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdGNlbGw6IFN0cmluZywgLy8gbmFtZSBvZiB0aGUgY29tcG9uZW50IHRoYXQgcmVwcmVzZW50cyBhbiB0YWJsZSBjZWxsIGluIHRoZSByb3dcblx0XHRcdGNvbHM6IEFycmF5LCAvLyBhcnJheSBvZiBzdHJpbmdzIHRoYXQgcmVwcmVzZW50cyB0aGUgY29sdW1uc1xuXHRcdFx0Y29sc0Rpc3BsYXk6IE9iamVjdCwvLyBtYXAgd2hvc2Uga2V5cyBtYXRjaCB0aGUgY29scyBhcnJheSBpdGVtcyBhbmQgdmFsdWUgaXMgdXNlZCBmb3IgZGlzcGxheSBwdXJwb3Nlc1xuXHRcdFx0ZGF0YTogeyAvLyBjb250YWlucyB0aGUgZ3JvdXAgZGF0YSB0aGF0IGNhbiBiZSBkZS1yZWZlcmVuY2VkIHVzaW5nIHRoZSB2YWx1ZXMgaW5zaWRlIG9mIHRoZSBncm91cCBhcnJheVxuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdG5vdGlmeTogdHJ1ZVxuXHRcdFx0fSxcblx0XHRcdG1vZGVsOiB7IC8vIG9iamVjdCB0byBwYXNzIHRocm91Z2ggdG8gZWFjaCBjZWxsIGl0ZW0gY29tcG9uZW50IChvcHRpb25hbClcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogbnVsbFxuXHRcdFx0fSxcblx0XHRcdHNlbGVjdGFibGU6IHsvLyB0cnVlIGlmIHRoZSByb3cncyBsZWZ0IG1vc3QgY29sdW1uIGlzIHNlbGVjdGFibGVcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IGZhbHNlXG5cdFx0XHR9LFxuXHRcdFx0c2VsZWN0ZWQ6IHsgLy8gdHJ1ZSBpZiB0aGUgcm93IGlzIHNlbGVjdGFibGUgYW5kIHNob3VsZCBiZSBzZWxlY3RlZFxuXHRcdFx0XHR0eXBlOiBCb29sZWFuLFxuXHRcdFx0XHR2YWx1ZTogZmFsc2Vcblx0XHRcdH0sXG5cdFx0XHRzZWxlY3Rpb25UeXBlOiB7IC8vIFwiYm9vbGVhblwiIGZvciBjaGVja2JveCBvciBcInJhZGlvXCIgZm9yIHJhZGlvXG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0dmFsdWU6ICdib29sZWFuJ1xuXHRcdFx0fSxcblx0XHRcdHNlbGVjdGlvbklkRGF0YVBhdGg6IHsgLy8gcGF0aCBvbiB0aGUgZGF0YSBvYmplY3QgdGhhdCBjb250YWlucyB0aGUgc2VsZWN0aW9uIGlkXG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0dmFsdWU6ICdJZCdcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHRnZXQgb2JzZXJ2ZXJzKCkge1xuXHRcdHJldHVybiBbJ2J1aWxkUm93KGNlbGwsIGNvbHMsIGNvbHNEaXNwbGF5LCBkYXRhKScsICdzZXRTZWxlY3RhYmxlKHNlbGVjdGFibGUpJywgJ3NldFNlbGVjdGVkKHNlbGVjdGVkLCBzZWxlY3RhYmxlLCBzZWxlY3Rpb25UeXBlKSddO1xuXHR9XG5cblx0YnVpbGRSb3coKSB7XG5cdFx0dGhpcy4kLnJvdy5kYXRhID0gdW5kZWZpbmVkO1xuXHRcdHRoaXMuJC5yb3cuZ3JvdXBEaXNwbGF5ID0gdW5kZWZpbmVkO1xuXHRcdHRoaXMuJC5yb3cuZ3JvdXAgPSB1bmRlZmluZWQ7XG5cblx0XHR0aGlzLiQucm93LmRhdGEgPSB0aGlzLmRhdGE7XG5cdFx0dGhpcy4kLnJvdy5ncm91cERpc3BsYXkgPSB0aGlzLmNvbHNEaXNwbGF5O1xuXHRcdHRoaXMuJC5yb3cucHJpbWFyeUluZGV4ID0gMDtcblx0XHR0aGlzLiQucm93Lmdyb3VwID0gdGhpcy5jb2xzO1xuXG5cdFx0dGhpcy5yb3dEYXRhQ2hhbmdlZExpc3RlbmVyID0gdGhpcy5yb3dEYXRhQ2hhbmdlZExpc3RlbmVyIHx8IGZ1bmN0aW9uKGUpIHtcblx0XHRcdGlmIChlLmRldGFpbC5wYXRoKVxuXHRcdFx0XHR0aGlzLnNldChlLmRldGFpbC5wYXRoLCBlLmRldGFpbC52YWx1ZSk7XG5cdFx0fS5iaW5kKHRoaXMpO1xuXG5cdFx0Ly8gcHJvcGFnYXRlIGRhdGEgY2hhbmdlIG9uIHNiLWdyb3VwIHRocm91Z2ggdG8gdGhpcyBjb21wb25lbnRcblx0XHR0aGlzLiQucm93LnJlbW92ZUV2ZW50TGlzdGVuZXIoJ2RhdGEtY2hhbmdlZCcsIHRoaXMucm93RGF0YUNoYW5nZWRMaXN0ZW5lcik7XG5cdFx0dGhpcy4kLnJvdy5hZGRFdmVudExpc3RlbmVyKCdkYXRhLWNoYW5nZWQnLCB0aGlzLnJvd0RhdGFDaGFuZ2VkTGlzdGVuZXIpO1xuXHR9XG5cblx0c2V0U2VsZWN0YWJsZSgpIHtcblx0XHRpZighdGhpcy5zZWxlY3RhYmxlKVxuXHRcdFx0cmV0dXJuO1xuXG5cdFx0dGhpcy4kLnNlbGVjdGlvbi5hZGRFdmVudExpc3RlbmVyKCdkYXRhLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHR0aGlzLmludGVybmFsID0gdHJ1ZTsgLy8gaW50ZXJuYWwgc2V0dGluZyBvZiB0aGlzLnNlbGVjdGVkIHNvIGRvIG5vdCBleGVjdXRlIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgc2V0U2VsZWN0ZWQgb2JzZXJ2ZXIgYmVsb3dcblx0XHRcdHRoaXMuc2VsZWN0ZWQgPSB0eXBlb2YgZS5kZXRhaWwudmFsdWVbdGhpcy5zZWxlY3Rpb25UeXBlXSAhPT0gJ3VuZGVmaW5lZCcgPyBlLmRldGFpbC52YWx1ZVt0aGlzLnNlbGVjdGlvblR5cGVdIDogZS5kZXRhaWwudmFsdWU7XG5cdFx0XHR0aGlzLmludGVybmFsID0gZmFsc2U7XG5cdFx0XHR0aGlzLmZpcmUoJ3NlbGVjdGlvbi1jaGFuZ2VkJywge3NlbGVjdGVkOiB0aGlzLnNlbGVjdGVkLCBJZDogdGhpcy5nZXQoJ2RhdGEuJyArIHRoaXMuc2VsZWN0aW9uSWREYXRhUGF0aCl9KTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0c2V0U2VsZWN0ZWQoKSB7XG5cdFx0aWYoIXRoaXMuc2VsZWN0YWJsZSB8fCB0aGlzLmludGVybmFsKVxuXHRcdFx0cmV0dXJuO1xuXG5cdFx0dGhpcy4kLnNlbGVjdGlvbi5ncm91cCA9IFt0aGlzLnNlbGVjdGlvblR5cGVdO1xuXHRcdHZhciBzZWxlY3Rpb25EYXRhID0ge307XG5cdFx0c2VsZWN0aW9uRGF0YVt0aGlzLnNlbGVjdGlvblR5cGVdID0gdGhpcy5zZWxlY3RlZDtcblx0XHR0aGlzLiQuc2VsZWN0aW9uLmRhdGEgPSBzZWxlY3Rpb25EYXRhO1xuXHR9XG5cblx0c2VsZWN0KGUpIHtcblx0XHRsZXQgcm9vdFRhcmdldCA9IFBvbHltZXIuZG9tKGUpLnJvb3RUYXJnZXQ7XG5cdFx0bGV0IHRhZ05hbWUgPSByb290VGFyZ2V0ICYmIHJvb3RUYXJnZXQudGFnTmFtZSA/IHJvb3RUYXJnZXQudGFnTmFtZS50b0xvd2VyQ2FzZSgpIDogJyc7XG5cdFx0aWYodGFnTmFtZSA9PT0gJ3NiLWdyb3VwJylcblx0XHRcdHRoaXMuc2VsZWN0ZWQgPSAhdGhpcy5zZWxlY3RlZDtcblx0XHR0aGlzLiQucm93LmZpcmUoJ2dyb3VwLXNlbGVjdGVkJywge3NlbGVjdGVkOiB0aGlzLnNlbGVjdGVkfSk7XG5cdH1cblxuXHRleHBhbmQoZSkge1xuXHRcdHRoaXMuZXhwYW5kZWQgPSAhdGhpcy5leHBhbmRlZDtcblx0XHR0aGlzLiQucm93LmZpcmUoJ2dyb3VwLWV4cGFuZGVkJywge2V4cGFuZGVkOiB0aGlzLmV4cGFuZGVkLCBwYXRoOiBQb2x5bWVyLmRvbShlKS5wYXRofSk7XG5cdH1cbn1cblxuUG9seW1lcihUYWJsZVJvdyk7Il19
'use strict';

System.register('common/layout/sb-tabs/Tabs.js', [], function (_export, _context) {
	var _createClass, Tabs;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('Tabs', Tabs = function () {
				function Tabs() {
					_classCallCheck(this, Tabs);
				}

				_createClass(Tabs, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-tabs';
						this.properties = {
							tabs: Array,
							pageComponent: String,
							pageData: {
								type: Object,
								value: {}
							},
							commonData: {
								type: Object,
								value: {}
							},
							selectedTabIndex: {
								type: Number,
								value: 0,
								observer: 'handleSelectedChanged'
							},
							tabsClass: {
								type: String,
								value: 'horizontal layout center-justified'
							},
							usePagination: {
								type: Boolean,
								value: false
							},
							paginationClass: {
								type: String,
								value: 'horizontal layout center-justified'
							}
						};
					}
				}, {
					key: 'render',
					value: function render() {
						this.enforceValidTabSelected();
						this.buildTabs();
					}
				}, {
					key: 'buildTabs',
					value: function buildTabs() {
						var template = this.$.pages.querySelector('template');
						if (template) Polymer.dom(template.parentNode).removeChild(template);

						template = document.createElement('template', 'dom-bind');
						template.pageData = this.pageData;
						template.commonData = this.commonData;
						this.buildPages(template);
						Polymer.dom(this.$.pages).appendChild(template);
					}
				}, {
					key: 'buildPages',
					value: function buildPages(template) {
						var doc = template.content.ownerDocument;
						this.tabs.forEach(function (tab) {
							var d = doc.createElement('div');
							var elem = doc.createElement(this.pageComponent);
							Polymer.dom(elem).setAttribute('name', tab.name);
							Polymer.dom(elem).setAttribute('label', tab.label);
							Polymer.dom(elem).setAttribute('page-data', '[[pageData.' + tab.name + ']]');
							Polymer.dom(elem).setAttribute('common-data', '[[commonData]]');
							Polymer.dom(d).appendChild(elem);
							Polymer.dom(template.content).appendChild(d);
						}.bind(this));
					}
				}, {
					key: 'setPaginationListener',
					value: function setPaginationListener() {
						if (!this.usePagination) return;

						this.addEventListener('pagination-changed', function (e) {
							this.selectedTabIndex = e.detail.index;
						});
					}
				}, {
					key: 'handleSelectedChanged',
					value: function handleSelectedChanged() {
						this.enforceValidTabSelected();
						this.fire('selected-tab-changed', this.selectedTabIndex);
					}
				}, {
					key: 'enforceValidTabSelected',
					value: function enforceValidTabSelected() {
						if (this.tabs && this.tabs.length <= this.selectedTabIndex) this.selectedTabIndex = 0;
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['render(tabs, pageComponent)', 'setPaginationListener(usePagination)'];
					}
				}]);

				return Tabs;
			}());

			_export('Tabs', Tabs);

			Polymer(Tabs);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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U0E7QUFDdkIsV0FBSyx1QkFBTCxHQUR1QjtBQUV2QixXQUFLLElBQUwsQ0FBVSxzQkFBVixFQUFrQyxLQUFLLGdCQUFMLENBQWxDLENBRnVCOzs7OytDQUtFO0FBQ3pCLFVBQUksS0FBSyxJQUFMLElBQWEsS0FBSyxJQUFMLENBQVUsTUFBVixJQUFvQixLQUFLLGdCQUFMLEVBQ3BDLEtBQUssZ0JBQUwsR0FBd0IsQ0FBeEIsQ0FERDs7Ozt5QkFsRGU7QUFDZixhQUFPLENBQUMsNkJBQUQsRUFBZ0Msc0NBQWhDLENBQVAsQ0FEZTs7OztXQW5DSjs7Ozs7QUEwRmIsV0FBUSxJQUFSIiwiZmlsZSI6IlRhYnMuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgVGFicyB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi10YWJzJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSB7XG5cdFx0XHR0YWJzOiBBcnJheSwgLy8gYXJyYXkgb2YgdGFiIG9iamVjdHMgdGhhdCBoYXMgYSBuYW1lIGFuZCBsYWJlbCBwcm9wZXJ0aWVzXG5cdFx0XHRwYWdlQ29tcG9uZW50OiBTdHJpbmcsIC8vIG5hbWUgb2YgZHluYW1pYyBwYWdlIGNvbXBvbmVudFxuXHRcdFx0cGFnZURhdGE6IHsgLy8gb2JqZWN0IHdpdGgga2V5cyB0aGF0IG1hdGNoIHRoZSB0YWIubmFtZSBzbyBlYWNoIHBhZ2UgY2FuIGdldCBwYWdlIHNwZWNpZmljIGRhdGFcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZToge31cblx0XHRcdH0sXG5cdFx0XHRjb21tb25EYXRhOiB7IC8vIG9iamVjdCB0aGF0IHdpbGwgYmUgcGFzc2VkIHRocm91Z2ggdG8gYWxsIHBhZ2VzXG4gXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiB7fVxuXHRcdFx0fSxcbiBcdFx0XHRzZWxlY3RlZFRhYkluZGV4OiB7IC8vIHRoZSBpbmRleCBvZiB0aGUgY3VycmVudCBzZWxlY3RlZCB0YWJcblx0XHRcdFx0dHlwZTogTnVtYmVyLFxuXHRcdFx0XHR2YWx1ZTogMCxcblx0XHRcdFx0b2JzZXJ2ZXI6ICdoYW5kbGVTZWxlY3RlZENoYW5nZWQnXG5cdFx0XHR9LFxuXHRcdFx0dGFic0NsYXNzOiB7IC8vIGNsYXNzIHZhbHVlIG9mIHRoZSBwYXBlci10YWJzIHN1YiBjb21wb25lbnRcblx0XHRcdFx0dHlwZTogU3RyaW5nLFxuXHRcdFx0XHR2YWx1ZTogJ2hvcml6b250YWwgbGF5b3V0IGNlbnRlci1qdXN0aWZpZWQnXG5cdFx0XHR9LFxuXHRcdFx0dXNlUGFnaW5hdGlvbjogeyAvLyBpZiB0cnVlIHVzZSBwYWdpbmF0aW9uIHdpZGdldCB0byBuYXZpZ2F0ZSB0aHJvdWdoIHRhYnNcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IGZhbHNlXG5cdFx0XHR9LFxuXHRcdFx0cGFnaW5hdGlvbkNsYXNzOiB7IC8vIGNsYXNzIHZhbHVlIG9mIHRoZSBkaXYgd3JhcHBlciBvZiBzYi1wYWdpbmF0aW9uIGlmIHVzZVBhZ2luYXRpb24gaXMgdHJ1ZVxuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdHZhbHVlOiAnaG9yaXpvbnRhbCBsYXlvdXQgY2VudGVyLWp1c3RpZmllZCdcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHRnZXQgb2JzZXJ2ZXJzKCkge1xuXHRcdHJldHVybiBbJ3JlbmRlcih0YWJzLCBwYWdlQ29tcG9uZW50KScsICdzZXRQYWdpbmF0aW9uTGlzdGVuZXIodXNlUGFnaW5hdGlvbiknXTtcblx0fVxuXG5cdHJlbmRlcigpIHtcblx0XHR0aGlzLmVuZm9yY2VWYWxpZFRhYlNlbGVjdGVkKCk7XG5cdFx0dGhpcy5idWlsZFRhYnMoKTtcblx0fVxuXG5cdGJ1aWxkVGFicygpIHtcblx0XHRsZXQgdGVtcGxhdGUgPSB0aGlzLiQucGFnZXMucXVlcnlTZWxlY3RvcigndGVtcGxhdGUnKTtcblx0XHRpZih0ZW1wbGF0ZSkgLy8gcmVtb3ZlIHRlbXBsYXRlIGlmIGFscmVhZHkgZXhpc3RzXG5cdFx0XHRQb2x5bWVyLmRvbSh0ZW1wbGF0ZS5wYXJlbnROb2RlKS5yZW1vdmVDaGlsZCh0ZW1wbGF0ZSk7XG5cblx0XHR0ZW1wbGF0ZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ3RlbXBsYXRlJywgJ2RvbS1iaW5kJyk7XG5cdFx0dGVtcGxhdGUucGFnZURhdGEgPSB0aGlzLnBhZ2VEYXRhO1xuXHRcdHRlbXBsYXRlLmNvbW1vbkRhdGEgPSB0aGlzLmNvbW1vbkRhdGE7XG5cdFx0dGhpcy5idWlsZFBhZ2VzKHRlbXBsYXRlKTtcblx0XHRQb2x5bWVyLmRvbSh0aGlzLiQucGFnZXMpLmFwcGVuZENoaWxkKHRlbXBsYXRlKTtcblx0fVxuXG5cdGJ1aWxkUGFnZXModGVtcGxhdGUpIHtcblx0XHRsZXQgZG9jID0gdGVtcGxhdGUuY29udGVudC5vd25lckRvY3VtZW50O1xuXHRcdHRoaXMudGFicy5mb3JFYWNoKGZ1bmN0aW9uKHRhYikge1xuXHRcdFx0bGV0IGQgPSBkb2MuY3JlYXRlRWxlbWVudCgnZGl2Jyk7XG5cdFx0XHRsZXQgZWxlbSA9IGRvYy5jcmVhdGVFbGVtZW50KHRoaXMucGFnZUNvbXBvbmVudCk7XG5cdFx0XHRQb2x5bWVyLmRvbShlbGVtKS5zZXRBdHRyaWJ1dGUoJ25hbWUnLCB0YWIubmFtZSk7XG5cdFx0XHRQb2x5bWVyLmRvbShlbGVtKS5zZXRBdHRyaWJ1dGUoJ2xhYmVsJywgdGFiLmxhYmVsKTtcblx0XHRcdFBvbHltZXIuZG9tKGVsZW0pLnNldEF0dHJpYnV0ZSgncGFnZS1kYXRhJywgJ1tbcGFnZURhdGEuJyArIHRhYi5uYW1lICsgJ11dJyk7XG5cdFx0XHRQb2x5bWVyLmRvbShlbGVtKS5zZXRBdHRyaWJ1dGUoJ2NvbW1vbi1kYXRhJywgJ1tbY29tbW9uRGF0YV1dJyk7XG5cdFx0XHRQb2x5bWVyLmRvbShkKS5hcHBlbmRDaGlsZChlbGVtKTtcblx0XHRcdFBvbHltZXIuZG9tKHRlbXBsYXRlLmNvbnRlbnQpLmFwcGVuZENoaWxkKGQpO1xuXHRcdH0uYmluZCh0aGlzKSk7XG5cdH1cblxuXHRzZXRQYWdpbmF0aW9uTGlzdGVuZXIoKSB7XG5cdFx0aWYoIXRoaXMudXNlUGFnaW5hdGlvbilcblx0XHRcdHJldHVybjtcblxuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcigncGFnaW5hdGlvbi1jaGFuZ2VkJywgZnVuY3Rpb24gKGUpIHtcblx0XHRcdHRoaXMuc2VsZWN0ZWRUYWJJbmRleCA9IGUuZGV0YWlsLmluZGV4O1xuXHRcdH0pO1xuXHR9XG5cblx0aGFuZGxlU2VsZWN0ZWRDaGFuZ2VkKCkge1xuXHRcdHRoaXMuZW5mb3JjZVZhbGlkVGFiU2VsZWN0ZWQoKTtcblx0XHR0aGlzLmZpcmUoJ3NlbGVjdGVkLXRhYi1jaGFuZ2VkJywgdGhpcy5zZWxlY3RlZFRhYkluZGV4KTtcblx0fVxuXG5cdGVuZm9yY2VWYWxpZFRhYlNlbGVjdGVkKCkge1xuXHRcdGlmICh0aGlzLnRhYnMgJiYgdGhpcy50YWJzLmxlbmd0aCA8PSB0aGlzLnNlbGVjdGVkVGFiSW5kZXgpXG5cdFx0XHR0aGlzLnNlbGVjdGVkVGFiSW5kZXggPSAwO1xuXHR9XG59XG5cblBvbHltZXIoVGFicyk7Il19
'use strict';

System.register('common/services/sb-line-editor-cache-save/LineEditorCacheSaver.js', [], function (_export, _context) {
	var _createClass, LineEditorCacheSaver;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('LineEditorCacheSaver', LineEditorCacheSaver = function () {
				function LineEditorCacheSaver() {
					_classCallCheck(this, LineEditorCacheSaver);
				}

				_createClass(LineEditorCacheSaver, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-line-editor-cache-save';
						this.properties = {
							quote: Object,
							error: {
								type: String,
								notify: true
							}
						};
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.$.service.addEventListener('error-changed', function (e) {
							this.error = e.detail;
							console.log(e.detail);
						}.bind(this));
					}
				}, {
					key: 'save',
					value: function save() {
						this.$.service.transient = true;
						this.$.service.uid = this.quote.record.Id;
						this.$.service.model = this.quote;
						this.$.service.saver = null;
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['save(quote)'];
					}
				}]);

				return LineEditorCacheSaver;
			}());

			_export('LineEditorCacheSaver', LineEditorCacheSaver);

			Polymer(LineEditorCacheSaver);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkxpbmVFZGl0b3JDYWNoZVNhdmVyLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O21DQUFhOzs7Ozs7O3NDQUVLO0FBQ2hCLFdBQUssRUFBTCxHQUFVLDJCQUFWLENBRGdCO0FBRWhCLFdBQUssVUFBTCxHQUFrQjtBQUNqQixjQUFPLE1BQVA7QUFDQSxjQUFPO0FBQ04sY0FBTSxNQUFOO0FBQ0EsZ0JBQVEsSUFBUjtRQUZEO09BRkQsQ0FGZ0I7Ozs7NkJBZVQ7QUFDUCxXQUFLLENBQUwsQ0FBTyxPQUFQLENBQWUsZ0JBQWYsQ0FBZ0MsZUFBaEMsRUFBaUQsVUFBUyxDQUFULEVBQVk7QUFDNUQsWUFBSyxLQUFMLEdBQWEsRUFBRSxNQUFGLENBRCtDO0FBRTVELGVBQVEsR0FBUixDQUFZLEVBQUUsTUFBRixDQUFaLENBRjREO09BQVosQ0FHL0MsSUFIK0MsQ0FHMUMsSUFIMEMsQ0FBakQsRUFETzs7Ozs0QkFPRDtBQUNOLFdBQUssQ0FBTCxDQUFPLE9BQVAsQ0FBZSxTQUFmLEdBQTJCLElBQTNCLENBRE07QUFFTixXQUFLLENBQUwsQ0FBTyxPQUFQLENBQWUsR0FBZixHQUFxQixLQUFLLEtBQUwsQ0FBVyxNQUFYLENBQWtCLEVBQWxCLENBRmY7QUFHTixXQUFLLENBQUwsQ0FBTyxPQUFQLENBQWUsS0FBZixHQUF1QixLQUFLLEtBQUwsQ0FIakI7QUFJTixXQUFLLENBQUwsQ0FBTyxPQUFQLENBQWUsS0FBZixHQUF1QixJQUF2QixDQUpNOzs7O3lCQVhTO0FBQ2YsYUFBTyxDQUFDLGFBQUQsQ0FBUCxDQURlOzs7O1dBYko7Ozs7O0FBK0JiLFdBQVEsb0JBQVIiLCJmaWxlIjoiTGluZUVkaXRvckNhY2hlU2F2ZXIuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgTGluZUVkaXRvckNhY2hlU2F2ZXIge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItbGluZS1lZGl0b3ItY2FjaGUtc2F2ZSc7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0ge1xuXHRcdFx0cXVvdGU6IE9iamVjdCxcblx0XHRcdGVycm9yOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0bm90aWZ5OiB0cnVlXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Z2V0IG9ic2VydmVycygpIHtcblx0XHRyZXR1cm4gWydzYXZlKHF1b3RlKSddO1xuXHR9XG5cblx0cmVhZHkoKSB7XG5cdFx0dGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcignZXJyb3ItY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcblx0XHRcdHRoaXMuZXJyb3IgPSBlLmRldGFpbDtcblx0XHRcdGNvbnNvbGUubG9nKGUuZGV0YWlsKTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cdFxuXHRzYXZlKCkge1xuXHRcdHRoaXMuJC5zZXJ2aWNlLnRyYW5zaWVudCA9IHRydWU7XG5cdFx0dGhpcy4kLnNlcnZpY2UudWlkID0gdGhpcy5xdW90ZS5yZWNvcmQuSWQ7XG5cdFx0dGhpcy4kLnNlcnZpY2UubW9kZWwgPSB0aGlzLnF1b3RlO1xuXHRcdHRoaXMuJC5zZXJ2aWNlLnNhdmVyID0gbnVsbDtcblx0fVxufVxuUG9seW1lcihMaW5lRWRpdG9yQ2FjaGVTYXZlcik7XG4iXX0=
'use strict';

System.register('common/services/sb-line-editor-calculate/LineEditorCalculator.js', [], function (_export, _context) {
    var _createClass, LineEditorCalculator;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('LineEditorCalculator', LineEditorCalculator = function () {
                function LineEditorCalculator() {
                    _classCallCheck(this, LineEditorCalculator);
                }

                _createClass(LineEditorCalculator, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-line-editor-calculate';
                        this.properties = {
                            error: {
                                type: String,
                                notify: true
                            }
                        };
                    }
                }, {
                    key: 'ready',
                    value: function ready() {
                        this.$.service.addEventListener('response-changed', function (e) {
                            if (e.detail.value) {
                                this.fire('quote-changed', {
                                    quote: e.detail.value
                                });
                            }
                        }.bind(this));

                        this.$.service.addEventListener('error-changed', function (e) {
                            if (e.detail.value) this.error = e.detail.value;
                        }.bind(this));
                    }
                }, {
                    key: 'calculate',
                    value: function calculate() {
                        if (!this.quote) {
                            return;
                        };
                        if (this.settings.usesClientCalculator) {
                            console.log('JSQC');
                        } else {
                            this.$.service.model = this.quote;
                        }
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['calculate(quote)'];
                    }
                }]);

                return LineEditorCalculator;
            }());

            _export('LineEditorCalculator', LineEditorCalculator);

            Polymer(LineEditorCalculator);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkxpbmVFZGl0b3JDYWxjdWxhdG9yLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzRDQUFhOzs7Ozs7O3FEQUVRO0FBQ2IsNkJBQUssRUFBTCxHQUFVLDBCQUFWLENBRGE7QUFFYiw2QkFBSyxVQUFMLEdBQWtCO0FBQ2QsbUNBQU87QUFDSCxzQ0FBTSxNQUFOO0FBQ0Esd0NBQVEsSUFBUjs2QkFGSjt5QkFESixDQUZhOzs7OzRDQWNUO0FBQ0osNkJBQUssQ0FBTCxDQUFPLE9BQVAsQ0FBZSxnQkFBZixDQUFnQyxrQkFBaEMsRUFBb0QsVUFBUyxDQUFULEVBQVk7QUFDNUQsZ0NBQUksRUFBRSxNQUFGLENBQVMsS0FBVCxFQUFnQjtBQUNoQixxQ0FBSyxJQUFMLENBQVUsZUFBVixFQUEyQjtBQUN2QiwyQ0FBTyxFQUFFLE1BQUYsQ0FBUyxLQUFUO2lDQURYLEVBRGdCOzZCQUFwQjt5QkFEZ0QsQ0FNbEQsSUFOa0QsQ0FNN0MsSUFONkMsQ0FBcEQsRUFESTs7QUFTSiw2QkFBSyxDQUFMLENBQU8sT0FBUCxDQUFlLGdCQUFmLENBQWdDLGVBQWhDLEVBQWlELFVBQVMsQ0FBVCxFQUFZO0FBQ3pELGdDQUFJLEVBQUUsTUFBRixDQUFTLEtBQVQsRUFDQSxLQUFLLEtBQUwsR0FBYSxFQUFFLE1BQUYsQ0FBUyxLQUFULENBRGpCO3lCQUQ2QyxDQUcvQyxJQUgrQyxDQUcxQyxJQUgwQyxDQUFqRCxFQVRJOzs7O2dEQWVJO0FBQ1IsNEJBQUksQ0FBQyxLQUFLLEtBQUwsRUFBWTtBQUFFLG1DQUFGO3lCQUFqQixDQURRO0FBRVIsNEJBQUksS0FBSyxRQUFMLENBQWMsb0JBQWQsRUFBb0M7QUFDcEMsb0NBQVEsR0FBUixDQUFZLE1BQVosRUFEb0M7eUJBQXhDLE1BRU87QUFDSCxpQ0FBSyxDQUFMLENBQU8sT0FBUCxDQUFlLEtBQWYsR0FBdUIsS0FBSyxLQUFMLENBRHBCO3lCQUZQOzs7O3dDQXJCWTtBQUNaLCtCQUFPLENBQUMsa0JBQUQsQ0FBUCxDQURZOzs7O3VCQVpQOzs7OztBQXlDYixvQkFBUSxvQkFBUiIsImZpbGUiOiJMaW5lRWRpdG9yQ2FsY3VsYXRvci5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBMaW5lRWRpdG9yQ2FsY3VsYXRvciB7XG5cbiAgICBiZWZvcmVSZWdpc3RlcigpIHtcbiAgICAgICAgdGhpcy5pcyA9ICdzYi1saW5lLWVkaXRvci1jYWxjdWxhdGUnO1xuICAgICAgICB0aGlzLnByb3BlcnRpZXMgPSB7XG4gICAgICAgICAgICBlcnJvcjoge1xuICAgICAgICAgICAgICAgIHR5cGU6IFN0cmluZyxcbiAgICAgICAgICAgICAgICBub3RpZnk6IHRydWVcbiAgICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgIH1cblxuICAgIGdldCBvYnNlcnZlcnMoKSB7XG4gICAgICAgIHJldHVybiBbJ2NhbGN1bGF0ZShxdW90ZSknXTtcbiAgICB9XG5cbiAgICByZWFkeSgpIHtcbiAgICAgICAgdGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcigncmVzcG9uc2UtY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcbiAgICAgICAgICAgIGlmIChlLmRldGFpbC52YWx1ZSkge1xuICAgICAgICAgICAgICAgIHRoaXMuZmlyZSgncXVvdGUtY2hhbmdlZCcsIHtcbiAgICAgICAgICAgICAgICAgICAgcXVvdGU6IGUuZGV0YWlsLnZhbHVlXG4gICAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICB9XG4gICAgICAgIH0uYmluZCh0aGlzKSk7XG5cbiAgICAgICAgdGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcignZXJyb3ItY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcbiAgICAgICAgICAgIGlmIChlLmRldGFpbC52YWx1ZSlcbiAgICAgICAgICAgICAgICB0aGlzLmVycm9yID0gZS5kZXRhaWwudmFsdWU7XG4gICAgICAgIH0uYmluZCh0aGlzKSk7XG4gICAgfVxuXG4gICAgY2FsY3VsYXRlKCkge1xuICAgICAgICBpZiAoIXRoaXMucXVvdGUpIHsgcmV0dXJuIH07XG4gICAgICAgIGlmICh0aGlzLnNldHRpbmdzLnVzZXNDbGllbnRDYWxjdWxhdG9yKSB7XG4gICAgICAgICAgICBjb25zb2xlLmxvZygnSlNRQycpXG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICB0aGlzLiQuc2VydmljZS5tb2RlbCA9IHRoaXMucXVvdGU7XG4gICAgICAgIH1cbiAgICB9XG59XG5cblBvbHltZXIoTGluZUVkaXRvckNhbGN1bGF0b3IpOyJdfQ==
'use strict';

System.register('common/services/sb-line-editor-read/LineEditorReader.js', [], function (_export, _context) {
    var _createClass, LineEditorReader;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('LineEditorReader', LineEditorReader = function () {
                function LineEditorReader() {
                    _classCallCheck(this, LineEditorReader);
                }

                _createClass(LineEditorReader, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-line-editor-read';
                        this.properties = {
                            quoteId: String,
                            lineEditorModel: {
                                type: Object,
                                notify: true
                            },
                            error: {
                                type: String,
                                notify: true
                            }
                        };
                    }
                }, {
                    key: 'ready',
                    value: function ready() {
                        this.$.service.addEventListener('response-changed', function (e) {
                            if (e.detail.value) this.lineEditorModel = e.detail.value;
                        }.bind(this));

                        this.$.service.addEventListener('error-changed', function (e) {
                            if (e.detail.value) this.error = e.detail.value;
                        }.bind(this));
                    }
                }, {
                    key: 'read',
                    value: function read() {
                        this.$.service.uid = this.quoteId;
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['read(quoteId)'];
                    }
                }]);

                return LineEditorReader;
            }());

            _export('LineEditorReader', LineEditorReader);

            Polymer(LineEditorReader);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkxpbmVFZGl0b3JSZWFkZXIuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7d0NBQWE7Ozs7Ozs7cURBRVE7QUFDYiw2QkFBSyxFQUFMLEdBQVUscUJBQVYsQ0FEYTtBQUViLDZCQUFLLFVBQUwsR0FBa0I7QUFDZCxxQ0FBUyxNQUFUO0FBQ0EsNkNBQWlCO0FBQ2Isc0NBQU0sTUFBTjtBQUNBLHdDQUFRLElBQVI7NkJBRko7QUFJQSxtQ0FBTztBQUNILHNDQUFNLE1BQU47QUFDQSx3Q0FBUSxJQUFSOzZCQUZKO3lCQU5KLENBRmE7Ozs7NENBbUJUO0FBQ0osNkJBQUssQ0FBTCxDQUFPLE9BQVAsQ0FBZSxnQkFBZixDQUFnQyxrQkFBaEMsRUFBb0QsVUFBUyxDQUFULEVBQVk7QUFDNUQsZ0NBQUcsRUFBRSxNQUFGLENBQVMsS0FBVCxFQUNDLEtBQUssZUFBTCxHQUF1QixFQUFFLE1BQUYsQ0FBUyxLQUFULENBRDNCO3lCQURnRCxDQUdsRCxJQUhrRCxDQUc3QyxJQUg2QyxDQUFwRCxFQURJOztBQU1KLDZCQUFLLENBQUwsQ0FBTyxPQUFQLENBQWUsZ0JBQWYsQ0FBZ0MsZUFBaEMsRUFBaUQsVUFBUyxDQUFULEVBQVk7QUFDekQsZ0NBQUcsRUFBRSxNQUFGLENBQVMsS0FBVCxFQUNDLEtBQUssS0FBTCxHQUFhLEVBQUUsTUFBRixDQUFTLEtBQVQsQ0FEakI7eUJBRDZDLENBRy9DLElBSCtDLENBRzFDLElBSDBDLENBQWpELEVBTkk7Ozs7MkNBWUQ7QUFDSCw2QkFBSyxDQUFMLENBQU8sT0FBUCxDQUFlLEdBQWYsR0FBcUIsS0FBSyxPQUFMLENBRGxCOzs7O3dDQWhCUztBQUNaLCtCQUFPLENBQUMsZUFBRCxDQUFQLENBRFk7Ozs7dUJBakJQOzs7OztBQXNDYixvQkFBUSxnQkFBUiIsImZpbGUiOiJMaW5lRWRpdG9yUmVhZGVyLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIExpbmVFZGl0b3JSZWFkZXIge1xuXG4gICAgYmVmb3JlUmVnaXN0ZXIoKSB7XG4gICAgICAgIHRoaXMuaXMgPSAnc2ItbGluZS1lZGl0b3ItcmVhZCc7XG4gICAgICAgIHRoaXMucHJvcGVydGllcyA9IHtcbiAgICAgICAgICAgIHF1b3RlSWQ6IFN0cmluZyxcbiAgICAgICAgICAgIGxpbmVFZGl0b3JNb2RlbDoge1xuICAgICAgICAgICAgICAgIHR5cGU6IE9iamVjdCxcbiAgICAgICAgICAgICAgICBub3RpZnk6IHRydWVcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBlcnJvcjoge1xuICAgICAgICAgICAgICAgIHR5cGU6IFN0cmluZyxcbiAgICAgICAgICAgICAgICBub3RpZnk6IHRydWVcbiAgICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgIH1cblxuICAgIGdldCBvYnNlcnZlcnMoKSB7XG4gICAgICAgIHJldHVybiBbJ3JlYWQocXVvdGVJZCknXTtcbiAgICB9XG5cbiAgICByZWFkeSgpIHtcbiAgICAgICAgdGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcigncmVzcG9uc2UtY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcbiAgICAgICAgICAgIGlmKGUuZGV0YWlsLnZhbHVlKVxuICAgICAgICAgICAgICAgIHRoaXMubGluZUVkaXRvck1vZGVsID0gZS5kZXRhaWwudmFsdWU7XG4gICAgICAgIH0uYmluZCh0aGlzKSk7XG5cbiAgICAgICAgdGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcignZXJyb3ItY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcbiAgICAgICAgICAgIGlmKGUuZGV0YWlsLnZhbHVlKVxuICAgICAgICAgICAgICAgIHRoaXMuZXJyb3IgPSBlLmRldGFpbC52YWx1ZTtcbiAgICAgICAgfS5iaW5kKHRoaXMpKTtcbiAgICB9XG5cbiAgICByZWFkKCkge1xuICAgICAgICB0aGlzLiQuc2VydmljZS51aWQgPSB0aGlzLnF1b3RlSWQ7XG4gICAgfVxufVxuXG5Qb2x5bWVyKExpbmVFZGl0b3JSZWFkZXIpOyJdfQ==
'use strict';

System.register('dealdesk/services/sb-dd-model-read/DealDeskModelReader.js', [], function (_export, _context) {
    var _createClass, DealDeskModelReader;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('DealDeskModelReader', DealDeskModelReader = function () {
                function DealDeskModelReader() {
                    _classCallCheck(this, DealDeskModelReader);
                }

                _createClass(DealDeskModelReader, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-dd-model-read';
                        this.properties = {
                            recordId: String,
                            dealDeskModelRead: {
                                type: Object,
                                notify: true
                            },
                            error: {
                                type: String,
                                notify: true
                            }
                        };
                    }
                }, {
                    key: 'ready',
                    value: function ready() {
                        this.$.service.addEventListener('response-changed', function (e) {
                            var returnModel = e.detail.value;
                            this.$.validation.model = returnModel;
                        }.bind(this));
                        this.$.service.addEventListener('error-changed', function (e) {
                            this.error = e.detail.value;
                        }.bind(this));
                        this.$.validation.addEventListener('modelValidated', function (e) {
                            this.dealDeskModelRead = e.detail.model;
                            this.fire('showDealDesk');
                            this.fire('setIFrame');
                        }.bind(this));
                    }
                }, {
                    key: 'read',
                    value: function read() {
                        this.$.service.uid = this.recordId;
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['read(recordId)'];
                    }
                }]);

                return DealDeskModelReader;
            }());

            _export('DealDeskModelReader', DealDeskModelReader);

            Polymer(DealDeskModelReader);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrTW9kZWxSZWFkZXIuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7MkNBQWE7Ozs7Ozs7cURBRVE7QUFDYiw2QkFBSyxFQUFMLEdBQVUsa0JBQVYsQ0FEYTtBQUViLDZCQUFLLFVBQUwsR0FBa0I7QUFDZCxzQ0FBVSxNQUFWO0FBQ0EsK0NBQW1CO0FBQ2Ysc0NBQU0sTUFBTjtBQUNBLHdDQUFRLElBQVI7NkJBRko7QUFJQSxtQ0FBTztBQUNILHNDQUFNLE1BQU47QUFDQSx3Q0FBUSxJQUFSOzZCQUZKO3lCQU5KLENBRmE7Ozs7NENBbUJUO0FBQ0osNkJBQUssQ0FBTCxDQUFPLE9BQVAsQ0FBZSxnQkFBZixDQUFnQyxrQkFBaEMsRUFBb0QsVUFBUyxDQUFULEVBQVk7QUFDNUQsZ0NBQUksY0FBYyxFQUFFLE1BQUYsQ0FBUyxLQUFULENBRDBDO0FBRTVELGlDQUFLLENBQUwsQ0FBTyxVQUFQLENBQWtCLEtBQWxCLEdBQTBCLFdBQTFCLENBRjREO3lCQUFaLENBR2xELElBSGtELENBRzdDLElBSDZDLENBQXBELEVBREk7QUFLSiw2QkFBSyxDQUFMLENBQU8sT0FBUCxDQUFlLGdCQUFmLENBQWdDLGVBQWhDLEVBQWlELFVBQVMsQ0FBVCxFQUFZO0FBQ3pELGlDQUFLLEtBQUwsR0FBYSxFQUFFLE1BQUYsQ0FBUyxLQUFULENBRDRDO3lCQUFaLENBRS9DLElBRitDLENBRTFDLElBRjBDLENBQWpELEVBTEk7QUFRSiw2QkFBSyxDQUFMLENBQU8sVUFBUCxDQUFrQixnQkFBbEIsQ0FBbUMsZ0JBQW5DLEVBQXFELFVBQVMsQ0FBVCxFQUFZO0FBQzdELGlDQUFLLGlCQUFMLEdBQXlCLEVBQUUsTUFBRixDQUFTLEtBQVQsQ0FEb0M7QUFFN0QsaUNBQUssSUFBTCxDQUFVLGNBQVYsRUFGNkQ7QUFHN0QsaUNBQUssSUFBTCxDQUFVLFdBQVYsRUFINkQ7eUJBQVosQ0FJbkQsSUFKbUQsQ0FJOUMsSUFKOEMsQ0FBckQsRUFSSTs7OzsyQ0FlRDtBQUNILDZCQUFLLENBQUwsQ0FBTyxPQUFQLENBQWUsR0FBZixHQUFxQixLQUFLLFFBQUwsQ0FEbEI7Ozs7d0NBbkJTO0FBQ1osK0JBQU8sQ0FBQyxnQkFBRCxDQUFQLENBRFk7Ozs7dUJBakJQOzs7OztBQTBDYixvQkFBUyxtQkFBVCIsImZpbGUiOiJEZWFsRGVza01vZGVsUmVhZGVyLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIERlYWxEZXNrTW9kZWxSZWFkZXIge1xuXG4gICAgYmVmb3JlUmVnaXN0ZXIoKSB7XG4gICAgICAgIHRoaXMuaXMgPSAnc2ItZGQtbW9kZWwtcmVhZCc7XG4gICAgICAgIHRoaXMucHJvcGVydGllcyA9IHtcbiAgICAgICAgICAgIHJlY29yZElkOiBTdHJpbmcsXG4gICAgICAgICAgICBkZWFsRGVza01vZGVsUmVhZDoge1xuICAgICAgICAgICAgICAgIHR5cGU6IE9iamVjdCxcbiAgICAgICAgICAgICAgICBub3RpZnk6IHRydWVcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBlcnJvcjoge1xuICAgICAgICAgICAgICAgIHR5cGU6IFN0cmluZyxcbiAgICAgICAgICAgICAgICBub3RpZnk6IHRydWVcbiAgICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgIH1cblxuICAgIGdldCBvYnNlcnZlcnMoKSB7XG4gICAgICAgIHJldHVybiBbJ3JlYWQocmVjb3JkSWQpJ107XG4gICAgfVxuXG4gICAgcmVhZHkoKSB7XG4gICAgICAgIHRoaXMuJC5zZXJ2aWNlLmFkZEV2ZW50TGlzdGVuZXIoJ3Jlc3BvbnNlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG4gICAgICAgICAgICB2YXIgcmV0dXJuTW9kZWwgPSBlLmRldGFpbC52YWx1ZTtcbiAgICAgICAgICAgIHRoaXMuJC52YWxpZGF0aW9uLm1vZGVsID0gcmV0dXJuTW9kZWw7XG4gICAgICAgIH0uYmluZCh0aGlzKSk7XG4gICAgICAgIHRoaXMuJC5zZXJ2aWNlLmFkZEV2ZW50TGlzdGVuZXIoJ2Vycm9yLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG4gICAgICAgICAgICB0aGlzLmVycm9yID0gZS5kZXRhaWwudmFsdWU7XG4gICAgICAgIH0uYmluZCh0aGlzKSk7XG4gICAgICAgIHRoaXMuJC52YWxpZGF0aW9uLmFkZEV2ZW50TGlzdGVuZXIoJ21vZGVsVmFsaWRhdGVkJywgZnVuY3Rpb24oZSkge1xuICAgICAgICAgICAgdGhpcy5kZWFsRGVza01vZGVsUmVhZCA9IGUuZGV0YWlsLm1vZGVsO1xuICAgICAgICAgICAgdGhpcy5maXJlKCdzaG93RGVhbERlc2snKTtcbiAgICAgICAgICAgIHRoaXMuZmlyZSgnc2V0SUZyYW1lJyk7XG4gICAgICAgIH0uYmluZCh0aGlzKSk7XG4gICAgfVxuXG4gICAgcmVhZCgpIHtcbiAgICAgICAgdGhpcy4kLnNlcnZpY2UudWlkID0gdGhpcy5yZWNvcmRJZDtcbiAgICB9XG5cblxufVxuUG9seW1lciggRGVhbERlc2tNb2RlbFJlYWRlciApOyJdfQ==
'use strict';

System.register('dealdesk/services/sb-dd-model-save/DealDeskModelSaver.js', [], function (_export, _context) {
    var _createClass, DealDeskModelSaver;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('DealDeskModelSaver', DealDeskModelSaver = function () {
                function DealDeskModelSaver() {
                    _classCallCheck(this, DealDeskModelSaver);
                }

                _createClass(DealDeskModelSaver, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-dd-model-save';
                        this.properties = {
                            recordId: String,
                            dealDeskModelUpdated: {
                                type: Object,
                                notify: true
                            },
                            error: {
                                type: String,
                                notify: true
                            }
                        };
                    }
                }, {
                    key: 'ready',
                    value: function ready() {
                        this.$.service.addEventListener('response-changed', function (e) {
                            if (this.closeAfterSave == true) {
                                this.$.service.waiting = true;
                                setTimeout(function () {
                                    window.location.href = window.location.origin + '/' + e.detail.value.parentRecord.Id;
                                }, 0);
                            } else {
                                this.clearProps();
                                this.dealDeskModelUpdated = e.detail.value;
                                this.fire('cleanAfterSave');
                                this.fire('reloadIFrame');
                            }
                        }.bind(this));
                        this.$.service.addEventListener('error-changed', function (e) {
                            this.clearProps();
                            this.error = e.detail.value;
                        }.bind(this));
                    }
                }, {
                    key: 'save',
                    value: function save() {
                        this.$.service.model = this.dealDeskModelSave;
                    }
                }, {
                    key: 'clearProps',
                    value: function clearProps() {
                        this.dealDeskModelSave = undefined;
                        this.closeAfterSave = undefined;
                        this.$.service.model = undefined;
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['save(dealDeskModelSave, closeAfterSave)'];
                    }
                }]);

                return DealDeskModelSaver;
            }());

            _export('DealDeskModelSaver', DealDeskModelSaver);

            Polymer(DealDeskModelSaver);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrTW9kZWxTYXZlci5qcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzswQ0FBYTs7Ozs7OztxREFFUTtBQUNiLDZCQUFLLEVBQUwsR0FBVSxrQkFBVixDQURhO0FBRWIsNkJBQUssVUFBTCxHQUFrQjtBQUNkLHNDQUFVLE1BQVY7QUFDQSxrREFBc0I7QUFDbEIsc0NBQU0sTUFBTjtBQUNBLHdDQUFRLElBQVI7NkJBRko7QUFJQSxtQ0FBTztBQUNILHNDQUFNLE1BQU47QUFDQSx3Q0FBUSxJQUFSOzZCQUZKO3lCQU5KLENBRmE7Ozs7NENBbUJUO0FBQ0osNkJBQUssQ0FBTCxDQUFPLE9BQVAsQ0FBZSxnQkFBZixDQUFnQyxrQkFBaEMsRUFBb0QsVUFBUyxDQUFULEVBQVk7QUFDNUQsZ0NBQUksS0FBSyxjQUFMLElBQXVCLElBQXZCLEVBQTZCO0FBQzdCLHFDQUFLLENBQUwsQ0FBTyxPQUFQLENBQWUsT0FBZixHQUF5QixJQUF6QixDQUQ2QjtBQUU3QiwyQ0FBVyxZQUFVO0FBQ2pCLDJDQUFPLFFBQVAsQ0FBZ0IsSUFBaEIsR0FBdUIsT0FBTyxRQUFQLENBQWdCLE1BQWhCLEdBQXlCLEdBQXpCLEdBQStCLEVBQUUsTUFBRixDQUFTLEtBQVQsQ0FBZSxZQUFmLENBQTRCLEVBQTVCLENBRHJDO2lDQUFWLEVBRVIsQ0FGSCxFQUY2Qjs2QkFBakMsTUFLTztBQUNILHFDQUFLLFVBQUwsR0FERztBQUVILHFDQUFLLG9CQUFMLEdBQTRCLEVBQUUsTUFBRixDQUFTLEtBQVQsQ0FGekI7QUFHSCxxQ0FBSyxJQUFMLENBQVUsZ0JBQVYsRUFIRztBQUlILHFDQUFLLElBQUwsQ0FBVSxjQUFWLEVBSkc7NkJBTFA7eUJBRGdELENBWWxELElBWmtELENBWTdDLElBWjZDLENBQXBELEVBREk7QUFjSiw2QkFBSyxDQUFMLENBQU8sT0FBUCxDQUFlLGdCQUFmLENBQWdDLGVBQWhDLEVBQWlELFVBQVMsQ0FBVCxFQUFZO0FBQ3pELGlDQUFLLFVBQUwsR0FEeUQ7QUFFekQsaUNBQUssS0FBTCxHQUFhLEVBQUUsTUFBRixDQUFTLEtBQVQsQ0FGNEM7eUJBQVosQ0FHL0MsSUFIK0MsQ0FHMUMsSUFIMEMsQ0FBakQsRUFkSTs7OzsyQ0FvQkQ7QUFDSCw2QkFBSyxDQUFMLENBQU8sT0FBUCxDQUFlLEtBQWYsR0FBdUIsS0FBSyxpQkFBTCxDQURwQjs7OztpREFJTTtBQUNULDZCQUFLLGlCQUFMLEdBQXlCLFNBQXpCLENBRFM7QUFFVCw2QkFBSyxjQUFMLEdBQXNCLFNBQXRCLENBRlM7QUFHVCw2QkFBSyxDQUFMLENBQU8sT0FBUCxDQUFlLEtBQWYsR0FBdUIsU0FBdkIsQ0FIUzs7Ozt3Q0E1Qkc7QUFDWiwrQkFBTyxDQUFDLHlDQUFELENBQVAsQ0FEWTs7Ozt1QkFqQlA7Ozs7O0FBbURiLG9CQUFTLGtCQUFUIiwiZmlsZSI6IkRlYWxEZXNrTW9kZWxTYXZlci5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBEZWFsRGVza01vZGVsU2F2ZXIge1xuXG4gICAgYmVmb3JlUmVnaXN0ZXIoKSB7XG4gICAgICAgIHRoaXMuaXMgPSAnc2ItZGQtbW9kZWwtc2F2ZSc7XG4gICAgICAgIHRoaXMucHJvcGVydGllcyA9IHtcbiAgICAgICAgICAgIHJlY29yZElkOiBTdHJpbmcsXG4gICAgICAgICAgICBkZWFsRGVza01vZGVsVXBkYXRlZDoge1xuICAgICAgICAgICAgICAgIHR5cGU6IE9iamVjdCxcbiAgICAgICAgICAgICAgICBub3RpZnk6IHRydWVcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBlcnJvcjoge1xuICAgICAgICAgICAgICAgIHR5cGU6IFN0cmluZyxcbiAgICAgICAgICAgICAgICBub3RpZnk6IHRydWVcbiAgICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgIH1cblxuICAgIGdldCBvYnNlcnZlcnMoKSB7XG4gICAgICAgIHJldHVybiBbJ3NhdmUoZGVhbERlc2tNb2RlbFNhdmUsIGNsb3NlQWZ0ZXJTYXZlKSddO1xuICAgIH1cblxuICAgIHJlYWR5KCkge1xuICAgICAgICB0aGlzLiQuc2VydmljZS5hZGRFdmVudExpc3RlbmVyKCdyZXNwb25zZS1jaGFuZ2VkJywgZnVuY3Rpb24oZSkge1xuICAgICAgICAgICAgaWYgKHRoaXMuY2xvc2VBZnRlclNhdmUgPT0gdHJ1ZSkge1xuICAgICAgICAgICAgICAgIHRoaXMuJC5zZXJ2aWNlLndhaXRpbmcgPSB0cnVlO1xuICAgICAgICAgICAgICAgIHNldFRpbWVvdXQoZnVuY3Rpb24oKXtcbiAgICAgICAgICAgICAgICAgICAgd2luZG93LmxvY2F0aW9uLmhyZWYgPSB3aW5kb3cubG9jYXRpb24ub3JpZ2luICsgJy8nICsgZS5kZXRhaWwudmFsdWUucGFyZW50UmVjb3JkLklkO1xuICAgICAgICAgICAgICAgIH0sIDApO1xuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgICB0aGlzLmNsZWFyUHJvcHMoKVxuICAgICAgICAgICAgICAgIHRoaXMuZGVhbERlc2tNb2RlbFVwZGF0ZWQgPSBlLmRldGFpbC52YWx1ZTtcbiAgICAgICAgICAgICAgICB0aGlzLmZpcmUoJ2NsZWFuQWZ0ZXJTYXZlJyk7XG4gICAgICAgICAgICAgICAgdGhpcy5maXJlKCdyZWxvYWRJRnJhbWUnKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgfS5iaW5kKHRoaXMpKTtcbiAgICAgICAgdGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcignZXJyb3ItY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcbiAgICAgICAgICAgIHRoaXMuY2xlYXJQcm9wcygpXG4gICAgICAgICAgICB0aGlzLmVycm9yID0gZS5kZXRhaWwudmFsdWU7XG4gICAgICAgIH0uYmluZCh0aGlzKSk7XG4gICAgfVxuXG4gICAgc2F2ZSgpIHtcbiAgICAgICAgdGhpcy4kLnNlcnZpY2UubW9kZWwgPSB0aGlzLmRlYWxEZXNrTW9kZWxTYXZlO1xuICAgIH1cblxuICAgIGNsZWFyUHJvcHMoKSB7XG4gICAgICAgIHRoaXMuZGVhbERlc2tNb2RlbFNhdmUgPSB1bmRlZmluZWQ7XG4gICAgICAgIHRoaXMuY2xvc2VBZnRlclNhdmUgPSB1bmRlZmluZWQ7XG4gICAgICAgIHRoaXMuJC5zZXJ2aWNlLm1vZGVsID0gdW5kZWZpbmVkO1xuICAgIH1cbn1cblBvbHltZXIoIERlYWxEZXNrTW9kZWxTYXZlciApOyJdfQ==
'use strict';

System.register('dealdesk/validations/sb-dd-read-validations/DealDeskReadValidations.js', [], function (_export, _context) {
    var _createClass, DealDeskReadValidations;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('DealDeskReadValidations', DealDeskReadValidations = function () {
                function DealDeskReadValidations() {
                    _classCallCheck(this, DealDeskReadValidations);
                }

                _createClass(DealDeskReadValidations, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-dd-read-validations';
                        this.properties = {
                            validationMessages: {
                                type: Array,
                                value: []
                            }
                        };
                    }
                }, {
                    key: 'validate',
                    value: function validate() {
                        this.validateChildLineStatuses(this.model, this.prefix);
                        if (this.validationMessages.length <= 0) {
                            this.fire("modelValidated", {
                                model: this.model
                            });
                        } else {
                            this.fire('addMessages', {
                                value: this.validationMessages
                            });
                        }
                    }
                }, {
                    key: 'validateChildLineStatuses',
                    value: function validateChildLineStatuses(model) {
                        var childLines = model.childRecords;
                        var numChildLines = childLines.length;
                        for (var i = 0; i < numChildLines; i++) {
                            var statusField = childLines[i]['ApprovalStatus__c'] || childLines[i][this.prefix + '__ApprovalStatus__c'];
                            if (!statusField) {
                                var message = model.customLabels.msg_dd_needs_approval_submission;
                                this.push("validationMessages", message);
                                return;
                            }
                        }
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['validate(model,prefix)'];
                    }
                }]);

                return DealDeskReadValidations;
            }());

            _export('DealDeskReadValidations', DealDeskReadValidations);

            Polymer(DealDeskReadValidations);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrUmVhZFZhbGlkYXRpb25zLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OytDQUFhOzs7Ozs7O3FEQUVRO0FBQ2IsNkJBQUssRUFBTCxHQUFVLHdCQUFWLENBRGE7QUFFYiw2QkFBSyxVQUFMLEdBQWtCO0FBQ2QsZ0RBQW9CO0FBQ2hCLHNDQUFNLEtBQU47QUFDQSx1Q0FBTyxFQUFQOzZCQUZKO3lCQURKLENBRmE7Ozs7K0NBY047QUFDUCw2QkFBSyx5QkFBTCxDQUErQixLQUFLLEtBQUwsRUFBWSxLQUFLLE1BQUwsQ0FBM0MsQ0FETztBQUVQLDRCQUFJLEtBQUssa0JBQUwsQ0FBd0IsTUFBeEIsSUFBa0MsQ0FBbEMsRUFBcUM7QUFDckMsaUNBQUssSUFBTCxDQUFVLGdCQUFWLEVBQTRCO0FBQ3hCLHVDQUFPLEtBQUssS0FBTDs2QkFEWCxFQURxQzt5QkFBekMsTUFJTztBQUNILGlDQUFLLElBQUwsQ0FBVSxhQUFWLEVBQXlCO0FBQ3JCLHVDQUFPLEtBQUssa0JBQUw7NkJBRFgsRUFERzt5QkFKUDs7Ozs4REFXc0IsT0FBTztBQUM3Qiw0QkFBSSxhQUFhLE1BQU0sWUFBTixDQURZO0FBRTdCLDRCQUFJLGdCQUFnQixXQUFXLE1BQVgsQ0FGUztBQUc3Qiw2QkFBSyxJQUFJLElBQUksQ0FBSixFQUFPLElBQUksYUFBSixFQUFtQixHQUFuQyxFQUF3QztBQUNwQyxnQ0FBSSxjQUFjLFdBQVcsQ0FBWCxFQUFjLG1CQUFkLEtBQXNDLFdBQVcsQ0FBWCxFQUFjLEtBQUssTUFBTCxHQUFjLHFCQUFkLENBQXBELENBRGtCO0FBRXBDLGdDQUFJLENBQUMsV0FBRCxFQUFjO0FBQ2Qsb0NBQUksVUFBVSxNQUFNLFlBQU4sQ0FBbUIsZ0NBQW5CLENBREE7QUFFZCxxQ0FBSyxJQUFMLENBQVUsb0JBQVYsRUFBZ0MsT0FBaEMsRUFGYztBQUdkLHVDQUhjOzZCQUFsQjt5QkFGSjs7Ozt3Q0FwQlk7QUFDWiwrQkFBTyxDQUFDLHdCQUFELENBQVAsQ0FEWTs7Ozt1QkFaUDs7Ozs7QUEwQ2Isb0JBQVMsdUJBQVQiLCJmaWxlIjoiRGVhbERlc2tSZWFkVmFsaWRhdGlvbnMuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgRGVhbERlc2tSZWFkVmFsaWRhdGlvbnMge1xuXG4gICAgYmVmb3JlUmVnaXN0ZXIoKSB7XG4gICAgICAgIHRoaXMuaXMgPSAnc2ItZGQtcmVhZC12YWxpZGF0aW9ucyc7XG4gICAgICAgIHRoaXMucHJvcGVydGllcyA9IHtcbiAgICAgICAgICAgIHZhbGlkYXRpb25NZXNzYWdlczoge1xuICAgICAgICAgICAgICAgIHR5cGU6IEFycmF5LFxuICAgICAgICAgICAgICAgIHZhbHVlOiBbXVxuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfVxuXG4gICAgZ2V0IG9ic2VydmVycygpIHtcbiAgICAgICAgcmV0dXJuIFsndmFsaWRhdGUobW9kZWwscHJlZml4KSddO1xuICAgIH1cblxuICAgIHZhbGlkYXRlKCkge1xuICAgICAgICB0aGlzLnZhbGlkYXRlQ2hpbGRMaW5lU3RhdHVzZXModGhpcy5tb2RlbCwgdGhpcy5wcmVmaXgpO1xuICAgICAgICBpZiAodGhpcy52YWxpZGF0aW9uTWVzc2FnZXMubGVuZ3RoIDw9IDApIHtcbiAgICAgICAgICAgIHRoaXMuZmlyZShcIm1vZGVsVmFsaWRhdGVkXCIsIHtcbiAgICAgICAgICAgICAgICBtb2RlbDogdGhpcy5tb2RlbFxuICAgICAgICAgICAgfSlcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHRoaXMuZmlyZSgnYWRkTWVzc2FnZXMnLCB7XG4gICAgICAgICAgICAgICAgdmFsdWU6IHRoaXMudmFsaWRhdGlvbk1lc3NhZ2VzXG4gICAgICAgICAgICB9KTtcbiAgICAgICAgfVxuICAgIH1cblxuICAgIHZhbGlkYXRlQ2hpbGRMaW5lU3RhdHVzZXMobW9kZWwpIHtcbiAgICAgICAgbGV0IGNoaWxkTGluZXMgPSBtb2RlbC5jaGlsZFJlY29yZHM7XG4gICAgICAgIGxldCBudW1DaGlsZExpbmVzID0gY2hpbGRMaW5lcy5sZW5ndGg7XG4gICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgbnVtQ2hpbGRMaW5lczsgaSsrKSB7XG4gICAgICAgICAgICBsZXQgc3RhdHVzRmllbGQgPSBjaGlsZExpbmVzW2ldWydBcHByb3ZhbFN0YXR1c19fYyddIHx8IGNoaWxkTGluZXNbaV1bdGhpcy5wcmVmaXggKyAnX19BcHByb3ZhbFN0YXR1c19fYyddO1xuICAgICAgICAgICAgaWYgKCFzdGF0dXNGaWVsZCkge1xuICAgICAgICAgICAgICAgIGxldCBtZXNzYWdlID0gbW9kZWwuY3VzdG9tTGFiZWxzLm1zZ19kZF9uZWVkc19hcHByb3ZhbF9zdWJtaXNzaW9uO1xuICAgICAgICAgICAgICAgIHRoaXMucHVzaChcInZhbGlkYXRpb25NZXNzYWdlc1wiLCBtZXNzYWdlKTtcbiAgICAgICAgICAgICAgICByZXR1cm47XG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICB9XG59XG5Qb2x5bWVyKCBEZWFsRGVza1JlYWRWYWxpZGF0aW9ucyApOyJdfQ==
'use strict';

System.register('common/data/sb-service/test/Setup.js', ['../../../oauth/OAuth.js'], function (_export, _context) {
    var OAuth, _createClass, ORG_URL, ORG_ID, REFRESH_TOKEN, LOGIN_URL, Setup;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [function (_oauthOAuthJs) {
            OAuth = _oauthOAuthJs.OAuth;
        }],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            ORG_URL = 'https://na34.salesforce.com';
            ORG_ID = '00D61000000dwYmEAI';
            REFRESH_TOKEN = '5Aep861tbt360sO1.vax81FWRk4cQc8WdhWW6kMjRQMgJ9b1jteX3l7jVd3LSm7t4gQ_hpEpnzuwwbwM1elEQhq';
            LOGIN_URL = 'https://login.salesforce.com';

            _export('Setup', Setup = function () {
                function Setup(orgUrl, orgId, refreshToken) {
                    _classCallCheck(this, Setup);

                    this.orgUrl = orgUrl || ORG_URL;
                    this.orgId = orgId || ORG_ID;
                    this.refreshToken = refreshToken || REFRESH_TOKEN;
                    this.id = LOGIN_URL + '/id/' + this.orgId;
                    this.oauth = new OAuth();
                }

                _createClass(Setup, [{
                    key: 'setup',
                    value: function setup() {
                        var tokens = {
                            instance_url: this.orgUrl,
                            id: this.id,
                            refresh_token: this.refreshToken
                        };
                        this.tokens = this.oauth.tokens;
                        this.oauth.tokens = tokens;
                    }
                }, {
                    key: 'cleanup',
                    value: function cleanup() {
                        if (!this.tokens || !this.tokens.refreshToken) return;

                        var tokens = {
                            instance_url: this.tokens.instanceUrl,
                            id: this.tokens.userInfo.url,
                            refresh_token: this.tokens.refreshToken,
                            access_token: this.tokens.accessToken
                        };
                        this.oauth.tokens = tokens;
                    }
                }]);

                return Setup;
            }());

            _export('Setup', Setup);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlNldHVwLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7QUFBUTs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBRUYsc0JBQVU7QUFDVixxQkFBUztBQUNULDRCQUFnQjtBQUNoQix3QkFBWTs7NkJBRUw7QUFFVCx5QkFGUyxLQUVULENBQVksTUFBWixFQUFvQixLQUFwQixFQUEyQixZQUEzQixFQUF5QzswQ0FGaEMsT0FFZ0M7O0FBQ3JDLHlCQUFLLE1BQUwsR0FBYyxVQUFVLE9BQVYsQ0FEdUI7QUFFckMseUJBQUssS0FBTCxHQUFhLFNBQVMsTUFBVCxDQUZ3QjtBQUdyQyx5QkFBSyxZQUFMLEdBQW9CLGdCQUFnQixhQUFoQixDQUhpQjtBQUlyQyx5QkFBSyxFQUFMLEdBQVUsWUFBWSxNQUFaLEdBQXFCLEtBQUssS0FBTCxDQUpNO0FBS3JDLHlCQUFLLEtBQUwsR0FBYSxJQUFJLEtBQUosRUFBYixDQUxxQztpQkFBekM7OzZCQUZTOzs0Q0FVRDtBQUNKLDRCQUFJLFNBQVM7QUFDVCwwQ0FBYyxLQUFLLE1BQUw7QUFDZCxnQ0FBSSxLQUFLLEVBQUw7QUFDSiwyQ0FBZSxLQUFLLFlBQUw7eUJBSGYsQ0FEQTtBQU1KLDZCQUFLLE1BQUwsR0FBYyxLQUFLLEtBQUwsQ0FBVyxNQUFYLENBTlY7QUFPSiw2QkFBSyxLQUFMLENBQVcsTUFBWCxHQUFvQixNQUFwQixDQVBJOzs7OzhDQVVFO0FBQ04sNEJBQUcsQ0FBQyxLQUFLLE1BQUwsSUFBZSxDQUFDLEtBQUssTUFBTCxDQUFZLFlBQVosRUFDaEIsT0FESjs7QUFHQSw0QkFBSSxTQUFTO0FBQ1QsMENBQWMsS0FBSyxNQUFMLENBQVksV0FBWjtBQUNkLGdDQUFJLEtBQUssTUFBTCxDQUFZLFFBQVosQ0FBcUIsR0FBckI7QUFDSiwyQ0FBZSxLQUFLLE1BQUwsQ0FBWSxZQUFaO0FBQ2YsMENBQWMsS0FBSyxNQUFMLENBQVksV0FBWjt5QkFKZCxDQUpFO0FBVU4sNkJBQUssS0FBTCxDQUFXLE1BQVgsR0FBb0IsTUFBcEIsQ0FWTTs7Ozt1QkFwQkQiLCJmaWxlIjoiU2V0dXAuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge09BdXRofSBmcm9tICcuLi8uLi8uLi9vYXV0aC9PQXV0aC5qcyc7XG5cbmNvbnN0IE9SR19VUkwgPSAnaHR0cHM6Ly9uYTM0LnNhbGVzZm9yY2UuY29tJztcbmNvbnN0IE9SR19JRCA9ICcwMEQ2MTAwMDAwMGR3WW1FQUknO1xuY29uc3QgUkVGUkVTSF9UT0tFTiA9ICc1QWVwODYxdGJ0MzYwc08xLnZheDgxRldSazRjUWM4V2RoV1c2a01qUlFNZ0o5YjFqdGVYM2w3alZkM0xTbTd0NGdRX2hwRXBuenV3d2J3TTFlbEVRaHEnO1xuY29uc3QgTE9HSU5fVVJMID0gJ2h0dHBzOi8vbG9naW4uc2FsZXNmb3JjZS5jb20nO1xuXG5leHBvcnQgY2xhc3MgU2V0dXAge1xuXG4gICAgY29uc3RydWN0b3Iob3JnVXJsLCBvcmdJZCwgcmVmcmVzaFRva2VuKSB7XG4gICAgICAgIHRoaXMub3JnVXJsID0gb3JnVXJsIHx8IE9SR19VUkw7XG4gICAgICAgIHRoaXMub3JnSWQgPSBvcmdJZCB8fCBPUkdfSUQ7XG4gICAgICAgIHRoaXMucmVmcmVzaFRva2VuID0gcmVmcmVzaFRva2VuIHx8IFJFRlJFU0hfVE9LRU47XG4gICAgICAgIHRoaXMuaWQgPSBMT0dJTl9VUkwgKyAnL2lkLycgKyB0aGlzLm9yZ0lkO1xuICAgICAgICB0aGlzLm9hdXRoID0gbmV3IE9BdXRoKCk7XG4gICAgfVxuXG4gICAgc2V0dXAoKSB7XG4gICAgICAgIHZhciB0b2tlbnMgPSB7XG4gICAgICAgICAgICBpbnN0YW5jZV91cmw6IHRoaXMub3JnVXJsLFxuICAgICAgICAgICAgaWQ6IHRoaXMuaWQsXG4gICAgICAgICAgICByZWZyZXNoX3Rva2VuOiB0aGlzLnJlZnJlc2hUb2tlblxuICAgICAgICB9O1xuICAgICAgICB0aGlzLnRva2VucyA9IHRoaXMub2F1dGgudG9rZW5zO1xuICAgICAgICB0aGlzLm9hdXRoLnRva2VucyA9IHRva2VucztcbiAgICB9XG5cbiAgICBjbGVhbnVwKCkge1xuICAgICAgICBpZighdGhpcy50b2tlbnMgfHwgIXRoaXMudG9rZW5zLnJlZnJlc2hUb2tlbilcbiAgICAgICAgICAgIHJldHVybjtcblxuICAgICAgICB2YXIgdG9rZW5zID0ge1xuICAgICAgICAgICAgaW5zdGFuY2VfdXJsOiB0aGlzLnRva2Vucy5pbnN0YW5jZVVybCxcbiAgICAgICAgICAgIGlkOiB0aGlzLnRva2Vucy51c2VySW5mby51cmwsXG4gICAgICAgICAgICByZWZyZXNoX3Rva2VuOiB0aGlzLnRva2Vucy5yZWZyZXNoVG9rZW4sXG4gICAgICAgICAgICBhY2Nlc3NfdG9rZW46IHRoaXMudG9rZW5zLmFjY2Vzc1Rva2VuXG4gICAgICAgIH07XG4gICAgICAgIHRoaXMub2F1dGgudG9rZW5zID0gdG9rZW5zO1xuICAgIH1cbn0iXX0=
'use strict';

System.register('common/data/sb-db/adapter/leveljs/LevelAdapter.js', ['common/Util.js'], function (_export, _context) {
	var Util, _createClass, ID, ID_DELIM, LevelAdapter;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function getRelatedId(ref) {
		var id = null;

		if (ref && typeof ref === 'string') id = ref;else if (ref && ref.id) id = ref.id;

		return id;
	}

	function getAll(db, model) {
		if (!model) return Promise.reject('Cannot query all records without model');

		return new Promise(function (resolve, reject) {
			var it = db.iterator({
				'gte': model.schema.id + ID_DELIM,
				'lte': model.schema.id + ID_DELIM + '￿',
				'valueAsBuffer': false
			});

			next(it, []).then(function (records) {
				resolve(records);
			}).catch(function (err) {
				reject(err);
			});
		});
	}

	function next(it, records) {
		return new Promise(function (resolve, reject) {
			it.next(function (err, key, value) {
				if (err) {
					reject(err);
				} else {
					if (!key && !value) {
						resolve(records);
					} else {
						records.push(value);
						next(it, records).then(function (newRecords) {
							resolve(newRecords);
						}).catch(function (err) {
							reject(err);
						});
					}
				}
			});
		});
	}

	function getOne(db, id) {
		if (!id) return Promise.resolve();

		return new Promise(function (resolve, reject) {
			db.get(id, { asBuffer: false }, function (err, obj) {
				if (err) reject(err);else resolve(obj);
			});
		});
	}

	function toArray(x) {
		return x == null || Array.isArray(x) ? x : [x];
	}

	function hasProp(x) {
		if (!x) return false;

		for (var p in x) {
			return true;
		}return false;
	}
	return {
		setters: [function (_commonUtilJs) {
			Util = _commonUtilJs.Util;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			ID = 'id';
			ID_DELIM = '_';

			_export('LevelAdapter', LevelAdapter = function () {
				function LevelAdapter() {
					_classCallCheck(this, LevelAdapter);
				}

				_createClass(LevelAdapter, [{
					key: 'open',
					value: function open(name) {
						this.db = new window.Level(name);
						return new Promise(function (resolve, reject) {
							this.db.open(function (err) {
								if (err) reject(err);else resolve(this.db);
							}.bind(this));
						}.bind(this));
					}
				}, {
					key: 'save',
					value: function save(objs) {
						if (objs == null) return Promise.reject('Cannot save a null object');

						var ops = [],
						    self = this,
						    wasArray = Array.isArray(objs),
						    now = Date.now(),
						    nowStr = Util.toIsoDate(now),
						    user = 1;

						objs = toArray(objs);

						var _iteratorNormalCompletion = true;
						var _didIteratorError = false;
						var _iteratorError = undefined;

						try {
							for (var _iterator = objs[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
								var obj = _step.value;

								if (hasProp(obj)) {
									for (var r in obj.constructor.relationships()) {
										var ref = obj[r];
										if (Array.isArray(ref)) {
											var len = ref.length;
											for (var i = 0; i < len; i++) {
												ref[i] = getRelatedId(ref[i]);
											}obj[r] = ref.filter(function (v) {
												return v != null;
											});

											if (!obj[r].length) delete obj[r];
										} else {
											obj[r] = getRelatedId(ref);
											if (!obj[r]) delete obj[r];
										}
									}

									if (!obj.id) {
										obj.id = obj.constructor.schema.id + ID_DELIM + now;
										obj.createdDate = nowStr;
										obj.createdBy = user;
									}

									obj.lastModifiedDate = nowStr;
									obj.lastModifiedBy = user;

									ops.push({
										type: 'put',
										key: obj.id,
										value: obj
									});
								}
							}
						} catch (err) {
							_didIteratorError = true;
							_iteratorError = err;
						} finally {
							try {
								if (!_iteratorNormalCompletion && _iterator.return) {
									_iterator.return();
								}
							} finally {
								if (_didIteratorError) {
									throw _iteratorError;
								}
							}
						}

						return new Promise(function (resolve, reject) {
							this.db.batch(ops, function (err) {
								if (err) {
									reject(err);
								} else {
									resolve(wasArray ? objs : objs[0]);
								}
							}.bind(this));
						}.bind(this));
					}
				}, {
					key: 'remove',
					value: function remove(objs) {
						if (objs == null) return Promise.reject('Cannot remove a null object');

						var ops = [];
						objs = toArray(objs);
						var _iteratorNormalCompletion2 = true;
						var _didIteratorError2 = false;
						var _iteratorError2 = undefined;

						try {
							for (var _iterator2 = objs[Symbol.iterator](), _step2; !(_iteratorNormalCompletion2 = (_step2 = _iterator2.next()).done); _iteratorNormalCompletion2 = true) {
								var obj = _step2.value;

								if (obj) {
									ops.push({
										type: 'del',
										key: obj.id ? obj.id : obj });
								}
							}
						} catch (err) {
							_didIteratorError2 = true;
							_iteratorError2 = err;
						} finally {
							try {
								if (!_iteratorNormalCompletion2 && _iterator2.return) {
									_iterator2.return();
								}
							} finally {
								if (_didIteratorError2) {
									throw _iteratorError2;
								}
							}
						}

						return new Promise(function (resolve, reject) {
							this.db.batch(ops, function (err) {
								if (err) {
									reject(err);
								} else {
									resolve();
								}
							});
						}.bind(this));
					}
				}, {
					key: 'get',
					value: function get(id, model) {
						if (id) {
							return getOne(this.db, id);
						} else {
							return getAll(this.db, model);
						}
					}
				}]);

				return LevelAdapter;
			}());

			_export('LevelAdapter', LevelAdapter);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,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QixDQUFQLENBRFE7T0FBVCxNQUdLO0FBQ0osY0FBTyxPQUFRLEtBQUssRUFBTCxFQUFTLEtBQWpCLENBQVAsQ0FESTtPQUhMOzs7O1dBMUhXIiwiZmlsZSI6IkxldmVsQWRhcHRlci5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7VXRpbH0gZnJvbSAnY29tbW9uL1V0aWwuanMnO1xuXG5sZXQgSUQgPSAnaWQnLCAvLyBjb25maWd1cmFibGUvZmxleGlibCBpbiB0aGUgZnV0dXJlP1xuSURfREVMSU0gPSAnXyc7XG5cbi8vIEEgdHJhbnNmb3JtZXIvYnJpZGdlL2FkYXB0ZXIgZnJvbSBvdXIgTW9kZWwgQVBJIHRvIExldmVsRE9XTlxuZXhwb3J0IGNsYXNzIExldmVsQWRhcHRlciB7XG5cblx0b3BlbiggbmFtZSApIHtcblx0XHR0aGlzLmRiID0gbmV3IHdpbmRvdy5MZXZlbCggbmFtZSApOyAvLyBUT0RPOiAgbnNwISFcblx0XHRyZXR1cm4gbmV3IFByb21pc2UoIGZ1bmN0aW9uKCByZXNvbHZlLCByZWplY3QgKSB7XG5cdFx0XHR0aGlzLmRiLm9wZW4oIGZ1bmN0aW9uKCBlcnIgKSB7XG5cdFx0XHRcdGlmKCBlcnIgKVxuXHRcdFx0XHRcdHJlamVjdCggZXJyICk7XG5cdFx0XHRcdGVsc2Vcblx0XHRcdFx0XHRyZXNvbHZlKHRoaXMuZGIpO1xuXHRcdFx0fS5iaW5kKHRoaXMpKTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0LyoqXG5cdCogQ3JlYXRlIG9yIHVwZGF0ZSB0aGlzIG9iamVjdChzKSB0byBkYlxuXHQqIEBwYXJhbSB7QXJyYXl8T2JqZWN0fSBvYmpzIHRoZSBvYmplY3RzXG5cdCogQHJldHVybiB7UHJvbWlzZS48QXJyYXl8T2JqZWN0Pn0gdGhlIG5ld2x5IGNyZWF0ZWQgb3IgdXBkYXRlZCBvYmplY3Rcblx0Ki9cblx0c2F2ZSggb2JqcyApIHtcblx0XHRpZiggb2JqcyA9PSBudWxsIClcblx0XHRcdHJldHVybiBQcm9taXNlLnJlamVjdCggJ0Nhbm5vdCBzYXZlIGEgbnVsbCBvYmplY3QnICk7XG5cblx0XHRsZXQgb3BzID0gW10sIHNlbGYgPSB0aGlzLFxuXHRcdFx0XHR3YXNBcnJheSA9IEFycmF5LmlzQXJyYXkoIG9ianMgKSxcblx0XHRcdFx0bm93ID0gRGF0ZS5ub3coKSxcblx0XHRcdFx0bm93U3RyID0gVXRpbC50b0lzb0RhdGUoIG5vdyApLFxuXHRcdFx0XHR1c2VyID0gMTsgIC8vIFRPRE86IGdldCBjdXJyZW50IHVzZXIgaWRcblxuXHRcdG9ianMgPSB0b0FycmF5KCBvYmpzICk7XG5cblx0XHRmb3IoIGxldCBvYmogb2Ygb2JqcyApIHtcblx0XHRcdGlmKCBoYXNQcm9wKCBvYmogKSApIHtcblx0XHRcdFx0Ly8gc2F2ZSByZWxhdGlvbnMgZmlyc3QuICBJZiBzdHJpbmcgdGhlbiBhc3N1bWUgaXQgaXMgSUQuICBJZiBvYmplY3QsIHNhdmUgb25seSBJRC5cblx0XHRcdFx0Zm9yKCBsZXQgciBpbiBvYmouY29uc3RydWN0b3IucmVsYXRpb25zaGlwcygpICkge1xuXHRcdFx0XHRcdGxldCByZWYgPSBvYmpbcl07XG5cdFx0XHRcdFx0aWYoIEFycmF5LmlzQXJyYXkoIHJlZiApICkge1xuXHRcdFx0XHRcdFx0bGV0IGxlbiA9IHJlZi5sZW5ndGg7XG5cdFx0XHRcdFx0XHRmb3IoIGxldCBpPTA7IGkgPCBsZW47IGkrKyApXG5cdFx0XHRcdFx0XHRcdHJlZltpXSA9IGdldFJlbGF0ZWRJZCggcmVmW2ldICk7XG5cblx0XHRcdFx0XHRcdG9ialtyXSA9IHJlZi5maWx0ZXIoIGZ1bmN0aW9uKHYpIHsgcmV0dXJuIHYgIT0gbnVsbCB9ICk7XG5cblx0XHRcdFx0XHRcdGlmKCAhb2JqW3JdLmxlbmd0aCApXG5cdFx0XHRcdFx0XHRcdGRlbGV0ZSBvYmpbcl07XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHRcdGVsc2Uge1xuXHRcdFx0XHRcdFx0b2JqW3JdID0gZ2V0UmVsYXRlZElkKCByZWYgKTtcblx0XHRcdFx0XHRcdGlmKCAhb2JqW3JdIClcblx0XHRcdFx0XHRcdFx0ZGVsZXRlIG9ialtyXTsgIC8vIGRvbid0IGtub3cgd2hhdCB0aGlzIGlzIHNvIGlnbm9yZSBpdFxuXHRcdFx0XHRcdFx0Ly8gZnV0dXJlIGVuaDogc3VwcG9ydCBjcmVhdGlvbiBvZiByZWxhdGVkIG9iamVjdHMgYXQgc2FtZSB0aW1lIGFzIHRoaXMgb2JqZWN0XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cblx0XHRcdFx0aWYoICFvYmouaWQgKSB7XG5cdFx0XHRcdFx0b2JqLmlkID0gb2JqLmNvbnN0cnVjdG9yLnNjaGVtYS5pZCArIElEX0RFTElNICsgbm93O1xuXHRcdFx0XHRcdG9iai5jcmVhdGVkRGF0ZSA9IG5vd1N0cjtcblx0XHRcdFx0XHRvYmouY3JlYXRlZEJ5ID0gdXNlcjtcblx0XHRcdFx0fVxuXG5cdFx0XHRcdG9iai5sYXN0TW9kaWZpZWREYXRlID0gbm93U3RyO1xuXHRcdFx0XHRvYmoubGFzdE1vZGlmaWVkQnkgPSB1c2VyO1xuXG5cdFx0XHRcdG9wcy5wdXNoKCB7XG5cdFx0XHRcdFx0dHlwZTogJ3B1dCcsXG5cdFx0XHRcdFx0a2V5OiBvYmouaWQsXG5cdFx0XHRcdFx0dmFsdWU6IG9ialxuXHRcdFx0XHR9KTtcblx0XHRcdH1cblx0XHR9XG5cblx0XHRyZXR1cm4gbmV3IFByb21pc2UoIGZ1bmN0aW9uKCByZXNvbHZlLCByZWplY3QgKSB7XG5cdFx0XHR0aGlzLmRiLmJhdGNoKCBvcHMsIGZ1bmN0aW9uKCBlcnIgKSB7XG5cdFx0XHRcdGlmKCBlcnIgKSB7XG5cdFx0XHRcdFx0cmVqZWN0KCBlcnIgKTtcblx0XHRcdFx0fVxuXHRcdFx0XHRlbHNlIHtcblx0XHRcdFx0XHRyZXNvbHZlKCB3YXNBcnJheSA/IG9ianMgOiBvYmpzWzBdICk7XG5cdFx0XHRcdH1cblx0XHRcdH0uYmluZCh0aGlzKSk7XG5cdFx0fS5iaW5kKHRoaXMpKTtcblx0fVxuXG5cdC8qKlxuXHQqIERlbGV0ZSB0aGUgb2JqZWN0KHMpIGZyb20gdGhlIGRiXG5cdCogQHBhcmFtIHtBcnJheXxPYmplY3R8U3RyaW5nfSBvYmpzIHRoZSBvYmplY3QgaW5zdGFuY2UocykgdG8gZGVsZXRlLCBvciB0aGUgaWRzIG9mIHRoZSBpbnN0YW5jZXMgKFN0cmluZylcblx0KiBAcmV0dXJuIHtQcm9taXNlfVxuXHQqL1xuXHRyZW1vdmUoIG9ianMgKSB7XG5cdFx0aWYoIG9ianMgPT0gbnVsbCApXG5cdFx0cmV0dXJuIFByb21pc2UucmVqZWN0KCAnQ2Fubm90IHJlbW92ZSBhIG51bGwgb2JqZWN0JyApO1xuXG5cdFx0bGV0IG9wcyA9IFtdO1xuXHRcdG9ianMgPSB0b0FycmF5KCBvYmpzICk7XG5cdFx0Zm9yKCBsZXQgb2JqIG9mIG9ianMgKSB7XG5cdFx0XHRpZiggb2JqICkge1xuXHRcdFx0XHQvLyBUT0RPOiByZW1vdmUgcmVsYXRpb25zIGZpcnN0XG5cdFx0XHRcdG9wcy5wdXNoKCB7XG5cdFx0XHRcdFx0dHlwZTogJ2RlbCcsXG5cdFx0XHRcdFx0a2V5OiBvYmouaWQgPyBvYmouaWQgOiBvYmogIC8vIGNhbiBiZSBzdHJpbmdcblx0XHRcdFx0fSk7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0cmV0dXJuIG5ldyBQcm9taXNlKCBmdW5jdGlvbiggcmVzb2x2ZSwgcmVqZWN0ICkge1xuXHRcdFx0dGhpcy5kYi5iYXRjaCggb3BzLCBmdW5jdGlvbiggZXJyICkge1xuXHRcdFx0XHRpZiggZXJyICkge1xuXHRcdFx0XHRcdHJlamVjdCggZXJyICk7XG5cdFx0XHRcdH1cblx0XHRcdFx0ZWxzZSB7XG5cdFx0XHRcdFx0cmVzb2x2ZSgpO1xuXHRcdFx0XHR9XG5cdFx0XHR9KTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0LyoqXG5cdCogUmV0cmlldmVzIHRoZSBpbnN0YW5jZSAocmVjb3JkKSBmcm9tIHRoZSBkYlxuXHQqIEBwYXJhbSAge1N0cmluZ30gaWQgdGhlIGlkIG9mIHRoZSBpbnN0YW5jZSAocmVjb3JkKVxuXHQqIEByZXR1cm4ge1Byb21pc2UuPE9iamVjdD59ICAgIFtkZXNjcmlwdGlvbl1cblx0Ki9cblx0Z2V0KCBpZCwgbW9kZWwgKSB7XG5cdFx0aWYoIGlkICkge1xuXHRcdFx0cmV0dXJuIGdldE9uZSggdGhpcy5kYiwgaWQgKTtcblx0XHR9XG5cdFx0ZWxzZSB7XG5cdFx0XHRyZXR1cm4gZ2V0QWxsKCB0aGlzLmRiLCBtb2RlbCApO1xuXHRcdH1cblx0fVxufVxuXG4vKipcbiogUmV0dXJucyB0aGUgaWQgb2YgdGhlIHJlbGF0ZWQgb2JqZWN0XG4qIEBwYXJhbSAge1N0cmluZ3xPYmplY3R9IHJlZiB0aGUgcmVmZXJlbmNlIHRvIHRoZSByZWxhdGVkIG9iamVjdCwgb3IgdGhlIHJlbGF0ZWQgb2JqZWN0IElEIGl0c2VsZlxuKiBAcmV0dXJuIHtTdHJpbmd9ICAgICB0aGUgcmVsYXRlZCBvYmplY3QncyBpZCBvciBudWxsIGlmIG5vdCBrbm93blxuKi9cbmZ1bmN0aW9uIGdldFJlbGF0ZWRJZCggcmVmICkge1xuXHRsZXQgaWQgPSBudWxsO1xuXG5cdGlmKCByZWYgJiYgdHlwZW9mIHJlZiA9PT0gJ3N0cmluZycgKVxuXHRcdGlkID0gcmVmO1xuXHRlbHNlIGlmKCByZWYgJiYgcmVmLmlkIClcblx0XHRpZCA9IHJlZi5pZDtcblxuXHRyZXR1cm4gaWQ7XG59XG5cbmZ1bmN0aW9uIGdldEFsbCggZGIsIG1vZGVsICkge1xuXHRpZiggIW1vZGVsIClcblx0XHRyZXR1cm4gUHJvbWlzZS5yZWplY3QoICdDYW5ub3QgcXVlcnkgYWxsIHJlY29yZHMgd2l0aG91dCBtb2RlbCcgKTtcblxuXHRyZXR1cm4gbmV3IFByb21pc2UoIGZ1bmN0aW9uKCByZXNvbHZlLCByZWplY3QgKSB7XG5cdFx0bGV0IGl0ID0gZGIuaXRlcmF0b3Ioe1xuXHRcdFx0J2d0ZSc6IG1vZGVsLnNjaGVtYS5pZCArIElEX0RFTElNLFxuXHRcdFx0J2x0ZSc6IG1vZGVsLnNjaGVtYS5pZCArIElEX0RFTElNICsgJ1xcdWZmZmYnLFxuXHRcdFx0J3ZhbHVlQXNCdWZmZXInOiBmYWxzZVxuXHRcdH0pO1xuXG5cdFx0bmV4dCggaXQsIFtdICkudGhlbiggZnVuY3Rpb24oIHJlY29yZHMgKSB7XG5cdFx0XHRyZXNvbHZlKCByZWNvcmRzICk7XG5cdFx0fSkuY2F0Y2goIGZ1bmN0aW9uKGVycikge1xuXHRcdFx0cmVqZWN0KCBlcnIgKTtcblx0XHR9KTtcblx0fSk7XG59XG5cbi8vIEdldHMgbmV4dCBvZiBpdGVyYXRvciwgcmV0dXJucyBhIHByb21pc2VcbmZ1bmN0aW9uIG5leHQoIGl0LCByZWNvcmRzICkge1xuXHRyZXR1cm4gbmV3IFByb21pc2UoIGZ1bmN0aW9uKCByZXNvbHZlLCByZWplY3QgKSB7XG5cdFx0aXQubmV4dCggZnVuY3Rpb24oIGVyciwga2V5LCB2YWx1ZSApIHtcblx0XHRcdGlmKCBlcnIgKSB7XG5cdFx0XHRcdHJlamVjdCggZXJyICk7XG5cdFx0XHR9XG5cdFx0XHRlbHNlIHtcblx0XHRcdFx0aWYoICFrZXkgJiYgIXZhbHVlICkge1xuXHRcdFx0XHRcdHJlc29sdmUoIHJlY29yZHMgKTtcblx0XHRcdFx0fVxuXHRcdFx0XHRlbHNlIHtcblx0XHRcdFx0XHRyZWNvcmRzLnB1c2goIHZhbHVlICk7XG5cdFx0XHRcdFx0bmV4dCggaXQsIHJlY29yZHMgKS50aGVuKCBmdW5jdGlvbiggbmV3UmVjb3JkcyApIHtcblx0XHRcdFx0XHRcdHJlc29sdmUoIG5ld1JlY29yZHMgKTtcblx0XHRcdFx0XHR9KS5jYXRjaCggZnVuY3Rpb24oIGVyciApIHtcblx0XHRcdFx0XHRcdHJlamVjdCggZXJyICk7XG5cdFx0XHRcdFx0fSlcblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH0pO1xuXHR9KTtcbn1cblxuZnVuY3Rpb24gZ2V0T25lKCBkYiwgaWQgKSB7XG5cdGlmKCAhaWQgKVxuXHRyZXR1cm4gUHJvbWlzZS5yZXNvbHZlKCk7XG5cblx0cmV0dXJuIG5ldyBQcm9taXNlKCBmdW5jdGlvbiggcmVzb2x2ZSwgcmVqZWN0ICkge1xuXHRcdGRiLmdldCggaWQsIHthc0J1ZmZlcjogZmFsc2V9LCBmdW5jdGlvbiggZXJyLCBvYmogKSB7XG5cdFx0XHRpZiggZXJyIClcblx0XHRcdFx0cmVqZWN0KCBlcnIgKVxuXHRcdFx0ZWxzZVxuXHRcdFx0XHRyZXNvbHZlKCBvYmogKTtcblx0XHR9KVxuXHR9KTtcbn1cblxuLyoqXG4qIE1ha2UgYW4gYXJyYXkgaWYgbm90IGFscmVhZHkgYW4gYXJyYXlcbiogQHBhcmFtICB7T2JqZWN0fSB4IHRoZSBvYmplY3Qgb3IgYXJyYXlcbiogQHJldHVybiB7QXJyYXl9IGFycmF5IG9yIG51bGwgaWYgeCB3YXMgbnVsbC91bmRlZmluZWRcbiovXG5mdW5jdGlvbiB0b0FycmF5KCB4ICkge1xuXHRyZXR1cm4geCA9PSBudWxsIHx8IEFycmF5LmlzQXJyYXkoIHggKSA/IHggOiBbeF07XG59XG5cbi8qKlxuKiBSZXR1cm5zIHRydWUgaWYgdGhlIG9iamVjdCBoYXMgYXQgbGVhc3Qgb25lIHByb3BlcnR5LCBpLmUuIGl0IGlzIFwicGVyc2lzdGFibGVcIlxuKiBAcGFyYW0gIHtPYmplY3R9ICB4IHRoZSBvYmplY3RcbiogQHJldHVybiB7Qm9vbGVhbn0gICAgIHRydWUgaWYgaXQgaGFzIGF0IGxlYXN0IG9uZSBwcm9wZXJ0eSwgZmFsc2Ugb3RoZXJ3aXNlXG4qL1xuZnVuY3Rpb24gaGFzUHJvcCggeCApIHtcblx0aWYoICF4ICkgLy8gd2FudCB0byB1c2UgdHlwZW9mIGJ1dCBidWcgaW4gQmFiZWwgcHJldmVudHMgaXQgZm9yIG5vdyAoaHR0cHM6Ly9waGFicmljYXRvci5iYWJlbGpzLmlvL1Q2Nzc3KVxuXHRcdHJldHVybiBmYWxzZTtcblxuXHRmb3IoIGxldCBwIGluIHggKVxuXHRcdHJldHVybiB0cnVlO1xuXG5cdHJldHVybiBmYWxzZTtcbn1cbiJdfQ==
(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
window.Level = require( '../../../../../../node_modules/level-js/index.js' );

},{"../../../../../../node_modules/level-js/index.js":14}],2:[function(require,module,exports){
(function (process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

function AbstractChainedBatch (db) {
  this._db         = db
  this._operations = []
  this._written    = false
}

AbstractChainedBatch.prototype._checkWritten = function () {
  if (this._written)
    throw new Error('write() already called on this batch')
}

AbstractChainedBatch.prototype.put = function (key, value) {
  this._checkWritten()

  var err = this._db._checkKeyValue(key, 'key', this._db._isBuffer)
  if (err) throw err
  err = this._db._checkKeyValue(value, 'value', this._db._isBuffer)
  if (err) throw err

  if (!this._db._isBuffer(key)) key = String(key)
  if (!this._db._isBuffer(value)) value = String(value)

  if (typeof this._put == 'function' )
    this._put(key, value)
  else
    this._operations.push({ type: 'put', key: key, value: value })

  return this
}

AbstractChainedBatch.prototype.del = function (key) {
  this._checkWritten()

  var err = this._db._checkKeyValue(key, 'key', this._db._isBuffer)
  if (err) throw err

  if (!this._db._isBuffer(key)) key = String(key)

  if (typeof this._del == 'function' )
    this._del(key)
  else
    this._operations.push({ type: 'del', key: key })

  return this
}

AbstractChainedBatch.prototype.clear = function () {
  this._checkWritten()

  this._operations = []

  if (typeof this._clear == 'function' )
    this._clear()

  return this
}

AbstractChainedBatch.prototype.write = function (options, callback) {
  this._checkWritten()

  if (typeof options == 'function')
    callback = options
  if (typeof callback != 'function')
    throw new Error('write() requires a callback argument')
  if (typeof options != 'object')
    options = {}

  this._written = true

  if (typeof this._write == 'function' )
    return this._write(callback)

  if (typeof this._db._batch == 'function')
    return this._db._batch(this._operations, options, callback)

  process.nextTick(callback)
}

module.exports = AbstractChainedBatch
}).call(this,require('_process'))
},{"_process":23}],3:[function(require,module,exports){
(function (process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

function AbstractIterator (db) {
  this.db = db
  this._ended = false
  this._nexting = false
}

AbstractIterator.prototype.next = function (callback) {
  var self = this

  if (typeof callback != 'function')
    throw new Error('next() requires a callback argument')

  if (self._ended)
    return callback(new Error('cannot call next() after end()'))
  if (self._nexting)
    return callback(new Error('cannot call next() before previous next() has completed'))

  self._nexting = true
  if (typeof self._next == 'function') {
    return self._next(function () {
      self._nexting = false
      callback.apply(null, arguments)
    })
  }

  process.nextTick(function () {
    self._nexting = false
    callback()
  })
}

AbstractIterator.prototype.end = function (callback) {
  if (typeof callback != 'function')
    throw new Error('end() requires a callback argument')

  if (this._ended)
    return callback(new Error('end() already called on iterator'))

  this._ended = true

  if (typeof this._end == 'function')
    return this._end(callback)

  process.nextTick(callback)
}

module.exports = AbstractIterator

}).call(this,require('_process'))
},{"_process":23}],4:[function(require,module,exports){
(function (Buffer,process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

var xtend                = require('xtend')
  , AbstractIterator     = require('./abstract-iterator')
  , AbstractChainedBatch = require('./abstract-chained-batch')

function AbstractLevelDOWN (location) {
  if (!arguments.length || location === undefined)
    throw new Error('constructor requires at least a location argument')

  if (typeof location != 'string')
    throw new Error('constructor requires a location string argument')

  this.location = location
}

AbstractLevelDOWN.prototype.open = function (options, callback) {
  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('open() requires a callback argument')

  if (typeof options != 'object')
    options = {}

  if (typeof this._open == 'function')
    return this._open(options, callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.close = function (callback) {
  if (typeof callback != 'function')
    throw new Error('close() requires a callback argument')

  if (typeof this._close == 'function')
    return this._close(callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.get = function (key, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('get() requires a callback argument')

  if (err = this._checkKeyValue(key, 'key', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  if (typeof options != 'object')
    options = {}

  if (typeof this._get == 'function')
    return this._get(key, options, callback)

  process.nextTick(function () { callback(new Error('NotFound')) })
}

AbstractLevelDOWN.prototype.put = function (key, value, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('put() requires a callback argument')

  if (err = this._checkKeyValue(key, 'key', this._isBuffer))
    return callback(err)

  if (err = this._checkKeyValue(value, 'value', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  // coerce value to string in node, don't touch it in browser
  // (indexeddb can store any JS type)
  if (!this._isBuffer(value) && !process.browser)
    value = String(value)

  if (typeof options != 'object')
    options = {}

  if (typeof this._put == 'function')
    return this._put(key, value, options, callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.del = function (key, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('del() requires a callback argument')

  if (err = this._checkKeyValue(key, 'key', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  if (typeof options != 'object')
    options = {}

  if (typeof this._del == 'function')
    return this._del(key, options, callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.batch = function (array, options, callback) {
  if (!arguments.length)
    return this._chainedBatch()

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('batch(array) requires a callback argument')

  if (!Array.isArray(array))
    return callback(new Error('batch(array) requires an array argument'))

  if (typeof options != 'object')
    options = {}

  var i = 0
    , l = array.length
    , e
    , err

  for (; i < l; i++) {
    e = array[i]
    if (typeof e != 'object')
      continue

    if (err = this._checkKeyValue(e.type, 'type', this._isBuffer))
      return callback(err)

    if (err = this._checkKeyValue(e.key, 'key', this._isBuffer))
      return callback(err)

    if (e.type == 'put') {
      if (err = this._checkKeyValue(e.value, 'value', this._isBuffer))
        return callback(err)
    }
  }

  if (typeof this._batch == 'function')
    return this._batch(array, options, callback)

  process.nextTick(callback)
}

//TODO: remove from here, not a necessary primitive
AbstractLevelDOWN.prototype.approximateSize = function (start, end, callback) {
  if (   start == null
      || end == null
      || typeof start == 'function'
      || typeof end == 'function') {
    throw new Error('approximateSize() requires valid `start`, `end` and `callback` arguments')
  }

  if (typeof callback != 'function')
    throw new Error('approximateSize() requires a callback argument')

  if (!this._isBuffer(start))
    start = String(start)

  if (!this._isBuffer(end))
    end = String(end)

  if (typeof this._approximateSize == 'function')
    return this._approximateSize(start, end, callback)

  process.nextTick(function () {
    callback(null, 0)
  })
}

AbstractLevelDOWN.prototype._setupIteratorOptions = function (options) {
  var self = this

  options = xtend(options)

  ;[ 'start', 'end', 'gt', 'gte', 'lt', 'lte' ].forEach(function (o) {
    if (options[o] && self._isBuffer(options[o]) && options[o].length === 0)
      delete options[o]
  })

  options.reverse = !!options.reverse

  // fix `start` so it takes into account gt, gte, lt, lte as appropriate
  if (options.reverse && options.lt)
    options.start = options.lt
  if (options.reverse && options.lte)
    options.start = options.lte
  if (!options.reverse && options.gt)
    options.start = options.gt
  if (!options.reverse && options.gte)
    options.start = options.gte

  if ((options.reverse && options.lt && !options.lte)
    || (!options.reverse && options.gt && !options.gte))
    options.exclusiveStart = true // start should *not* include matching key

  return options
}

AbstractLevelDOWN.prototype.iterator = function (options) {
  if (typeof options != 'object')
    options = {}

  options = this._setupIteratorOptions(options)

  if (typeof this._iterator == 'function')
    return this._iterator(options)

  return new AbstractIterator(this)
}

AbstractLevelDOWN.prototype._chainedBatch = function () {
  return new AbstractChainedBatch(this)
}

AbstractLevelDOWN.prototype._isBuffer = function (obj) {
  return Buffer.isBuffer(obj)
}

AbstractLevelDOWN.prototype._checkKeyValue = function (obj, type) {

  if (obj === null || obj === undefined)
    return new Error(type + ' cannot be `null` or `undefined`')

  if (this._isBuffer(obj)) {
    if (obj.length === 0)
      return new Error(type + ' cannot be an empty Buffer')
  } else if (String(obj) === '')
    return new Error(type + ' cannot be an empty String')
}

module.exports.AbstractLevelDOWN    = AbstractLevelDOWN
module.exports.AbstractIterator     = AbstractIterator
module.exports.AbstractChainedBatch = AbstractChainedBatch

}).call(this,{"isBuffer":require("../is-buffer/index.js")},require('_process'))
},{"../is-buffer/index.js":12,"./abstract-chained-batch":2,"./abstract-iterator":3,"_process":23,"xtend":5}],5:[function(require,module,exports){
module.exports = extend

function extend() {
    var target = {}

    for (var i = 0; i < arguments.length; i++) {
        var source = arguments[i]

        for (var key in source) {
            if (source.hasOwnProperty(key)) {
                target[key] = source[key]
            }
        }
    }

    return target
}

},{}],6:[function(require,module,exports){
var lookup = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';

;(function (exports) {
	'use strict';

  var Arr = (typeof Uint8Array !== 'undefined')
    ? Uint8Array
    : Array

	var PLUS   = '+'.charCodeAt(0)
	var SLASH  = '/'.charCodeAt(0)
	var NUMBER = '0'.charCodeAt(0)
	var LOWER  = 'a'.charCodeAt(0)
	var UPPER  = 'A'.charCodeAt(0)
	var PLUS_URL_SAFE = '-'.charCodeAt(0)
	var SLASH_URL_SAFE = '_'.charCodeAt(0)

	function decode (elt) {
		var code = elt.charCodeAt(0)
		if (code === PLUS ||
		    code === PLUS_URL_SAFE)
			return 62 // '+'
		if (code === SLASH ||
		    code === SLASH_URL_SAFE)
			return 63 // '/'
		if (code < NUMBER)
			return -1 //no match
		if (code < NUMBER + 10)
			return code - NUMBER + 26 + 26
		if (code < UPPER + 26)
			return code - UPPER
		if (code < LOWER + 26)
			return code - LOWER + 26
	}

	function b64ToByteArray (b64) {
		var i, j, l, tmp, placeHolders, arr

		if (b64.length % 4 > 0) {
			throw new Error('Invalid string. Length must be a multiple of 4')
		}

		// the number of equal signs (place holders)
		// if there are two placeholders, than the two characters before it
		// represent one byte
		// if there is only one, then the three characters before it represent 2 bytes
		// this is just a cheap hack to not do indexOf twice
		var len = b64.length
		placeHolders = '=' === b64.charAt(len - 2) ? 2 : '=' === b64.charAt(len - 1) ? 1 : 0

		// base64 is 4/3 + up to two characters of the original data
		arr = new Arr(b64.length * 3 / 4 - placeHolders)

		// if there are placeholders, only get up to the last complete 4 chars
		l = placeHolders > 0 ? b64.length - 4 : b64.length

		var L = 0

		function push (v) {
			arr[L++] = v
		}

		for (i = 0, j = 0; i < l; i += 4, j += 3) {
			tmp = (decode(b64.charAt(i)) << 18) | (decode(b64.charAt(i + 1)) << 12) | (decode(b64.charAt(i + 2)) << 6) | decode(b64.charAt(i + 3))
			push((tmp & 0xFF0000) >> 16)
			push((tmp & 0xFF00) >> 8)
			push(tmp & 0xFF)
		}

		if (placeHolders === 2) {
			tmp = (decode(b64.charAt(i)) << 2) | (decode(b64.charAt(i + 1)) >> 4)
			push(tmp & 0xFF)
		} else if (placeHolders === 1) {
			tmp = (decode(b64.charAt(i)) << 10) | (decode(b64.charAt(i + 1)) << 4) | (decode(b64.charAt(i + 2)) >> 2)
			push((tmp >> 8) & 0xFF)
			push(tmp & 0xFF)
		}

		return arr
	}

	function uint8ToBase64 (uint8) {
		var i,
			extraBytes = uint8.length % 3, // if we have 1 byte left, pad 2 bytes
			output = "",
			temp, length

		function encode (num) {
			return lookup.charAt(num)
		}

		function tripletToBase64 (num) {
			return encode(num >> 18 & 0x3F) + encode(num >> 12 & 0x3F) + encode(num >> 6 & 0x3F) + encode(num & 0x3F)
		}

		// go through the array every three bytes, we'll deal with trailing stuff later
		for (i = 0, length = uint8.length - extraBytes; i < length; i += 3) {
			temp = (uint8[i] << 16) + (uint8[i + 1] << 8) + (uint8[i + 2])
			output += tripletToBase64(temp)
		}

		// pad the end with zeros, but make sure to not forget the extra bytes
		switch (extraBytes) {
			case 1:
				temp = uint8[uint8.length - 1]
				output += encode(temp >> 2)
				output += encode((temp << 4) & 0x3F)
				output += '=='
				break
			case 2:
				temp = (uint8[uint8.length - 2] << 8) + (uint8[uint8.length - 1])
				output += encode(temp >> 10)
				output += encode((temp >> 4) & 0x3F)
				output += encode((temp << 2) & 0x3F)
				output += '='
				break
		}

		return output
	}

	exports.toByteArray = b64ToByteArray
	exports.fromByteArray = uint8ToBase64
}(typeof exports === 'undefined' ? (this.base64js = {}) : exports))

},{}],7:[function(require,module,exports){
(function (global){
/*!
 * The buffer module from node.js, for the browser.
 *
 * @author   Feross Aboukhadijeh <feross@feross.org> <http://feross.org>
 * @license  MIT
 */
/* eslint-disable no-proto */

var base64 = require('base64-js')
var ieee754 = require('ieee754')
var isArray = require('is-array')

exports.Buffer = Buffer
exports.SlowBuffer = SlowBuffer
exports.INSPECT_MAX_BYTES = 50
Buffer.poolSize = 8192 // not used by this implementation

var rootParent = {}

/**
 * If `Buffer.TYPED_ARRAY_SUPPORT`:
 *   === true    Use Uint8Array implementation (fastest)
 *   === false   Use Object implementation (most compatible, even IE6)
 *
 * Browsers that support typed arrays are IE 10+, Firefox 4+, Chrome 7+, Safari 5.1+,
 * Opera 11.6+, iOS 4.2+.
 *
 * Due to various browser bugs, sometimes the Object implementation will be used even
 * when the browser supports typed arrays.
 *
 * Note:
 *
 *   - Firefox 4-29 lacks support for adding new properties to `Uint8Array` instances,
 *     See: https://bugzilla.mozilla.org/show_bug.cgi?id=695438.
 *
 *   - Safari 5-7 lacks support for changing the `Object.prototype.constructor` property
 *     on objects.
 *
 *   - Chrome 9-10 is missing the `TypedArray.prototype.subarray` function.
 *
 *   - IE10 has a broken `TypedArray.prototype.subarray` function which returns arrays of
 *     incorrect length in some situations.

 * We detect these buggy browsers and set `Buffer.TYPED_ARRAY_SUPPORT` to `false` so they
 * get the Object implementation, which is slower but behaves correctly.
 */
Buffer.TYPED_ARRAY_SUPPORT = global.TYPED_ARRAY_SUPPORT !== undefined
  ? global.TYPED_ARRAY_SUPPORT
  : typedArraySupport()

function typedArraySupport () {
  function Bar () {}
  try {
    var arr = new Uint8Array(1)
    arr.foo = function () { return 42 }
    arr.constructor = Bar
    return arr.foo() === 42 && // typed array instances can be augmented
        arr.constructor === Bar && // constructor can be set
        typeof arr.subarray === 'function' && // chrome 9-10 lack `subarray`
        arr.subarray(1, 1).byteLength === 0 // ie10 has broken `subarray`
  } catch (e) {
    return false
  }
}

function kMaxLength () {
  return Buffer.TYPED_ARRAY_SUPPORT
    ? 0x7fffffff
    : 0x3fffffff
}

/**
 * Class: Buffer
 * =============
 *
 * The Buffer constructor returns instances of `Uint8Array` that are augmented
 * with function properties for all the node `Buffer` API functions. We use
 * `Uint8Array` so that square bracket notation works as expected -- it returns
 * a single octet.
 *
 * By augmenting the instances, we can avoid modifying the `Uint8Array`
 * prototype.
 */
function Buffer (arg) {
  if (!(this instanceof Buffer)) {
    // Avoid going through an ArgumentsAdaptorTrampoline in the common case.
    if (arguments.length > 1) return new Buffer(arg, arguments[1])
    return new Buffer(arg)
  }

  this.length = 0
  this.parent = undefined

  // Common case.
  if (typeof arg === 'number') {
    return fromNumber(this, arg)
  }

  // Slightly less common case.
  if (typeof arg === 'string') {
    return fromString(this, arg, arguments.length > 1 ? arguments[1] : 'utf8')
  }

  // Unusual.
  return fromObject(this, arg)
}

function fromNumber (that, length) {
  that = allocate(that, length < 0 ? 0 : checked(length) | 0)
  if (!Buffer.TYPED_ARRAY_SUPPORT) {
    for (var i = 0; i < length; i++) {
      that[i] = 0
    }
  }
  return that
}

function fromString (that, string, encoding) {
  if (typeof encoding !== 'string' || encoding === '') encoding = 'utf8'

  // Assumption: byteLength() return value is always < kMaxLength.
  var length = byteLength(string, encoding) | 0
  that = allocate(that, length)

  that.write(string, encoding)
  return that
}

function fromObject (that, object) {
  if (Buffer.isBuffer(object)) return fromBuffer(that, object)

  if (isArray(object)) return fromArray(that, object)

  if (object == null) {
    throw new TypeError('must start with number, buffer, array or string')
  }

  if (typeof ArrayBuffer !== 'undefined') {
    if (object.buffer instanceof ArrayBuffer) {
      return fromTypedArray(that, object)
    }
    if (object instanceof ArrayBuffer) {
      return fromArrayBuffer(that, object)
    }
  }

  if (object.length) return fromArrayLike(that, object)

  return fromJsonObject(that, object)
}

function fromBuffer (that, buffer) {
  var length = checked(buffer.length) | 0
  that = allocate(that, length)
  buffer.copy(that, 0, 0, length)
  return that
}

function fromArray (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

// Duplicate of fromArray() to keep fromArray() monomorphic.
function fromTypedArray (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  // Truncating the elements is probably not what people expect from typed
  // arrays with BYTES_PER_ELEMENT > 1 but it's compatible with the behavior
  // of the old Buffer constructor.
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

function fromArrayBuffer (that, array) {
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    // Return an augmented `Uint8Array` instance, for best performance
    array.byteLength
    that = Buffer._augment(new Uint8Array(array))
  } else {
    // Fallback: Return an object instance of the Buffer class
    that = fromTypedArray(that, new Uint8Array(array))
  }
  return that
}

function fromArrayLike (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

// Deserialize { type: 'Buffer', data: [1,2,3,...] } into a Buffer object.
// Returns a zero-length buffer for inputs that don't conform to the spec.
function fromJsonObject (that, object) {
  var array
  var length = 0

  if (object.type === 'Buffer' && isArray(object.data)) {
    array = object.data
    length = checked(array.length) | 0
  }
  that = allocate(that, length)

  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

if (Buffer.TYPED_ARRAY_SUPPORT) {
  Buffer.prototype.__proto__ = Uint8Array.prototype
  Buffer.__proto__ = Uint8Array
}

function allocate (that, length) {
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    // Return an augmented `Uint8Array` instance, for best performance
    that = Buffer._augment(new Uint8Array(length))
    that.__proto__ = Buffer.prototype
  } else {
    // Fallback: Return an object instance of the Buffer class
    that.length = length
    that._isBuffer = true
  }

  var fromPool = length !== 0 && length <= Buffer.poolSize >>> 1
  if (fromPool) that.parent = rootParent

  return that
}

function checked (length) {
  // Note: cannot use `length < kMaxLength` here because that fails when
  // length is NaN (which is otherwise coerced to zero.)
  if (length >= kMaxLength()) {
    throw new RangeError('Attempt to allocate Buffer larger than maximum ' +
                         'size: 0x' + kMaxLength().toString(16) + ' bytes')
  }
  return length | 0
}

function SlowBuffer (subject, encoding) {
  if (!(this instanceof SlowBuffer)) return new SlowBuffer(subject, encoding)

  var buf = new Buffer(subject, encoding)
  delete buf.parent
  return buf
}

Buffer.isBuffer = function isBuffer (b) {
  return !!(b != null && b._isBuffer)
}

Buffer.compare = function compare (a, b) {
  if (!Buffer.isBuffer(a) || !Buffer.isBuffer(b)) {
    throw new TypeError('Arguments must be Buffers')
  }

  if (a === b) return 0

  var x = a.length
  var y = b.length

  var i = 0
  var len = Math.min(x, y)
  while (i < len) {
    if (a[i] !== b[i]) break

    ++i
  }

  if (i !== len) {
    x = a[i]
    y = b[i]
  }

  if (x < y) return -1
  if (y < x) return 1
  return 0
}

Buffer.isEncoding = function isEncoding (encoding) {
  switch (String(encoding).toLowerCase()) {
    case 'hex':
    case 'utf8':
    case 'utf-8':
    case 'ascii':
    case 'binary':
    case 'base64':
    case 'raw':
    case 'ucs2':
    case 'ucs-2':
    case 'utf16le':
    case 'utf-16le':
      return true
    default:
      return false
  }
}

Buffer.concat = function concat (list, length) {
  if (!isArray(list)) throw new TypeError('list argument must be an Array of Buffers.')

  if (list.length === 0) {
    return new Buffer(0)
  }

  var i
  if (length === undefined) {
    length = 0
    for (i = 0; i < list.length; i++) {
      length += list[i].length
    }
  }

  var buf = new Buffer(length)
  var pos = 0
  for (i = 0; i < list.length; i++) {
    var item = list[i]
    item.copy(buf, pos)
    pos += item.length
  }
  return buf
}

function byteLength (string, encoding) {
  if (typeof string !== 'string') string = '' + string

  var len = string.length
  if (len === 0) return 0

  // Use a for loop to avoid recursion
  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'ascii':
      case 'binary':
      // Deprecated
      case 'raw':
      case 'raws':
        return len
      case 'utf8':
      case 'utf-8':
        return utf8ToBytes(string).length
      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return len * 2
      case 'hex':
        return len >>> 1
      case 'base64':
        return base64ToBytes(string).length
      default:
        if (loweredCase) return utf8ToBytes(string).length // assume utf8
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}
Buffer.byteLength = byteLength

// pre-set for values that may exist in the future
//Buffer.prototype.length = undefined
//Buffer.prototype.parent = undefined

function slowToString (encoding, start, end) {
  var loweredCase = false

  start = start | 0
  end = end === undefined || end === Infinity ? this.length : end | 0

  if (!encoding) encoding = 'utf8'
  if (start < 0) start = 0
  if (end > this.length) end = this.length
  if (end <= start) return ''

  while (true) {
    switch (encoding) {
      case 'hex':
        return hexSlice(this, start, end)

      case 'utf8':
      case 'utf-8':
        return utf8Slice(this, start, end)

      case 'ascii':
        return asciiSlice(this, start, end)

      case 'binary':
        return binarySlice(this, start, end)

      case 'base64':
        return base64Slice(this, start, end)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return utf16leSlice(this, start, end)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = (encoding + '').toLowerCase()
        loweredCase = true
    }
  }
}

Buffer.prototype.toString = function toString () {
  var length = this.length | 0
  if (length === 0) return ''
  if (arguments.length === 0) return utf8Slice(this, 0, length)
  return slowToString.apply(this, arguments)
}

Buffer.prototype.equals = function equals (b) {
  if (!Buffer.isBuffer(b)) throw new TypeError('Argument must be a Buffer')
  if (this === b) return true
  return Buffer.compare(this, b) === 0
}

Buffer.prototype.inspect = function inspect () {
  var str = ''
  var max = exports.INSPECT_MAX_BYTES
  if (this.length > 0) {
    str = this.toString('hex', 0, max).match(/.{2}/g).join(' ')
    if (this.length > max) str += ' ... '
  }
  return '<Buffer ' + str + '>'
}

Buffer.prototype.compare = function compare (b) {
  if (!Buffer.isBuffer(b)) throw new TypeError('Argument must be a Buffer')
  if (this === b) return 0
  return Buffer.compare(this, b)
}

Buffer.prototype.indexOf = function indexOf (val, byteOffset) {
  if (byteOffset > 0x7fffffff) byteOffset = 0x7fffffff
  else if (byteOffset < -0x80000000) byteOffset = -0x80000000
  byteOffset >>= 0

  if (this.length === 0) return -1
  if (byteOffset >= this.length) return -1

  // Negative offsets start from the end of the buffer
  if (byteOffset < 0) byteOffset = Math.max(this.length + byteOffset, 0)

  if (typeof val === 'string') {
    if (val.length === 0) return -1 // special case: looking for empty string always fails
    return String.prototype.indexOf.call(this, val, byteOffset)
  }
  if (Buffer.isBuffer(val)) {
    return arrayIndexOf(this, val, byteOffset)
  }
  if (typeof val === 'number') {
    if (Buffer.TYPED_ARRAY_SUPPORT && Uint8Array.prototype.indexOf === 'function') {
      return Uint8Array.prototype.indexOf.call(this, val, byteOffset)
    }
    return arrayIndexOf(this, [ val ], byteOffset)
  }

  function arrayIndexOf (arr, val, byteOffset) {
    var foundIndex = -1
    for (var i = 0; byteOffset + i < arr.length; i++) {
      if (arr[byteOffset + i] === val[foundIndex === -1 ? 0 : i - foundIndex]) {
        if (foundIndex === -1) foundIndex = i
        if (i - foundIndex + 1 === val.length) return byteOffset + foundIndex
      } else {
        foundIndex = -1
      }
    }
    return -1
  }

  throw new TypeError('val must be string, number or Buffer')
}

// `get` is deprecated
Buffer.prototype.get = function get (offset) {
  console.log('.get() is deprecated. Access using array indexes instead.')
  return this.readUInt8(offset)
}

// `set` is deprecated
Buffer.prototype.set = function set (v, offset) {
  console.log('.set() is deprecated. Access using array indexes instead.')
  return this.writeUInt8(v, offset)
}

function hexWrite (buf, string, offset, length) {
  offset = Number(offset) || 0
  var remaining = buf.length - offset
  if (!length) {
    length = remaining
  } else {
    length = Number(length)
    if (length > remaining) {
      length = remaining
    }
  }

  // must be an even number of digits
  var strLen = string.length
  if (strLen % 2 !== 0) throw new Error('Invalid hex string')

  if (length > strLen / 2) {
    length = strLen / 2
  }
  for (var i = 0; i < length; i++) {
    var parsed = parseInt(string.substr(i * 2, 2), 16)
    if (isNaN(parsed)) throw new Error('Invalid hex string')
    buf[offset + i] = parsed
  }
  return i
}

function utf8Write (buf, string, offset, length) {
  return blitBuffer(utf8ToBytes(string, buf.length - offset), buf, offset, length)
}

function asciiWrite (buf, string, offset, length) {
  return blitBuffer(asciiToBytes(string), buf, offset, length)
}

function binaryWrite (buf, string, offset, length) {
  return asciiWrite(buf, string, offset, length)
}

function base64Write (buf, string, offset, length) {
  return blitBuffer(base64ToBytes(string), buf, offset, length)
}

function ucs2Write (buf, string, offset, length) {
  return blitBuffer(utf16leToBytes(string, buf.length - offset), buf, offset, length)
}

Buffer.prototype.write = function write (string, offset, length, encoding) {
  // Buffer#write(string)
  if (offset === undefined) {
    encoding = 'utf8'
    length = this.length
    offset = 0
  // Buffer#write(string, encoding)
  } else if (length === undefined && typeof offset === 'string') {
    encoding = offset
    length = this.length
    offset = 0
  // Buffer#write(string, offset[, length][, encoding])
  } else if (isFinite(offset)) {
    offset = offset | 0
    if (isFinite(length)) {
      length = length | 0
      if (encoding === undefined) encoding = 'utf8'
    } else {
      encoding = length
      length = undefined
    }
  // legacy write(string, encoding, offset, length) - remove in v0.13
  } else {
    var swap = encoding
    encoding = offset
    offset = length | 0
    length = swap
  }

  var remaining = this.length - offset
  if (length === undefined || length > remaining) length = remaining

  if ((string.length > 0 && (length < 0 || offset < 0)) || offset > this.length) {
    throw new RangeError('attempt to write outside buffer bounds')
  }

  if (!encoding) encoding = 'utf8'

  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'hex':
        return hexWrite(this, string, offset, length)

      case 'utf8':
      case 'utf-8':
        return utf8Write(this, string, offset, length)

      case 'ascii':
        return asciiWrite(this, string, offset, length)

      case 'binary':
        return binaryWrite(this, string, offset, length)

      case 'base64':
        // Warning: maxLength not taken into account in base64Write
        return base64Write(this, string, offset, length)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return ucs2Write(this, string, offset, length)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}

Buffer.prototype.toJSON = function toJSON () {
  return {
    type: 'Buffer',
    data: Array.prototype.slice.call(this._arr || this, 0)
  }
}

function base64Slice (buf, start, end) {
  if (start === 0 && end === buf.length) {
    return base64.fromByteArray(buf)
  } else {
    return base64.fromByteArray(buf.slice(start, end))
  }
}

function utf8Slice (buf, start, end) {
  end = Math.min(buf.length, end)
  var res = []

  var i = start
  while (i < end) {
    var firstByte = buf[i]
    var codePoint = null
    var bytesPerSequence = (firstByte > 0xEF) ? 4
      : (firstByte > 0xDF) ? 3
      : (firstByte > 0xBF) ? 2
      : 1

    if (i + bytesPerSequence <= end) {
      var secondByte, thirdByte, fourthByte, tempCodePoint

      switch (bytesPerSequence) {
        case 1:
          if (firstByte < 0x80) {
            codePoint = firstByte
          }
          break
        case 2:
          secondByte = buf[i + 1]
          if ((secondByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0x1F) << 0x6 | (secondByte & 0x3F)
            if (tempCodePoint > 0x7F) {
              codePoint = tempCodePoint
            }
          }
          break
        case 3:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0xC | (secondByte & 0x3F) << 0x6 | (thirdByte & 0x3F)
            if (tempCodePoint > 0x7FF && (tempCodePoint < 0xD800 || tempCodePoint > 0xDFFF)) {
              codePoint = tempCodePoint
            }
          }
          break
        case 4:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          fourthByte = buf[i + 3]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80 && (fourthByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0x12 | (secondByte & 0x3F) << 0xC | (thirdByte & 0x3F) << 0x6 | (fourthByte & 0x3F)
            if (tempCodePoint > 0xFFFF && tempCodePoint < 0x110000) {
              codePoint = tempCodePoint
            }
          }
      }
    }

    if (codePoint === null) {
      // we did not generate a valid codePoint so insert a
      // replacement char (U+FFFD) and advance only 1 byte
      codePoint = 0xFFFD
      bytesPerSequence = 1
    } else if (codePoint > 0xFFFF) {
      // encode to utf16 (surrogate pair dance)
      codePoint -= 0x10000
      res.push(codePoint >>> 10 & 0x3FF | 0xD800)
      codePoint = 0xDC00 | codePoint & 0x3FF
    }

    res.push(codePoint)
    i += bytesPerSequence
  }

  return decodeCodePointsArray(res)
}

// Based on http://stackoverflow.com/a/22747272/680742, the browser with
// the lowest limit is Chrome, with 0x10000 args.
// We go 1 magnitude less, for safety
var MAX_ARGUMENTS_LENGTH = 0x1000

function decodeCodePointsArray (codePoints) {
  var len = codePoints.length
  if (len <= MAX_ARGUMENTS_LENGTH) {
    return String.fromCharCode.apply(String, codePoints) // avoid extra slice()
  }

  // Decode in chunks to avoid "call stack size exceeded".
  var res = ''
  var i = 0
  while (i < len) {
    res += String.fromCharCode.apply(
      String,
      codePoints.slice(i, i += MAX_ARGUMENTS_LENGTH)
    )
  }
  return res
}

function asciiSlice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; i++) {
    ret += String.fromCharCode(buf[i] & 0x7F)
  }
  return ret
}

function binarySlice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; i++) {
    ret += String.fromCharCode(buf[i])
  }
  return ret
}

function hexSlice (buf, start, end) {
  var len = buf.length

  if (!start || start < 0) start = 0
  if (!end || end < 0 || end > len) end = len

  var out = ''
  for (var i = start; i < end; i++) {
    out += toHex(buf[i])
  }
  return out
}

function utf16leSlice (buf, start, end) {
  var bytes = buf.slice(start, end)
  var res = ''
  for (var i = 0; i < bytes.length; i += 2) {
    res += String.fromCharCode(bytes[i] + bytes[i + 1] * 256)
  }
  return res
}

Buffer.prototype.slice = function slice (start, end) {
  var len = this.length
  start = ~~start
  end = end === undefined ? len : ~~end

  if (start < 0) {
    start += len
    if (start < 0) start = 0
  } else if (start > len) {
    start = len
  }

  if (end < 0) {
    end += len
    if (end < 0) end = 0
  } else if (end > len) {
    end = len
  }

  if (end < start) end = start

  var newBuf
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    newBuf = Buffer._augment(this.subarray(start, end))
  } else {
    var sliceLen = end - start
    newBuf = new Buffer(sliceLen, undefined)
    for (var i = 0; i < sliceLen; i++) {
      newBuf[i] = this[i + start]
    }
  }

  if (newBuf.length) newBuf.parent = this.parent || this

  return newBuf
}

/*
 * Need to make sure that buffer isn't trying to write out of bounds.
 */
function checkOffset (offset, ext, length) {
  if ((offset % 1) !== 0 || offset < 0) throw new RangeError('offset is not uint')
  if (offset + ext > length) throw new RangeError('Trying to access beyond buffer length')
}

Buffer.prototype.readUIntLE = function readUIntLE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }

  return val
}

Buffer.prototype.readUIntBE = function readUIntBE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) {
    checkOffset(offset, byteLength, this.length)
  }

  var val = this[offset + --byteLength]
  var mul = 1
  while (byteLength > 0 && (mul *= 0x100)) {
    val += this[offset + --byteLength] * mul
  }

  return val
}

Buffer.prototype.readUInt8 = function readUInt8 (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 1, this.length)
  return this[offset]
}

Buffer.prototype.readUInt16LE = function readUInt16LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  return this[offset] | (this[offset + 1] << 8)
}

Buffer.prototype.readUInt16BE = function readUInt16BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  return (this[offset] << 8) | this[offset + 1]
}

Buffer.prototype.readUInt32LE = function readUInt32LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return ((this[offset]) |
      (this[offset + 1] << 8) |
      (this[offset + 2] << 16)) +
      (this[offset + 3] * 0x1000000)
}

Buffer.prototype.readUInt32BE = function readUInt32BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] * 0x1000000) +
    ((this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    this[offset + 3])
}

Buffer.prototype.readIntLE = function readIntLE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readIntBE = function readIntBE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var i = byteLength
  var mul = 1
  var val = this[offset + --i]
  while (i > 0 && (mul *= 0x100)) {
    val += this[offset + --i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readInt8 = function readInt8 (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 1, this.length)
  if (!(this[offset] & 0x80)) return (this[offset])
  return ((0xff - this[offset] + 1) * -1)
}

Buffer.prototype.readInt16LE = function readInt16LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset] | (this[offset + 1] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt16BE = function readInt16BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset + 1] | (this[offset] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt32LE = function readInt32LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset]) |
    (this[offset + 1] << 8) |
    (this[offset + 2] << 16) |
    (this[offset + 3] << 24)
}

Buffer.prototype.readInt32BE = function readInt32BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] << 24) |
    (this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    (this[offset + 3])
}

Buffer.prototype.readFloatLE = function readFloatLE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, true, 23, 4)
}

Buffer.prototype.readFloatBE = function readFloatBE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, false, 23, 4)
}

Buffer.prototype.readDoubleLE = function readDoubleLE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, true, 52, 8)
}

Buffer.prototype.readDoubleBE = function readDoubleBE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, false, 52, 8)
}

function checkInt (buf, value, offset, ext, max, min) {
  if (!Buffer.isBuffer(buf)) throw new TypeError('buffer must be a Buffer instance')
  if (value > max || value < min) throw new RangeError('value is out of bounds')
  if (offset + ext > buf.length) throw new RangeError('index out of range')
}

Buffer.prototype.writeUIntLE = function writeUIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkInt(this, value, offset, byteLength, Math.pow(2, 8 * byteLength), 0)

  var mul = 1
  var i = 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUIntBE = function writeUIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkInt(this, value, offset, byteLength, Math.pow(2, 8 * byteLength), 0)

  var i = byteLength - 1
  var mul = 1
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUInt8 = function writeUInt8 (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 1, 0xff, 0)
  if (!Buffer.TYPED_ARRAY_SUPPORT) value = Math.floor(value)
  this[offset] = (value & 0xff)
  return offset + 1
}

function objectWriteUInt16 (buf, value, offset, littleEndian) {
  if (value < 0) value = 0xffff + value + 1
  for (var i = 0, j = Math.min(buf.length - offset, 2); i < j; i++) {
    buf[offset + i] = (value & (0xff << (8 * (littleEndian ? i : 1 - i)))) >>>
      (littleEndian ? i : 1 - i) * 8
  }
}

Buffer.prototype.writeUInt16LE = function writeUInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
  } else {
    objectWriteUInt16(this, value, offset, true)
  }
  return offset + 2
}

Buffer.prototype.writeUInt16BE = function writeUInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 8)
    this[offset + 1] = (value & 0xff)
  } else {
    objectWriteUInt16(this, value, offset, false)
  }
  return offset + 2
}

function objectWriteUInt32 (buf, value, offset, littleEndian) {
  if (value < 0) value = 0xffffffff + value + 1
  for (var i = 0, j = Math.min(buf.length - offset, 4); i < j; i++) {
    buf[offset + i] = (value >>> (littleEndian ? i : 3 - i) * 8) & 0xff
  }
}

Buffer.prototype.writeUInt32LE = function writeUInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset + 3] = (value >>> 24)
    this[offset + 2] = (value >>> 16)
    this[offset + 1] = (value >>> 8)
    this[offset] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, true)
  }
  return offset + 4
}

Buffer.prototype.writeUInt32BE = function writeUInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 24)
    this[offset + 1] = (value >>> 16)
    this[offset + 2] = (value >>> 8)
    this[offset + 3] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, false)
  }
  return offset + 4
}

Buffer.prototype.writeIntLE = function writeIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) {
    var limit = Math.pow(2, 8 * byteLength - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = 0
  var mul = 1
  var sub = value < 0 ? 1 : 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeIntBE = function writeIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) {
    var limit = Math.pow(2, 8 * byteLength - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = byteLength - 1
  var mul = 1
  var sub = value < 0 ? 1 : 0
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeInt8 = function writeInt8 (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 1, 0x7f, -0x80)
  if (!Buffer.TYPED_ARRAY_SUPPORT) value = Math.floor(value)
  if (value < 0) value = 0xff + value + 1
  this[offset] = (value & 0xff)
  return offset + 1
}

Buffer.prototype.writeInt16LE = function writeInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
  } else {
    objectWriteUInt16(this, value, offset, true)
  }
  return offset + 2
}

Buffer.prototype.writeInt16BE = function writeInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 8)
    this[offset + 1] = (value & 0xff)
  } else {
    objectWriteUInt16(this, value, offset, false)
  }
  return offset + 2
}

Buffer.prototype.writeInt32LE = function writeInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
    this[offset + 2] = (value >>> 16)
    this[offset + 3] = (value >>> 24)
  } else {
    objectWriteUInt32(this, value, offset, true)
  }
  return offset + 4
}

Buffer.prototype.writeInt32BE = function writeInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  if (value < 0) value = 0xffffffff + value + 1
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 24)
    this[offset + 1] = (value >>> 16)
    this[offset + 2] = (value >>> 8)
    this[offset + 3] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, false)
  }
  return offset + 4
}

function checkIEEE754 (buf, value, offset, ext, max, min) {
  if (value > max || value < min) throw new RangeError('value is out of bounds')
  if (offset + ext > buf.length) throw new RangeError('index out of range')
  if (offset < 0) throw new RangeError('index out of range')
}

function writeFloat (buf, value, offset, littleEndian, noAssert) {
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 4, 3.4028234663852886e+38, -3.4028234663852886e+38)
  }
  ieee754.write(buf, value, offset, littleEndian, 23, 4)
  return offset + 4
}

Buffer.prototype.writeFloatLE = function writeFloatLE (value, offset, noAssert) {
  return writeFloat(this, value, offset, true, noAssert)
}

Buffer.prototype.writeFloatBE = function writeFloatBE (value, offset, noAssert) {
  return writeFloat(this, value, offset, false, noAssert)
}

function writeDouble (buf, value, offset, littleEndian, noAssert) {
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 8, 1.7976931348623157E+308, -1.7976931348623157E+308)
  }
  ieee754.write(buf, value, offset, littleEndian, 52, 8)
  return offset + 8
}

Buffer.prototype.writeDoubleLE = function writeDoubleLE (value, offset, noAssert) {
  return writeDouble(this, value, offset, true, noAssert)
}

Buffer.prototype.writeDoubleBE = function writeDoubleBE (value, offset, noAssert) {
  return writeDouble(this, value, offset, false, noAssert)
}

// copy(targetBuffer, targetStart=0, sourceStart=0, sourceEnd=buffer.length)
Buffer.prototype.copy = function copy (target, targetStart, start, end) {
  if (!start) start = 0
  if (!end && end !== 0) end = this.length
  if (targetStart >= target.length) targetStart = target.length
  if (!targetStart) targetStart = 0
  if (end > 0 && end < start) end = start

  // Copy 0 bytes; we're done
  if (end === start) return 0
  if (target.length === 0 || this.length === 0) return 0

  // Fatal error conditions
  if (targetStart < 0) {
    throw new RangeError('targetStart out of bounds')
  }
  if (start < 0 || start >= this.length) throw new RangeError('sourceStart out of bounds')
  if (end < 0) throw new RangeError('sourceEnd out of bounds')

  // Are we oob?
  if (end > this.length) end = this.length
  if (target.length - targetStart < end - start) {
    end = target.length - targetStart + start
  }

  var len = end - start
  var i

  if (this === target && start < targetStart && targetStart < end) {
    // descending copy from end
    for (i = len - 1; i >= 0; i--) {
      target[i + targetStart] = this[i + start]
    }
  } else if (len < 1000 || !Buffer.TYPED_ARRAY_SUPPORT) {
    // ascending copy from start
    for (i = 0; i < len; i++) {
      target[i + targetStart] = this[i + start]
    }
  } else {
    target._set(this.subarray(start, start + len), targetStart)
  }

  return len
}

// fill(value, start=0, end=buffer.length)
Buffer.prototype.fill = function fill (value, start, end) {
  if (!value) value = 0
  if (!start) start = 0
  if (!end) end = this.length

  if (end < start) throw new RangeError('end < start')

  // Fill 0 bytes; we're done
  if (end === start) return
  if (this.length === 0) return

  if (start < 0 || start >= this.length) throw new RangeError('start out of bounds')
  if (end < 0 || end > this.length) throw new RangeError('end out of bounds')

  var i
  if (typeof value === 'number') {
    for (i = start; i < end; i++) {
      this[i] = value
    }
  } else {
    var bytes = utf8ToBytes(value.toString())
    var len = bytes.length
    for (i = start; i < end; i++) {
      this[i] = bytes[i % len]
    }
  }

  return this
}

/**
 * Creates a new `ArrayBuffer` with the *copied* memory of the buffer instance.
 * Added in Node 0.12. Only available in browsers that support ArrayBuffer.
 */
Buffer.prototype.toArrayBuffer = function toArrayBuffer () {
  if (typeof Uint8Array !== 'undefined') {
    if (Buffer.TYPED_ARRAY_SUPPORT) {
      return (new Buffer(this)).buffer
    } else {
      var buf = new Uint8Array(this.length)
      for (var i = 0, len = buf.length; i < len; i += 1) {
        buf[i] = this[i]
      }
      return buf.buffer
    }
  } else {
    throw new TypeError('Buffer.toArrayBuffer not supported in this browser')
  }
}

// HELPER FUNCTIONS
// ================

var BP = Buffer.prototype

/**
 * Augment a Uint8Array *instance* (not the Uint8Array class!) with Buffer methods
 */
Buffer._augment = function _augment (arr) {
  arr.constructor = Buffer
  arr._isBuffer = true

  // save reference to original Uint8Array set method before overwriting
  arr._set = arr.set

  // deprecated
  arr.get = BP.get
  arr.set = BP.set

  arr.write = BP.write
  arr.toString = BP.toString
  arr.toLocaleString = BP.toString
  arr.toJSON = BP.toJSON
  arr.equals = BP.equals
  arr.compare = BP.compare
  arr.indexOf = BP.indexOf
  arr.copy = BP.copy
  arr.slice = BP.slice
  arr.readUIntLE = BP.readUIntLE
  arr.readUIntBE = BP.readUIntBE
  arr.readUInt8 = BP.readUInt8
  arr.readUInt16LE = BP.readUInt16LE
  arr.readUInt16BE = BP.readUInt16BE
  arr.readUInt32LE = BP.readUInt32LE
  arr.readUInt32BE = BP.readUInt32BE
  arr.readIntLE = BP.readIntLE
  arr.readIntBE = BP.readIntBE
  arr.readInt8 = BP.readInt8
  arr.readInt16LE = BP.readInt16LE
  arr.readInt16BE = BP.readInt16BE
  arr.readInt32LE = BP.readInt32LE
  arr.readInt32BE = BP.readInt32BE
  arr.readFloatLE = BP.readFloatLE
  arr.readFloatBE = BP.readFloatBE
  arr.readDoubleLE = BP.readDoubleLE
  arr.readDoubleBE = BP.readDoubleBE
  arr.writeUInt8 = BP.writeUInt8
  arr.writeUIntLE = BP.writeUIntLE
  arr.writeUIntBE = BP.writeUIntBE
  arr.writeUInt16LE = BP.writeUInt16LE
  arr.writeUInt16BE = BP.writeUInt16BE
  arr.writeUInt32LE = BP.writeUInt32LE
  arr.writeUInt32BE = BP.writeUInt32BE
  arr.writeIntLE = BP.writeIntLE
  arr.writeIntBE = BP.writeIntBE
  arr.writeInt8 = BP.writeInt8
  arr.writeInt16LE = BP.writeInt16LE
  arr.writeInt16BE = BP.writeInt16BE
  arr.writeInt32LE = BP.writeInt32LE
  arr.writeInt32BE = BP.writeInt32BE
  arr.writeFloatLE = BP.writeFloatLE
  arr.writeFloatBE = BP.writeFloatBE
  arr.writeDoubleLE = BP.writeDoubleLE
  arr.writeDoubleBE = BP.writeDoubleBE
  arr.fill = BP.fill
  arr.inspect = BP.inspect
  arr.toArrayBuffer = BP.toArrayBuffer

  return arr
}

var INVALID_BASE64_RE = /[^+\/0-9A-Za-z-_]/g

function base64clean (str) {
  // Node strips out invalid characters like \n and \t from the string, base64-js does not
  str = stringtrim(str).replace(INVALID_BASE64_RE, '')
  // Node converts strings with length < 2 to ''
  if (str.length < 2) return ''
  // Node allows for non-padded base64 strings (missing trailing ===), base64-js does not
  while (str.length % 4 !== 0) {
    str = str + '='
  }
  return str
}

function stringtrim (str) {
  if (str.trim) return str.trim()
  return str.replace(/^\s+|\s+$/g, '')
}

function toHex (n) {
  if (n < 16) return '0' + n.toString(16)
  return n.toString(16)
}

function utf8ToBytes (string, units) {
  units = units || Infinity
  var codePoint
  var length = string.length
  var leadSurrogate = null
  var bytes = []

  for (var i = 0; i < length; i++) {
    codePoint = string.charCodeAt(i)

    // is surrogate component
    if (codePoint > 0xD7FF && codePoint < 0xE000) {
      // last char was a lead
      if (!leadSurrogate) {
        // no lead yet
        if (codePoint > 0xDBFF) {
          // unexpected trail
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        } else if (i + 1 === length) {
          // unpaired lead
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        }

        // valid lead
        leadSurrogate = codePoint

        continue
      }

      // 2 leads in a row
      if (codePoint < 0xDC00) {
        if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
        leadSurrogate = codePoint
        continue
      }

      // valid surrogate pair
      codePoint = (leadSurrogate - 0xD800 << 10 | codePoint - 0xDC00) + 0x10000
    } else if (leadSurrogate) {
      // valid bmp char, but last char was a lead
      if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
    }

    leadSurrogate = null

    // encode utf8
    if (codePoint < 0x80) {
      if ((units -= 1) < 0) break
      bytes.push(codePoint)
    } else if (codePoint < 0x800) {
      if ((units -= 2) < 0) break
      bytes.push(
        codePoint >> 0x6 | 0xC0,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x10000) {
      if ((units -= 3) < 0) break
      bytes.push(
        codePoint >> 0xC | 0xE0,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x110000) {
      if ((units -= 4) < 0) break
      bytes.push(
        codePoint >> 0x12 | 0xF0,
        codePoint >> 0xC & 0x3F | 0x80,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else {
      throw new Error('Invalid code point')
    }
  }

  return bytes
}

function asciiToBytes (str) {
  var byteArray = []
  for (var i = 0; i < str.length; i++) {
    // Node's code seems to be doing this and not & 0x7F..
    byteArray.push(str.charCodeAt(i) & 0xFF)
  }
  return byteArray
}

function utf16leToBytes (str, units) {
  var c, hi, lo
  var byteArray = []
  for (var i = 0; i < str.length; i++) {
    if ((units -= 2) < 0) break

    c = str.charCodeAt(i)
    hi = c >> 8
    lo = c % 256
    byteArray.push(lo)
    byteArray.push(hi)
  }

  return byteArray
}

function base64ToBytes (str) {
  return base64.toByteArray(base64clean(str))
}

function blitBuffer (src, dst, offset, length) {
  for (var i = 0; i < length; i++) {
    if ((i + offset >= dst.length) || (i >= src.length)) break
    dst[i + offset] = src[i]
  }
  return i
}

}).call(this,typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{"base64-js":6,"ieee754":9,"is-array":11}],8:[function(require,module,exports){
/*global window:false, self:false, define:false, module:false */

/**
 * @license IDBWrapper - A cross-browser wrapper for IndexedDB
 * Version 1.6.1
 * Copyright (c) 2011 - 2015 Jens Arps
 * http://jensarps.de/
 *
 * Licensed under the MIT (X11) license
 */

(function (name, definition, global) {
  if (typeof define === 'function') {
    define(definition);
  } else if (typeof module !== 'undefined' && module.exports) {
    module.exports = definition();
  } else {
    global[name] = definition();
  }
})('IDBStore', function () {

  'use strict';

  var defaultErrorHandler = function (error) {
    throw error;
  };
  var defaultSuccessHandler = function () {};

  var defaults = {
    storeName: 'Store',
    storePrefix: 'IDBWrapper-',
    dbVersion: 1,
    keyPath: 'id',
    autoIncrement: true,
    onStoreReady: function () {
    },
    onError: defaultErrorHandler,
    indexes: [],
    implementationPreference: [
      'indexedDB',
      'webkitIndexedDB',
      'mozIndexedDB',
      'shimIndexedDB'
    ]
  };

  /**
   *
   * The IDBStore constructor
   *
   * @constructor
   * @name IDBStore
   * @version 1.6.1
   *
   * @param {Object} [kwArgs] An options object used to configure the store and
   *  set callbacks
   * @param {String} [kwArgs.storeName='Store'] The name of the store
   * @param {String} [kwArgs.storePrefix='IDBWrapper-'] A prefix that is
   *  internally used to construct the name of the database, which will be
   *  kwArgs.storePrefix + kwArgs.storeName
   * @param {Number} [kwArgs.dbVersion=1] The version of the store
   * @param {String} [kwArgs.keyPath='id'] The key path to use. If you want to
   *  setup IDBWrapper to work with out-of-line keys, you need to set this to
   *  `null`
   * @param {Boolean} [kwArgs.autoIncrement=true] If set to true, IDBStore will
   *  automatically make sure a unique keyPath value is present on each object
   *  that is stored.
   * @param {Function} [kwArgs.onStoreReady] A callback to be called when the
   *  store is ready to be used.
   * @param {Function} [kwArgs.onError=throw] A callback to be called when an
   *  error occurred during instantiation of the store.
   * @param {Array} [kwArgs.indexes=[]] An array of indexData objects
   *  defining the indexes to use with the store. For every index to be used
   *  one indexData object needs to be passed in the array.
   *  An indexData object is defined as follows:
   * @param {Object} [kwArgs.indexes.indexData] An object defining the index to
   *  use
   * @param {String} kwArgs.indexes.indexData.name The name of the index
   * @param {String} [kwArgs.indexes.indexData.keyPath] The key path of the index
   * @param {Boolean} [kwArgs.indexes.indexData.unique] Whether the index is unique
   * @param {Boolean} [kwArgs.indexes.indexData.multiEntry] Whether the index is multi entry
   * @param {Array} [kwArgs.implementationPreference=['indexedDB','webkitIndexedDB','mozIndexedDB','shimIndexedDB']] An array of strings naming implementations to be used, in order or preference
   * @param {Function} [onStoreReady] A callback to be called when the store
   * is ready to be used.
   * @example
      // create a store for customers with an additional index over the
      // `lastname` property.
      var myCustomerStore = new IDBStore({
        dbVersion: 1,
        storeName: 'customer-index',
        keyPath: 'customerid',
        autoIncrement: true,
        onStoreReady: populateTable,
        indexes: [
          { name: 'lastname', keyPath: 'lastname', unique: false, multiEntry: false }
        ]
      });
   * @example
      // create a generic store
      var myCustomerStore = new IDBStore({
        storeName: 'my-data-store',
        onStoreReady: function(){
          // start working with the store.
        }
      });
   */
  var IDBStore = function (kwArgs, onStoreReady) {

    if (typeof onStoreReady == 'undefined' && typeof kwArgs == 'function') {
      onStoreReady = kwArgs;
    }
    if (Object.prototype.toString.call(kwArgs) != '[object Object]') {
      kwArgs = {};
    }

    for (var key in defaults) {
      this[key] = typeof kwArgs[key] != 'undefined' ? kwArgs[key] : defaults[key];
    }

    this.dbName = this.storePrefix + this.storeName;
    this.dbVersion = parseInt(this.dbVersion, 10) || 1;

    onStoreReady && (this.onStoreReady = onStoreReady);

    var env = typeof window == 'object' ? window : self;
    var availableImplementations = this.implementationPreference.filter(function (implName) {
      return implName in env;
    });
    this.implementation = availableImplementations[0];
    this.idb = env[this.implementation];
    this.keyRange = env.IDBKeyRange || env.webkitIDBKeyRange || env.mozIDBKeyRange;

    this.consts = {
      'READ_ONLY':         'readonly',
      'READ_WRITE':        'readwrite',
      'VERSION_CHANGE':    'versionchange',
      'NEXT':              'next',
      'NEXT_NO_DUPLICATE': 'nextunique',
      'PREV':              'prev',
      'PREV_NO_DUPLICATE': 'prevunique'
    };

    this.openDB();
  };

  IDBStore.prototype = /** @lends IDBStore */ {

    /**
     * A pointer to the IDBStore ctor
     *
     * @private
     * @type {Function}
     */
    constructor: IDBStore,

    /**
     * The version of IDBStore
     *
     * @type {String}
     */
    version: '1.6.1',

    /**
     * A reference to the IndexedDB object
     *
     * @type {Object}
     */
    db: null,

    /**
     * The full name of the IndexedDB used by IDBStore, composed of
     * this.storePrefix + this.storeName
     *
     * @type {String}
     */
    dbName: null,

    /**
     * The version of the IndexedDB used by IDBStore
     *
     * @type {Number}
     */
    dbVersion: null,

    /**
     * A reference to the objectStore used by IDBStore
     *
     * @type {Object}
     */
    store: null,

    /**
     * The store name
     *
     * @type {String}
     */
    storeName: null,

    /**
     * The prefix to prepend to the store name
     *
     * @type {String}
     */
    storePrefix: null,

    /**
     * The key path
     *
     * @type {String}
     */
    keyPath: null,

    /**
     * Whether IDBStore uses autoIncrement
     *
     * @type {Boolean}
     */
    autoIncrement: null,

    /**
     * The indexes used by IDBStore
     *
     * @type {Array}
     */
    indexes: null,

    /**
     * The implemantations to try to use, in order of preference
     *
     * @type {Array}
     */
    implementationPreference: null,

    /**
     * The actual implementation being used
     *
     * @type {String}
     */
    implementation: '',

    /**
     * The callback to be called when the store is ready to be used
     *
     * @type {Function}
     */
    onStoreReady: null,

    /**
     * The callback to be called if an error occurred during instantiation
     * of the store
     *
     * @type {Function}
     */
    onError: null,

    /**
     * The internal insertID counter
     *
     * @type {Number}
     * @private
     */
    _insertIdCount: 0,

    /**
     * Opens an IndexedDB; called by the constructor.
     *
     * Will check if versions match and compare provided index configuration
     * with existing ones, and update indexes if necessary.
     *
     * Will call this.onStoreReady() if everything went well and the store
     * is ready to use, and this.onError() is something went wrong.
     *
     * @private
     *
     */
    openDB: function () {

      var openRequest = this.idb.open(this.dbName, this.dbVersion);
      var preventSuccessCallback = false;

      openRequest.onerror = function (error) {

        var gotVersionErr = false;
        if ('error' in error.target) {
          gotVersionErr = error.target.error.name == 'VersionError';
        } else if ('errorCode' in error.target) {
          gotVersionErr = error.target.errorCode == 12;
        }

        if (gotVersionErr) {
          this.onError(new Error('The version number provided is lower than the existing one.'));
        } else {
          this.onError(error);
        }
      }.bind(this);

      openRequest.onsuccess = function (event) {

        if (preventSuccessCallback) {
          return;
        }

        if(this.db){
          this.onStoreReady();
          return;
        }

        this.db = event.target.result;

        if(typeof this.db.version == 'string'){
          this.onError(new Error('The IndexedDB implementation in this browser is outdated. Please upgrade your browser.'));
          return;
        }

        if(!this.db.objectStoreNames.contains(this.storeName)){
          // We should never ever get here.
          // Lets notify the user anyway.
          this.onError(new Error('Object store couldn\'t be created.'));
          return;
        }

        var emptyTransaction = this.db.transaction([this.storeName], this.consts.READ_ONLY);
        this.store = emptyTransaction.objectStore(this.storeName);

        // check indexes
        var existingIndexes = Array.prototype.slice.call(this.getIndexList());
        this.indexes.forEach(function(indexData){
          var indexName = indexData.name;

          if(!indexName){
            preventSuccessCallback = true;
            this.onError(new Error('Cannot create index: No index name given.'));
            return;
          }

          this.normalizeIndexData(indexData);

          if(this.hasIndex(indexName)){
            // check if it complies
            var actualIndex = this.store.index(indexName);
            var complies = this.indexComplies(actualIndex, indexData);
            if(!complies){
              preventSuccessCallback = true;
              this.onError(new Error('Cannot modify index "' + indexName + '" for current version. Please bump version number to ' + ( this.dbVersion + 1 ) + '.'));
            }

            existingIndexes.splice(existingIndexes.indexOf(indexName), 1);
          } else {
            preventSuccessCallback = true;
            this.onError(new Error('Cannot create new index "' + indexName + '" for current version. Please bump version number to ' + ( this.dbVersion + 1 ) + '.'));
          }

        }, this);

        if (existingIndexes.length) {
          preventSuccessCallback = true;
          this.onError(new Error('Cannot delete index(es) "' + existingIndexes.toString() + '" for current version. Please bump version number to ' + ( this.dbVersion + 1 ) + '.'));
        }

        preventSuccessCallback || this.onStoreReady();
      }.bind(this);

      openRequest.onupgradeneeded = function(/* IDBVersionChangeEvent */ event){

        this.db = event.target.result;

        if(this.db.objectStoreNames.contains(this.storeName)){
          this.store = event.target.transaction.objectStore(this.storeName);
        } else {
          var optionalParameters = { autoIncrement: this.autoIncrement };
          if (this.keyPath !== null) {
            optionalParameters.keyPath = this.keyPath;
          }
          this.store = this.db.createObjectStore(this.storeName, optionalParameters);
        }

        var existingIndexes = Array.prototype.slice.call(this.getIndexList());
        this.indexes.forEach(function(indexData){
          var indexName = indexData.name;

          if(!indexName){
            preventSuccessCallback = true;
            this.onError(new Error('Cannot create index: No index name given.'));
          }

          this.normalizeIndexData(indexData);

          if(this.hasIndex(indexName)){
            // check if it complies
            var actualIndex = this.store.index(indexName);
            var complies = this.indexComplies(actualIndex, indexData);
            if(!complies){
              // index differs, need to delete and re-create
              this.store.deleteIndex(indexName);
              this.store.createIndex(indexName, indexData.keyPath, { unique: indexData.unique, multiEntry: indexData.multiEntry });
            }

            existingIndexes.splice(existingIndexes.indexOf(indexName), 1);
          } else {
            this.store.createIndex(indexName, indexData.keyPath, { unique: indexData.unique, multiEntry: indexData.multiEntry });
          }

        }, this);

        if (existingIndexes.length) {
          existingIndexes.forEach(function(_indexName){
            this.store.deleteIndex(_indexName);
          }, this);
        }

      }.bind(this);
    },

    /**
     * Deletes the database used for this store if the IDB implementations
     * provides that functionality.
     *
     * @param {Function} [onSuccess] A callback that is called if deletion
     *  was successful.
     * @param {Function} [onError] A callback that is called if deletion
     *  failed.
     */
    deleteDatabase: function (onSuccess, onError) {
      if (this.idb.deleteDatabase) {
        this.db.close();
        var deleteRequest = this.idb.deleteDatabase(this.dbName);
        deleteRequest.onsuccess = onSuccess;
        deleteRequest.onerror = onError;
      } else {
        onError(new Error('Browser does not support IndexedDB deleteDatabase!'));
      }
    },

    /*********************
     * data manipulation *
     *********************/

    /**
     * Puts an object into the store. If an entry with the given id exists,
     * it will be overwritten. This method has a different signature for inline
     * keys and out-of-line keys; please see the examples below.
     *
     * @param {*} [key] The key to store. This is only needed if IDBWrapper
     *  is set to use out-of-line keys. For inline keys - the default scenario -
     *  this can be omitted.
     * @param {Object} value The data object to store.
     * @param {Function} [onSuccess] A callback that is called if insertion
     *  was successful.
     * @param {Function} [onError] A callback that is called if insertion
     *  failed.
     * @returns {IDBTransaction} The transaction used for this operation.
     * @example
        // Storing an object, using inline keys (the default scenario):
        var myCustomer = {
          customerid: 2346223,
          lastname: 'Doe',
          firstname: 'John'
        };
        myCustomerStore.put(myCustomer, mySuccessHandler, myErrorHandler);
        // Note that passing success- and error-handlers is optional.
     * @example
        // Storing an object, using out-of-line keys:
       var myCustomer = {
         lastname: 'Doe',
         firstname: 'John'
       };
       myCustomerStore.put(2346223, myCustomer, mySuccessHandler, myErrorHandler);
      // Note that passing success- and error-handlers is optional.
     */
    put: function (key, value, onSuccess, onError) {
      if (this.keyPath !== null) {
        onError = onSuccess;
        onSuccess = value;
        value = key;
      }
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);

      var hasSuccess = false,
          result = null,
          putRequest;

      var putTransaction = this.db.transaction([this.storeName], this.consts.READ_WRITE);
      putTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      putTransaction.onabort = onError;
      putTransaction.onerror = onError;

      if (this.keyPath !== null) { // in-line keys
        this._addIdPropertyIfNeeded(value);
        putRequest = putTransaction.objectStore(this.storeName).put(value);
      } else { // out-of-line keys
        putRequest = putTransaction.objectStore(this.storeName).put(value, key);
      }
      putRequest.onsuccess = function (event) {
        hasSuccess = true;
        result = event.target.result;
      };
      putRequest.onerror = onError;

      return putTransaction;
    },

    /**
     * Retrieves an object from the store. If no entry exists with the given id,
     * the success handler will be called with null as first and only argument.
     *
     * @param {*} key The id of the object to fetch.
     * @param {Function} [onSuccess] A callback that is called if fetching
     *  was successful. Will receive the object as only argument.
     * @param {Function} [onError] A callback that will be called if an error
     *  occurred during the operation.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    get: function (key, onSuccess, onError) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);

      var hasSuccess = false,
          result = null;

      var getTransaction = this.db.transaction([this.storeName], this.consts.READ_ONLY);
      getTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      getTransaction.onabort = onError;
      getTransaction.onerror = onError;
      var getRequest = getTransaction.objectStore(this.storeName).get(key);
      getRequest.onsuccess = function (event) {
        hasSuccess = true;
        result = event.target.result;
      };
      getRequest.onerror = onError;

      return getTransaction;
    },

    /**
     * Removes an object from the store.
     *
     * @param {*} key The id of the object to remove.
     * @param {Function} [onSuccess] A callback that is called if the removal
     *  was successful.
     * @param {Function} [onError] A callback that will be called if an error
     *  occurred during the operation.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    remove: function (key, onSuccess, onError) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);

      var hasSuccess = false,
          result = null;

      var removeTransaction = this.db.transaction([this.storeName], this.consts.READ_WRITE);
      removeTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      removeTransaction.onabort = onError;
      removeTransaction.onerror = onError;

      var deleteRequest = removeTransaction.objectStore(this.storeName)['delete'](key);
      deleteRequest.onsuccess = function (event) {
        hasSuccess = true;
        result = event.target.result;
      };
      deleteRequest.onerror = onError;

      return removeTransaction;
    },

    /**
     * Runs a batch of put and/or remove operations on the store.
     *
     * @param {Array} dataArray An array of objects containing the operation to run
     *  and the data object (for put operations).
     * @param {Function} [onSuccess] A callback that is called if all operations
     *  were successful.
     * @param {Function} [onError] A callback that is called if an error
     *  occurred during one of the operations.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    batch: function (dataArray, onSuccess, onError) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);

      if(Object.prototype.toString.call(dataArray) != '[object Array]'){
        onError(new Error('dataArray argument must be of type Array.'));
      } else if (dataArray.length === 0) {
        return onSuccess(true);
      }
      var batchTransaction = this.db.transaction([this.storeName] , this.consts.READ_WRITE);
      batchTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(hasSuccess);
      };
      batchTransaction.onabort = onError;
      batchTransaction.onerror = onError;

      var count = dataArray.length;
      var called = false;
      var hasSuccess = false;

      var onItemSuccess = function () {
        count--;
        if (count === 0 && !called) {
          called = true;
          hasSuccess = true;
        }
      };

      dataArray.forEach(function (operation) {
        var type = operation.type;
        var key = operation.key;
        var value = operation.value;

        var onItemError = function (err) {
          batchTransaction.abort();
          if (!called) {
            called = true;
            onError(err, type, key);
          }
        };

        if (type == 'remove') {
          var deleteRequest = batchTransaction.objectStore(this.storeName)['delete'](key);
          deleteRequest.onsuccess = onItemSuccess;
          deleteRequest.onerror = onItemError;
        } else if (type == 'put') {
          var putRequest;
          if (this.keyPath !== null) { // in-line keys
            this._addIdPropertyIfNeeded(value);
            putRequest = batchTransaction.objectStore(this.storeName).put(value);
          } else { // out-of-line keys
            putRequest = batchTransaction.objectStore(this.storeName).put(value, key);
          }
          putRequest.onsuccess = onItemSuccess;
          putRequest.onerror = onItemError;
        }
      }, this);

      return batchTransaction;
    },

    /**
     * Takes an array of objects and stores them in a single transaction.
     *
     * @param {Array} dataArray An array of objects to store
     * @param {Function} [onSuccess] A callback that is called if all operations
     *  were successful.
     * @param {Function} [onError] A callback that is called if an error
     *  occurred during one of the operations.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    putBatch: function (dataArray, onSuccess, onError) {
      var batchData = dataArray.map(function(item){
        return { type: 'put', value: item };
      });

      return this.batch(batchData, onSuccess, onError);
    },

    /**
     * Like putBatch, takes an array of objects and stores them in a single
     * transaction, but allows processing of the result values.  Returns the
     * processed records containing the key for newly created records to the
     * onSuccess calllback instead of only returning true or false for success.
     * In addition, added the option for the caller to specify a key field that
     * should be set to the newly created key.
     *
     * @param {Array} dataArray An array of objects to store
     * @param {Object} [options] An object containing optional options
     * @param {String} [options.keyField=this.keyPath] Specifies a field in the record to update
     *  with the auto-incrementing key. Defaults to the store's keyPath.
     * @param {Function} [onSuccess] A callback that is called if all operations
     *  were successful.
     * @param {Function} [onError] A callback that is called if an error
     *  occurred during one of the operations.
     * @returns {IDBTransaction} The transaction used for this operation.
     *
     */
    upsertBatch: function (dataArray, options, onSuccess, onError) {
      // handle `dataArray, onSuccess, onError` signature
      if (typeof options == 'function') {
        onSuccess = options;
        onError = onSuccess;
        options = {};
      }

      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);
      options || (options = {});

      if (Object.prototype.toString.call(dataArray) != '[object Array]') {
        onError(new Error('dataArray argument must be of type Array.'));
      }
      var batchTransaction = this.db.transaction([this.storeName], this.consts.READ_WRITE);
      batchTransaction.oncomplete = function () {
        if (hasSuccess) {
          onSuccess(dataArray);
        } else {
          onError(false);
        }
      };
      batchTransaction.onabort = onError;
      batchTransaction.onerror = onError;

      var keyField = options.keyField || this.keyPath;
      var count = dataArray.length;
      var called = false;
      var hasSuccess = false;
      var index = 0; // assume success callbacks are executed in order

      var onItemSuccess = function (event) {
        var record = dataArray[index++];
        record[keyField] = event.target.result;

        count--;
        if (count === 0 && !called) {
          called = true;
          hasSuccess = true;
        }
      };

      dataArray.forEach(function (record) {
        var key = record.key;

        var onItemError = function (err) {
          batchTransaction.abort();
          if (!called) {
            called = true;
            onError(err);
          }
        };

        var putRequest;
        if (this.keyPath !== null) { // in-line keys
          this._addIdPropertyIfNeeded(record);
          putRequest = batchTransaction.objectStore(this.storeName).put(record);
        } else { // out-of-line keys
          putRequest = batchTransaction.objectStore(this.storeName).put(record, key);
        }
        putRequest.onsuccess = onItemSuccess;
        putRequest.onerror = onItemError;
      }, this);

      return batchTransaction;
    },

    /**
     * Takes an array of keys and removes matching objects in a single
     * transaction.
     *
     * @param {Array} keyArray An array of keys to remove
     * @param {Function} [onSuccess] A callback that is called if all operations
     *  were successful.
     * @param {Function} [onError] A callback that is called if an error
     *  occurred during one of the operations.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    removeBatch: function (keyArray, onSuccess, onError) {
      var batchData = keyArray.map(function(key){
        return { type: 'remove', key: key };
      });

      return this.batch(batchData, onSuccess, onError);
    },

    /**
     * Takes an array of keys and fetches matching objects
     *
     * @param {Array} keyArray An array of keys identifying the objects to fetch
     * @param {Function} [onSuccess] A callback that is called if all operations
     *  were successful.
     * @param {Function} [onError] A callback that is called if an error
     *  occurred during one of the operations.
     * @param {String} [arrayType='sparse'] The type of array to pass to the
     *  success handler. May be one of 'sparse', 'dense' or 'skip'. Defaults to
     *  'sparse'. This parameter specifies how to handle the situation if a get
     *  operation did not throw an error, but there was no matching object in
     *  the database. In most cases, 'sparse' provides the most desired
     *  behavior. See the examples for details.
     * @returns {IDBTransaction} The transaction used for this operation.
     * @example
     // given that there are two objects in the database with the keypath
     // values 1 and 2, and the call looks like this:
     myStore.getBatch([1, 5, 2], onError, function (data) { … }, arrayType);

     // this is what the `data` array will be like:

     // arrayType == 'sparse':
     // data is a sparse array containing two entries and having a length of 3:
       [Object, 2: Object]
         0: Object
         2: Object
         length: 3
         __proto__: Array[0]
     // calling forEach on data will result in the callback being called two
     // times, with the index parameter matching the index of the key in the
     // keyArray.

     // arrayType == 'dense':
     // data is a dense array containing three entries and having a length of 3,
     // where data[1] is of type undefined:
       [Object, undefined, Object]
         0: Object
         1: undefined
         2: Object
         length: 3
         __proto__: Array[0]
     // calling forEach on data will result in the callback being called three
     // times, with the index parameter matching the index of the key in the
     // keyArray, but the second call will have undefined as first argument.

     // arrayType == 'skip':
     // data is a dense array containing two entries and having a length of 2:
       [Object, Object]
         0: Object
         1: Object
         length: 2
         __proto__: Array[0]
     // calling forEach on data will result in the callback being called two
     // times, with the index parameter not matching the index of the key in the
     // keyArray.
     */
    getBatch: function (keyArray, onSuccess, onError, arrayType) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);
      arrayType || (arrayType = 'sparse');

      if (Object.prototype.toString.call(keyArray) != '[object Array]'){
        onError(new Error('keyArray argument must be of type Array.'));
      } else if (keyArray.length === 0) {
        return onSuccess([]);
      }
      var batchTransaction = this.db.transaction([this.storeName] , this.consts.READ_ONLY);
      batchTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      batchTransaction.onabort = onError;
      batchTransaction.onerror = onError;

      var data = [];
      var count = keyArray.length;
      var called = false;
      var hasSuccess = false;
      var result = null;

      var onItemSuccess = function (event) {
        if (event.target.result || arrayType == 'dense') {
          data.push(event.target.result);
        } else if (arrayType == 'sparse') {
          data.length++;
        }
        count--;
        if (count === 0) {
          called = true;
          hasSuccess = true;
          result = data;
        }
      };

      keyArray.forEach(function (key) {

        var onItemError = function (err) {
          called = true;
          result = err;
          onError(err);
          batchTransaction.abort();
        };

        var getRequest = batchTransaction.objectStore(this.storeName).get(key);
        getRequest.onsuccess = onItemSuccess;
        getRequest.onerror = onItemError;

      }, this);

      return batchTransaction;
    },

    /**
     * Fetches all entries in the store.
     *
     * @param {Function} [onSuccess] A callback that is called if the operation
     *  was successful. Will receive an array of objects.
     * @param {Function} [onError] A callback that will be called if an error
     *  occurred during the operation.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    getAll: function (onSuccess, onError) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);
      var getAllTransaction = this.db.transaction([this.storeName], this.consts.READ_ONLY);
      var store = getAllTransaction.objectStore(this.storeName);
      if (store.getAll) {
        this._getAllNative(getAllTransaction, store, onSuccess, onError);
      } else {
        this._getAllCursor(getAllTransaction, store, onSuccess, onError);
      }

      return getAllTransaction;
    },

    /**
     * Implements getAll for IDB implementations that have a non-standard
     * getAll() method.
     *
     * @param {Object} getAllTransaction An open READ transaction.
     * @param {Object} store A reference to the store.
     * @param {Function} onSuccess A callback that will be called if the
     *  operation was successful.
     * @param {Function} onError A callback that will be called if an
     *  error occurred during the operation.
     * @private
     */
    _getAllNative: function (getAllTransaction, store, onSuccess, onError) {
      var hasSuccess = false,
          result = null;

      getAllTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      getAllTransaction.onabort = onError;
      getAllTransaction.onerror = onError;

      var getAllRequest = store.getAll();
      getAllRequest.onsuccess = function (event) {
        hasSuccess = true;
        result = event.target.result;
      };
      getAllRequest.onerror = onError;
    },

    /**
     * Implements getAll for IDB implementations that do not have a getAll()
     * method.
     *
     * @param {Object} getAllTransaction An open READ transaction.
     * @param {Object} store A reference to the store.
     * @param {Function} onSuccess A callback that will be called if the
     *  operation was successful.
     * @param {Function} onError A callback that will be called if an
     *  error occurred during the operation.
     * @private
     */
    _getAllCursor: function (getAllTransaction, store, onSuccess, onError) {
      var all = [],
          hasSuccess = false,
          result = null;

      getAllTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      getAllTransaction.onabort = onError;
      getAllTransaction.onerror = onError;

      var cursorRequest = store.openCursor();
      cursorRequest.onsuccess = function (event) {
        var cursor = event.target.result;
        if (cursor) {
          all.push(cursor.value);
          cursor['continue']();
        }
        else {
          hasSuccess = true;
          result = all;
        }
      };
      cursorRequest.onError = onError;
    },

    /**
     * Clears the store, i.e. deletes all entries in the store.
     *
     * @param {Function} [onSuccess] A callback that will be called if the
     *  operation was successful.
     * @param {Function} [onError] A callback that will be called if an
     *  error occurred during the operation.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    clear: function (onSuccess, onError) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);

      var hasSuccess = false,
          result = null;

      var clearTransaction = this.db.transaction([this.storeName], this.consts.READ_WRITE);
      clearTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      clearTransaction.onabort = onError;
      clearTransaction.onerror = onError;

      var clearRequest = clearTransaction.objectStore(this.storeName).clear();
      clearRequest.onsuccess = function (event) {
        hasSuccess = true;
        result = event.target.result;
      };
      clearRequest.onerror = onError;

      return clearTransaction;
    },

    /**
     * Checks if an id property needs to present on a object and adds one if
     * necessary.
     *
     * @param {Object} dataObj The data object that is about to be stored
     * @private
     */
    _addIdPropertyIfNeeded: function (dataObj) {
      if (typeof dataObj[this.keyPath] == 'undefined') {
        dataObj[this.keyPath] = this._insertIdCount++ + Date.now();
      }
    },

    /************
     * indexing *
     ************/

    /**
     * Returns a DOMStringList of index names of the store.
     *
     * @return {DOMStringList} The list of index names
     */
    getIndexList: function () {
      return this.store.indexNames;
    },

    /**
     * Checks if an index with the given name exists in the store.
     *
     * @param {String} indexName The name of the index to look for
     * @return {Boolean} Whether the store contains an index with the given name
     */
    hasIndex: function (indexName) {
      return this.store.indexNames.contains(indexName);
    },

    /**
     * Normalizes an object containing index data and assures that all
     * properties are set.
     *
     * @param {Object} indexData The index data object to normalize
     * @param {String} indexData.name The name of the index
     * @param {String} [indexData.keyPath] The key path of the index
     * @param {Boolean} [indexData.unique] Whether the index is unique
     * @param {Boolean} [indexData.multiEntry] Whether the index is multi entry
     */
    normalizeIndexData: function (indexData) {
      indexData.keyPath = indexData.keyPath || indexData.name;
      indexData.unique = !!indexData.unique;
      indexData.multiEntry = !!indexData.multiEntry;
    },

    /**
     * Checks if an actual index complies with an expected index.
     *
     * @param {Object} actual The actual index found in the store
     * @param {Object} expected An Object describing an expected index
     * @return {Boolean} Whether both index definitions are identical
     */
    indexComplies: function (actual, expected) {
      var complies = ['keyPath', 'unique', 'multiEntry'].every(function (key) {
        // IE10 returns undefined for no multiEntry
        if (key == 'multiEntry' && actual[key] === undefined && expected[key] === false) {
          return true;
        }
        // Compound keys
        if (key == 'keyPath' && Object.prototype.toString.call(expected[key]) == '[object Array]') {
          var exp = expected.keyPath;
          var act = actual.keyPath;

          // IE10 can't handle keyPath sequences and stores them as a string.
          // The index will be unusable there, but let's still return true if
          // the keyPath sequence matches.
          if (typeof act == 'string') {
            return exp.toString() == act;
          }

          // Chrome/Opera stores keyPath squences as DOMStringList, Firefox
          // as Array
          if ( ! (typeof act.contains == 'function' || typeof act.indexOf == 'function') ) {
            return false;
          }

          if (act.length !== exp.length) {
            return false;
          }

          for (var i = 0, m = exp.length; i<m; i++) {
            if ( ! ( (act.contains && act.contains(exp[i])) || act.indexOf(exp[i] !== -1) )) {
              return false;
            }
          }
          return true;
        }
        return expected[key] == actual[key];
      });
      return complies;
    },

    /**********
     * cursor *
     **********/

    /**
     * Iterates over the store using the given options and calling onItem
     * for each entry matching the options.
     *
     * @param {Function} onItem A callback to be called for each match
     * @param {Object} [options] An object defining specific options
     * @param {Object} [options.index=null] An IDBIndex to operate on
     * @param {String} [options.order=ASC] The order in which to provide the
     *  results, can be 'DESC' or 'ASC'
     * @param {Boolean} [options.autoContinue=true] Whether to automatically
     *  iterate the cursor to the next result
     * @param {Boolean} [options.filterDuplicates=false] Whether to exclude
     *  duplicate matches
     * @param {Object} [options.keyRange=null] An IDBKeyRange to use
     * @param {Boolean} [options.writeAccess=false] Whether grant write access
     *  to the store in the onItem callback
     * @param {Function} [options.onEnd=null] A callback to be called after
     *  iteration has ended
     * @param {Function} [options.onError=throw] A callback to be called
     *  if an error occurred during the operation.
     * @param {Number} [options.limit=Infinity] Limit the number of returned
     *  results to this number
     * @param {Number} [options.offset=0] Skip the provided number of results
     *  in the resultset
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    iterate: function (onItem, options) {
      options = mixin({
        index: null,
        order: 'ASC',
        autoContinue: true,
        filterDuplicates: false,
        keyRange: null,
        writeAccess: false,
        onEnd: null,
        onError: defaultErrorHandler,
        limit: Infinity,
        offset: 0
      }, options || {});

      var directionType = options.order.toLowerCase() == 'desc' ? 'PREV' : 'NEXT';
      if (options.filterDuplicates) {
        directionType += '_NO_DUPLICATE';
      }

      var hasSuccess = false;
      var cursorTransaction = this.db.transaction([this.storeName], this.consts[options.writeAccess ? 'READ_WRITE' : 'READ_ONLY']);
      var cursorTarget = cursorTransaction.objectStore(this.storeName);
      if (options.index) {
        cursorTarget = cursorTarget.index(options.index);
      }
      var recordCount = 0;

      cursorTransaction.oncomplete = function () {
        if (!hasSuccess) {
          options.onError(null);
          return;
        }
        if (options.onEnd) {
          options.onEnd();
        } else {
          onItem(null);
        }
      };
      cursorTransaction.onabort = options.onError;
      cursorTransaction.onerror = options.onError;

      var cursorRequest = cursorTarget.openCursor(options.keyRange, this.consts[directionType]);
      cursorRequest.onerror = options.onError;
      cursorRequest.onsuccess = function (event) {
        var cursor = event.target.result;
        if (cursor) {
          if (options.offset) {
            cursor.advance(options.offset);
            options.offset = 0;
          } else {
            onItem(cursor.value, cursor, cursorTransaction);
            recordCount++;
            if (options.autoContinue) {
              if (recordCount + options.offset < options.limit) {
                cursor['continue']();
              } else {
                hasSuccess = true;
              }
            }
          }
        } else {
          hasSuccess = true;
        }
      };

      return cursorTransaction;
    },

    /**
     * Runs a query against the store and passes an array containing matched
     * objects to the success handler.
     *
     * @param {Function} onSuccess A callback to be called when the operation
     *  was successful.
     * @param {Object} [options] An object defining specific options
     * @param {Object} [options.index=null] An IDBIndex to operate on
     * @param {String} [options.order=ASC] The order in which to provide the
     *  results, can be 'DESC' or 'ASC'
     * @param {Boolean} [options.filterDuplicates=false] Whether to exclude
     *  duplicate matches
     * @param {Object} [options.keyRange=null] An IDBKeyRange to use
     * @param {Function} [options.onError=throw] A callback to be called
     *  if an error occurred during the operation.
     * @param {Number} [options.limit=Infinity] Limit the number of returned
     *  results to this number
     * @param {Number} [options.offset=0] Skip the provided number of results
     *  in the resultset
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    query: function (onSuccess, options) {
      var result = [];
      options = options || {};
      options.autoContinue = true;
      options.writeAccess = false;
      options.onEnd = function () {
        onSuccess(result);
      };
      return this.iterate(function (item) {
        result.push(item);
      }, options);
    },

    /**
     *
     * Runs a query against the store, but only returns the number of matches
     * instead of the matches itself.
     *
     * @param {Function} onSuccess A callback to be called if the opration
     *  was successful.
     * @param {Object} [options] An object defining specific options
     * @param {Object} [options.index=null] An IDBIndex to operate on
     * @param {Object} [options.keyRange=null] An IDBKeyRange to use
     * @param {Function} [options.onError=throw] A callback to be called if an error
     *  occurred during the operation.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    count: function (onSuccess, options) {

      options = mixin({
        index: null,
        keyRange: null
      }, options || {});

      var onError = options.onError || defaultErrorHandler;

      var hasSuccess = false,
          result = null;

      var cursorTransaction = this.db.transaction([this.storeName], this.consts.READ_ONLY);
      cursorTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      cursorTransaction.onabort = onError;
      cursorTransaction.onerror = onError;

      var cursorTarget = cursorTransaction.objectStore(this.storeName);
      if (options.index) {
        cursorTarget = cursorTarget.index(options.index);
      }
      var countRequest = cursorTarget.count(options.keyRange);
      countRequest.onsuccess = function (evt) {
        hasSuccess = true;
        result = evt.target.result;
      };
      countRequest.onError = onError;

      return cursorTransaction;
    },

    /**************/
    /* key ranges */
    /**************/

    /**
     * Creates a key range using specified options. This key range can be
     * handed over to the count() and iterate() methods.
     *
     * Note: You must provide at least one or both of "lower" or "upper" value.
     *
     * @param {Object} options The options for the key range to create
     * @param {*} [options.lower] The lower bound
     * @param {Boolean} [options.excludeLower] Whether to exclude the lower
     *  bound passed in options.lower from the key range
     * @param {*} [options.upper] The upper bound
     * @param {Boolean} [options.excludeUpper] Whether to exclude the upper
     *  bound passed in options.upper from the key range
     * @param {*} [options.only] A single key value. Use this if you need a key
     *  range that only includes one value for a key. Providing this
     *  property invalidates all other properties.
     * @return {Object} The IDBKeyRange representing the specified options
     */
    makeKeyRange: function(options){
      /*jshint onecase:true */
      var keyRange,
          hasLower = typeof options.lower != 'undefined',
          hasUpper = typeof options.upper != 'undefined',
          isOnly = typeof options.only != 'undefined';

      switch(true){
        case isOnly:
          keyRange = this.keyRange.only(options.only);
          break;
        case hasLower && hasUpper:
          keyRange = this.keyRange.bound(options.lower, options.upper, options.excludeLower, options.excludeUpper);
          break;
        case hasLower:
          keyRange = this.keyRange.lowerBound(options.lower, options.excludeLower);
          break;
        case hasUpper:
          keyRange = this.keyRange.upperBound(options.upper, options.excludeUpper);
          break;
        default:
          throw new Error('Cannot create KeyRange. Provide one or both of "lower" or "upper" value, or an "only" value.');
      }

      return keyRange;

    }

  };

  /** helpers **/
  var empty = {};
  var mixin = function (target, source) {
    var name, s;
    for (name in source) {
      s = source[name];
      if (s !== empty[name] && s !== target[name]) {
        target[name] = s;
      }
    }
    return target;
  };

  IDBStore.version = IDBStore.prototype.version;

  return IDBStore;

}, this);

},{}],9:[function(require,module,exports){
exports.read = function (buffer, offset, isLE, mLen, nBytes) {
  var e, m
  var eLen = nBytes * 8 - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var nBits = -7
  var i = isLE ? (nBytes - 1) : 0
  var d = isLE ? -1 : 1
  var s = buffer[offset + i]

  i += d

  e = s & ((1 << (-nBits)) - 1)
  s >>= (-nBits)
  nBits += eLen
  for (; nBits > 0; e = e * 256 + buffer[offset + i], i += d, nBits -= 8) {}

  m = e & ((1 << (-nBits)) - 1)
  e >>= (-nBits)
  nBits += mLen
  for (; nBits > 0; m = m * 256 + buffer[offset + i], i += d, nBits -= 8) {}

  if (e === 0) {
    e = 1 - eBias
  } else if (e === eMax) {
    return m ? NaN : ((s ? -1 : 1) * Infinity)
  } else {
    m = m + Math.pow(2, mLen)
    e = e - eBias
  }
  return (s ? -1 : 1) * m * Math.pow(2, e - mLen)
}

exports.write = function (buffer, value, offset, isLE, mLen, nBytes) {
  var e, m, c
  var eLen = nBytes * 8 - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var rt = (mLen === 23 ? Math.pow(2, -24) - Math.pow(2, -77) : 0)
  var i = isLE ? 0 : (nBytes - 1)
  var d = isLE ? 1 : -1
  var s = value < 0 || (value === 0 && 1 / value < 0) ? 1 : 0

  value = Math.abs(value)

  if (isNaN(value) || value === Infinity) {
    m = isNaN(value) ? 1 : 0
    e = eMax
  } else {
    e = Math.floor(Math.log(value) / Math.LN2)
    if (value * (c = Math.pow(2, -e)) < 1) {
      e--
      c *= 2
    }
    if (e + eBias >= 1) {
      value += rt / c
    } else {
      value += rt * Math.pow(2, 1 - eBias)
    }
    if (value * c >= 2) {
      e++
      c /= 2
    }

    if (e + eBias >= eMax) {
      m = 0
      e = eMax
    } else if (e + eBias >= 1) {
      m = (value * c - 1) * Math.pow(2, mLen)
      e = e + eBias
    } else {
      m = value * Math.pow(2, eBias - 1) * Math.pow(2, mLen)
      e = 0
    }
  }

  for (; mLen >= 8; buffer[offset + i] = m & 0xff, i += d, m /= 256, mLen -= 8) {}

  e = (e << mLen) | m
  eLen += mLen
  for (; eLen > 0; buffer[offset + i] = e & 0xff, i += d, e /= 256, eLen -= 8) {}

  buffer[offset + i - d] |= s * 128
}

},{}],10:[function(require,module,exports){
if (typeof Object.create === 'function') {
  // implementation from standard node.js 'util' module
  module.exports = function inherits(ctor, superCtor) {
    ctor.super_ = superCtor
    ctor.prototype = Object.create(superCtor.prototype, {
      constructor: {
        value: ctor,
        enumerable: false,
        writable: true,
        configurable: true
      }
    });
  };
} else {
  // old school shim for old browsers
  module.exports = function inherits(ctor, superCtor) {
    ctor.super_ = superCtor
    var TempCtor = function () {}
    TempCtor.prototype = superCtor.prototype
    ctor.prototype = new TempCtor()
    ctor.prototype.constructor = ctor
  }
}

},{}],11:[function(require,module,exports){

/**
 * isArray
 */

var isArray = Array.isArray;

/**
 * toString
 */

var str = Object.prototype.toString;

/**
 * Whether or not the given `val`
 * is an array.
 *
 * example:
 *
 *        isArray([]);
 *        // > true
 *        isArray(arguments);
 *        // > false
 *        isArray('');
 *        // > false
 *
 * @param {mixed} val
 * @return {bool}
 */

module.exports = isArray || function (val) {
  return !! val && '[object Array]' == str.call(val);
};

},{}],12:[function(require,module,exports){
/**
 * Determine if an object is Buffer
 *
 * Author:   Feross Aboukhadijeh <feross@feross.org> <http://feross.org>
 * License:  MIT
 *
 * `npm install is-buffer`
 */

module.exports = function (obj) {
  return !!(obj != null &&
    (obj._isBuffer || // For Safari 5-7 (missing Object.prototype.constructor)
      (obj.constructor &&
      typeof obj.constructor.isBuffer === 'function' &&
      obj.constructor.isBuffer(obj))
    ))
}

},{}],13:[function(require,module,exports){
var Buffer = require('buffer').Buffer;

module.exports = isBuffer;

function isBuffer (o) {
  return Buffer.isBuffer(o)
    || /\[object (.+Array|Array.+)\]/.test(Object.prototype.toString.call(o));
}

},{"buffer":7}],14:[function(require,module,exports){
(function (Buffer){
module.exports = Level

var IDB = require('idb-wrapper')
var AbstractLevelDOWN = require('abstract-leveldown').AbstractLevelDOWN
var util = require('util')
var Iterator = require('./iterator')
var isBuffer = require('isbuffer')
var xtend = require('xtend')
var toBuffer = require('typedarray-to-buffer')

function Level(location) {
  if (!(this instanceof Level)) return new Level(location)
  if (!location) throw new Error("constructor requires at least a location argument")
  this.IDBOptions = {}
  this.location = location
}

util.inherits(Level, AbstractLevelDOWN)

Level.prototype._open = function(options, callback) {
  var self = this

  var idbOpts = {
    storeName: this.location,
    autoIncrement: false,
    keyPath: null,
    onStoreReady: function () {
      callback && callback(null, self.idb)
    },
    onError: function(err) {
      callback && callback(err)
    }
  }

  xtend(idbOpts, options)
  this.IDBOptions = idbOpts
  this.idb = new IDB(idbOpts)
}

Level.prototype._get = function (key, options, callback) {
  this.idb.get(key, function (value) {
    if (value === undefined) {
      // 'NotFound' error, consistent with LevelDOWN API
      return callback(new Error('NotFound'))
    }
    // by default return buffers, unless explicitly told not to
    var asBuffer = true
    if (options.asBuffer === false) asBuffer = false
    if (options.raw) asBuffer = false
    if (asBuffer) {
      if (value instanceof Uint8Array) value = toBuffer(value)
      else value = new Buffer(String(value))
    }
    return callback(null, value, key)
  }, callback)
}

Level.prototype._del = function(id, options, callback) {
  this.idb.remove(id, callback, callback)
}

Level.prototype._put = function (key, value, options, callback) {
  if (value instanceof ArrayBuffer) {
    value = toBuffer(new Uint8Array(value))
  }
  var obj = this.convertEncoding(key, value, options)
  if (Buffer.isBuffer(obj.value)) {
    obj.value = new Uint8Array(value.toArrayBuffer())
  }
  this.idb.put(obj.key, obj.value, function() { callback() }, callback)
}

Level.prototype.convertEncoding = function(key, value, options) {
  if (options.raw) return {key: key, value: value}
  if (value) {
    var stringed = value.toString()
    if (stringed === 'NaN') value = 'NaN'
  }
  var valEnc = options.valueEncoding
  var obj = {key: key, value: value}
  if (value && (!valEnc || valEnc !== 'binary')) {
    if (typeof obj.value !== 'object') {
      obj.value = stringed
    }
  }
  return obj
}

Level.prototype.iterator = function (options) {
  if (typeof options !== 'object') options = {}
  return new Iterator(this.idb, options)
}

Level.prototype._batch = function (array, options, callback) {
  var op
  var i
  var k
  var copiedOp
  var currentOp
  var modified = []

  if (array.length === 0) return setTimeout(callback, 0)

  for (i = 0; i < array.length; i++) {
    copiedOp = {}
    currentOp = array[i]
    modified[i] = copiedOp

    var converted = this.convertEncoding(currentOp.key, currentOp.value, options)
    currentOp.key = converted.key
    currentOp.value = converted.value

    for (k in currentOp) {
      if (k === 'type' && currentOp[k] == 'del') {
        copiedOp[k] = 'remove'
      } else {
        copiedOp[k] = currentOp[k]
      }
    }
  }

  return this.idb.batch(modified, function(){ callback() }, callback)
}

Level.prototype._close = function (callback) {
  this.idb.db.close()
  callback()
}

Level.prototype._approximateSize = function (start, end, callback) {
  var err = new Error('Not implemented')
  if (callback)
    return callback(err)

  throw err
}

Level.prototype._isBuffer = function (obj) {
  return Buffer.isBuffer(obj)
}

Level.destroy = function (db, callback) {
  if (typeof db === 'object') {
    var prefix = db.IDBOptions.storePrefix || 'IDBWrapper-'
    var dbname = db.location
  } else {
    var prefix = 'IDBWrapper-'
    var dbname = db
  }
  var request = indexedDB.deleteDatabase(prefix + dbname)
  request.onsuccess = function() {
    callback()
  }
  request.onerror = function(err) {
    callback(err)
  }
}

var checkKeyValue = Level.prototype._checkKeyValue = function (obj, type) {
  if (obj === null || obj === undefined)
    return new Error(type + ' cannot be `null` or `undefined`')
  if (obj === null || obj === undefined)
    return new Error(type + ' cannot be `null` or `undefined`')
  if (isBuffer(obj) && obj.byteLength === 0)
    return new Error(type + ' cannot be an empty ArrayBuffer')
  if (String(obj) === '')
    return new Error(type + ' cannot be an empty String')
  if (obj.length === 0)
    return new Error(type + ' cannot be an empty Array')
}

}).call(this,require("buffer").Buffer)
},{"./iterator":15,"abstract-leveldown":4,"buffer":7,"idb-wrapper":8,"isbuffer":13,"typedarray-to-buffer":24,"util":26,"xtend":21}],15:[function(require,module,exports){
var util = require('util')
var AbstractIterator  = require('abstract-leveldown').AbstractIterator
var ltgt = require('ltgt')

module.exports = Iterator

function Iterator (db, options) {
  if (!options) options = {}
  this.options = options
  AbstractIterator.call(this, db)
  this._order = options.reverse ? 'DESC': 'ASC'
  this._limit = options.limit
  this._count = 0
  this._done  = false
  var lower = ltgt.lowerBound(options)
  var upper = ltgt.upperBound(options)
  try {
    this._keyRange = lower || upper ? this.db.makeKeyRange({
      lower: lower,
      upper: upper,
      excludeLower: ltgt.lowerBoundExclusive(options),
      excludeUpper: ltgt.upperBoundExclusive(options)
    }) : null
  } catch (e) {
    // The lower key is greater than the upper key.
    // IndexedDB throws an error, but we'll just return 0 results.
    this._keyRangeError = true
  }
  this.callback = null
}

util.inherits(Iterator, AbstractIterator)

Iterator.prototype.createIterator = function() {
  var self = this

  self.iterator = self.db.iterate(function () {
    self.onItem.apply(self, arguments)
  }, {
    keyRange: self._keyRange,
    autoContinue: false,
    order: self._order,
    onError: function(err) { console.log('horrible error', err) },
  })
}

// TODO the limit implementation here just ignores all reads after limit has been reached
// it should cancel the iterator instead but I don't know how
Iterator.prototype.onItem = function (value, cursor, cursorTransaction) {
  if (!cursor && this.callback) {
    this.callback()
    this.callback = false
    return
  }
  var shouldCall = true

  if (!!this._limit && this._limit > 0 && this._count++ >= this._limit)
    shouldCall = false

  if (shouldCall) this.callback(false, cursor.key, cursor.value)
  if (cursor) cursor['continue']()
}

Iterator.prototype._next = function (callback) {
  if (!callback) return new Error('next() requires a callback argument')
  if (this._keyRangeError) return callback()
  if (!this._started) {
    this.createIterator()
    this._started = true
  }
  this.callback = callback
}

},{"abstract-leveldown":4,"ltgt":22,"util":26}],16:[function(require,module,exports){
var hasOwn = Object.prototype.hasOwnProperty;
var toString = Object.prototype.toString;

var isFunction = function (fn) {
	var isFunc = (typeof fn === 'function' && !(fn instanceof RegExp)) || toString.call(fn) === '[object Function]';
	if (!isFunc && typeof window !== 'undefined') {
		isFunc = fn === window.setTimeout || fn === window.alert || fn === window.confirm || fn === window.prompt;
	}
	return isFunc;
};

module.exports = function forEach(obj, fn) {
	if (!isFunction(fn)) {
		throw new TypeError('iterator must be a function');
	}
	var i, k,
		isString = typeof obj === 'string',
		l = obj.length,
		context = arguments.length > 2 ? arguments[2] : null;
	if (l === +l) {
		for (i = 0; i < l; i++) {
			if (context === null) {
				fn(isString ? obj.charAt(i) : obj[i], i, obj);
			} else {
				fn.call(context, isString ? obj.charAt(i) : obj[i], i, obj);
			}
		}
	} else {
		for (k in obj) {
			if (hasOwn.call(obj, k)) {
				if (context === null) {
					fn(obj[k], k, obj);
				} else {
					fn.call(context, obj[k], k, obj);
				}
			}
		}
	}
};


},{}],17:[function(require,module,exports){
module.exports = Object.keys || require('./shim');


},{"./shim":19}],18:[function(require,module,exports){
var toString = Object.prototype.toString;

module.exports = function isArguments(value) {
	var str = toString.call(value);
	var isArguments = str === '[object Arguments]';
	if (!isArguments) {
		isArguments = str !== '[object Array]'
			&& value !== null
			&& typeof value === 'object'
			&& typeof value.length === 'number'
			&& value.length >= 0
			&& toString.call(value.callee) === '[object Function]';
	}
	return isArguments;
};


},{}],19:[function(require,module,exports){
(function () {
	"use strict";

	// modified from https://github.com/kriskowal/es5-shim
	var has = Object.prototype.hasOwnProperty,
		toString = Object.prototype.toString,
		forEach = require('./foreach'),
		isArgs = require('./isArguments'),
		hasDontEnumBug = !({'toString': null}).propertyIsEnumerable('toString'),
		hasProtoEnumBug = (function () {}).propertyIsEnumerable('prototype'),
		dontEnums = [
			"toString",
			"toLocaleString",
			"valueOf",
			"hasOwnProperty",
			"isPrototypeOf",
			"propertyIsEnumerable",
			"constructor"
		],
		keysShim;

	keysShim = function keys(object) {
		var isObject = object !== null && typeof object === 'object',
			isFunction = toString.call(object) === '[object Function]',
			isArguments = isArgs(object),
			theKeys = [];

		if (!isObject && !isFunction && !isArguments) {
			throw new TypeError("Object.keys called on a non-object");
		}

		if (isArguments) {
			forEach(object, function (value) {
				theKeys.push(value);
			});
		} else {
			var name,
				skipProto = hasProtoEnumBug && isFunction;

			for (name in object) {
				if (!(skipProto && name === 'prototype') && has.call(object, name)) {
					theKeys.push(name);
				}
			}
		}

		if (hasDontEnumBug) {
			var ctor = object.constructor,
				skipConstructor = ctor && ctor.prototype === object;

			forEach(dontEnums, function (dontEnum) {
				if (!(skipConstructor && dontEnum === 'constructor') && has.call(object, dontEnum)) {
					theKeys.push(dontEnum);
				}
			});
		}
		return theKeys;
	};

	module.exports = keysShim;
}());


},{"./foreach":16,"./isArguments":18}],20:[function(require,module,exports){
module.exports = hasKeys

function hasKeys(source) {
    return source !== null &&
        (typeof source === "object" ||
        typeof source === "function")
}

},{}],21:[function(require,module,exports){
var Keys = require("object-keys")
var hasKeys = require("./has-keys")

module.exports = extend

function extend() {
    var target = {}

    for (var i = 0; i < arguments.length; i++) {
        var source = arguments[i]

        if (!hasKeys(source)) {
            continue
        }

        var keys = Keys(source)

        for (var j = 0; j < keys.length; j++) {
            var name = keys[j]
            target[name] = source[name]
        }
    }

    return target
}

},{"./has-keys":20,"object-keys":17}],22:[function(require,module,exports){
(function (Buffer){

exports.compare = function (a, b) {

  if(Buffer.isBuffer(a)) {
    var l = Math.min(a.length, b.length)
    for(var i = 0; i < l; i++) {
      var cmp = a[i] - b[i]
      if(cmp) return cmp
    }
    return a.length - b.length
  }

  return a < b ? -1 : a > b ? 1 : 0
}

function has(obj, key) {
  return Object.hasOwnProperty.call(obj, key)
}

// to be compatible with the current abstract-leveldown tests
// nullish or empty strings.
// I could use !!val but I want to permit numbers and booleans,
// if possible.

function isDef (val) {
  return val !== undefined && val !== ''
}

function has (range, name) {
  return Object.hasOwnProperty.call(range, name)
}

function hasKey(range, name) {
  return Object.hasOwnProperty.call(range, name) && name
}

var lowerBoundKey = exports.lowerBoundKey = function (range) {
    return (
       hasKey(range, 'gt')
    || hasKey(range, 'gte')
    || hasKey(range, 'min')
    || (range.reverse ? hasKey(range, 'end') : hasKey(range, 'start'))
    || undefined
    )
}

var lowerBound = exports.lowerBound = function (range) {
  var k = lowerBoundKey(range)
  return k && range[k]
}

exports.lowerBoundInclusive = function (range) {
  return has(range, 'gt') ? false : true
}

exports.upperBoundInclusive =
  function (range) {
    return has(range, 'lt') || !range.minEx ? false : true
  }

var lowerBoundExclusive = exports.lowerBoundExclusive =
  function (range) {
    return has(range, 'gt') || range.minEx ? true : false
  }

var upperBoundExclusive = exports.upperBoundExclusive =
  function (range) {
    return has(range, 'lt') ? true : false
  }

var upperBoundKey = exports.upperBoundKey = function (range) {
    return (
       hasKey(range, 'lt')
    || hasKey(range, 'lte')
    || hasKey(range, 'max')
    || (range.reverse ? hasKey(range, 'start') : hasKey(range, 'end'))
    || undefined
    )
}

var upperBound = exports.upperBound = function (range) {
  var k = upperBoundKey(range)
  return k && range[k]
}

function id (e) { return e }

exports.toLtgt = function (range, _range, map, lower, upper) {
  _range = _range || {}
  map = map || id
  var defaults = arguments.length > 3
  var lb = exports.lowerBoundKey(range)
  var ub = exports.upperBoundKey(range)
  if(lb) {
    if(lb === 'gt') _range.gt = map(range.gt, false)
    else            _range.gte = map(range[lb], false)
  }
  else if(defaults)
    _range.gte = map(lower, false)

  if(ub) {
    if(ub === 'lt') _range.lt = map(range.lt, true)
    else            _range.lte = map(range[ub], true)
  }
  else if(defaults)
    _range.lte = map(upper, true)

  if(range.reverse != null)
    _range.reverse = !!range.reverse

  //if range was used mutably
  //(in level-sublevel it's part of an options object
  //that has more properties on it.)
  if(has(_range, 'max'))   delete _range.max
  if(has(_range, 'min'))   delete _range.min
  if(has(_range, 'start')) delete _range.start
  if(has(_range, 'end'))   delete _range.end

  return _range
}

exports.contains = function (range, key, compare) {
  compare = compare || exports.compare

  var lb = lowerBound(range)
  if(isDef(lb)) {
    var cmp = compare(key, lb)
    if(cmp < 0 || (cmp === 0 && lowerBoundExclusive(range)))
      return false
  }

  var ub = upperBound(range)
  if(isDef(ub)) {
    var cmp = compare(key, ub)
    if(cmp > 0 || (cmp === 0) && upperBoundExclusive(range))
      return false
  }

  return true
}

exports.filter = function (range, compare) {
  return function (key) {
    return exports.contains(range, key, compare)
  }
}

}).call(this,{"isBuffer":require("../is-buffer/index.js")})
},{"../is-buffer/index.js":12}],23:[function(require,module,exports){
// shim for using process in browser

var process = module.exports = {};
var queue = [];
var draining = false;
var currentQueue;
var queueIndex = -1;

function cleanUpNextTick() {
    draining = false;
    if (currentQueue.length) {
        queue = currentQueue.concat(queue);
    } else {
        queueIndex = -1;
    }
    if (queue.length) {
        drainQueue();
    }
}

function drainQueue() {
    if (draining) {
        return;
    }
    var timeout = setTimeout(cleanUpNextTick);
    draining = true;

    var len = queue.length;
    while(len) {
        currentQueue = queue;
        queue = [];
        while (++queueIndex < len) {
            if (currentQueue) {
                currentQueue[queueIndex].run();
            }
        }
        queueIndex = -1;
        len = queue.length;
    }
    currentQueue = null;
    draining = false;
    clearTimeout(timeout);
}

process.nextTick = function (fun) {
    var args = new Array(arguments.length - 1);
    if (arguments.length > 1) {
        for (var i = 1; i < arguments.length; i++) {
            args[i - 1] = arguments[i];
        }
    }
    queue.push(new Item(fun, args));
    if (queue.length === 1 && !draining) {
        setTimeout(drainQueue, 0);
    }
};

// v8 likes predictible objects
function Item(fun, array) {
    this.fun = fun;
    this.array = array;
}
Item.prototype.run = function () {
    this.fun.apply(null, this.array);
};
process.title = 'browser';
process.browser = true;
process.env = {};
process.argv = [];
process.version = ''; // empty string to avoid regexp issues
process.versions = {};

function noop() {}

process.on = noop;
process.addListener = noop;
process.once = noop;
process.off = noop;
process.removeListener = noop;
process.removeAllListeners = noop;
process.emit = noop;

process.binding = function (name) {
    throw new Error('process.binding is not supported');
};

process.cwd = function () { return '/' };
process.chdir = function (dir) {
    throw new Error('process.chdir is not supported');
};
process.umask = function() { return 0; };

},{}],24:[function(require,module,exports){
(function (Buffer){
/**
 * Convert a typed array to a Buffer without a copy
 *
 * Author:   Feross Aboukhadijeh <feross@feross.org> <http://feross.org>
 * License:  MIT
 *
 * `npm install typedarray-to-buffer`
 */

module.exports = function (arr) {
  if (typeof Buffer._augment === 'function' && Buffer.TYPED_ARRAY_SUPPORT) {
    // If `Buffer` is from the `buffer` module and this browser supports typed arrays,
    // then augment it with all the `Buffer` methods.
    return Buffer._augment(arr)
  } else {
    // Otherwise, fallback to creating a `Buffer` with a copy.
    return new Buffer(arr)
  }
}

}).call(this,require("buffer").Buffer)
},{"buffer":7}],25:[function(require,module,exports){
module.exports = function isBuffer(arg) {
  return arg && typeof arg === 'object'
    && typeof arg.copy === 'function'
    && typeof arg.fill === 'function'
    && typeof arg.readUInt8 === 'function';
}
},{}],26:[function(require,module,exports){
(function (process,global){
// Copyright Joyent, Inc. and other Node contributors.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to permit
// persons to whom the Software is furnished to do so, subject to the
// following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
// NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.

var formatRegExp = /%[sdj%]/g;
exports.format = function(f) {
  if (!isString(f)) {
    var objects = [];
    for (var i = 0; i < arguments.length; i++) {
      objects.push(inspect(arguments[i]));
    }
    return objects.join(' ');
  }

  var i = 1;
  var args = arguments;
  var len = args.length;
  var str = String(f).replace(formatRegExp, function(x) {
    if (x === '%%') return '%';
    if (i >= len) return x;
    switch (x) {
      case '%s': return String(args[i++]);
      case '%d': return Number(args[i++]);
      case '%j':
        try {
          return JSON.stringify(args[i++]);
        } catch (_) {
          return '[Circular]';
        }
      default:
        return x;
    }
  });
  for (var x = args[i]; i < len; x = args[++i]) {
    if (isNull(x) || !isObject(x)) {
      str += ' ' + x;
    } else {
      str += ' ' + inspect(x);
    }
  }
  return str;
};


// Mark that a method should not be used.
// Returns a modified function which warns once by default.
// If --no-deprecation is set, then it is a no-op.
exports.deprecate = function(fn, msg) {
  // Allow for deprecating things in the process of starting up.
  if (isUndefined(global.process)) {
    return function() {
      return exports.deprecate(fn, msg).apply(this, arguments);
    };
  }

  if (process.noDeprecation === true) {
    return fn;
  }

  var warned = false;
  function deprecated() {
    if (!warned) {
      if (process.throwDeprecation) {
        throw new Error(msg);
      } else if (process.traceDeprecation) {
        console.trace(msg);
      } else {
        console.error(msg);
      }
      warned = true;
    }
    return fn.apply(this, arguments);
  }

  return deprecated;
};


var debugs = {};
var debugEnviron;
exports.debuglog = function(set) {
  if (isUndefined(debugEnviron))
    debugEnviron = process.env.NODE_DEBUG || '';
  set = set.toUpperCase();
  if (!debugs[set]) {
    if (new RegExp('\\b' + set + '\\b', 'i').test(debugEnviron)) {
      var pid = process.pid;
      debugs[set] = function() {
        var msg = exports.format.apply(exports, arguments);
        console.error('%s %d: %s', set, pid, msg);
      };
    } else {
      debugs[set] = function() {};
    }
  }
  return debugs[set];
};


/**
 * Echos the value of a value. Trys to print the value out
 * in the best way possible given the different types.
 *
 * @param {Object} obj The object to print out.
 * @param {Object} opts Optional options object that alters the output.
 */
/* legacy: obj, showHidden, depth, colors*/
function inspect(obj, opts) {
  // default options
  var ctx = {
    seen: [],
    stylize: stylizeNoColor
  };
  // legacy...
  if (arguments.length >= 3) ctx.depth = arguments[2];
  if (arguments.length >= 4) ctx.colors = arguments[3];
  if (isBoolean(opts)) {
    // legacy...
    ctx.showHidden = opts;
  } else if (opts) {
    // got an "options" object
    exports._extend(ctx, opts);
  }
  // set default options
  if (isUndefined(ctx.showHidden)) ctx.showHidden = false;
  if (isUndefined(ctx.depth)) ctx.depth = 2;
  if (isUndefined(ctx.colors)) ctx.colors = false;
  if (isUndefined(ctx.customInspect)) ctx.customInspect = true;
  if (ctx.colors) ctx.stylize = stylizeWithColor;
  return formatValue(ctx, obj, ctx.depth);
}
exports.inspect = inspect;


// http://en.wikipedia.org/wiki/ANSI_escape_code#graphics
inspect.colors = {
  'bold' : [1, 22],
  'italic' : [3, 23],
  'underline' : [4, 24],
  'inverse' : [7, 27],
  'white' : [37, 39],
  'grey' : [90, 39],
  'black' : [30, 39],
  'blue' : [34, 39],
  'cyan' : [36, 39],
  'green' : [32, 39],
  'magenta' : [35, 39],
  'red' : [31, 39],
  'yellow' : [33, 39]
};

// Don't use 'blue' not visible on cmd.exe
inspect.styles = {
  'special': 'cyan',
  'number': 'yellow',
  'boolean': 'yellow',
  'undefined': 'grey',
  'null': 'bold',
  'string': 'green',
  'date': 'magenta',
  // "name": intentionally not styling
  'regexp': 'red'
};


function stylizeWithColor(str, styleType) {
  var style = inspect.styles[styleType];

  if (style) {
    return '\u001b[' + inspect.colors[style][0] + 'm' + str +
           '\u001b[' + inspect.colors[style][1] + 'm';
  } else {
    return str;
  }
}


function stylizeNoColor(str, styleType) {
  return str;
}


function arrayToHash(array) {
  var hash = {};

  array.forEach(function(val, idx) {
    hash[val] = true;
  });

  return hash;
}


function formatValue(ctx, value, recurseTimes) {
  // Provide a hook for user-specified inspect functions.
  // Check that value is an object with an inspect function on it
  if (ctx.customInspect &&
      value &&
      isFunction(value.inspect) &&
      // Filter out the util module, it's inspect function is special
      value.inspect !== exports.inspect &&
      // Also filter out any prototype objects using the circular check.
      !(value.constructor && value.constructor.prototype === value)) {
    var ret = value.inspect(recurseTimes, ctx);
    if (!isString(ret)) {
      ret = formatValue(ctx, ret, recurseTimes);
    }
    return ret;
  }

  // Primitive types cannot have properties
  var primitive = formatPrimitive(ctx, value);
  if (primitive) {
    return primitive;
  }

  // Look up the keys of the object.
  var keys = Object.keys(value);
  var visibleKeys = arrayToHash(keys);

  if (ctx.showHidden) {
    keys = Object.getOwnPropertyNames(value);
  }

  // IE doesn't make error fields non-enumerable
  // http://msdn.microsoft.com/en-us/library/ie/dww52sbt(v=vs.94).aspx
  if (isError(value)
      && (keys.indexOf('message') >= 0 || keys.indexOf('description') >= 0)) {
    return formatError(value);
  }

  // Some type of object without properties can be shortcutted.
  if (keys.length === 0) {
    if (isFunction(value)) {
      var name = value.name ? ': ' + value.name : '';
      return ctx.stylize('[Function' + name + ']', 'special');
    }
    if (isRegExp(value)) {
      return ctx.stylize(RegExp.prototype.toString.call(value), 'regexp');
    }
    if (isDate(value)) {
      return ctx.stylize(Date.prototype.toString.call(value), 'date');
    }
    if (isError(value)) {
      return formatError(value);
    }
  }

  var base = '', array = false, braces = ['{', '}'];

  // Make Array say that they are Array
  if (isArray(value)) {
    array = true;
    braces = ['[', ']'];
  }

  // Make functions say that they are functions
  if (isFunction(value)) {
    var n = value.name ? ': ' + value.name : '';
    base = ' [Function' + n + ']';
  }

  // Make RegExps say that they are RegExps
  if (isRegExp(value)) {
    base = ' ' + RegExp.prototype.toString.call(value);
  }

  // Make dates with properties first say the date
  if (isDate(value)) {
    base = ' ' + Date.prototype.toUTCString.call(value);
  }

  // Make error with message first say the error
  if (isError(value)) {
    base = ' ' + formatError(value);
  }

  if (keys.length === 0 && (!array || value.length == 0)) {
    return braces[0] + base + braces[1];
  }

  if (recurseTimes < 0) {
    if (isRegExp(value)) {
      return ctx.stylize(RegExp.prototype.toString.call(value), 'regexp');
    } else {
      return ctx.stylize('[Object]', 'special');
    }
  }

  ctx.seen.push(value);

  var output;
  if (array) {
    output = formatArray(ctx, value, recurseTimes, visibleKeys, keys);
  } else {
    output = keys.map(function(key) {
      return formatProperty(ctx, value, recurseTimes, visibleKeys, key, array);
    });
  }

  ctx.seen.pop();

  return reduceToSingleString(output, base, braces);
}


function formatPrimitive(ctx, value) {
  if (isUndefined(value))
    return ctx.stylize('undefined', 'undefined');
  if (isString(value)) {
    var simple = '\'' + JSON.stringify(value).replace(/^"|"$/g, '')
                                             .replace(/'/g, "\\'")
                                             .replace(/\\"/g, '"') + '\'';
    return ctx.stylize(simple, 'string');
  }
  if (isNumber(value))
    return ctx.stylize('' + value, 'number');
  if (isBoolean(value))
    return ctx.stylize('' + value, 'boolean');
  // For some reason typeof null is "object", so special case here.
  if (isNull(value))
    return ctx.stylize('null', 'null');
}


function formatError(value) {
  return '[' + Error.prototype.toString.call(value) + ']';
}


function formatArray(ctx, value, recurseTimes, visibleKeys, keys) {
  var output = [];
  for (var i = 0, l = value.length; i < l; ++i) {
    if (hasOwnProperty(value, String(i))) {
      output.push(formatProperty(ctx, value, recurseTimes, visibleKeys,
          String(i), true));
    } else {
      output.push('');
    }
  }
  keys.forEach(function(key) {
    if (!key.match(/^\d+$/)) {
      output.push(formatProperty(ctx, value, recurseTimes, visibleKeys,
          key, true));
    }
  });
  return output;
}


function formatProperty(ctx, value, recurseTimes, visibleKeys, key, array) {
  var name, str, desc;
  desc = Object.getOwnPropertyDescriptor(value, key) || { value: value[key] };
  if (desc.get) {
    if (desc.set) {
      str = ctx.stylize('[Getter/Setter]', 'special');
    } else {
      str = ctx.stylize('[Getter]', 'special');
    }
  } else {
    if (desc.set) {
      str = ctx.stylize('[Setter]', 'special');
    }
  }
  if (!hasOwnProperty(visibleKeys, key)) {
    name = '[' + key + ']';
  }
  if (!str) {
    if (ctx.seen.indexOf(desc.value) < 0) {
      if (isNull(recurseTimes)) {
        str = formatValue(ctx, desc.value, null);
      } else {
        str = formatValue(ctx, desc.value, recurseTimes - 1);
      }
      if (str.indexOf('\n') > -1) {
        if (array) {
          str = str.split('\n').map(function(line) {
            return '  ' + line;
          }).join('\n').substr(2);
        } else {
          str = '\n' + str.split('\n').map(function(line) {
            return '   ' + line;
          }).join('\n');
        }
      }
    } else {
      str = ctx.stylize('[Circular]', 'special');
    }
  }
  if (isUndefined(name)) {
    if (array && key.match(/^\d+$/)) {
      return str;
    }
    name = JSON.stringify('' + key);
    if (name.match(/^"([a-zA-Z_][a-zA-Z_0-9]*)"$/)) {
      name = name.substr(1, name.length - 2);
      name = ctx.stylize(name, 'name');
    } else {
      name = name.replace(/'/g, "\\'")
                 .replace(/\\"/g, '"')
                 .replace(/(^"|"$)/g, "'");
      name = ctx.stylize(name, 'string');
    }
  }

  return name + ': ' + str;
}


function reduceToSingleString(output, base, braces) {
  var numLinesEst = 0;
  var length = output.reduce(function(prev, cur) {
    numLinesEst++;
    if (cur.indexOf('\n') >= 0) numLinesEst++;
    return prev + cur.replace(/\u001b\[\d\d?m/g, '').length + 1;
  }, 0);

  if (length > 60) {
    return braces[0] +
           (base === '' ? '' : base + '\n ') +
           ' ' +
           output.join(',\n  ') +
           ' ' +
           braces[1];
  }

  return braces[0] + base + ' ' + output.join(', ') + ' ' + braces[1];
}


// NOTE: These type checking functions intentionally don't use `instanceof`
// because it is fragile and can be easily faked with `Object.create()`.
function isArray(ar) {
  return Array.isArray(ar);
}
exports.isArray = isArray;

function isBoolean(arg) {
  return typeof arg === 'boolean';
}
exports.isBoolean = isBoolean;

function isNull(arg) {
  return arg === null;
}
exports.isNull = isNull;

function isNullOrUndefined(arg) {
  return arg == null;
}
exports.isNullOrUndefined = isNullOrUndefined;

function isNumber(arg) {
  return typeof arg === 'number';
}
exports.isNumber = isNumber;

function isString(arg) {
  return typeof arg === 'string';
}
exports.isString = isString;

function isSymbol(arg) {
  return typeof arg === 'symbol';
}
exports.isSymbol = isSymbol;

function isUndefined(arg) {
  return arg === void 0;
}
exports.isUndefined = isUndefined;

function isRegExp(re) {
  return isObject(re) && objectToString(re) === '[object RegExp]';
}
exports.isRegExp = isRegExp;

function isObject(arg) {
  return typeof arg === 'object' && arg !== null;
}
exports.isObject = isObject;

function isDate(d) {
  return isObject(d) && objectToString(d) === '[object Date]';
}
exports.isDate = isDate;

function isError(e) {
  return isObject(e) &&
      (objectToString(e) === '[object Error]' || e instanceof Error);
}
exports.isError = isError;

function isFunction(arg) {
  return typeof arg === 'function';
}
exports.isFunction = isFunction;

function isPrimitive(arg) {
  return arg === null ||
         typeof arg === 'boolean' ||
         typeof arg === 'number' ||
         typeof arg === 'string' ||
         typeof arg === 'symbol' ||  // ES6 symbol
         typeof arg === 'undefined';
}
exports.isPrimitive = isPrimitive;

exports.isBuffer = require('./support/isBuffer');

function objectToString(o) {
  return Object.prototype.toString.call(o);
}


function pad(n) {
  return n < 10 ? '0' + n.toString(10) : n.toString(10);
}


var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep',
              'Oct', 'Nov', 'Dec'];

// 26 Feb 16:19:34
function timestamp() {
  var d = new Date();
  var time = [pad(d.getHours()),
              pad(d.getMinutes()),
              pad(d.getSeconds())].join(':');
  return [d.getDate(), months[d.getMonth()], time].join(' ');
}


// log is just a thin wrapper to console.log that prepends a timestamp
exports.log = function() {
  console.log('%s - %s', timestamp(), exports.format.apply(exports, arguments));
};


/**
 * Inherit the prototype methods from one constructor into another.
 *
 * The Function.prototype.inherits from lang.js rewritten as a standalone
 * function (not on Function.prototype). NOTE: If this file is to be loaded
 * during bootstrapping this function needs to be rewritten using some native
 * functions as prototype setup using normal JavaScript does not work as
 * expected during bootstrapping (see mirror.js in r114903).
 *
 * @param {function} ctor Constructor function which needs to inherit the
 *     prototype.
 * @param {function} superCtor Constructor function to inherit prototype from.
 */
exports.inherits = require('inherits');

exports._extend = function(origin, add) {
  // Don't do anything if add isn't an object
  if (!add || !isObject(add)) return origin;

  var keys = Object.keys(add);
  var i = keys.length;
  while (i--) {
    origin[keys[i]] = add[keys[i]];
  }
  return origin;
};

function hasOwnProperty(obj, prop) {
  return Object.prototype.hasOwnProperty.call(obj, prop);
}

}).call(this,require('_process'),typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{"./support/isBuffer":25,"_process":23,"inherits":10}]},{},[1]);

(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
window.Memdown = require( '../node_modules/memdown/memdown.js' );

},{"../node_modules/memdown/memdown.js":9}],2:[function(require,module,exports){
var lookup = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';

;(function (exports) {
	'use strict';

  var Arr = (typeof Uint8Array !== 'undefined')
    ? Uint8Array
    : Array

	var PLUS   = '+'.charCodeAt(0)
	var SLASH  = '/'.charCodeAt(0)
	var NUMBER = '0'.charCodeAt(0)
	var LOWER  = 'a'.charCodeAt(0)
	var UPPER  = 'A'.charCodeAt(0)
	var PLUS_URL_SAFE = '-'.charCodeAt(0)
	var SLASH_URL_SAFE = '_'.charCodeAt(0)

	function decode (elt) {
		var code = elt.charCodeAt(0)
		if (code === PLUS ||
		    code === PLUS_URL_SAFE)
			return 62 // '+'
		if (code === SLASH ||
		    code === SLASH_URL_SAFE)
			return 63 // '/'
		if (code < NUMBER)
			return -1 //no match
		if (code < NUMBER + 10)
			return code - NUMBER + 26 + 26
		if (code < UPPER + 26)
			return code - UPPER
		if (code < LOWER + 26)
			return code - LOWER + 26
	}

	function b64ToByteArray (b64) {
		var i, j, l, tmp, placeHolders, arr

		if (b64.length % 4 > 0) {
			throw new Error('Invalid string. Length must be a multiple of 4')
		}

		// the number of equal signs (place holders)
		// if there are two placeholders, than the two characters before it
		// represent one byte
		// if there is only one, then the three characters before it represent 2 bytes
		// this is just a cheap hack to not do indexOf twice
		var len = b64.length
		placeHolders = '=' === b64.charAt(len - 2) ? 2 : '=' === b64.charAt(len - 1) ? 1 : 0

		// base64 is 4/3 + up to two characters of the original data
		arr = new Arr(b64.length * 3 / 4 - placeHolders)

		// if there are placeholders, only get up to the last complete 4 chars
		l = placeHolders > 0 ? b64.length - 4 : b64.length

		var L = 0

		function push (v) {
			arr[L++] = v
		}

		for (i = 0, j = 0; i < l; i += 4, j += 3) {
			tmp = (decode(b64.charAt(i)) << 18) | (decode(b64.charAt(i + 1)) << 12) | (decode(b64.charAt(i + 2)) << 6) | decode(b64.charAt(i + 3))
			push((tmp & 0xFF0000) >> 16)
			push((tmp & 0xFF00) >> 8)
			push(tmp & 0xFF)
		}

		if (placeHolders === 2) {
			tmp = (decode(b64.charAt(i)) << 2) | (decode(b64.charAt(i + 1)) >> 4)
			push(tmp & 0xFF)
		} else if (placeHolders === 1) {
			tmp = (decode(b64.charAt(i)) << 10) | (decode(b64.charAt(i + 1)) << 4) | (decode(b64.charAt(i + 2)) >> 2)
			push((tmp >> 8) & 0xFF)
			push(tmp & 0xFF)
		}

		return arr
	}

	function uint8ToBase64 (uint8) {
		var i,
			extraBytes = uint8.length % 3, // if we have 1 byte left, pad 2 bytes
			output = "",
			temp, length

		function encode (num) {
			return lookup.charAt(num)
		}

		function tripletToBase64 (num) {
			return encode(num >> 18 & 0x3F) + encode(num >> 12 & 0x3F) + encode(num >> 6 & 0x3F) + encode(num & 0x3F)
		}

		// go through the array every three bytes, we'll deal with trailing stuff later
		for (i = 0, length = uint8.length - extraBytes; i < length; i += 3) {
			temp = (uint8[i] << 16) + (uint8[i + 1] << 8) + (uint8[i + 2])
			output += tripletToBase64(temp)
		}

		// pad the end with zeros, but make sure to not forget the extra bytes
		switch (extraBytes) {
			case 1:
				temp = uint8[uint8.length - 1]
				output += encode(temp >> 2)
				output += encode((temp << 4) & 0x3F)
				output += '=='
				break
			case 2:
				temp = (uint8[uint8.length - 2] << 8) + (uint8[uint8.length - 1])
				output += encode(temp >> 10)
				output += encode((temp >> 4) & 0x3F)
				output += encode((temp << 2) & 0x3F)
				output += '='
				break
		}

		return output
	}

	exports.toByteArray = b64ToByteArray
	exports.fromByteArray = uint8ToBase64
}(typeof exports === 'undefined' ? (this.base64js = {}) : exports))

},{}],3:[function(require,module,exports){
(function (global){
/*!
 * The buffer module from node.js, for the browser.
 *
 * @author   Feross Aboukhadijeh <feross@feross.org> <http://feross.org>
 * @license  MIT
 */
/* eslint-disable no-proto */

var base64 = require('base64-js')
var ieee754 = require('ieee754')
var isArray = require('is-array')

exports.Buffer = Buffer
exports.SlowBuffer = SlowBuffer
exports.INSPECT_MAX_BYTES = 50
Buffer.poolSize = 8192 // not used by this implementation

var rootParent = {}

/**
 * If `Buffer.TYPED_ARRAY_SUPPORT`:
 *   === true    Use Uint8Array implementation (fastest)
 *   === false   Use Object implementation (most compatible, even IE6)
 *
 * Browsers that support typed arrays are IE 10+, Firefox 4+, Chrome 7+, Safari 5.1+,
 * Opera 11.6+, iOS 4.2+.
 *
 * Due to various browser bugs, sometimes the Object implementation will be used even
 * when the browser supports typed arrays.
 *
 * Note:
 *
 *   - Firefox 4-29 lacks support for adding new properties to `Uint8Array` instances,
 *     See: https://bugzilla.mozilla.org/show_bug.cgi?id=695438.
 *
 *   - Safari 5-7 lacks support for changing the `Object.prototype.constructor` property
 *     on objects.
 *
 *   - Chrome 9-10 is missing the `TypedArray.prototype.subarray` function.
 *
 *   - IE10 has a broken `TypedArray.prototype.subarray` function which returns arrays of
 *     incorrect length in some situations.

 * We detect these buggy browsers and set `Buffer.TYPED_ARRAY_SUPPORT` to `false` so they
 * get the Object implementation, which is slower but behaves correctly.
 */
Buffer.TYPED_ARRAY_SUPPORT = global.TYPED_ARRAY_SUPPORT !== undefined
  ? global.TYPED_ARRAY_SUPPORT
  : typedArraySupport()

function typedArraySupport () {
  function Bar () {}
  try {
    var arr = new Uint8Array(1)
    arr.foo = function () { return 42 }
    arr.constructor = Bar
    return arr.foo() === 42 && // typed array instances can be augmented
        arr.constructor === Bar && // constructor can be set
        typeof arr.subarray === 'function' && // chrome 9-10 lack `subarray`
        arr.subarray(1, 1).byteLength === 0 // ie10 has broken `subarray`
  } catch (e) {
    return false
  }
}

function kMaxLength () {
  return Buffer.TYPED_ARRAY_SUPPORT
    ? 0x7fffffff
    : 0x3fffffff
}

/**
 * Class: Buffer
 * =============
 *
 * The Buffer constructor returns instances of `Uint8Array` that are augmented
 * with function properties for all the node `Buffer` API functions. We use
 * `Uint8Array` so that square bracket notation works as expected -- it returns
 * a single octet.
 *
 * By augmenting the instances, we can avoid modifying the `Uint8Array`
 * prototype.
 */
function Buffer (arg) {
  if (!(this instanceof Buffer)) {
    // Avoid going through an ArgumentsAdaptorTrampoline in the common case.
    if (arguments.length > 1) return new Buffer(arg, arguments[1])
    return new Buffer(arg)
  }

  this.length = 0
  this.parent = undefined

  // Common case.
  if (typeof arg === 'number') {
    return fromNumber(this, arg)
  }

  // Slightly less common case.
  if (typeof arg === 'string') {
    return fromString(this, arg, arguments.length > 1 ? arguments[1] : 'utf8')
  }

  // Unusual.
  return fromObject(this, arg)
}

function fromNumber (that, length) {
  that = allocate(that, length < 0 ? 0 : checked(length) | 0)
  if (!Buffer.TYPED_ARRAY_SUPPORT) {
    for (var i = 0; i < length; i++) {
      that[i] = 0
    }
  }
  return that
}

function fromString (that, string, encoding) {
  if (typeof encoding !== 'string' || encoding === '') encoding = 'utf8'

  // Assumption: byteLength() return value is always < kMaxLength.
  var length = byteLength(string, encoding) | 0
  that = allocate(that, length)

  that.write(string, encoding)
  return that
}

function fromObject (that, object) {
  if (Buffer.isBuffer(object)) return fromBuffer(that, object)

  if (isArray(object)) return fromArray(that, object)

  if (object == null) {
    throw new TypeError('must start with number, buffer, array or string')
  }

  if (typeof ArrayBuffer !== 'undefined') {
    if (object.buffer instanceof ArrayBuffer) {
      return fromTypedArray(that, object)
    }
    if (object instanceof ArrayBuffer) {
      return fromArrayBuffer(that, object)
    }
  }

  if (object.length) return fromArrayLike(that, object)

  return fromJsonObject(that, object)
}

function fromBuffer (that, buffer) {
  var length = checked(buffer.length) | 0
  that = allocate(that, length)
  buffer.copy(that, 0, 0, length)
  return that
}

function fromArray (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

// Duplicate of fromArray() to keep fromArray() monomorphic.
function fromTypedArray (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  // Truncating the elements is probably not what people expect from typed
  // arrays with BYTES_PER_ELEMENT > 1 but it's compatible with the behavior
  // of the old Buffer constructor.
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

function fromArrayBuffer (that, array) {
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    // Return an augmented `Uint8Array` instance, for best performance
    array.byteLength
    that = Buffer._augment(new Uint8Array(array))
  } else {
    // Fallback: Return an object instance of the Buffer class
    that = fromTypedArray(that, new Uint8Array(array))
  }
  return that
}

function fromArrayLike (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

// Deserialize { type: 'Buffer', data: [1,2,3,...] } into a Buffer object.
// Returns a zero-length buffer for inputs that don't conform to the spec.
function fromJsonObject (that, object) {
  var array
  var length = 0

  if (object.type === 'Buffer' && isArray(object.data)) {
    array = object.data
    length = checked(array.length) | 0
  }
  that = allocate(that, length)

  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

if (Buffer.TYPED_ARRAY_SUPPORT) {
  Buffer.prototype.__proto__ = Uint8Array.prototype
  Buffer.__proto__ = Uint8Array
}

function allocate (that, length) {
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    // Return an augmented `Uint8Array` instance, for best performance
    that = Buffer._augment(new Uint8Array(length))
    that.__proto__ = Buffer.prototype
  } else {
    // Fallback: Return an object instance of the Buffer class
    that.length = length
    that._isBuffer = true
  }

  var fromPool = length !== 0 && length <= Buffer.poolSize >>> 1
  if (fromPool) that.parent = rootParent

  return that
}

function checked (length) {
  // Note: cannot use `length < kMaxLength` here because that fails when
  // length is NaN (which is otherwise coerced to zero.)
  if (length >= kMaxLength()) {
    throw new RangeError('Attempt to allocate Buffer larger than maximum ' +
                         'size: 0x' + kMaxLength().toString(16) + ' bytes')
  }
  return length | 0
}

function SlowBuffer (subject, encoding) {
  if (!(this instanceof SlowBuffer)) return new SlowBuffer(subject, encoding)

  var buf = new Buffer(subject, encoding)
  delete buf.parent
  return buf
}

Buffer.isBuffer = function isBuffer (b) {
  return !!(b != null && b._isBuffer)
}

Buffer.compare = function compare (a, b) {
  if (!Buffer.isBuffer(a) || !Buffer.isBuffer(b)) {
    throw new TypeError('Arguments must be Buffers')
  }

  if (a === b) return 0

  var x = a.length
  var y = b.length

  var i = 0
  var len = Math.min(x, y)
  while (i < len) {
    if (a[i] !== b[i]) break

    ++i
  }

  if (i !== len) {
    x = a[i]
    y = b[i]
  }

  if (x < y) return -1
  if (y < x) return 1
  return 0
}

Buffer.isEncoding = function isEncoding (encoding) {
  switch (String(encoding).toLowerCase()) {
    case 'hex':
    case 'utf8':
    case 'utf-8':
    case 'ascii':
    case 'binary':
    case 'base64':
    case 'raw':
    case 'ucs2':
    case 'ucs-2':
    case 'utf16le':
    case 'utf-16le':
      return true
    default:
      return false
  }
}

Buffer.concat = function concat (list, length) {
  if (!isArray(list)) throw new TypeError('list argument must be an Array of Buffers.')

  if (list.length === 0) {
    return new Buffer(0)
  }

  var i
  if (length === undefined) {
    length = 0
    for (i = 0; i < list.length; i++) {
      length += list[i].length
    }
  }

  var buf = new Buffer(length)
  var pos = 0
  for (i = 0; i < list.length; i++) {
    var item = list[i]
    item.copy(buf, pos)
    pos += item.length
  }
  return buf
}

function byteLength (string, encoding) {
  if (typeof string !== 'string') string = '' + string

  var len = string.length
  if (len === 0) return 0

  // Use a for loop to avoid recursion
  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'ascii':
      case 'binary':
      // Deprecated
      case 'raw':
      case 'raws':
        return len
      case 'utf8':
      case 'utf-8':
        return utf8ToBytes(string).length
      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return len * 2
      case 'hex':
        return len >>> 1
      case 'base64':
        return base64ToBytes(string).length
      default:
        if (loweredCase) return utf8ToBytes(string).length // assume utf8
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}
Buffer.byteLength = byteLength

// pre-set for values that may exist in the future
//Buffer.prototype.length = undefined
//Buffer.prototype.parent = undefined

function slowToString (encoding, start, end) {
  var loweredCase = false

  start = start | 0
  end = end === undefined || end === Infinity ? this.length : end | 0

  if (!encoding) encoding = 'utf8'
  if (start < 0) start = 0
  if (end > this.length) end = this.length
  if (end <= start) return ''

  while (true) {
    switch (encoding) {
      case 'hex':
        return hexSlice(this, start, end)

      case 'utf8':
      case 'utf-8':
        return utf8Slice(this, start, end)

      case 'ascii':
        return asciiSlice(this, start, end)

      case 'binary':
        return binarySlice(this, start, end)

      case 'base64':
        return base64Slice(this, start, end)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return utf16leSlice(this, start, end)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = (encoding + '').toLowerCase()
        loweredCase = true
    }
  }
}

Buffer.prototype.toString = function toString () {
  var length = this.length | 0
  if (length === 0) return ''
  if (arguments.length === 0) return utf8Slice(this, 0, length)
  return slowToString.apply(this, arguments)
}

Buffer.prototype.equals = function equals (b) {
  if (!Buffer.isBuffer(b)) throw new TypeError('Argument must be a Buffer')
  if (this === b) return true
  return Buffer.compare(this, b) === 0
}

Buffer.prototype.inspect = function inspect () {
  var str = ''
  var max = exports.INSPECT_MAX_BYTES
  if (this.length > 0) {
    str = this.toString('hex', 0, max).match(/.{2}/g).join(' ')
    if (this.length > max) str += ' ... '
  }
  return '<Buffer ' + str + '>'
}

Buffer.prototype.compare = function compare (b) {
  if (!Buffer.isBuffer(b)) throw new TypeError('Argument must be a Buffer')
  if (this === b) return 0
  return Buffer.compare(this, b)
}

Buffer.prototype.indexOf = function indexOf (val, byteOffset) {
  if (byteOffset > 0x7fffffff) byteOffset = 0x7fffffff
  else if (byteOffset < -0x80000000) byteOffset = -0x80000000
  byteOffset >>= 0

  if (this.length === 0) return -1
  if (byteOffset >= this.length) return -1

  // Negative offsets start from the end of the buffer
  if (byteOffset < 0) byteOffset = Math.max(this.length + byteOffset, 0)

  if (typeof val === 'string') {
    if (val.length === 0) return -1 // special case: looking for empty string always fails
    return String.prototype.indexOf.call(this, val, byteOffset)
  }
  if (Buffer.isBuffer(val)) {
    return arrayIndexOf(this, val, byteOffset)
  }
  if (typeof val === 'number') {
    if (Buffer.TYPED_ARRAY_SUPPORT && Uint8Array.prototype.indexOf === 'function') {
      return Uint8Array.prototype.indexOf.call(this, val, byteOffset)
    }
    return arrayIndexOf(this, [ val ], byteOffset)
  }

  function arrayIndexOf (arr, val, byteOffset) {
    var foundIndex = -1
    for (var i = 0; byteOffset + i < arr.length; i++) {
      if (arr[byteOffset + i] === val[foundIndex === -1 ? 0 : i - foundIndex]) {
        if (foundIndex === -1) foundIndex = i
        if (i - foundIndex + 1 === val.length) return byteOffset + foundIndex
      } else {
        foundIndex = -1
      }
    }
    return -1
  }

  throw new TypeError('val must be string, number or Buffer')
}

// `get` is deprecated
Buffer.prototype.get = function get (offset) {
  console.log('.get() is deprecated. Access using array indexes instead.')
  return this.readUInt8(offset)
}

// `set` is deprecated
Buffer.prototype.set = function set (v, offset) {
  console.log('.set() is deprecated. Access using array indexes instead.')
  return this.writeUInt8(v, offset)
}

function hexWrite (buf, string, offset, length) {
  offset = Number(offset) || 0
  var remaining = buf.length - offset
  if (!length) {
    length = remaining
  } else {
    length = Number(length)
    if (length > remaining) {
      length = remaining
    }
  }

  // must be an even number of digits
  var strLen = string.length
  if (strLen % 2 !== 0) throw new Error('Invalid hex string')

  if (length > strLen / 2) {
    length = strLen / 2
  }
  for (var i = 0; i < length; i++) {
    var parsed = parseInt(string.substr(i * 2, 2), 16)
    if (isNaN(parsed)) throw new Error('Invalid hex string')
    buf[offset + i] = parsed
  }
  return i
}

function utf8Write (buf, string, offset, length) {
  return blitBuffer(utf8ToBytes(string, buf.length - offset), buf, offset, length)
}

function asciiWrite (buf, string, offset, length) {
  return blitBuffer(asciiToBytes(string), buf, offset, length)
}

function binaryWrite (buf, string, offset, length) {
  return asciiWrite(buf, string, offset, length)
}

function base64Write (buf, string, offset, length) {
  return blitBuffer(base64ToBytes(string), buf, offset, length)
}

function ucs2Write (buf, string, offset, length) {
  return blitBuffer(utf16leToBytes(string, buf.length - offset), buf, offset, length)
}

Buffer.prototype.write = function write (string, offset, length, encoding) {
  // Buffer#write(string)
  if (offset === undefined) {
    encoding = 'utf8'
    length = this.length
    offset = 0
  // Buffer#write(string, encoding)
  } else if (length === undefined && typeof offset === 'string') {
    encoding = offset
    length = this.length
    offset = 0
  // Buffer#write(string, offset[, length][, encoding])
  } else if (isFinite(offset)) {
    offset = offset | 0
    if (isFinite(length)) {
      length = length | 0
      if (encoding === undefined) encoding = 'utf8'
    } else {
      encoding = length
      length = undefined
    }
  // legacy write(string, encoding, offset, length) - remove in v0.13
  } else {
    var swap = encoding
    encoding = offset
    offset = length | 0
    length = swap
  }

  var remaining = this.length - offset
  if (length === undefined || length > remaining) length = remaining

  if ((string.length > 0 && (length < 0 || offset < 0)) || offset > this.length) {
    throw new RangeError('attempt to write outside buffer bounds')
  }

  if (!encoding) encoding = 'utf8'

  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'hex':
        return hexWrite(this, string, offset, length)

      case 'utf8':
      case 'utf-8':
        return utf8Write(this, string, offset, length)

      case 'ascii':
        return asciiWrite(this, string, offset, length)

      case 'binary':
        return binaryWrite(this, string, offset, length)

      case 'base64':
        // Warning: maxLength not taken into account in base64Write
        return base64Write(this, string, offset, length)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return ucs2Write(this, string, offset, length)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}

Buffer.prototype.toJSON = function toJSON () {
  return {
    type: 'Buffer',
    data: Array.prototype.slice.call(this._arr || this, 0)
  }
}

function base64Slice (buf, start, end) {
  if (start === 0 && end === buf.length) {
    return base64.fromByteArray(buf)
  } else {
    return base64.fromByteArray(buf.slice(start, end))
  }
}

function utf8Slice (buf, start, end) {
  end = Math.min(buf.length, end)
  var res = []

  var i = start
  while (i < end) {
    var firstByte = buf[i]
    var codePoint = null
    var bytesPerSequence = (firstByte > 0xEF) ? 4
      : (firstByte > 0xDF) ? 3
      : (firstByte > 0xBF) ? 2
      : 1

    if (i + bytesPerSequence <= end) {
      var secondByte, thirdByte, fourthByte, tempCodePoint

      switch (bytesPerSequence) {
        case 1:
          if (firstByte < 0x80) {
            codePoint = firstByte
          }
          break
        case 2:
          secondByte = buf[i + 1]
          if ((secondByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0x1F) << 0x6 | (secondByte & 0x3F)
            if (tempCodePoint > 0x7F) {
              codePoint = tempCodePoint
            }
          }
          break
        case 3:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0xC | (secondByte & 0x3F) << 0x6 | (thirdByte & 0x3F)
            if (tempCodePoint > 0x7FF && (tempCodePoint < 0xD800 || tempCodePoint > 0xDFFF)) {
              codePoint = tempCodePoint
            }
          }
          break
        case 4:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          fourthByte = buf[i + 3]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80 && (fourthByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0x12 | (secondByte & 0x3F) << 0xC | (thirdByte & 0x3F) << 0x6 | (fourthByte & 0x3F)
            if (tempCodePoint > 0xFFFF && tempCodePoint < 0x110000) {
              codePoint = tempCodePoint
            }
          }
      }
    }

    if (codePoint === null) {
      // we did not generate a valid codePoint so insert a
      // replacement char (U+FFFD) and advance only 1 byte
      codePoint = 0xFFFD
      bytesPerSequence = 1
    } else if (codePoint > 0xFFFF) {
      // encode to utf16 (surrogate pair dance)
      codePoint -= 0x10000
      res.push(codePoint >>> 10 & 0x3FF | 0xD800)
      codePoint = 0xDC00 | codePoint & 0x3FF
    }

    res.push(codePoint)
    i += bytesPerSequence
  }

  return decodeCodePointsArray(res)
}

// Based on http://stackoverflow.com/a/22747272/680742, the browser with
// the lowest limit is Chrome, with 0x10000 args.
// We go 1 magnitude less, for safety
var MAX_ARGUMENTS_LENGTH = 0x1000

function decodeCodePointsArray (codePoints) {
  var len = codePoints.length
  if (len <= MAX_ARGUMENTS_LENGTH) {
    return String.fromCharCode.apply(String, codePoints) // avoid extra slice()
  }

  // Decode in chunks to avoid "call stack size exceeded".
  var res = ''
  var i = 0
  while (i < len) {
    res += String.fromCharCode.apply(
      String,
      codePoints.slice(i, i += MAX_ARGUMENTS_LENGTH)
    )
  }
  return res
}

function asciiSlice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; i++) {
    ret += String.fromCharCode(buf[i] & 0x7F)
  }
  return ret
}

function binarySlice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; i++) {
    ret += String.fromCharCode(buf[i])
  }
  return ret
}

function hexSlice (buf, start, end) {
  var len = buf.length

  if (!start || start < 0) start = 0
  if (!end || end < 0 || end > len) end = len

  var out = ''
  for (var i = start; i < end; i++) {
    out += toHex(buf[i])
  }
  return out
}

function utf16leSlice (buf, start, end) {
  var bytes = buf.slice(start, end)
  var res = ''
  for (var i = 0; i < bytes.length; i += 2) {
    res += String.fromCharCode(bytes[i] + bytes[i + 1] * 256)
  }
  return res
}

Buffer.prototype.slice = function slice (start, end) {
  var len = this.length
  start = ~~start
  end = end === undefined ? len : ~~end

  if (start < 0) {
    start += len
    if (start < 0) start = 0
  } else if (start > len) {
    start = len
  }

  if (end < 0) {
    end += len
    if (end < 0) end = 0
  } else if (end > len) {
    end = len
  }

  if (end < start) end = start

  var newBuf
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    newBuf = Buffer._augment(this.subarray(start, end))
  } else {
    var sliceLen = end - start
    newBuf = new Buffer(sliceLen, undefined)
    for (var i = 0; i < sliceLen; i++) {
      newBuf[i] = this[i + start]
    }
  }

  if (newBuf.length) newBuf.parent = this.parent || this

  return newBuf
}

/*
 * Need to make sure that buffer isn't trying to write out of bounds.
 */
function checkOffset (offset, ext, length) {
  if ((offset % 1) !== 0 || offset < 0) throw new RangeError('offset is not uint')
  if (offset + ext > length) throw new RangeError('Trying to access beyond buffer length')
}

Buffer.prototype.readUIntLE = function readUIntLE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }

  return val
}

Buffer.prototype.readUIntBE = function readUIntBE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) {
    checkOffset(offset, byteLength, this.length)
  }

  var val = this[offset + --byteLength]
  var mul = 1
  while (byteLength > 0 && (mul *= 0x100)) {
    val += this[offset + --byteLength] * mul
  }

  return val
}

Buffer.prototype.readUInt8 = function readUInt8 (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 1, this.length)
  return this[offset]
}

Buffer.prototype.readUInt16LE = function readUInt16LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  return this[offset] | (this[offset + 1] << 8)
}

Buffer.prototype.readUInt16BE = function readUInt16BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  return (this[offset] << 8) | this[offset + 1]
}

Buffer.prototype.readUInt32LE = function readUInt32LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return ((this[offset]) |
      (this[offset + 1] << 8) |
      (this[offset + 2] << 16)) +
      (this[offset + 3] * 0x1000000)
}

Buffer.prototype.readUInt32BE = function readUInt32BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] * 0x1000000) +
    ((this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    this[offset + 3])
}

Buffer.prototype.readIntLE = function readIntLE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readIntBE = function readIntBE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var i = byteLength
  var mul = 1
  var val = this[offset + --i]
  while (i > 0 && (mul *= 0x100)) {
    val += this[offset + --i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readInt8 = function readInt8 (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 1, this.length)
  if (!(this[offset] & 0x80)) return (this[offset])
  return ((0xff - this[offset] + 1) * -1)
}

Buffer.prototype.readInt16LE = function readInt16LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset] | (this[offset + 1] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt16BE = function readInt16BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset + 1] | (this[offset] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt32LE = function readInt32LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset]) |
    (this[offset + 1] << 8) |
    (this[offset + 2] << 16) |
    (this[offset + 3] << 24)
}

Buffer.prototype.readInt32BE = function readInt32BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] << 24) |
    (this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    (this[offset + 3])
}

Buffer.prototype.readFloatLE = function readFloatLE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, true, 23, 4)
}

Buffer.prototype.readFloatBE = function readFloatBE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, false, 23, 4)
}

Buffer.prototype.readDoubleLE = function readDoubleLE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, true, 52, 8)
}

Buffer.prototype.readDoubleBE = function readDoubleBE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, false, 52, 8)
}

function checkInt (buf, value, offset, ext, max, min) {
  if (!Buffer.isBuffer(buf)) throw new TypeError('buffer must be a Buffer instance')
  if (value > max || value < min) throw new RangeError('value is out of bounds')
  if (offset + ext > buf.length) throw new RangeError('index out of range')
}

Buffer.prototype.writeUIntLE = function writeUIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkInt(this, value, offset, byteLength, Math.pow(2, 8 * byteLength), 0)

  var mul = 1
  var i = 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUIntBE = function writeUIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkInt(this, value, offset, byteLength, Math.pow(2, 8 * byteLength), 0)

  var i = byteLength - 1
  var mul = 1
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUInt8 = function writeUInt8 (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 1, 0xff, 0)
  if (!Buffer.TYPED_ARRAY_SUPPORT) value = Math.floor(value)
  this[offset] = (value & 0xff)
  return offset + 1
}

function objectWriteUInt16 (buf, value, offset, littleEndian) {
  if (value < 0) value = 0xffff + value + 1
  for (var i = 0, j = Math.min(buf.length - offset, 2); i < j; i++) {
    buf[offset + i] = (value & (0xff << (8 * (littleEndian ? i : 1 - i)))) >>>
      (littleEndian ? i : 1 - i) * 8
  }
}

Buffer.prototype.writeUInt16LE = function writeUInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
  } else {
    objectWriteUInt16(this, value, offset, true)
  }
  return offset + 2
}

Buffer.prototype.writeUInt16BE = function writeUInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 8)
    this[offset + 1] = (value & 0xff)
  } else {
    objectWriteUInt16(this, value, offset, false)
  }
  return offset + 2
}

function objectWriteUInt32 (buf, value, offset, littleEndian) {
  if (value < 0) value = 0xffffffff + value + 1
  for (var i = 0, j = Math.min(buf.length - offset, 4); i < j; i++) {
    buf[offset + i] = (value >>> (littleEndian ? i : 3 - i) * 8) & 0xff
  }
}

Buffer.prototype.writeUInt32LE = function writeUInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset + 3] = (value >>> 24)
    this[offset + 2] = (value >>> 16)
    this[offset + 1] = (value >>> 8)
    this[offset] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, true)
  }
  return offset + 4
}

Buffer.prototype.writeUInt32BE = function writeUInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 24)
    this[offset + 1] = (value >>> 16)
    this[offset + 2] = (value >>> 8)
    this[offset + 3] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, false)
  }
  return offset + 4
}

Buffer.prototype.writeIntLE = function writeIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) {
    var limit = Math.pow(2, 8 * byteLength - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = 0
  var mul = 1
  var sub = value < 0 ? 1 : 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeIntBE = function writeIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) {
    var limit = Math.pow(2, 8 * byteLength - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = byteLength - 1
  var mul = 1
  var sub = value < 0 ? 1 : 0
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeInt8 = function writeInt8 (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 1, 0x7f, -0x80)
  if (!Buffer.TYPED_ARRAY_SUPPORT) value = Math.floor(value)
  if (value < 0) value = 0xff + value + 1
  this[offset] = (value & 0xff)
  return offset + 1
}

Buffer.prototype.writeInt16LE = function writeInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
  } else {
    objectWriteUInt16(this, value, offset, true)
  }
  return offset + 2
}

Buffer.prototype.writeInt16BE = function writeInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 8)
    this[offset + 1] = (value & 0xff)
  } else {
    objectWriteUInt16(this, value, offset, false)
  }
  return offset + 2
}

Buffer.prototype.writeInt32LE = function writeInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
    this[offset + 2] = (value >>> 16)
    this[offset + 3] = (value >>> 24)
  } else {
    objectWriteUInt32(this, value, offset, true)
  }
  return offset + 4
}

Buffer.prototype.writeInt32BE = function writeInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  if (value < 0) value = 0xffffffff + value + 1
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 24)
    this[offset + 1] = (value >>> 16)
    this[offset + 2] = (value >>> 8)
    this[offset + 3] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, false)
  }
  return offset + 4
}

function checkIEEE754 (buf, value, offset, ext, max, min) {
  if (value > max || value < min) throw new RangeError('value is out of bounds')
  if (offset + ext > buf.length) throw new RangeError('index out of range')
  if (offset < 0) throw new RangeError('index out of range')
}

function writeFloat (buf, value, offset, littleEndian, noAssert) {
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 4, 3.4028234663852886e+38, -3.4028234663852886e+38)
  }
  ieee754.write(buf, value, offset, littleEndian, 23, 4)
  return offset + 4
}

Buffer.prototype.writeFloatLE = function writeFloatLE (value, offset, noAssert) {
  return writeFloat(this, value, offset, true, noAssert)
}

Buffer.prototype.writeFloatBE = function writeFloatBE (value, offset, noAssert) {
  return writeFloat(this, value, offset, false, noAssert)
}

function writeDouble (buf, value, offset, littleEndian, noAssert) {
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 8, 1.7976931348623157E+308, -1.7976931348623157E+308)
  }
  ieee754.write(buf, value, offset, littleEndian, 52, 8)
  return offset + 8
}

Buffer.prototype.writeDoubleLE = function writeDoubleLE (value, offset, noAssert) {
  return writeDouble(this, value, offset, true, noAssert)
}

Buffer.prototype.writeDoubleBE = function writeDoubleBE (value, offset, noAssert) {
  return writeDouble(this, value, offset, false, noAssert)
}

// copy(targetBuffer, targetStart=0, sourceStart=0, sourceEnd=buffer.length)
Buffer.prototype.copy = function copy (target, targetStart, start, end) {
  if (!start) start = 0
  if (!end && end !== 0) end = this.length
  if (targetStart >= target.length) targetStart = target.length
  if (!targetStart) targetStart = 0
  if (end > 0 && end < start) end = start

  // Copy 0 bytes; we're done
  if (end === start) return 0
  if (target.length === 0 || this.length === 0) return 0

  // Fatal error conditions
  if (targetStart < 0) {
    throw new RangeError('targetStart out of bounds')
  }
  if (start < 0 || start >= this.length) throw new RangeError('sourceStart out of bounds')
  if (end < 0) throw new RangeError('sourceEnd out of bounds')

  // Are we oob?
  if (end > this.length) end = this.length
  if (target.length - targetStart < end - start) {
    end = target.length - targetStart + start
  }

  var len = end - start
  var i

  if (this === target && start < targetStart && targetStart < end) {
    // descending copy from end
    for (i = len - 1; i >= 0; i--) {
      target[i + targetStart] = this[i + start]
    }
  } else if (len < 1000 || !Buffer.TYPED_ARRAY_SUPPORT) {
    // ascending copy from start
    for (i = 0; i < len; i++) {
      target[i + targetStart] = this[i + start]
    }
  } else {
    target._set(this.subarray(start, start + len), targetStart)
  }

  return len
}

// fill(value, start=0, end=buffer.length)
Buffer.prototype.fill = function fill (value, start, end) {
  if (!value) value = 0
  if (!start) start = 0
  if (!end) end = this.length

  if (end < start) throw new RangeError('end < start')

  // Fill 0 bytes; we're done
  if (end === start) return
  if (this.length === 0) return

  if (start < 0 || start >= this.length) throw new RangeError('start out of bounds')
  if (end < 0 || end > this.length) throw new RangeError('end out of bounds')

  var i
  if (typeof value === 'number') {
    for (i = start; i < end; i++) {
      this[i] = value
    }
  } else {
    var bytes = utf8ToBytes(value.toString())
    var len = bytes.length
    for (i = start; i < end; i++) {
      this[i] = bytes[i % len]
    }
  }

  return this
}

/**
 * Creates a new `ArrayBuffer` with the *copied* memory of the buffer instance.
 * Added in Node 0.12. Only available in browsers that support ArrayBuffer.
 */
Buffer.prototype.toArrayBuffer = function toArrayBuffer () {
  if (typeof Uint8Array !== 'undefined') {
    if (Buffer.TYPED_ARRAY_SUPPORT) {
      return (new Buffer(this)).buffer
    } else {
      var buf = new Uint8Array(this.length)
      for (var i = 0, len = buf.length; i < len; i += 1) {
        buf[i] = this[i]
      }
      return buf.buffer
    }
  } else {
    throw new TypeError('Buffer.toArrayBuffer not supported in this browser')
  }
}

// HELPER FUNCTIONS
// ================

var BP = Buffer.prototype

/**
 * Augment a Uint8Array *instance* (not the Uint8Array class!) with Buffer methods
 */
Buffer._augment = function _augment (arr) {
  arr.constructor = Buffer
  arr._isBuffer = true

  // save reference to original Uint8Array set method before overwriting
  arr._set = arr.set

  // deprecated
  arr.get = BP.get
  arr.set = BP.set

  arr.write = BP.write
  arr.toString = BP.toString
  arr.toLocaleString = BP.toString
  arr.toJSON = BP.toJSON
  arr.equals = BP.equals
  arr.compare = BP.compare
  arr.indexOf = BP.indexOf
  arr.copy = BP.copy
  arr.slice = BP.slice
  arr.readUIntLE = BP.readUIntLE
  arr.readUIntBE = BP.readUIntBE
  arr.readUInt8 = BP.readUInt8
  arr.readUInt16LE = BP.readUInt16LE
  arr.readUInt16BE = BP.readUInt16BE
  arr.readUInt32LE = BP.readUInt32LE
  arr.readUInt32BE = BP.readUInt32BE
  arr.readIntLE = BP.readIntLE
  arr.readIntBE = BP.readIntBE
  arr.readInt8 = BP.readInt8
  arr.readInt16LE = BP.readInt16LE
  arr.readInt16BE = BP.readInt16BE
  arr.readInt32LE = BP.readInt32LE
  arr.readInt32BE = BP.readInt32BE
  arr.readFloatLE = BP.readFloatLE
  arr.readFloatBE = BP.readFloatBE
  arr.readDoubleLE = BP.readDoubleLE
  arr.readDoubleBE = BP.readDoubleBE
  arr.writeUInt8 = BP.writeUInt8
  arr.writeUIntLE = BP.writeUIntLE
  arr.writeUIntBE = BP.writeUIntBE
  arr.writeUInt16LE = BP.writeUInt16LE
  arr.writeUInt16BE = BP.writeUInt16BE
  arr.writeUInt32LE = BP.writeUInt32LE
  arr.writeUInt32BE = BP.writeUInt32BE
  arr.writeIntLE = BP.writeIntLE
  arr.writeIntBE = BP.writeIntBE
  arr.writeInt8 = BP.writeInt8
  arr.writeInt16LE = BP.writeInt16LE
  arr.writeInt16BE = BP.writeInt16BE
  arr.writeInt32LE = BP.writeInt32LE
  arr.writeInt32BE = BP.writeInt32BE
  arr.writeFloatLE = BP.writeFloatLE
  arr.writeFloatBE = BP.writeFloatBE
  arr.writeDoubleLE = BP.writeDoubleLE
  arr.writeDoubleBE = BP.writeDoubleBE
  arr.fill = BP.fill
  arr.inspect = BP.inspect
  arr.toArrayBuffer = BP.toArrayBuffer

  return arr
}

var INVALID_BASE64_RE = /[^+\/0-9A-Za-z-_]/g

function base64clean (str) {
  // Node strips out invalid characters like \n and \t from the string, base64-js does not
  str = stringtrim(str).replace(INVALID_BASE64_RE, '')
  // Node converts strings with length < 2 to ''
  if (str.length < 2) return ''
  // Node allows for non-padded base64 strings (missing trailing ===), base64-js does not
  while (str.length % 4 !== 0) {
    str = str + '='
  }
  return str
}

function stringtrim (str) {
  if (str.trim) return str.trim()
  return str.replace(/^\s+|\s+$/g, '')
}

function toHex (n) {
  if (n < 16) return '0' + n.toString(16)
  return n.toString(16)
}

function utf8ToBytes (string, units) {
  units = units || Infinity
  var codePoint
  var length = string.length
  var leadSurrogate = null
  var bytes = []

  for (var i = 0; i < length; i++) {
    codePoint = string.charCodeAt(i)

    // is surrogate component
    if (codePoint > 0xD7FF && codePoint < 0xE000) {
      // last char was a lead
      if (!leadSurrogate) {
        // no lead yet
        if (codePoint > 0xDBFF) {
          // unexpected trail
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        } else if (i + 1 === length) {
          // unpaired lead
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        }

        // valid lead
        leadSurrogate = codePoint

        continue
      }

      // 2 leads in a row
      if (codePoint < 0xDC00) {
        if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
        leadSurrogate = codePoint
        continue
      }

      // valid surrogate pair
      codePoint = (leadSurrogate - 0xD800 << 10 | codePoint - 0xDC00) + 0x10000
    } else if (leadSurrogate) {
      // valid bmp char, but last char was a lead
      if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
    }

    leadSurrogate = null

    // encode utf8
    if (codePoint < 0x80) {
      if ((units -= 1) < 0) break
      bytes.push(codePoint)
    } else if (codePoint < 0x800) {
      if ((units -= 2) < 0) break
      bytes.push(
        codePoint >> 0x6 | 0xC0,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x10000) {
      if ((units -= 3) < 0) break
      bytes.push(
        codePoint >> 0xC | 0xE0,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x110000) {
      if ((units -= 4) < 0) break
      bytes.push(
        codePoint >> 0x12 | 0xF0,
        codePoint >> 0xC & 0x3F | 0x80,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else {
      throw new Error('Invalid code point')
    }
  }

  return bytes
}

function asciiToBytes (str) {
  var byteArray = []
  for (var i = 0; i < str.length; i++) {
    // Node's code seems to be doing this and not & 0x7F..
    byteArray.push(str.charCodeAt(i) & 0xFF)
  }
  return byteArray
}

function utf16leToBytes (str, units) {
  var c, hi, lo
  var byteArray = []
  for (var i = 0; i < str.length; i++) {
    if ((units -= 2) < 0) break

    c = str.charCodeAt(i)
    hi = c >> 8
    lo = c % 256
    byteArray.push(lo)
    byteArray.push(hi)
  }

  return byteArray
}

function base64ToBytes (str) {
  return base64.toByteArray(base64clean(str))
}

function blitBuffer (src, dst, offset, length) {
  for (var i = 0; i < length; i++) {
    if ((i + offset >= dst.length) || (i >= src.length)) break
    dst[i + offset] = src[i]
  }
  return i
}

}).call(this,typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{"base64-js":2,"ieee754":5,"is-array":7}],4:[function(require,module,exports){
"use strict"

module.exports = createRBTree

var RED   = 0
var BLACK = 1

function RBNode(color, key, value, left, right, count) {
  this._color = color
  this.key = key
  this.value = value
  this.left = left
  this.right = right
  this._count = count
}

function cloneNode(node) {
  return new RBNode(node._color, node.key, node.value, node.left, node.right, node._count)
}

function repaint(color, node) {
  return new RBNode(color, node.key, node.value, node.left, node.right, node._count)
}

function recount(node) {
  node._count = 1 + (node.left ? node.left._count : 0) + (node.right ? node.right._count : 0)
}

function RedBlackTree(compare, root) {
  this._compare = compare
  this.root = root
}

var proto = RedBlackTree.prototype

Object.defineProperty(proto, "keys", {
  get: function() {
    var result = []
    this.forEach(function(k,v) {
      result.push(k)
    })
    return result
  }
})

Object.defineProperty(proto, "values", {
  get: function() {
    var result = []
    this.forEach(function(k,v) {
      result.push(v)
    })
    return result
  }
})

//Returns the number of nodes in the tree
Object.defineProperty(proto, "length", {
  get: function() {
    if(this.root) {
      return this.root._count
    }
    return 0
  }
})

//Insert a new item into the tree
proto.insert = function(key, value) {
  var cmp = this._compare
  //Find point to insert new node at
  var n = this.root
  var n_stack = []
  var d_stack = []
  while(n) {
    var d = cmp(key, n.key)
    n_stack.push(n)
    d_stack.push(d)
    if(d <= 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  //Rebuild path to leaf node
  n_stack.push(new RBNode(RED, key, value, null, null, 1))
  for(var s=n_stack.length-2; s>=0; --s) {
    var n = n_stack[s]
    if(d_stack[s] <= 0) {
      n_stack[s] = new RBNode(n._color, n.key, n.value, n_stack[s+1], n.right, n._count+1)
    } else {
      n_stack[s] = new RBNode(n._color, n.key, n.value, n.left, n_stack[s+1], n._count+1)
    }
  }
  //Rebalance tree using rotations
  //console.log("start insert", key, d_stack)
  for(var s=n_stack.length-1; s>1; --s) {
    var p = n_stack[s-1]
    var n = n_stack[s]
    if(p._color === BLACK || n._color === BLACK) {
      break
    }
    var pp = n_stack[s-2]
    if(pp.left === p) {
      if(p.left === n) {
        var y = pp.right
        if(y && y._color === RED) {
          //console.log("LLr")
          p._color = BLACK
          pp.right = repaint(BLACK, y)
          pp._color = RED
          s -= 1
        } else {
          //console.log("LLb")
          pp._color = RED
          pp.left = p.right
          p._color = BLACK
          p.right = pp
          n_stack[s-2] = p
          n_stack[s-1] = n
          recount(pp)
          recount(p)
          if(s >= 3) {
            var ppp = n_stack[s-3]
            if(ppp.left === pp) {
              ppp.left = p
            } else {
              ppp.right = p
            }
          }
          break
        }
      } else {
        var y = pp.right
        if(y && y._color === RED) {
          //console.log("LRr")
          p._color = BLACK
          pp.right = repaint(BLACK, y)
          pp._color = RED
          s -= 1
        } else {
          //console.log("LRb")
          p.right = n.left
          pp._color = RED
          pp.left = n.right
          n._color = BLACK
          n.left = p
          n.right = pp
          n_stack[s-2] = n
          n_stack[s-1] = p
          recount(pp)
          recount(p)
          recount(n)
          if(s >= 3) {
            var ppp = n_stack[s-3]
            if(ppp.left === pp) {
              ppp.left = n
            } else {
              ppp.right = n
            }
          }
          break
        }
      }
    } else {
      if(p.right === n) {
        var y = pp.left
        if(y && y._color === RED) {
          //console.log("RRr", y.key)
          p._color = BLACK
          pp.left = repaint(BLACK, y)
          pp._color = RED
          s -= 1
        } else {
          //console.log("RRb")
          pp._color = RED
          pp.right = p.left
          p._color = BLACK
          p.left = pp
          n_stack[s-2] = p
          n_stack[s-1] = n
          recount(pp)
          recount(p)
          if(s >= 3) {
            var ppp = n_stack[s-3]
            if(ppp.right === pp) {
              ppp.right = p
            } else {
              ppp.left = p
            }
          }
          break
        }
      } else {
        var y = pp.left
        if(y && y._color === RED) {
          //console.log("RLr")
          p._color = BLACK
          pp.left = repaint(BLACK, y)
          pp._color = RED
          s -= 1
        } else {
          //console.log("RLb")
          p.left = n.right
          pp._color = RED
          pp.right = n.left
          n._color = BLACK
          n.right = p
          n.left = pp
          n_stack[s-2] = n
          n_stack[s-1] = p
          recount(pp)
          recount(p)
          recount(n)
          if(s >= 3) {
            var ppp = n_stack[s-3]
            if(ppp.right === pp) {
              ppp.right = n
            } else {
              ppp.left = n
            }
          }
          break
        }
      }
    }
  }
  //Return new tree
  n_stack[0]._color = BLACK
  return new RedBlackTree(cmp, n_stack[0])
}


//Visit all nodes inorder
function doVisitFull(visit, node) {
  if(node.left) {
    var v = doVisitFull(visit, node.left)
    if(v) { return v }
  }
  var v = visit(node.key, node.value)
  if(v) { return v }
  if(node.right) {
    return doVisitFull(visit, node.right)
  }
}

//Visit half nodes in order
function doVisitHalf(lo, compare, visit, node) {
  var l = compare(lo, node.key)
  if(l <= 0) {
    if(node.left) {
      var v = doVisitHalf(lo, compare, visit, node.left)
      if(v) { return v }
    }
    var v = visit(node.key, node.value)
    if(v) { return v }
  }
  if(node.right) {
    return doVisitHalf(lo, compare, visit, node.right)
  }
}

//Visit all nodes within a range
function doVisit(lo, hi, compare, visit, node) {
  var l = compare(lo, node.key)
  var h = compare(hi, node.key)
  var v
  if(l <= 0) {
    if(node.left) {
      v = doVisit(lo, hi, compare, visit, node.left)
      if(v) { return v }
    }
    if(h > 0) {
      v = visit(node.key, node.value)
      if(v) { return v }
    }
  }
  if(h > 0 && node.right) {
    return doVisit(lo, hi, compare, visit, node.right)
  }
}


proto.forEach = function rbTreeForEach(visit, lo, hi) {
  if(!this.root) {
    return
  }
  switch(arguments.length) {
    case 1:
      return doVisitFull(visit, this.root)
    break

    case 2:
      return doVisitHalf(lo, this._compare, visit, this.root)
    break

    case 3:
      if(this._compare(lo, hi) >= 0) {
        return
      }
      return doVisit(lo, hi, this._compare, visit, this.root)
    break
  }
}

//First item in list
Object.defineProperty(proto, "begin", {
  get: function() {
    var stack = []
    var n = this.root
    while(n) {
      stack.push(n)
      n = n.left
    }
    return new RedBlackTreeIterator(this, stack)
  }
})

//Last item in list
Object.defineProperty(proto, "end", {
  get: function() {
    var stack = []
    var n = this.root
    while(n) {
      stack.push(n)
      n = n.right
    }
    return new RedBlackTreeIterator(this, stack)
  }
})

//Find the ith item in the tree
proto.at = function(idx) {
  if(idx < 0) {
    return new RedBlackTreeIterator(this, [])
  }
  var n = this.root
  var stack = []
  while(true) {
    stack.push(n)
    if(n.left) {
      if(idx < n.left._count) {
        n = n.left
        continue
      }
      idx -= n.left._count
    }
    if(!idx) {
      return new RedBlackTreeIterator(this, stack)
    }
    idx -= 1
    if(n.right) {
      if(idx >= n.right._count) {
        break
      }
      n = n.right
    } else {
      break
    }
  }
  return new RedBlackTreeIterator(this, [])
}

proto.ge = function(key) {
  var cmp = this._compare
  var n = this.root
  var stack = []
  var last_ptr = 0
  while(n) {
    var d = cmp(key, n.key)
    stack.push(n)
    if(d <= 0) {
      last_ptr = stack.length
    }
    if(d <= 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  stack.length = last_ptr
  return new RedBlackTreeIterator(this, stack)
}

proto.gt = function(key) {
  var cmp = this._compare
  var n = this.root
  var stack = []
  var last_ptr = 0
  while(n) {
    var d = cmp(key, n.key)
    stack.push(n)
    if(d < 0) {
      last_ptr = stack.length
    }
    if(d < 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  stack.length = last_ptr
  return new RedBlackTreeIterator(this, stack)
}

proto.lt = function(key) {
  var cmp = this._compare
  var n = this.root
  var stack = []
  var last_ptr = 0
  while(n) {
    var d = cmp(key, n.key)
    stack.push(n)
    if(d > 0) {
      last_ptr = stack.length
    }
    if(d <= 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  stack.length = last_ptr
  return new RedBlackTreeIterator(this, stack)
}

proto.le = function(key) {
  var cmp = this._compare
  var n = this.root
  var stack = []
  var last_ptr = 0
  while(n) {
    var d = cmp(key, n.key)
    stack.push(n)
    if(d >= 0) {
      last_ptr = stack.length
    }
    if(d < 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  stack.length = last_ptr
  return new RedBlackTreeIterator(this, stack)
}

//Finds the item with key if it exists
proto.find = function(key) {
  var cmp = this._compare
  var n = this.root
  var stack = []
  while(n) {
    var d = cmp(key, n.key)
    stack.push(n)
    if(d === 0) {
      return new RedBlackTreeIterator(this, stack)
    }
    if(d <= 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  return new RedBlackTreeIterator(this, [])
}

//Removes item with key from tree
proto.remove = function(key) {
  var iter = this.find(key)
  if(iter) {
    return iter.remove()
  }
  return this
}

//Returns the item at `key`
proto.get = function(key) {
  var cmp = this._compare
  var n = this.root
  while(n) {
    var d = cmp(key, n.key)
    if(d === 0) {
      return n.value
    }
    if(d <= 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  return
}

//Iterator for red black tree
function RedBlackTreeIterator(tree, stack) {
  this.tree = tree
  this._stack = stack
}

var iproto = RedBlackTreeIterator.prototype

//Test if iterator is valid
Object.defineProperty(iproto, "valid", {
  get: function() {
    return this._stack.length > 0
  }
})

//Node of the iterator
Object.defineProperty(iproto, "node", {
  get: function() {
    if(this._stack.length > 0) {
      return this._stack[this._stack.length-1]
    }
    return null
  },
  enumerable: true
})

//Makes a copy of an iterator
iproto.clone = function() {
  return new RedBlackTreeIterator(this.tree, this._stack.slice())
}

//Swaps two nodes
function swapNode(n, v) {
  n.key = v.key
  n.value = v.value
  n.left = v.left
  n.right = v.right
  n._color = v._color
  n._count = v._count
}

//Fix up a double black node in a tree
function fixDoubleBlack(stack) {
  var n, p, s, z
  for(var i=stack.length-1; i>=0; --i) {
    n = stack[i]
    if(i === 0) {
      n._color = BLACK
      return
    }
    //console.log("visit node:", n.key, i, stack[i].key, stack[i-1].key)
    p = stack[i-1]
    if(p.left === n) {
      //console.log("left child")
      s = p.right
      if(s.right && s.right._color === RED) {
        //console.log("case 1: right sibling child red")
        s = p.right = cloneNode(s)
        z = s.right = cloneNode(s.right)
        p.right = s.left
        s.left = p
        s.right = z
        s._color = p._color
        n._color = BLACK
        p._color = BLACK
        z._color = BLACK
        recount(p)
        recount(s)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.left === p) {
            pp.left = s
          } else {
            pp.right = s
          }
        }
        stack[i-1] = s
        return
      } else if(s.left && s.left._color === RED) {
        //console.log("case 1: left sibling child red")
        s = p.right = cloneNode(s)
        z = s.left = cloneNode(s.left)
        p.right = z.left
        s.left = z.right
        z.left = p
        z.right = s
        z._color = p._color
        p._color = BLACK
        s._color = BLACK
        n._color = BLACK
        recount(p)
        recount(s)
        recount(z)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.left === p) {
            pp.left = z
          } else {
            pp.right = z
          }
        }
        stack[i-1] = z
        return
      }
      if(s._color === BLACK) {
        if(p._color === RED) {
          //console.log("case 2: black sibling, red parent", p.right.value)
          p._color = BLACK
          p.right = repaint(RED, s)
          return
        } else {
          //console.log("case 2: black sibling, black parent", p.right.value)
          p.right = repaint(RED, s)
          continue
        }
      } else {
        //console.log("case 3: red sibling")
        s = cloneNode(s)
        p.right = s.left
        s.left = p
        s._color = p._color
        p._color = RED
        recount(p)
        recount(s)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.left === p) {
            pp.left = s
          } else {
            pp.right = s
          }
        }
        stack[i-1] = s
        stack[i] = p
        if(i+1 < stack.length) {
          stack[i+1] = n
        } else {
          stack.push(n)
        }
        i = i+2
      }
    } else {
      //console.log("right child")
      s = p.left
      if(s.left && s.left._color === RED) {
        //console.log("case 1: left sibling child red", p.value, p._color)
        s = p.left = cloneNode(s)
        z = s.left = cloneNode(s.left)
        p.left = s.right
        s.right = p
        s.left = z
        s._color = p._color
        n._color = BLACK
        p._color = BLACK
        z._color = BLACK
        recount(p)
        recount(s)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.right === p) {
            pp.right = s
          } else {
            pp.left = s
          }
        }
        stack[i-1] = s
        return
      } else if(s.right && s.right._color === RED) {
        //console.log("case 1: right sibling child red")
        s = p.left = cloneNode(s)
        z = s.right = cloneNode(s.right)
        p.left = z.right
        s.right = z.left
        z.right = p
        z.left = s
        z._color = p._color
        p._color = BLACK
        s._color = BLACK
        n._color = BLACK
        recount(p)
        recount(s)
        recount(z)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.right === p) {
            pp.right = z
          } else {
            pp.left = z
          }
        }
        stack[i-1] = z
        return
      }
      if(s._color === BLACK) {
        if(p._color === RED) {
          //console.log("case 2: black sibling, red parent")
          p._color = BLACK
          p.left = repaint(RED, s)
          return
        } else {
          //console.log("case 2: black sibling, black parent")
          p.left = repaint(RED, s)
          continue
        }
      } else {
        //console.log("case 3: red sibling")
        s = cloneNode(s)
        p.left = s.right
        s.right = p
        s._color = p._color
        p._color = RED
        recount(p)
        recount(s)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.right === p) {
            pp.right = s
          } else {
            pp.left = s
          }
        }
        stack[i-1] = s
        stack[i] = p
        if(i+1 < stack.length) {
          stack[i+1] = n
        } else {
          stack.push(n)
        }
        i = i+2
      }
    }
  }
}

//Removes item at iterator from tree
iproto.remove = function() {
  var stack = this._stack
  if(stack.length === 0) {
    return this.tree
  }
  //First copy path to node
  var cstack = new Array(stack.length)
  var n = stack[stack.length-1]
  cstack[cstack.length-1] = new RBNode(n._color, n.key, n.value, n.left, n.right, n._count)
  for(var i=stack.length-2; i>=0; --i) {
    var n = stack[i]
    if(n.left === stack[i+1]) {
      cstack[i] = new RBNode(n._color, n.key, n.value, cstack[i+1], n.right, n._count)
    } else {
      cstack[i] = new RBNode(n._color, n.key, n.value, n.left, cstack[i+1], n._count)
    }
  }

  //Get node
  n = cstack[cstack.length-1]
  //console.log("start remove: ", n.value)

  //If not leaf, then swap with previous node
  if(n.left && n.right) {
    //console.log("moving to leaf")

    //First walk to previous leaf
    var split = cstack.length
    n = n.left
    while(n.right) {
      cstack.push(n)
      n = n.right
    }
    //Copy path to leaf
    var v = cstack[split-1]
    cstack.push(new RBNode(n._color, v.key, v.value, n.left, n.right, n._count))
    cstack[split-1].key = n.key
    cstack[split-1].value = n.value

    //Fix up stack
    for(var i=cstack.length-2; i>=split; --i) {
      n = cstack[i]
      cstack[i] = new RBNode(n._color, n.key, n.value, n.left, cstack[i+1], n._count)
    }
    cstack[split-1].left = cstack[split]
  }
  //console.log("stack=", cstack.map(function(v) { return v.value }))

  //Remove leaf node
  n = cstack[cstack.length-1]
  if(n._color === RED) {
    //Easy case: removing red leaf
    //console.log("RED leaf")
    var p = cstack[cstack.length-2]
    if(p.left === n) {
      p.left = null
    } else if(p.right === n) {
      p.right = null
    }
    cstack.pop()
    for(var i=0; i<cstack.length; ++i) {
      cstack[i]._count--
    }
    return new RedBlackTree(this.tree._compare, cstack[0])
  } else {
    if(n.left || n.right) {
      //Second easy case:  Single child black parent
      //console.log("BLACK single child")
      if(n.left) {
        swapNode(n, n.left)
      } else if(n.right) {
        swapNode(n, n.right)
      }
      //Child must be red, so repaint it black to balance color
      n._color = BLACK
      for(var i=0; i<cstack.length-1; ++i) {
        cstack[i]._count--
      }
      return new RedBlackTree(this.tree._compare, cstack[0])
    } else if(cstack.length === 1) {
      //Third easy case: root
      //console.log("ROOT")
      return new RedBlackTree(this.tree._compare, null)
    } else {
      //Hard case: Repaint n, and then do some nasty stuff
      //console.log("BLACK leaf no children")
      for(var i=0; i<cstack.length; ++i) {
        cstack[i]._count--
      }
      var parent = cstack[cstack.length-2]
      fixDoubleBlack(cstack)
      //Fix up links
      if(parent.left === n) {
        parent.left = null
      } else {
        parent.right = null
      }
    }
  }
  return new RedBlackTree(this.tree._compare, cstack[0])
}

//Returns key
Object.defineProperty(iproto, "key", {
  get: function() {
    if(this._stack.length > 0) {
      return this._stack[this._stack.length-1].key
    }
    return
  },
  enumerable: true
})

//Returns value
Object.defineProperty(iproto, "value", {
  get: function() {
    if(this._stack.length > 0) {
      return this._stack[this._stack.length-1].value
    }
    return
  },
  enumerable: true
})


//Returns the position of this iterator in the sorted list
Object.defineProperty(iproto, "index", {
  get: function() {
    var idx = 0
    var stack = this._stack
    if(stack.length === 0) {
      var r = this.tree.root
      if(r) {
        return r._count
      }
      return 0
    } else if(stack[stack.length-1].left) {
      idx = stack[stack.length-1].left._count
    }
    for(var s=stack.length-2; s>=0; --s) {
      if(stack[s+1] === stack[s].right) {
        ++idx
        if(stack[s].left) {
          idx += stack[s].left._count
        }
      }
    }
    return idx
  },
  enumerable: true
})

//Advances iterator to next element in list
iproto.next = function() {
  var stack = this._stack
  if(stack.length === 0) {
    return
  }
  var n = stack[stack.length-1]
  if(n.right) {
    n = n.right
    while(n) {
      stack.push(n)
      n = n.left
    }
  } else {
    stack.pop()
    while(stack.length > 0 && stack[stack.length-1].right === n) {
      n = stack[stack.length-1]
      stack.pop()
    }
  }
}

//Checks if iterator is at end of tree
Object.defineProperty(iproto, "hasNext", {
  get: function() {
    var stack = this._stack
    if(stack.length === 0) {
      return false
    }
    if(stack[stack.length-1].right) {
      return true
    }
    for(var s=stack.length-1; s>0; --s) {
      if(stack[s-1].left === stack[s]) {
        return true
      }
    }
    return false
  }
})

//Update value
iproto.update = function(value) {
  var stack = this._stack
  if(stack.length === 0) {
    throw new Error("Can't update empty node!")
  }
  var cstack = new Array(stack.length)
  var n = stack[stack.length-1]
  cstack[cstack.length-1] = new RBNode(n._color, n.key, value, n.left, n.right, n._count)
  for(var i=stack.length-2; i>=0; --i) {
    n = stack[i]
    if(n.left === stack[i+1]) {
      cstack[i] = new RBNode(n._color, n.key, n.value, cstack[i+1], n.right, n._count)
    } else {
      cstack[i] = new RBNode(n._color, n.key, n.value, n.left, cstack[i+1], n._count)
    }
  }
  return new RedBlackTree(this.tree._compare, cstack[0])
}

//Moves iterator backward one element
iproto.prev = function() {
  var stack = this._stack
  if(stack.length === 0) {
    return
  }
  var n = stack[stack.length-1]
  if(n.left) {
    n = n.left
    while(n) {
      stack.push(n)
      n = n.right
    }
  } else {
    stack.pop()
    while(stack.length > 0 && stack[stack.length-1].left === n) {
      n = stack[stack.length-1]
      stack.pop()
    }
  }
}

//Checks if iterator is at start of tree
Object.defineProperty(iproto, "hasPrev", {
  get: function() {
    var stack = this._stack
    if(stack.length === 0) {
      return false
    }
    if(stack[stack.length-1].left) {
      return true
    }
    for(var s=stack.length-1; s>0; --s) {
      if(stack[s-1].right === stack[s]) {
        return true
      }
    }
    return false
  }
})

//Default comparison function
function defaultCompare(a, b) {
  if(a < b) {
    return -1
  }
  if(a > b) {
    return 1
  }
  return 0
}

//Build a tree
function createRBTree(compare) {
  return new RedBlackTree(compare || defaultCompare, null)
}
},{}],5:[function(require,module,exports){
exports.read = function (buffer, offset, isLE, mLen, nBytes) {
  var e, m
  var eLen = nBytes * 8 - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var nBits = -7
  var i = isLE ? (nBytes - 1) : 0
  var d = isLE ? -1 : 1
  var s = buffer[offset + i]

  i += d

  e = s & ((1 << (-nBits)) - 1)
  s >>= (-nBits)
  nBits += eLen
  for (; nBits > 0; e = e * 256 + buffer[offset + i], i += d, nBits -= 8) {}

  m = e & ((1 << (-nBits)) - 1)
  e >>= (-nBits)
  nBits += mLen
  for (; nBits > 0; m = m * 256 + buffer[offset + i], i += d, nBits -= 8) {}

  if (e === 0) {
    e = 1 - eBias
  } else if (e === eMax) {
    return m ? NaN : ((s ? -1 : 1) * Infinity)
  } else {
    m = m + Math.pow(2, mLen)
    e = e - eBias
  }
  return (s ? -1 : 1) * m * Math.pow(2, e - mLen)
}

exports.write = function (buffer, value, offset, isLE, mLen, nBytes) {
  var e, m, c
  var eLen = nBytes * 8 - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var rt = (mLen === 23 ? Math.pow(2, -24) - Math.pow(2, -77) : 0)
  var i = isLE ? 0 : (nBytes - 1)
  var d = isLE ? 1 : -1
  var s = value < 0 || (value === 0 && 1 / value < 0) ? 1 : 0

  value = Math.abs(value)

  if (isNaN(value) || value === Infinity) {
    m = isNaN(value) ? 1 : 0
    e = eMax
  } else {
    e = Math.floor(Math.log(value) / Math.LN2)
    if (value * (c = Math.pow(2, -e)) < 1) {
      e--
      c *= 2
    }
    if (e + eBias >= 1) {
      value += rt / c
    } else {
      value += rt * Math.pow(2, 1 - eBias)
    }
    if (value * c >= 2) {
      e++
      c /= 2
    }

    if (e + eBias >= eMax) {
      m = 0
      e = eMax
    } else if (e + eBias >= 1) {
      m = (value * c - 1) * Math.pow(2, mLen)
      e = e + eBias
    } else {
      m = value * Math.pow(2, eBias - 1) * Math.pow(2, mLen)
      e = 0
    }
  }

  for (; mLen >= 8; buffer[offset + i] = m & 0xff, i += d, m /= 256, mLen -= 8) {}

  e = (e << mLen) | m
  eLen += mLen
  for (; eLen > 0; buffer[offset + i] = e & 0xff, i += d, e /= 256, eLen -= 8) {}

  buffer[offset + i - d] |= s * 128
}

},{}],6:[function(require,module,exports){
if (typeof Object.create === 'function') {
  // implementation from standard node.js 'util' module
  module.exports = function inherits(ctor, superCtor) {
    ctor.super_ = superCtor
    ctor.prototype = Object.create(superCtor.prototype, {
      constructor: {
        value: ctor,
        enumerable: false,
        writable: true,
        configurable: true
      }
    });
  };
} else {
  // old school shim for old browsers
  module.exports = function inherits(ctor, superCtor) {
    ctor.super_ = superCtor
    var TempCtor = function () {}
    TempCtor.prototype = superCtor.prototype
    ctor.prototype = new TempCtor()
    ctor.prototype.constructor = ctor
  }
}

},{}],7:[function(require,module,exports){

/**
 * isArray
 */

var isArray = Array.isArray;

/**
 * toString
 */

var str = Object.prototype.toString;

/**
 * Whether or not the given `val`
 * is an array.
 *
 * example:
 *
 *        isArray([]);
 *        // > true
 *        isArray(arguments);
 *        // > false
 *        isArray('');
 *        // > false
 *
 * @param {mixed} val
 * @return {bool}
 */

module.exports = isArray || function (val) {
  return !! val && '[object Array]' == str.call(val);
};

},{}],8:[function(require,module,exports){
/**
 * Determine if an object is Buffer
 *
 * Author:   Feross Aboukhadijeh <feross@feross.org> <http://feross.org>
 * License:  MIT
 *
 * `npm install is-buffer`
 */

module.exports = function (obj) {
  return !!(obj != null &&
    (obj._isBuffer || // For Safari 5-7 (missing Object.prototype.constructor)
      (obj.constructor &&
      typeof obj.constructor.isBuffer === 'function' &&
      obj.constructor.isBuffer(obj))
    ))
}

},{}],9:[function(require,module,exports){
(function (process,global,Buffer){
var inherits          = require('inherits')
  , AbstractLevelDOWN = require('abstract-leveldown').AbstractLevelDOWN
  , AbstractIterator  = require('abstract-leveldown').AbstractIterator
  , ltgt              = require('ltgt')
  , setImmediate      = global.setImmediate || process.nextTick
  , createRBT = require('functional-red-black-tree')
  , globalStore       = {}

function toKey (key) {
  return typeof key == 'string' ? '$' + key : JSON.stringify(key)
}

function gt(value) {
  return ltgt.compare(value, this._end) > 0
}

function gte(value) {
  return ltgt.compare(value, this._end) >= 0
}

function lt(value) {
  return ltgt.compare(value, this._end) < 0
}

function lte(value) {
  return ltgt.compare(value, this._end) <= 0
}


function MemIterator (db, options) {
  AbstractIterator.call(this, db)
  this._limit   = options.limit

  if (this._limit === -1)
    this._limit = Infinity

  var tree = db._store[db._location];

  this.keyAsBuffer = options.keyAsBuffer !== false
  this.valueAsBuffer = options.valueAsBuffer !== false
  this._reverse   = options.reverse
  this._options = options
  this._done = 0

  if (!this._reverse) {
    this._incr = 'next';
    this._start = ltgt.lowerBound(options);
    this._end = ltgt.upperBound(options)

    if (typeof this._start === 'undefined')
      this._tree = tree.begin;
    else if (ltgt.lowerBoundInclusive(options))
      this._tree = tree.ge(this._start);
    else
      this._tree = tree.gt(this._start);

    if (this._end) {
      if (ltgt.upperBoundInclusive(options))
        this._test = lte
      else
        this._test = lt
    }

  } else {
    this._incr = 'prev';
    this._start = ltgt.upperBound(options)
    this._end = ltgt.lowerBound(options)

    if (typeof this._start === 'undefined')
      this._tree = tree.end;
    else if (ltgt.upperBoundInclusive(options))
      this._tree = tree.le(this._start)
    else
      this._tree = tree.lt(this._start)

    if (this._end) {
      if (ltgt.lowerBoundInclusive(options))
        this._test = gte
      else
        this._test = gt
    }

  }

}

inherits(MemIterator, AbstractIterator)

MemIterator.prototype._next = function (callback) {
  var key
    , value

  if (this._done++ >= this._limit)
    return setImmediate(callback)

  if (!this._tree.valid)
    return setImmediate(callback)

  key = this._tree.key
  value = this._tree.value

  if (!this._test(key))
    return setImmediate(callback)

  if (this.keyAsBuffer)
    key = new Buffer(key)

  if (this.valueAsBuffer)
    value = new Buffer(value)

  this._tree[this._incr]()

  setImmediate(function callNext() {
    callback(null, key, value)
  })
}

MemIterator.prototype._test = function () {return true}

function MemDOWN (location) {
  if (!(this instanceof MemDOWN))
    return new MemDOWN(location)

  AbstractLevelDOWN.call(this, typeof location == 'string' ? location : '')

  this._location = this.location ? toKey(this.location) : '_tree'
  this._store = this.location ? globalStore: this
  this._store[this._location] = this._store[this._location] || createRBT()
}

MemDOWN.clearGlobalStore = function (strict) {
  if (strict) {
    Object.keys(globalStore).forEach(function (key) {
      delete globalStore[key];
    })
  } else {
    globalStore = {}
  }
}

inherits(MemDOWN, AbstractLevelDOWN)

MemDOWN.prototype._open = function (options, callback) {
  var self = this
  setImmediate(function callNext() { callback(null, self) })
}

MemDOWN.prototype._put = function (key, value, options, callback) {
  if (typeof value === 'undefined' || value === null) value = ''
  this._store[this._location] = this._store[this._location].remove(key).insert(key, value)
  setImmediate(callback)
}

MemDOWN.prototype._get = function (key, options, callback) {
  var value = this._store[this._location].get(key)

  if (value === undefined) {
    // 'NotFound' error, consistent with LevelDOWN API
    var err = new Error('NotFound')
    return setImmediate(function callNext() { callback(err) })
  }

  if (options.asBuffer !== false && !this._isBuffer(value))
    value = new Buffer(String(value))

  setImmediate(function callNext () {
    callback(null, value)
  })

}

MemDOWN.prototype._del = function (key, options, callback) {
  this._store[this._location] = this._store[this._location].remove(key)
  setImmediate(callback)
}

MemDOWN.prototype._batch = function (array, options, callback) {
  var err
    , i = -1
    , key
    , value
    , len = array.length
    , tree = this._store[this._location]

  while (++i < len) {
    if (!array[i])
      continue;

    key = this._isBuffer(array[i].key) ? array[i].key : String(array[i].key)
    err = this._checkKey(key, 'key')
    if (err)
      return setImmediate(function errorCall() { callback(err) })

    tree = tree.remove(array[i].key)
    // we always remove as insert doesn't replace

    if (array[i].type === 'put') {

      value = this._isBuffer(array[i].value) ? array[i].value : String(array[i].value)
      err = this._checkKey(value, 'value')

      if (err)
        return setImmediate(function errorCall() { callback(err) })

      tree = tree.insert(key, value)
    }

  }

  this._store[this._location] = tree;

  setImmediate(callback)
}

MemDOWN.prototype._iterator = function (options) {
  return new MemIterator(this, options)
}

MemDOWN.prototype._isBuffer = function (obj) {
  return Buffer.isBuffer(obj)
}

MemDOWN.destroy = function (name, callback) {
  var key = toKey(name)

  if (key in globalStore)
    delete globalStore[key]

  setImmediate(callback)
}

module.exports = MemDOWN

}).call(this,require('_process'),typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {},require("buffer").Buffer)
},{"_process":16,"abstract-leveldown":13,"buffer":3,"functional-red-black-tree":4,"inherits":6,"ltgt":15}],10:[function(require,module,exports){
(function (process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

function AbstractChainedBatch (db) {
  this._db         = db
  this._operations = []
  this._written    = false
}

AbstractChainedBatch.prototype._checkWritten = function () {
  if (this._written)
    throw new Error('write() already called on this batch')
}

AbstractChainedBatch.prototype.put = function (key, value) {
  this._checkWritten()

  var err = this._db._checkKey(key, 'key', this._db._isBuffer)
  if (err)
    throw err

  if (!this._db._isBuffer(key)) key = String(key)
  if (!this._db._isBuffer(value)) value = String(value)

  if (typeof this._put == 'function' )
    this._put(key, value)
  else
    this._operations.push({ type: 'put', key: key, value: value })

  return this
}

AbstractChainedBatch.prototype.del = function (key) {
  this._checkWritten()

  var err = this._db._checkKey(key, 'key', this._db._isBuffer)
  if (err) throw err

  if (!this._db._isBuffer(key)) key = String(key)

  if (typeof this._del == 'function' )
    this._del(key)
  else
    this._operations.push({ type: 'del', key: key })

  return this
}

AbstractChainedBatch.prototype.clear = function () {
  this._checkWritten()

  this._operations = []

  if (typeof this._clear == 'function' )
    this._clear()

  return this
}

AbstractChainedBatch.prototype.write = function (options, callback) {
  this._checkWritten()

  if (typeof options == 'function')
    callback = options
  if (typeof callback != 'function')
    throw new Error('write() requires a callback argument')
  if (typeof options != 'object')
    options = {}

  this._written = true

  if (typeof this._write == 'function' )
    return this._write(callback)

  if (typeof this._db._batch == 'function')
    return this._db._batch(this._operations, options, callback)

  process.nextTick(callback)
}

module.exports = AbstractChainedBatch
}).call(this,require('_process'))
},{"_process":16}],11:[function(require,module,exports){
(function (process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

function AbstractIterator (db) {
  this.db = db
  this._ended = false
  this._nexting = false
}

AbstractIterator.prototype.next = function (callback) {
  var self = this

  if (typeof callback != 'function')
    throw new Error('next() requires a callback argument')

  if (self._ended)
    return callback(new Error('cannot call next() after end()'))
  if (self._nexting)
    return callback(new Error('cannot call next() before previous next() has completed'))

  self._nexting = true
  if (typeof self._next == 'function') {
    return self._next(function () {
      self._nexting = false
      callback.apply(null, arguments)
    })
  }

  process.nextTick(function () {
    self._nexting = false
    callback()
  })
}

AbstractIterator.prototype.end = function (callback) {
  if (typeof callback != 'function')
    throw new Error('end() requires a callback argument')

  if (this._ended)
    return callback(new Error('end() already called on iterator'))

  this._ended = true

  if (typeof this._end == 'function')
    return this._end(callback)

  process.nextTick(callback)
}

module.exports = AbstractIterator

}).call(this,require('_process'))
},{"_process":16}],12:[function(require,module,exports){
(function (Buffer,process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

var xtend                = require('xtend')
  , AbstractIterator     = require('./abstract-iterator')
  , AbstractChainedBatch = require('./abstract-chained-batch')

function AbstractLevelDOWN (location) {
  if (!arguments.length || location === undefined)
    throw new Error('constructor requires at least a location argument')

  if (typeof location != 'string')
    throw new Error('constructor requires a location string argument')

  this.location = location
  this.status = 'new'
}

AbstractLevelDOWN.prototype.open = function (options, callback) {
  var self      = this
    , oldStatus = this.status

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('open() requires a callback argument')

  if (typeof options != 'object')
    options = {}

  options.createIfMissing = options.createIfMissing != false
  options.errorIfExists = !!options.errorIfExists

  if (typeof this._open == 'function') {
    this.status = 'opening'
    this._open(options, function (err) {
      if (err) {
        self.status = oldStatus
        return callback(err)
      }
      self.status = 'open'
      callback()
    })
  } else {
    this.status = 'open'
    process.nextTick(callback)
  }
}

AbstractLevelDOWN.prototype.close = function (callback) {
  var self      = this
    , oldStatus = this.status

  if (typeof callback != 'function')
    throw new Error('close() requires a callback argument')

  if (typeof this._close == 'function') {
    this.status = 'closing'
    this._close(function (err) {
      if (err) {
        self.status = oldStatus
        return callback(err)
      }
      self.status = 'closed'
      callback()
    })
  } else {
    this.status = 'closed'
    process.nextTick(callback)
  }
}

AbstractLevelDOWN.prototype.get = function (key, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('get() requires a callback argument')

  if (err = this._checkKey(key, 'key', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  if (typeof options != 'object')
    options = {}

  options.asBuffer = options.asBuffer != false

  if (typeof this._get == 'function')
    return this._get(key, options, callback)

  process.nextTick(function () { callback(new Error('NotFound')) })
}

AbstractLevelDOWN.prototype.put = function (key, value, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('put() requires a callback argument')

  if (err = this._checkKey(key, 'key', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  // coerce value to string in node, don't touch it in browser
  // (indexeddb can store any JS type)
  if (value != null && !this._isBuffer(value) && !process.browser)
    value = String(value)

  if (typeof options != 'object')
    options = {}

  if (typeof this._put == 'function')
    return this._put(key, value, options, callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.del = function (key, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('del() requires a callback argument')

  if (err = this._checkKey(key, 'key', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  if (typeof options != 'object')
    options = {}

  if (typeof this._del == 'function')
    return this._del(key, options, callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.batch = function (array, options, callback) {
  if (!arguments.length)
    return this._chainedBatch()

  if (typeof options == 'function')
    callback = options

  if (typeof array == 'function')
    callback = array

  if (typeof callback != 'function')
    throw new Error('batch(array) requires a callback argument')

  if (!Array.isArray(array))
    return callback(new Error('batch(array) requires an array argument'))

  if (!options || typeof options != 'object')
    options = {}

  var i = 0
    , l = array.length
    , e
    , err

  for (; i < l; i++) {
    e = array[i]
    if (typeof e != 'object')
      continue

    if (err = this._checkKey(e.type, 'type', this._isBuffer))
      return callback(err)

    if (err = this._checkKey(e.key, 'key', this._isBuffer))
      return callback(err)
  }

  if (typeof this._batch == 'function')
    return this._batch(array, options, callback)

  process.nextTick(callback)
}

//TODO: remove from here, not a necessary primitive
AbstractLevelDOWN.prototype.approximateSize = function (start, end, callback) {
  if (   start == null
      || end == null
      || typeof start == 'function'
      || typeof end == 'function') {
    throw new Error('approximateSize() requires valid `start`, `end` and `callback` arguments')
  }

  if (typeof callback != 'function')
    throw new Error('approximateSize() requires a callback argument')

  if (!this._isBuffer(start))
    start = String(start)

  if (!this._isBuffer(end))
    end = String(end)

  if (typeof this._approximateSize == 'function')
    return this._approximateSize(start, end, callback)

  process.nextTick(function () {
    callback(null, 0)
  })
}

AbstractLevelDOWN.prototype._setupIteratorOptions = function (options) {
  var self = this

  options = xtend(options)

  ;[ 'start', 'end', 'gt', 'gte', 'lt', 'lte' ].forEach(function (o) {
    if (options[o] && self._isBuffer(options[o]) && options[o].length === 0)
      delete options[o]
  })

  options.reverse = !!options.reverse
  options.keys = options.keys != false
  options.values = options.values != false
  options.limit = 'limit' in options ? options.limit : -1
  options.keyAsBuffer = options.keyAsBuffer != false
  options.valueAsBuffer = options.valueAsBuffer != false

  return options
}

AbstractLevelDOWN.prototype.iterator = function (options) {
  if (typeof options != 'object')
    options = {}

  options = this._setupIteratorOptions(options)

  if (typeof this._iterator == 'function')
    return this._iterator(options)

  return new AbstractIterator(this)
}

AbstractLevelDOWN.prototype._chainedBatch = function () {
  return new AbstractChainedBatch(this)
}

AbstractLevelDOWN.prototype._isBuffer = function (obj) {
  return Buffer.isBuffer(obj)
}

AbstractLevelDOWN.prototype._checkKey = function (obj, type) {

  if (obj === null || obj === undefined)
    return new Error(type + ' cannot be `null` or `undefined`')

  if (this._isBuffer(obj)) {
    if (obj.length === 0)
      return new Error(type + ' cannot be an empty Buffer')
  } else if (String(obj) === '')
    return new Error(type + ' cannot be an empty String')
}

module.exports = AbstractLevelDOWN

}).call(this,{"isBuffer":require("../../../is-buffer/index.js")},require('_process'))
},{"../../../is-buffer/index.js":8,"./abstract-chained-batch":10,"./abstract-iterator":11,"_process":16,"xtend":17}],13:[function(require,module,exports){
exports.AbstractLevelDOWN    = require('./abstract-leveldown')
exports.AbstractIterator     = require('./abstract-iterator')
exports.AbstractChainedBatch = require('./abstract-chained-batch')
exports.isLevelDOWN          = require('./is-leveldown')

},{"./abstract-chained-batch":10,"./abstract-iterator":11,"./abstract-leveldown":12,"./is-leveldown":14}],14:[function(require,module,exports){
var AbstractLevelDOWN = require('./abstract-leveldown')

function isLevelDOWN (db) {
  if (!db || typeof db !== 'object')
    return false
  return Object.keys(AbstractLevelDOWN.prototype).filter(function (name) {
    // TODO remove approximateSize check when method is gone
    return name[0] != '_' && name != 'approximateSize'
  }).every(function (name) {
    return typeof db[name] == 'function'
  })
}

module.exports = isLevelDOWN

},{"./abstract-leveldown":12}],15:[function(require,module,exports){
(function (Buffer){

exports.compare = function (a, b) {

  if(Buffer.isBuffer(a)) {
    var l = Math.min(a.length, b.length)
    for(var i = 0; i < l; i++) {
      var cmp = a[i] - b[i]
      if(cmp) return cmp
    }
    return a.length - b.length
  }

  return a < b ? -1 : a > b ? 1 : 0
}

function has(obj, key) {
  return Object.hasOwnProperty.call(obj, key)
}

// to be compatible with the current abstract-leveldown tests
// nullish or empty strings.
// I could use !!val but I want to permit numbers and booleans,
// if possible.

function isDef (val) {
  return val != null && val !== ''
}

var lowerBound = exports.lowerBound = function (range) {
  return (
      isDef(range.gt)                      ? range.gt
    : isDef(range.gte)                     ? range.gte
    : isDef(range.min)                     ? range.min
    : isDef(range.start) && !range.reverse ? range.start
    : isDef(range.end) && range.reverse    ? range.end
    :                                        undefined
  )
}

exports.lowerBoundInclusive = function (range) {
  return isDef(range.gt) ? false : true
}

exports.upperBoundInclusive =
  function (range) {
    return isDef(range.lt) ? false : true
  }

var lowerBoundExclusive = exports.lowerBoundExclusive =
  function (range) {
    return isDef(range.gt) ? true : false
  }

var upperBoundExclusive = exports.upperBoundExclusive =
  function (range) {
    return isDef(range.lt) ? true : false
  }

var upperBound = exports.upperBound = function (range) {
  return (
      isDef(range.lt)                     ? range.lt
    : isDef(range.lte)                    ? range.lte
    : isDef(range.max)                    ? range.max
    : isDef(range.start) && range.reverse ? range.start
    : isDef(range.end) && !range.reverse  ? range.end
    :                                       undefined
  )
}


exports.contains = function (range, key, compare) {
  compare = compare || exports.compare

  var lb = lowerBound(range)
  if(isDef(lb)) {
    var cmp = compare(key, lb)
    if(cmp < 0 || (cmp === 0 && lowerBoundExclusive(range)))
      return false
  }

  var ub = upperBound(range)
  if(isDef(ub)) {
    var cmp = compare(key, ub)
    if(cmp > 0 || (cmp === 0) && upperBoundExclusive(range))
      return false
  }

  return true
}

exports.filter = function (range, compare) {
  return function (key) {
    return exports.contains(range, key, compare)
  }
}

}).call(this,{"isBuffer":require("../../../is-buffer/index.js")})
},{"../../../is-buffer/index.js":8}],16:[function(require,module,exports){
// shim for using process in browser

var process = module.exports = {};
var queue = [];
var draining = false;
var currentQueue;
var queueIndex = -1;

function cleanUpNextTick() {
    draining = false;
    if (currentQueue.length) {
        queue = currentQueue.concat(queue);
    } else {
        queueIndex = -1;
    }
    if (queue.length) {
        drainQueue();
    }
}

function drainQueue() {
    if (draining) {
        return;
    }
    var timeout = setTimeout(cleanUpNextTick);
    draining = true;

    var len = queue.length;
    while(len) {
        currentQueue = queue;
        queue = [];
        while (++queueIndex < len) {
            if (currentQueue) {
                currentQueue[queueIndex].run();
            }
        }
        queueIndex = -1;
        len = queue.length;
    }
    currentQueue = null;
    draining = false;
    clearTimeout(timeout);
}

process.nextTick = function (fun) {
    var args = new Array(arguments.length - 1);
    if (arguments.length > 1) {
        for (var i = 1; i < arguments.length; i++) {
            args[i - 1] = arguments[i];
        }
    }
    queue.push(new Item(fun, args));
    if (queue.length === 1 && !draining) {
        setTimeout(drainQueue, 0);
    }
};

// v8 likes predictible objects
function Item(fun, array) {
    this.fun = fun;
    this.array = array;
}
Item.prototype.run = function () {
    this.fun.apply(null, this.array);
};
process.title = 'browser';
process.browser = true;
process.env = {};
process.argv = [];
process.version = ''; // empty string to avoid regexp issues
process.versions = {};

function noop() {}

process.on = noop;
process.addListener = noop;
process.once = noop;
process.off = noop;
process.removeListener = noop;
process.removeAllListeners = noop;
process.emit = noop;

process.binding = function (name) {
    throw new Error('process.binding is not supported');
};

process.cwd = function () { return '/' };
process.chdir = function (dir) {
    throw new Error('process.chdir is not supported');
};
process.umask = function() { return 0; };

},{}],17:[function(require,module,exports){
module.exports = extend

var hasOwnProperty = Object.prototype.hasOwnProperty;

function extend() {
    var target = {}

    for (var i = 0; i < arguments.length; i++) {
        var source = arguments[i]

        for (var key in source) {
            if (hasOwnProperty.call(source, key)) {
                target[key] = source[key]
            }
        }
    }

    return target
}

},{}]},{},[1]);

'use strict';

System.register('common/data/sb-service/test/mock/MockClient.js', [], function (_export, _context) {
    var _createClass, MockClient;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('MockClient', MockClient = function () {
                function MockClient(serviceComponent) {
                    _classCallCheck(this, MockClient);

                    this.serviceComponent = serviceComponent;
                }

                _createClass(MockClient, [{
                    key: 'read',
                    value: function read(prefix, reader, uid) {
                        this.serviceComponent.fire('sb-read', { prefix: prefix, reader: reader, uid: uid });
                        return Promise.resolve();
                    }
                }, {
                    key: 'load',
                    value: function load(prefix, loader, uid, context) {
                        this.serviceComponent.fire('sb-load', { prefix: prefix, loader: loader, uid: uid, context: context });
                        return Promise.resolve();
                    }
                }, {
                    key: 'save',
                    value: function save(prefix, saver, model) {
                        this.serviceComponent.fire('sb-save', { prefix: prefix, saver: saver, model: model });
                        return Promise.resolve();
                    }
                }]);

                return MockClient;
            }());

            _export('MockClient', MockClient);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIk1vY2tDbGllbnQuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7a0NBQWE7QUFFVCx5QkFGUyxVQUVULENBQVksZ0JBQVosRUFBOEI7MENBRnJCLFlBRXFCOztBQUMxQix5QkFBSyxnQkFBTCxHQUF3QixnQkFBeEIsQ0FEMEI7aUJBQTlCOzs2QkFGUzs7eUNBTUosUUFBUSxRQUFRLEtBQUs7QUFDdEIsNkJBQUssZ0JBQUwsQ0FBc0IsSUFBdEIsQ0FBMkIsU0FBM0IsRUFBc0MsRUFBQyxRQUFRLE1BQVIsRUFBZ0IsUUFBUSxNQUFSLEVBQWdCLEtBQUssR0FBTCxFQUF2RSxFQURzQjtBQUV0QiwrQkFBTyxRQUFRLE9BQVIsRUFBUCxDQUZzQjs7Ozt5Q0FLckIsUUFBUSxRQUFRLEtBQUssU0FBUztBQUMvQiw2QkFBSyxnQkFBTCxDQUFzQixJQUF0QixDQUEyQixTQUEzQixFQUFzQyxFQUFDLFFBQVEsTUFBUixFQUFnQixRQUFRLE1BQVIsRUFBZ0IsS0FBSyxHQUFMLEVBQVUsU0FBUyxPQUFULEVBQWpGLEVBRCtCO0FBRS9CLCtCQUFPLFFBQVEsT0FBUixFQUFQLENBRitCOzs7O3lDQUs5QixRQUFRLE9BQU8sT0FBTztBQUN2Qiw2QkFBSyxnQkFBTCxDQUFzQixJQUF0QixDQUEyQixTQUEzQixFQUFzQyxFQUFDLFFBQVEsTUFBUixFQUFnQixPQUFPLEtBQVAsRUFBYyxPQUFPLEtBQVAsRUFBckUsRUFEdUI7QUFFdkIsK0JBQU8sUUFBUSxPQUFSLEVBQVAsQ0FGdUI7Ozs7dUJBaEJsQiIsImZpbGUiOiJNb2NrQ2xpZW50LmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIE1vY2tDbGllbnQge1xuXG4gICAgY29uc3RydWN0b3Ioc2VydmljZUNvbXBvbmVudCkge1xuICAgICAgICB0aGlzLnNlcnZpY2VDb21wb25lbnQgPSBzZXJ2aWNlQ29tcG9uZW50O1xuICAgIH1cblxuICAgIHJlYWQocHJlZml4LCByZWFkZXIsIHVpZCkge1xuICAgICAgICB0aGlzLnNlcnZpY2VDb21wb25lbnQuZmlyZSgnc2ItcmVhZCcsIHtwcmVmaXg6IHByZWZpeCwgcmVhZGVyOiByZWFkZXIsIHVpZDogdWlkfSApO1xuICAgICAgICByZXR1cm4gUHJvbWlzZS5yZXNvbHZlKCk7XG4gICAgfVxuXG4gICAgbG9hZChwcmVmaXgsIGxvYWRlciwgdWlkLCBjb250ZXh0KSB7XG4gICAgICAgIHRoaXMuc2VydmljZUNvbXBvbmVudC5maXJlKCdzYi1sb2FkJywge3ByZWZpeDogcHJlZml4LCBsb2FkZXI6IGxvYWRlciwgdWlkOiB1aWQsIGNvbnRleHQ6IGNvbnRleHR9ICk7XG4gICAgICAgIHJldHVybiBQcm9taXNlLnJlc29sdmUoKTtcbiAgICB9XG5cbiAgICBzYXZlKHByZWZpeCwgc2F2ZXIsIG1vZGVsKSB7XG4gICAgICAgIHRoaXMuc2VydmljZUNvbXBvbmVudC5maXJlKCdzYi1zYXZlJywge3ByZWZpeDogcHJlZml4LCBzYXZlcjogc2F2ZXIsIG1vZGVsOiBtb2RlbH0gKTtcbiAgICAgICAgcmV0dXJuIFByb21pc2UucmVzb2x2ZSgpO1xuICAgIH1cbn0iXX0=
'use strict';

System.register('common/layout/sb-group/test/sb-test-item/TestItem.js', [], function (_export, _context) {
    var _createClass, TestItem;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('TestItem', TestItem = function () {
                function TestItem() {
                    _classCallCheck(this, TestItem);
                }

                _createClass(TestItem, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-test-item';
                        this.properties = {
                            value: {
                                notify: true
                            }
                        };
                    }
                }]);

                return TestItem;
            }());

            _export('TestItem', TestItem);

            Polymer(TestItem);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlRlc3RJdGVtLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O2dDQUFhOzs7Ozs7O3FEQUVRO0FBQ2IsNkJBQUssRUFBTCxHQUFVLGNBQVYsQ0FEYTtBQUViLDZCQUFLLFVBQUwsR0FBa0I7QUFDZCxtQ0FBTztBQUNILHdDQUFRLElBQVI7NkJBREo7eUJBREosQ0FGYTs7Ozt1QkFGUjs7Ozs7QUFXYixvQkFBUyxRQUFUIiwiZmlsZSI6IlRlc3RJdGVtLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIFRlc3RJdGVtIHtcblxuICAgIGJlZm9yZVJlZ2lzdGVyKCkge1xuICAgICAgICB0aGlzLmlzID0gJ3NiLXRlc3QtaXRlbSc7XG4gICAgICAgIHRoaXMucHJvcGVydGllcyA9IHtcbiAgICAgICAgICAgIHZhbHVlOiB7XG4gICAgICAgICAgICAgICAgbm90aWZ5OiB0cnVlXG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICB9XG59XG5Qb2x5bWVyKCBUZXN0SXRlbSApOyJdfQ==
'use strict';

System.register('common/layout/sb-group/test/sb-test-item-field/TestItemField.js', [], function (_export, _context) {
    var _createClass, TestItemField;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('TestItemField', TestItemField = function () {
                function TestItemField() {
                    _classCallCheck(this, TestItemField);
                }

                _createClass(TestItemField, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-test-item-field';
                        this.properties = {
                            value: {
                                notify: true
                            },
                            dateVal: {
                                value: '2016-5-5'
                            },
                            numVal: {
                                value: 555
                            },
                            refVal: {
                                value: 'a0ZA00000073sEy'
                            },
                            listVal: {
                                value: '2'
                            },
                            textVal: {
                                value: 'toggle'
                            }
                        };
                    }
                }, {
                    key: 'toggle',
                    value: function toggle() {
                        var type = this.model.md.type;
                        var val = undefined;
                        switch (type) {
                            case 'boolean':
                                val = !this.value;
                                break;
                            case 'date':
                            case 'datetime':
                                val = this.previous || this.dateVal;
                                break;
                            case 'double':
                            case 'number':
                            case 'currency':
                            case 'percent':
                                val = this.previous || this.numVal;
                                break;
                            case 'reference':
                                val = this.previous || this.refVal;
                                break;
                            case 'picklist':
                                val = this.previous || this.listVal;
                                break;
                            case 'string':
                            case 'textarea':
                                val = this.previous || this.textVal;
                                break;
                        }
                        this.previous = this.value;
                        this.value = val;
                    }
                }]);

                return TestItemField;
            }());

            _export('TestItemField', TestItemField);

            Polymer(TestItemField);
        }
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlRlc3RJdGVtRmllbGQuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7cUNBQWE7Ozs7Ozs7cURBRVE7QUFDYiw2QkFBSyxFQUFMLEdBQVUsb0JBQVYsQ0FEYTtBQUViLDZCQUFLLFVBQUwsR0FBa0I7QUFDZCxtQ0FBTztBQUNILHdDQUFRLElBQVI7NkJBREo7QUFHQSxxQ0FBUztBQUNMLHVDQUFRLFVBQVI7NkJBREo7QUFHQSxvQ0FBUTtBQUNKLHVDQUFRLEdBQVI7NkJBREo7QUFHQSxvQ0FBUTtBQUNKLHVDQUFPLGlCQUFQOzZCQURKO0FBR0EscUNBQVM7QUFDTCx1Q0FBTyxHQUFQOzZCQURKO0FBR0EscUNBQVM7QUFDTCx1Q0FBTyxRQUFQOzZCQURKO3lCQWhCSixDQUZhOzs7OzZDQXdCUDtBQUNOLDRCQUFJLE9BQU8sS0FBSyxLQUFMLENBQVcsRUFBWCxDQUFjLElBQWQsQ0FETDtBQUVOLDRCQUFJLGVBQUosQ0FGTTtBQUdOLGdDQUFPLElBQVA7QUFDSSxpQ0FBSyxTQUFMO0FBQ0ksc0NBQU0sQ0FBQyxLQUFLLEtBQUwsQ0FEWDtBQUVJLHNDQUZKO0FBREosaUNBSVMsTUFBTCxDQUpKO0FBS0ksaUNBQUssVUFBTDtBQUNJLHNDQUFNLEtBQUssUUFBTCxJQUFpQixLQUFLLE9BQUwsQ0FEM0I7QUFFSSxzQ0FGSjtBQUxKLGlDQVFTLFFBQUwsQ0FSSjtBQVNJLGlDQUFLLFFBQUwsQ0FUSjtBQVVJLGlDQUFLLFVBQUwsQ0FWSjtBQVdJLGlDQUFLLFNBQUw7QUFDSSxzQ0FBTSxLQUFLLFFBQUwsSUFBaUIsS0FBSyxNQUFMLENBRDNCO0FBRUksc0NBRko7QUFYSixpQ0FjUyxXQUFMO0FBQ0ksc0NBQU0sS0FBSyxRQUFMLElBQWlCLEtBQUssTUFBTCxDQUQzQjtBQUVJLHNDQUZKO0FBZEosaUNBaUJTLFVBQUw7QUFDSSxzQ0FBTSxLQUFLLFFBQUwsSUFBaUIsS0FBSyxPQUFMLENBRDNCO0FBRUksc0NBRko7QUFqQkosaUNBb0JTLFFBQUwsQ0FwQko7QUFxQkksaUNBQUssVUFBTDtBQUNJLHNDQUFNLEtBQUssUUFBTCxJQUFpQixLQUFLLE9BQUwsQ0FEM0I7QUFFSSxzQ0FGSjtBQXJCSix5QkFITTtBQTRCTiw2QkFBSyxRQUFMLEdBQWdCLEtBQUssS0FBTCxDQTVCVjtBQTZCTiw2QkFBSyxLQUFMLEdBQWEsR0FBYixDQTdCTTs7Ozt1QkExQkQ7Ozs7O0FBMERiLG9CQUFTLGFBQVQiLCJmaWxlIjoiVGVzdEl0ZW1GaWVsZC5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBUZXN0SXRlbUZpZWxkIHtcblxuICAgIGJlZm9yZVJlZ2lzdGVyKCkge1xuICAgICAgICB0aGlzLmlzID0gJ3NiLXRlc3QtaXRlbS1maWVsZCc7XG4gICAgICAgIHRoaXMucHJvcGVydGllcyA9IHtcbiAgICAgICAgICAgIHZhbHVlOiB7XG4gICAgICAgICAgICAgICAgbm90aWZ5OiB0cnVlXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgZGF0ZVZhbDoge1xuICAgICAgICAgICAgICAgIHZhbHVlIDogJzIwMTYtNS01J1xuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIG51bVZhbDoge1xuICAgICAgICAgICAgICAgIHZhbHVlIDogNTU1XG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgcmVmVmFsOiB7XG4gICAgICAgICAgICAgICAgdmFsdWU6ICdhMFpBMDAwMDAwNzNzRXknXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgbGlzdFZhbDoge1xuICAgICAgICAgICAgICAgIHZhbHVlOiAnMidcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICB0ZXh0VmFsOiB7XG4gICAgICAgICAgICAgICAgdmFsdWU6ICd0b2dnbGUnXG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICB9XG5cbiAgICB0b2dnbGUoKSAge1xuICAgICAgICB2YXIgdHlwZSA9IHRoaXMubW9kZWwubWQudHlwZTtcbiAgICAgICAgbGV0IHZhbDtcbiAgICAgICAgc3dpdGNoKHR5cGUpIHtcbiAgICAgICAgICAgIGNhc2UgJ2Jvb2xlYW4nOlxuICAgICAgICAgICAgICAgIHZhbCA9ICF0aGlzLnZhbHVlO1xuICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgY2FzZSAnZGF0ZSc6XG4gICAgICAgICAgICBjYXNlICdkYXRldGltZSc6XG4gICAgICAgICAgICAgICAgdmFsID0gdGhpcy5wcmV2aW91cyB8fCB0aGlzLmRhdGVWYWw7XG4gICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICBjYXNlICdkb3VibGUnOlxuICAgICAgICAgICAgY2FzZSAnbnVtYmVyJzpcbiAgICAgICAgICAgIGNhc2UgJ2N1cnJlbmN5JzpcbiAgICAgICAgICAgIGNhc2UgJ3BlcmNlbnQnOlxuICAgICAgICAgICAgICAgIHZhbCA9IHRoaXMucHJldmlvdXMgfHwgdGhpcy5udW1WYWw7XG4gICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICBjYXNlICdyZWZlcmVuY2UnOlxuICAgICAgICAgICAgICAgIHZhbCA9IHRoaXMucHJldmlvdXMgfHwgdGhpcy5yZWZWYWw7XG4gICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICBjYXNlICdwaWNrbGlzdCc6XG4gICAgICAgICAgICAgICAgdmFsID0gdGhpcy5wcmV2aW91cyB8fCB0aGlzLmxpc3RWYWw7XG4gICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICBjYXNlICdzdHJpbmcnOlxuICAgICAgICAgICAgY2FzZSAndGV4dGFyZWEnOlxuICAgICAgICAgICAgICAgIHZhbCA9IHRoaXMucHJldmlvdXMgfHwgdGhpcy50ZXh0VmFsO1xuICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICAgIHRoaXMucHJldmlvdXMgPSB0aGlzLnZhbHVlO1xuICAgICAgICB0aGlzLnZhbHVlID0gdmFsO1xuICAgIH1cbn1cblBvbHltZXIoIFRlc3RJdGVtRmllbGQgKTsiXX0=
'use strict';

System.register('common/layout/sb-tabs/test/sb-test-tab-page/TestTabPage.js', [], function (_export, _context) {
	var _createClass, TestTabPage;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('TestTabPage', TestTabPage = function () {
				function TestTabPage() {
					_classCallCheck(this, TestTabPage);
				}

				_createClass(TestTabPage, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-test-tab-page';
					}
				}]);

				return TestTabPage;
			}());

			_export('TestTabPage', TestTabPage);

			Polymer(TestTabPage);
		}
	};
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlRlc3RUYWJQYWdlLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzBCQUFhOzs7Ozs7O3NDQUVLO0FBQ2hCLFdBQUssRUFBTCxHQUFVLGtCQUFWLENBRGdCOzs7O1dBRkw7Ozs7O0FBTWIsV0FBUyxXQUFUIiwiZmlsZSI6IlRlc3RUYWJQYWdlLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIFRlc3RUYWJQYWdlIHtcblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLXRlc3QtdGFiLXBhZ2UnO1xuXHR9XG59XG5Qb2x5bWVyKCBUZXN0VGFiUGFnZSApOyJdfQ==