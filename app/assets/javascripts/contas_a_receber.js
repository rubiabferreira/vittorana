var ready = function () {
  var vencimento = $('#conta_a_receber_vencimento');
  vencimento.datetimepicker(datetimepickerPtBr);
};

$(document).ready(ready);
$(document).on('page:load', ready);


