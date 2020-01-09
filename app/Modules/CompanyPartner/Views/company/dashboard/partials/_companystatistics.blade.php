
<div class="card-header"> 
    <i class="fas fa-chart-line"></i> Στατιστικά 
    <div id="reportrange" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc; float:right;">
        <i class="fa fa-calendar"></i>&nbsp;
        <span></span> <i class="fa fa-caret-down"></i>
    </div>
</div>
<div class="card-body" >
    <div class="row">
        <div class="col-md-2 chart-legend visitors selected" type="visitors">
            <div class='legend-title' style="color:#707070;"> Επισκέπτες </div>
            <div class='count-number' id="visitors_count"> </div>
        </div>
        <div class="col-md-2 chart-legend newvisitors selected" type="newvisitors">
            <div class='legend-title' style="color:#707070;">Νέοι Επισκέπτες</div>
            <div class='count-number' id="newvisitors_count"></div>
        </div>
        <div class="col-md-2 chart-legend star selected" type="star">
            <div class='legend-title'> <i class="fa fa-star" style="color: #00C5F9; "></i></div>
            <div class='count-number' id="star_count"></div>
        </div>
        <div class="col-md-2 chart-legend clap selected" type="clap">
            <div class='legend-title'><i class="fas fa-sign-language" style="color:#FCD130;"></i></div>
            <div class='count-number' id="clap_count"></div>
        </div>
        <div class="col-md-2 chart-legend heart selected" type="heart">
            <div class='legend-title'><i class="fas fa-heart" style="color:#E780B3;"></i></div>
            <div class='count-number' id="heart_count"></div>
        </div>
        <div class="col-md-2 chart-legend coins selected" type="coins">
            <div class='legend-title'><i class="fas fa-coins" style="color:#707070;"></i></div>
            <div class='count-number' id="coins_count"></div>
        </div>
    </div>
    <div class="row" style="padding: 10px;">
		<canvas id="chart"></canvas>
	</div>
</div>


@push("external-styles")
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.css">
@endpush


@push("scripts")
<script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.js"></script>
<!-- Date Range Component -->
<script type="text/javascript">
    $(function() {
    
        var daterange = {
            start: moment().subtract(29, 'days'),
            end: moment(),
            isfetch: false
        };

        function cb(start, end) {
            daterange.start = start;
            daterange.end = end;
    
            // if it is fetching data from back-end, return
            if(daterange.isfetch == true)
                return;
    
            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            daterange.isfetch = true;
            $.get("{{route('company.statistics.get')}}", 
                    {
                        partner_id: {{Auth::user()->id}}, 
                        start_date: start.format("YYYY-M-D"), 
                        end_date: end.format("YYYY-M-D")
                    }
                )
                .done((response) => {
                    console.log("company statistics data", response);
                    daterange.isfetch = false;
                    $("#chart").trigger("updatechart", {data: response});
                })
                .fail((err) => {
                    console.log("company statistics error", err);
                    daterange.isfetch = false;
                });
        }
    
        $('#reportrange').daterangepicker({
            startDate: daterange.start,
            endDate: daterange.end
        }, cb);
    
        cb(daterange.start, daterange.end);
    
    });
</script>
<!-- Chart legend hover css -->
<script type="text/javascript">
    window.chartColors = {
        visitors: 'rgb(255, 99, 132)',
        newvisitors: 'rgb(255, 159, 64)',
        star: 'rgb(255, 205, 86)',
        clap: 'rgb(75, 192, 192)',
        heart: 'rgb(54, 162, 235)',
        coins: 'rgb(153, 102, 255)'
    };

    $(document).ready(e => {
        $(".chart-legend").each(function(){
            if($(this).hasClass("selected"))
            {
                let color = window.chartColors[$(this).attr("type")];
                $(this).css("border-bottom", "3px solid " + color);
            }            
        })
        $(".chart-legend").hover(function(){
            let color = window.chartColors[$(this).attr("type")];
            $(this).css("border-bottom", "3px solid " + color);
        },
        function(){
            if(!$(this).hasClass("selected"))
                $(this).css("border-bottom", "3px solid #EEEEEE");
        });

        $(".chart-legend").click(function(e){
            if($(this).hasClass("selected"))
            {
                $(this).removeClass("selected");
                $("#chart").trigger("updatelegend", {show: false, type: $(this).attr("type")});
            }
            else
            {
                $(this).addClass("selected");
                $("#chart").trigger("updatelegend", {show: true, type: $(this).attr("type")});
            }
            
            if($(this).hasClass("selected"))
            {
                let color = window.chartColors[$(this).attr("type")];
                $(this).css("border-bottom", "3px solid " + color);
            }
            else
            {
                $(this).css("border-bottom", "3px solid #EEEEEE");
            }
        });
    });
