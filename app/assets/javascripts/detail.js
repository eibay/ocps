window.selectProduct = function() {
$('.products-row').on('click', function(){
    itemClick = $(this).attr("id");
    sendParams(itemClick);
    window.location = ROUTES.PRODUCT_PATH + "/" + itemClick;
  });
};

function sendParams(id){
  $.ajax({
    url: '/products/',
    // type: 'get',
    data : { data_value: JSON.stringify(id) }
  });
}


