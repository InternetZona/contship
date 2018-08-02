
function _form() {
  var forms = document.querySelectorAll('form');

  if (forms !== null) {

    [].forEach.call(forms, function(form) {

      var rules = {
        agree: {
          required: true
        }
      };

      switch (form.name) {
        case 'callback':
          rules.phone = {
            required: true
          }
          break;
        case 'request':
          rules.email = {
            required: true,
            email: true
          }
          break;
        case 'feedback':
          rules.phone = {
            require_from_group: [1, ".require-group"]
          };
          rules.email = {
            require_from_group: [1, ".require-group"],
            email: true
          };
          break;
        default:
      }

      var validator = {
        ignore: [],
        submitHandler: function(form)   {

          var $form = $(form),
            data = $form.serialize() + '&template=' + $form.attr('name');

          $.ajax({
            url: 'assets/components/modxsite/connectors/connector.php',
            method: 'post',
            data: data,
            beforeSend: function() {
              $form.find('[type="submit"]')
                .prop('disabled', true);
            },
            success: function(response) {

              if (response.success) {

                M.toast({
                  html: 'Сообщение успешно отправлено!'
                });

                var modal = form.closest('.modal');

                if (modal !== null) {
                  var modalInstance = M.Modal.getInstance(modal);

                  modalInstance.close();
                }

                $form.trigger('reset');

              } else {
                M.toast({
                  html: 'Ошибка отправки запроса.'
                });
              }
            },
            error: function(XMLHttpRequest, textStatus, errorThrown){
              M.toast({
                html: 'Ошибка отправки запроса.'
              });
            },
            complete: function() {
              $form.find('[type="submit"]')
                .prop('disabled', false);
            }
          });

          return false;
        },
        focusCleanup: true,
        errorPlacement: function(error, element) {
          element.parent()
            .append(error);
          return true;
        },
        focusInvalid: false,
        errorClass: 'error',
        validClass: '',
        errorElement: 'span',
        rules: rules,
        messages: {
          phone: {
            require_from_group: "Укажите ваш номер телефона.",
            required: "Укажите ваш номер телефона."
          },
          email: {
            require_from_group: "Укажите ваш E-mail.",
            required: "Укажите ваш E-mail.",
            email: "Неправильный формат электронной почты."
          },
          comment: {
            required: "Напишите текст вашего сообщения."
          },
          agree: {
            required: "Подтвердите согласие с политикой сайта."
          }
        }
      };


      $(form).validate(validator);

    });
  }
}