</script>
<!-- Chart Data Utilities -->
<script type="text/javascript">
    function getChartsDatasets(data)
    {
        var datasets = [[], [], [], [], [], []];
        var total_visit = 0, 
            total_newvisit = 0,
            total_star = 0,
            total_clap = 0,
            total_love = 0,
            total_money  =0;

        for(var i = 0 ; i < data.length ; i++)
        {
            var date = moment(data[i].date).valueOf();

            datasets[0].push({x: date, y: data[i].visit});
            datasets[1].push({x: date, y: data[i].new_visit});
            datasets[2].push({x: date, y: data[i].star});
            datasets[3].push({x: date, y: data[i].clap});
            datasets[4].push({x: date, y: data[i].love});
            datasets[5].push({x: date, y: data[i].money});

            total_visit += data[i].visit;
            total_newvisit += data[i].new_visit;
            total_star += data[i].star;
            total_clap += data[i].clap;
            total_love += data[i].love;
            total_money += data[i].money;
        }

        $("#visitors_count").text(total_visit);
        $("#newvisitors_count").text(total_newvisit);
        $("#star_count").text(total_star);
        $("#clap_count").text(total_clap);
        $("#heart_count").text(total_love);
        $("#coins_count").text(total_money);

        return datasets;
    } 
</script>
<!-- Chart Comport -->



<script type="text/javascript">    

    var color = Chart.helpers.color;
    var ctx = document.getElementById('chart').getContext('2d');
    ctx.canvas.width = 1000;

		ctx.canvas.height = 250;
    var cfg = {
        data: {
            datasets: [
                {
                    label: 'Επισκέπτες',
                    backgroundColor: color(window.chartColors.visitors).alpha(0.5).rgbString(),
                    borderColor: window.chartColors.visitors,
                    type: 'bar',
                    pointRadius: 1,
                    fill: true,
                    lineTension: 1,
                    borderWidth: 2
                },
                {
                    label: 'Νέοι Επισκέπτες',
                    backgroundColor: color(window.chartColors.newvisitors).alpha(0.5).rgbString(),
                    borderColor: window.chartColors.newvisitors,
                    type: 'bar',
                    pointRadius: 1,
                    fill: true,
                    lineTension: 1,
                    borderWidth: 2
                },
                {
                    label: 'Αστέρια',
                    backgroundColor: color(window.chartColors.star).alpha(0.5).rgbString(),
                    borderColor: window.chartColors.star,
                    type: 'bar',
                    pointRadius: 1,
                    fill: true,
                    lineTension: 1,
                    borderWidth: 2
                },
                {
                    label: 'Χειροκροτήματα',
                    backgroundColor: color(window.chartColors.clap).alpha(0.5).rgbString(),
                    borderColor: window.chartColors.clap,
                    type: 'bar',
                    pointRadius: 1,
                    fill: true,
                    lineTension: 1,
                    borderWidth: 2
                },
                {
                    label: 'Αγαπημένα',
                    backgroundColor: color(window.chartColors.heart).alpha(0.5).rgbString(),
                    borderColor: window.chartColors.heart,
                    type: 'bar',
                    pointRadius: 1,
                    fill: true,
                    lineTension: 1,
                    borderWidth: 2
                },
                {
                    label: 'Πόντους',
                    backgroundColor: color(window.chartColors.points).alpha(0.5).rgbString(),
                    borderColor: window.chartColors.points,
                    type: 'bar',
                    pointRadius: 1,
                    fill: true,
                    lineTension: 1,
                    borderWidth: 2
                }
            ]
        },
        options: {
            legend: {
                display: false
            },
            animation: {
                duration: 100
            },
            scales: {
                xAxes: [{
                    type: 'time',
                    distribution: 'series',
                    offset: true,
                    ticks: {
                        major: {
                            enabled: true,
                            fontStyle: 'bold'
                        },
                        source: 'data',
                        autoSkip: true,
                        autoSkipPadding: 75,
                        maxRotation: 0,
                        sampleSize: 100
                    },
                    afterBuildTicks: function(scale, ticks) {
                    }
                }],
                yAxes: [{
                    gridLines: {
                        drawBorder: false
                    },
                    scaleLabel: {
                        display: true,
                        labelString: 'Γενικές Πληροφορίες (επιχείρησης)'
                    }
                }]
            },
            tooltips: {
                intersect: false,
                mode: 'index',
                callbacks: {
                    label: function(tooltipItem, myData) {
                        var label = myData.datasets[tooltipItem.datasetIndex].label || '';
                        if (label) {
                            label += ': ';
                        }
                        label += parseFloat(tooltipItem.value).toFixed(2);
                        return label;
                    }
                }
            }
        }
    };

    var chart = new Chart(ctx, cfg);

    $("#chart").on("updatechart", function(e, response){
        console.log("updatechart", response.data);

        var datasets = getChartsDatasets(response.data);
        for(var i = 0 ; i < datasets.length ; i++)
        {
            chart.config.data.datasets[i].data = datasets[i];
        }
        chart.update();
    });

    $("#chart").on("updatelegend", function(e, data){
        var meta;
        switch(data.type)
        {
        case "visitors":
            meta = chart.getDatasetMeta(0);
            break;
        case "newvisitors":
            meta = chart.getDatasetMeta(1);
            break;
        case "star": 
            meta = chart.getDatasetMeta(2);
            break;
        case "clap":
            meta = chart.getDatasetMeta(3);
            break;
        case "heart": 
            meta = chart.getDatasetMeta(4);
            break;
        case "coins": 
            meta = chart.getDatasetMeta(5);
            break;
        }
        meta.hidden = !data.show;
        chart.update();
    });
    
</script>

@endpush
