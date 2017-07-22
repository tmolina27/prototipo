<!DOCTYPE html> 
  <head> 
  
    <!--Load the AJAX API--> 
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> 
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> 
    <script type="text/javascript"> 
     
    // Load the Visualization API and the piechart package. 
    google.charts.load('current', {'packages':['corechart']}); 
       
    // Set a callback to run when the Google Visualization API is loaded. 
    google.charts.setOnLoadCallback(drawChart); 
    google.charts.setOnLoadCallback(drawChartTF);
       
    function drawChart() { 
      var jsonData = $.ajax({ 
          url: "<?php echo base_url() . 'index.php/chart/getdata' ?>", 
          dataType: "json", 
          async: false 
          }).responseText; 
           
      // Create our data table out of JSON data loaded from server. 
      var data = new google.visualization.DataTable(jsonData); 
 
      // Instantiate and draw our chart, passing in some options. 
      var chart = new google.visualization.LineChart(document.getElementById('chart_div')); 
      chart.draw(data); 
      
      var options2 = {
        hAxis: {title: 'Años'},
        vAxis: {title: 'Numero de patentes'},
        bubble: {textStyle: {fontSize: 11}}
      };

      var chart2 = new google.visualization.ColumnChart(document.getElementById('chart_div2'));
      chart2.draw(data, options2);
      
      }
      
      
       function drawChartTF() { 
      var topfive = $.ajax({ 
          url: "<?php echo base_url() . 'index.php/chart/gettopfive' ?>", 
          dataType: "json", 
          async: false 
          }).responseText; 
      
           var dataTF = new google.visualization.DataTable(topfive); 

           
      var optionsTF = {
          title: 'Los años en lo que se inscribieron mas patentes',
           is3D: true,
           pieSliceText: 'label'
        };

        var chartTF = new google.visualization.PieChart(document.getElementById('piechart'));

        chartTF.draw(dataTF, optionsTF);
      
      }
 
    </script> 
<style> 
h1 { 
    text-align: center; 
} 
</style> 
  </head> 
 
  <body class="text-center">
           <div style="align-content: center">

    <!--Div that will hold the pie chart--> 
    <h1>Avance de patentes por año</h1> 
    <div class="text-center" id="chart_div"></div>
    <h1>Grafico de barras</h1> 
    <div class="text-center" id="chart_div2"></div>
    <h1>Torta</h1> 
    <div class="text-center" id="piechart" style="width: 900px; height: 500px;"></div>
           </div>
  </body> 
</html> 

