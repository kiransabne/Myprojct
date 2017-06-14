// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
//  $(document).ready(function() {
//  	$('#product_category_id').change(function(){
//  	var category= this.value;
//               console.log("fdsfd")
//     $.ajax({
//     	type: 'GET',
//     	data: {category: category},
//     	url: 'find_subcategory',
//     	success: function(data) {
//     	console.log("fdsfd")   
// 			console.log(data);
// 			$('#sub_cat').html(data);
// 			}
// 		});
//  });

// });
$(document).ready(function() {

 $('#product_category_id').change(function() {
 		var category_id= this.value;
    
 			$.ajax({
			    type: 'GET',
			    data: {category_id: category_id},
			    url: "find_sub_category",
			    success: function(data) {
			     console.log("fdsfd")   
			    	console.log(data);
			        $('#sub_cat').html(data);
			    }
			});
 	});
  // $('#order_item_quantity').keyup(function(){
  // 	console.log("fdsfd")

  // });
	$(document).on('keyup', '#order_item_quantity', function(){
   var quantity= this.value;
   console.log(quantity)
     var hv = $(this).parent().parent().find("#order_item_price").val();
     console.log(hv)
      var product_id = $(this).parent().parent().find("#order_item_product").val();
      console.log(product_id)
     var order_id = $(this).parent().parent().find("#order_item_id").val();
      console.log(order_id);
       total= Number(hv)*Number(quantity);
        console.log(total);
     $(this).parent().parent().find(".total_price").text(total);
     
   var grandtotal = 0;
   $(".total_price").each(function() {
      grandtotal += Number($(this).text());
      console.log("ramya")
      console.log(grandtotal)
     });
   
    $('.grand_total').text(grandtotal);
     $.ajax({
          type: 'GET',
          data: {quantity: quantity,price: hv, product_id
            : product_id,order_id: order_id, total: total},
          url: "order_items/find_total",
          success: function(data) {   
            console.log("fdsfd")
            console.log(data);
              $('.total_price').val(data);
          }
      });

	});
});

