window._GIPHY = (function() {
    var apiKey = "keIiHci5buJlySHLOXiK7tsB5SDM01ZZ";
    var _results = null;

    return { //public API
        getApiKey: function() {
            return apiKey;
        },
        getResults: function() {
            return _results;
        },
        setResults: function(results) {
          _results = results
        }
    };
}());
