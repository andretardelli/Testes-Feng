$(document).ready(function() {
    $('.selectpicker').selectpicker({
        style: 'btn-default',
        size: false,
    });

     $('#InputCPF').mask('999.999.999-99');
     $('#InputCPF1').mask('999.999.999-99');
     $('#Cartao').mask('9999 9999 9999 9999');
});