setTimeout(function() {
  var link = document.getElementById("link").innerHTML;
  link.replace("amp;", "");
  var cleanLink = link.replace(/\b(amp;)\b/gi, '');
  window.location.href = cleanLink;
}, 1000);