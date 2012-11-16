$(function() {

	var number = 60;
    var max = 240;

    $.ajax({
        type: "GET",
        dataType: "jsonp",
        cache: false,
        
        //url: "https://api.instagram.com/v1/media/popular/?access_token=248822.f59def8.25cf822ad57d4363ae0e8d04643b302b&count="+number,
        
        url: "https://api.instagram.com/v1/users/248822/media/recent/?access_token=248822.f59def8.25cf822ad57d4363ae0e8d04643b302b",
        success: function(data) 
        {
            for (var i = 0; i < 200; i++) 
            {
            	console.log(data);

        		var olddate = data.data[i].created_time;
        		var date = new Date(olddate*1000);
        		
        		var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
    			var year = date.getFullYear();
     			var month = months[date.getMonth()];
				// hours part from the timestamp
				var day = date.getDate();
				var hours = date.getHours();
				// minutes part from the timestamp
				var minutes = date.getMinutes();
				// seconds part from the timestamp
				var seconds = date.getSeconds();

				// will display time in 10:30:23 format
				var formattedTime = 'on ' + month + ' ' + day + ' ' + year + ' at ' + hours + ':' + minutes + ':' + seconds;
				
/*
				$(".instagram").append("<a href=#>"+"<div class='instagram-placeholder'>"+"<img class='instagram-image' src='" + data.data[i].images.standard_resolution.url +"' /><div class='datedate'>"+"<p>" + formattedTime +"<p/></div></div>"+"</a>");
				
*/
				$(".instagram").append("<div class='instagram-placeholder'>"+"<img class='instagram-image' src='" + data.data[i].images.standard_resolution.url +"' /></div>");
        		
        		//$(".info").append("<div class='datedate'>"+"<p>" + formattedTime +"<p/></div>");
 
            }                         
        }
        });
        });
        
        