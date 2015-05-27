var ready = function () {
  var inicio = $('#evento_inicio');
  var fim = $('#evento_fim');
  inicio.datetimepicker(datetimepickerPtBr);
  fim.datetimepicker(datetimepickerPtBr);
};

$(document).ready(ready);
$(document).on('page:load', ready);

