document.addEventListener("DOMContentLoaded", function() {
  var input = document.getElementById("myInput");
  tableFilter();
  input.addEventListener("keyup", function() {
    tableFilter();
  });
});

function tableFilter() {
  var jBaseTable = document.getElementById("jBaseTable");
  var input = document.getElementById("myInput");
  var tr = jBaseTable.getElementsByTagName("tr");
  var filter = input.value.toUpperCase();
  for (var i = 0; i < tr.length; i++) {
    var command = tr[i].getElementsByTagName("td")[0];
    var description = tr[i].getElementsByTagName("td")[2];
    if (command && description) {
      var txtValue = getText(command) + " " + getText(description);
      tr[i].style.display = txtValue.toUpperCase().indexOf(filter) > -1 ? "" : "none";
    }
    if (filter !== "") {
      if (tr[i].id.startsWith("header-")) {
        tr[i].style.display = "none";
      }
    } else {
      if (tr[i].id.startsWith("header-")) {
        tr[i].style.display = "";
      }
    }
  }
}

function getText(td) {
  return td.textContent || td.innerText;
}