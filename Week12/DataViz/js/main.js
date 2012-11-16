
	
function onPageReady() {
var c=document.getElementById("myCanvas");
var ctx=c.getContext("2d");
ctx.stroke();

	var myData = [
	
				{
				"type": "apple",
            	"amount":50
        		},
        		{
				"type": "peach", 
            	"amount":30
        		},
        		{
				"type": "apricot", 
            	"amount":20
        		},
  

		];	 	 
	
	
	for(var i=0; i<myData.length; i++){
		var divSize = myData[i].amount;
		var divType = myData[i].type;
		
		
		$('#data').append('<div class="box'+i+'">' + divSize + '</div>');
		
		$('.box'+i).css({'width' : divSize*4, 'height' : divSize*4, 'background' : '#666', 'margin': '2px', 'float':'left' });
		
		/* ctx.strokeRect(divSize*5, 0, divSize*5, divSize*5); */
		

	}
	
	ctx.strokeRect(20, 0, 300, 200);

}			


$(document).ready(onPageReady);
