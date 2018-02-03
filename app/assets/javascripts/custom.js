function show_alert(text)
{
  alert(text);
}

function search(data){
  alert('Search' + data)
}

function submit(){
  var form = document.getElementById("search");
  console.log(form);
  alert('Entrei');
  document.getElementById("filtersubmit").addEventListener("click", function () {
  
  form.submit();
});
}


function initMap() {
        let eventmap = $('#map');
        let eventlocation = {lat: eventmap.data('latitude'), lng: eventmap.data('longitude')};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: eventlocation
        });
        var marker = new google.maps.Marker({
          position: eventlocation,
          map: map
        });
      }