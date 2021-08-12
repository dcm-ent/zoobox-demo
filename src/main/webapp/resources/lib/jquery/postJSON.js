(function ($) {
    $.extend({
        postJSON: function (url, jsonData, success, options) {
            var config = {
                url: url,
                type: "POST",
                data: jsonData ? JSON.stringify(jsonData) : null,
                dataType: "json",
                timeout: 10000 * 5,
                contentType: "application/json; charset=utf-8",
                success: success 
            };
            
            $.ajax($.extend(options, config));
        }
    });
})(jQuery);