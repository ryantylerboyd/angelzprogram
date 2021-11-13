$(document).ready(function () {
  $('div').on('change', '#customerdatum_desired_attribute', function () {
    if ((this.value) == 'Other1') {
      $(this).replaceWith($('<input type="text" name="customerdatum[paymenttype]" id="customerdatum_paymenttype">'));
    }
  })
});
$(document).ready(function () {
  $('div').on('change', '#customerdatum_desired_attribute', function () {
    if ((this.value) == 'Other2') {
      $(this).replaceWith($('<input type="text" name="customerdatum[gametype]" id="customerdatum_gametype">'));
    }
  })
});
$(document).ready(function () {
  $('div').on('change', '#gameinstance_gametype', function () {
    //var conceptName = $('#gameinstance_gametype').find(":selected").attr('id');
    var conceptNameGames = $('#gameinstance_gametype :selected').val();//gets the selected id value
    $.getJSON("http://localhost:3000/gametypes/" + conceptNameGames + ".json", function (json) {//loads the json data
      console.log("JSON Data: " + json.gametype + " " + json.multiplier);//prints to console
      $('#gameinstance_multiplier').val(json.multiplier);//changes the multipler data
      $('#gameinstance_commission').val(json.commission);
    });
  })
});
$(document).ready(function () {
  $('div').on('change', '#gameinstance_paymentname', function () {
    var conceptNameCrypto = $('#gameinstance_paymentname :selected').val();//gets the selected id value
    $.getJSON("http://localhost:3000/paymenttypes/" + conceptNameCrypto + ".json", function (json) {//loads the json data
      console.log("JSON Data: " + json.paymentname + " " + json.currentprice + " " + json.crypto + " " + json.cryptourl);//prints to console
      //$('#gameinstance_multiplier').val(json.multiplier);//changes the multipler data
      if (json.crypto) {
        $.getJSON(json.cryptourl, function (json) {
          console.log("JSON Data: " + json.price)
          $('#gameinstance_currentprice').val(0);
          $('#gameinstance_cryptoprice').val(json.price);
          $('#gameinstance_crypto').prop("checked", true);
        })
      } else {
        $('#gameinstance_currentprice').val(json.currentprice);
        $('#gameinstance_cryptoprice').val(0);
        $('#gameinstance_crypto').prop("checked", false);
      }
    });
  })
});
$(document).ready(function () {
  $('div').on('click', '#gameinstance_result', function () {
    var conceptNameOutcome = document.querySelector('#gameinstance_outcome').value;
    if (conceptNameOutcome == "true") {
      var data = [];
      var results = 0;
      data.push(document.querySelector('#gameinstance_betamount').value);
      data.push(document.querySelector('#gameinstance_multiplier').value);
      data.push(document.querySelector('#gameinstance_commission').value);
      data.push(document.querySelector('#gameinstance_currentprice').value);
      data.push(document.querySelector('#gameinstance_cryptoprice').value);
      var results = ((parseFloat(data[0]) * parseFloat(data[1])) * ((100 - data[2]) * 0.01));
      $('#gameinstance_result').val(results);
      console.log("JSON Data: " + data + "    " + results);
      console.log("JSON Data: " + conceptNameOutcome);
    } else {
      console.log("JSON Data: " + conceptNameOutcome);
      $('#gameinstance_result').val(0);
    };
  });
});