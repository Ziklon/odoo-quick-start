odoo.define('om_your_module.inline_validation', function (require) {
  "use strict";

  var FormRenderer = require('web.FormRenderer');

  FormRenderer.include({
      _onInputChange: function (event) {
          this._super.apply(this, arguments);
          var $input = $(event.target);
          var fieldName = $input.attr('name');

          if (fieldName === 'first_name') {
              this._validateFirstName($input);
          }
      },

      _validateFirstName: function ($input) {
          var value = $input.val();
          var $error = $input.next('.o_inline_validation_error');
          if (!$error.length) {
              $error = $('<div>', { class: 'o_inline_validation_error text-danger' });
              $input.after($error);
          }

          if (!value || value.trim() === '') {
              $error.text('First Name cannot be empty.');
          } else {
              $error.text('');
          }
      }
  });
});