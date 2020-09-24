$('#challenge_activity, #post_activity').change(function () {
    $('#myAnswers > div').addClass("fixtures");
    $('#myAnswers').find('.' + $(this).val()).removeClass("fixtures");
});

$('#select-activity').change(function () {
    $('.myAnswers').slideUp(200);
    $('.' + $(this).val()).slideDown(200);
});


$('.fade-out').delay(3500).slideUp(300)