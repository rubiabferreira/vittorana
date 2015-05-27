// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.inputmask
//= require jquery.inputmask.extensions
//= require jquery.inputmask.numeric.extensions
//= require jquery.inputmask.date.extensions
//= require datetimepicker
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

var datetimepickerPtBr = {
  lang:'ptBR',
  i18n:{
    ptBR:{
      months:['Janeiro','Fevereiro','Março','Abril',
         'Maio','Junho','Julio','Agosto', 'Setembro',
         'Outubro','Novembro','Dezembro', ],
      dayOfWeek:["Dom", "Seg", "Ter", "Qua",
          "Qui", "Sex", "Sab", ]
    }
  },
  timepicker:true,
  format:'d-m-Y H:i'
};

function carregaCidades (containerEstado, containerCidade) {
  containerEstado.change(function () {
    var url = '/estados/' + $(this).val() + '/cidades.json';
    $.getJSON(url, function (data) {
      containerCidade.empty();
      $.each(data, function (i, item) {
        containerCidade.append('<option value="' + item.id + '">' + item.nome + '</option>');
      });
    });
  });
};
