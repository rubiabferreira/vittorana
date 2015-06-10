$(document).ready(function () {
  var containerEstado = $('#fornecedor_estado');
  var containerCidade =$('#fornecedor_cidade');
  carregaCidades(containerEstado, containerCidade);
});

var carregaValidacoes = function () {
  $('#fornecedores_cep').inputmask("99.999-999");
  $('#fornecedores_tresidencial').inputmask("(99) 9999-9999");
  $('#fornecedores_cnpj').inputmask("999.999.999-99");
  $('#fornecedores_tcelular').inputmask("(99) 9999-9999");
};


$(document).ready(ready);
$(document).on('page:load', ready);