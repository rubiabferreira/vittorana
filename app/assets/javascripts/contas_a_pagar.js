var ready = function () {
  var vencimento = $('#conta_a_pagar_vencimento');
  vencimento.datetimepicker(datetimepickerPtBr);
};

$(document).ready(ready);
$(document).on('page:load', ready);


$(document).ready(function(){
$("#contas_a_pagar_valor").maskMoney({symbol:'R$ ', showSymbol:true, thousands:'.', decimal:',', symbolStay: true});
});


