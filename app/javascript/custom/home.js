$(function () {
    $('#challenge_activity').change(function () {
        $('#myAnswers > div').hide();
        $('#myAnswers').find('.' + $(this).val()).fadeIn(200);
    });
});