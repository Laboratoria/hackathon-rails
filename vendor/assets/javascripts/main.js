$(window).load(function() {
  hideLoading();
  initNotifications();
});

function hideLoading() {
  $('.loading-container').remove();
  $('.hide-until-loading').removeClass('hide-until-loading');
}

function initNotifications() {
  var type = $('#notif-type').val();
  var message = $('#notif-msg').val();
  var duration = $('#notif-duration').val();

  if (type === 'success') {
    alertify.success(message, duration);
  } else if (type === 'alert') {
    alertify.error(message, duration);
  } else if (type === 'message') {
    alertify.message(message, duration);
  }
}
