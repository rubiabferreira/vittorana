$(document).ready(function () {
  $('#cliente_estado').change(function () {
    var url = '/estados/' + $(this).val() + '/cidades.json';
    $.getJSON(url, function (data) {
      $('#cliente_cidade').empty();
      $.each(data, function (i, item) {
        $('#cliente_cidade').append('<option value="' + item.id + '">' + item.nome + '</option>');
      });
    });
  });
});
