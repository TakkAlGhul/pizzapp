$(function () {
  $('.review-btn').on('click', function() {
    $('.posts').fadeIn(200);
  });

  $('.post_close').on('click', function () {
    $('.posts').fadeOut(200);
  });

})

// $(function () {
//   function buildHTML(review) {
//     var html = `<div class="review">
//                   <div class="review-user">
//                     <img class="review-user__avatar" src=${review.img}>
//                   </div>
//                   <div class="review-field">
//                     <div class="review-field__name">${review.user_name}</div>
//                     <div class="review-field__text">${review.text}</div>
//                   </div>
//                 </div>`
//        return html;
//   }


//   $('#new_review').on('submit', finction(e) {
//     e.preventDefault();
//     var formData = new FormData(this);
//     var url = $(this).attr('action')

//     $.ajax({
//       url: url,
//       type: "POST",
//       data: formData,
//       dataType: 'json',
//       processData: false,
//       contentType: false 
//     })
//     .done(function(data) {
//       var html = buildHTML(data);
//       $('.reviews').append(html)
//       $('.review_field').val('')
//     })
//     .fail(function() {
//       alart('error');
//     })
//   })
// })
