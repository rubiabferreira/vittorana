var ready = function () {
  var containerEstado = $('#cliente_estado_id');
  var containerCidade =$('#cliente_cidade_id');
  carregaCidades(containerEstado, containerCidade);
  carregaValidacoes();
};

var carregaValidacoes = function () {
  $('#cliente_cep').inputmask("99.999-999");
  $('#cliente_tresidencial').inputmask("(99) 9999-9999");
  $('#cliente_cpf').inputmask("999.999.999-99");
  $('#cliente_tcelular').inputmask("(99) 9999-9999");
};


$(document).ready(ready);
$(document).on('page:load', ready);
