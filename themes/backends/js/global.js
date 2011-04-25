$(document).ready(function(){
    $(".buttonUI").button();

    $(".buttonUI").click(function(){
        $(this).blur();
    });
    var base_url = $("meta[name=base_url]").attr('content');

});
