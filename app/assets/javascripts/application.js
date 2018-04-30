// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require jquery
//= require jquery-ui
//= require rails-ujs
//= require dataTables/jquery.dataTables
//= require jquery.turbolinks
//= require activestorage
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .

$(document).ready(function(){
    console.log("ready");
});

function getStuff(){
    var c = document.location.href;
    c += ".json";
    $.getJSON(c, function(result){
        for(year of result.years){
            var currentYear = document.createElement('div');
            currentYear.className = "year";
            title = document.createElement('p');
            title.className = "title";
            title.textContent = (year.year).toString() + " - " + (year.year + 1).toString();
            currentYear.appendChild(title); 
            var j = 0;
            for(term of year.terms){
               var currentTerm = document.createElement('div');
               switch (j){
                  case 0:
                     currentTerm.className = "semesterOne";
                  break;
                  case 1:
                     currentTerm.className = "semesterTwo";
                  break;
                  case 2:
                     currentTerm.className = "semesterThree";
                  break;
               }
               currentTerm.style.height = "150px";
               j++;
               currentYear.appendChild(currentTerm);
               var credits = 0;
               var termCredits = document.createElement('p');
               currentTerm.appendChild(termCredits);
               for(courses of term.courses){
                  credits += courses.credits;
                  var courseEntry = document.createElement('p');
                  courseEntry.textContent = courses.designator + " | " + courses.name + " | " + courses.credits.toString();
                  currentTerm.appendChild(courseEntry);
               }
               termCredits.textContent = "Total Credits: " + credits.toString();
            }
            document.getElementById("rightUp").appendChild(currentYear); 
        } 
        c = "http://localhost:3000/catalogs/";
        c += result.catalog_id + ".json";
    
        $.getJSON(c, function(catalog){
            for(course of catalog.courses){
            tableRow = document.createElement('tr');
            tableCol1 = document.createElement('td');
            tableCol1.textContent = course.designator;
            tableRow.append(tableCol1);
            tableCol2 = document.createElement('td');
            tableCol2.textContent = course.name;
            tableRow.append(tableCol2);
            tableCol3 = document.createElement('td');
            tableCol3.textContent = course.description;
            tableRow.append(tableCol3);
            tableCol4 = document.createElement('td');
            tableCol4.textContent = course.credits;
            tableRow.append(tableCol4);
            document.getElementById("tabBody").appendChild(tableRow);

            }
            $("#tab").DataTable();
        });   
    });

}