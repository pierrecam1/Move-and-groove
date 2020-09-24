$('#challenge_activity, #post_activity').change(function () {
    $('#myAnswers > div').addClass("fixtures");
    $('#myAnswers').find('.' + $(this).val()).removeClass("fixtures");
});


$('.fade-out').delay(1500).slideUp(300)