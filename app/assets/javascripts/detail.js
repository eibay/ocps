window.selectProduct = function() {
$('.products-row').on('click', function(){
    itemClick = $(this).attr("id");
    // alert(itemClick);
    window.location = ROUTES.PRODUCT_PATH + "/" + itemClick;
  });
};