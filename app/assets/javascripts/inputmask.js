<script src="jquery.js" type="text/javascript"></script>
<script src="inputmask.js" type="text/javascript"></script>
<script src="jquery.inputmask.js" type="text/javascript"></script>

$(document).ready(function(){
   $(selector).inputmask("99-9999999");  //static mask
   $(selector).inputmask("mask", {"mask": "(999) 999-9999"}); //specifying fn & options
   $(selector).inputmask({"mask": "99-9999999"}); //specifying options only
   $(selector).inputmask("9-a{1,3}9{1,3}"); //mask with dynamic syntax
});

$(document).ready(function(){
   $("#example1").inputmask("99-9999999");
   $("#example2").inputmask("Regex");
});