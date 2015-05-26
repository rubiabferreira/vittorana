var ready = function () {
  var containerEstado = $('#cliente_estado_id');
  var containerCidade =$('#cliente_cidade_id');
  carregaCidades(containerEstado, containerCidade);
};

$(document).ready(ready);
$(document).on('page:load', ready);
