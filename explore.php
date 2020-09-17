<!DOCTYPE html>
<html lang="en">

<?php
$pathinfo = $_SERVER['PATH_INFO'];
if(preg_match("/\/([\w_]+)/si", $pathinfo, $path)){
  $subject = $path[1];
}
function get_award($subject)
{
  $awards = array(
    'physics'=>'The Nobel Prize in Physics',
    'chemistry'=>'The Nobel Prize in Chemistry',
    'medicine'=>'The Nobel Prize in Physiology or Medicine',
    'economic_sciences'=>'The Sveriges Riksbank Prize in Economic Sciences in Memory of Alfred Nobel',
    'computer_science_turing'=>'The ACM A.M. Turing Award',
    'computer_science_acm'=>'The ACM Prize in Computing',
    'mathematics_fields'=>'The Fields Medal',
    'mathematics_abel'=>'The Abel Prize',
    'mathematics_nevanlinna'=>'The Rolf Nevanlinna Prize'
  );
  return $awards[$subject];
}
function display_country($subject)
{
  $nobel_prize = array('physics', 'chemistry', 'medicine', 'economic_sciences');
  return in_array($subject, $nobel_prize);
}
function get_all($result, $param_subject)
{
  $output = '';
  for ($info = mysqli_fetch_array($result); $info; $info = mysqli_fetch_array($result))
  {
    $name = $info['name'];
    $award = $info['award'];
    $year = $info['year'];
    $output = $output . "<h5><a href=\"../facts.php/$param_subject/$name\">$name</a></h5>" . 
              "<p>$award $year</p>";
  }
  return $output;
}
?>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title><?php echo get_award($subject) ?> - Moments in History Project</title>

  <!-- Bootstrap Core CSS -->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&display=swap"
    rel="stylesheet" type="text/css">
  <link href="../vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="../css/stylish-portfolio.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Navigation -->
  <a class="menu-toggle rounded" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="../index.html">Home</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="../about.html">About</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="../explore.html">Explore</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="../search.html">Search</a>
      </li>
    </ul>
  </nav>

  <!-- Header -->
  <header class="masthead" style="height: 30%">
    <div class="container text-center my-auto">
      <h1 class="mb-1 text-light"><?php echo get_award($subject) ?></h1>
      <h3 class="mb-5 text-light">
        <em>Moments in History</em>
      </h3>
    </div>
    <div class="overlay"></div>
  </header>

  <!-- Introduction -->
  <section class="content-section bg-primary text-white">
    <div class="container">
      <div class="row">
        <div class="col-lg-10 mx-auto">
          <h1 class="text-center mb-5">About the prize</h1>
          <?php
            $info_link = mysqli_connect("127.0.0.1:3306", 'ee101', 'ee101', 'subject_info');
            $info_link->set_charset("utf8");
            $intro_result = mysqli_query($info_link, "SELECT * from introduction where subject='$subject'");
            $intro = mysqli_fetch_array($intro_result);
            echo $intro['introduction'];
          ?>
        </div>
      </div>
    </div>
  </section>

  <!-- Charts -->
  <section class="content-section bg-white">
    <div class="container">
      <div class="row">
        <div class="col-lg-10 mx-auto">
          <h1 class="text-center mb-5">Data in charts</h1>
          <h2 class="text-center">Winners by their ages</h2>
          <div id="ages-chart" style="height: 400px"></div>

          <h2 class="text-center">Winners by their countries</h2>
          <h5 class="text-center">Note: Click on one of the countries to filter the winners.</h5>
          <div id="countries-chart" style="height: 600px"></div>
          
          <h2 class="text-center">Hot words in <?php echo get_award($subject) ?></h2>
          <h5 class="text-center">Note: Click on one of the words to filter the winners.</h5>
          <div id="words-chart" style="height: 650px"></div>
        </div>
      </div>
    </div>
  </section>

  <!-- List -->
  <section class="content-section bg-light">
    <div class="container">
      <div class="col-lg-10 mx-auto" id="result">
        <h1 class="text-center mb-5">List of winners in alphabetical order</h1>
        <?php
          $link = mysqli_connect("127.0.0.1:3306", 'ee101', 'ee101', 'subject_awards');
          $link->set_charset("utf8");
          $result = mysqli_query($link, "SELECT * from $subject");
          $output = get_all($result, $subject);
          echo $output;
        ?>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="footer text-center">
    <div class="container">
      <ul class="list-inline mb-5">
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white" href="https://github.com/junqi-xie/Moments-in-History">
            <i class="icon-social-github"></i>
          </a>
        </li>
      </ul>
      <p class="text-muted small mb-0">Copyright &copy; 2020 Moments in History Project</p>
    </div>
  </footer>

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Bootstrap core JavaScript -->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="../js/stylish-portfolio.js"></script>

  <!-- Echarts JavaScript -->
  <script src="../vendor/echarts/echarts.min.js"></script>
  <script src="../vendor/echarts/walden.js"></script>

  <!-- Custom scripts for charts -->
  <?php
    $ages_result = mysqli_query($info_link, "SELECT * from ages where subject='$subject'");
    $ages = mysqli_fetch_array($ages_result);
  ?>
  <script>
    var ages_dom = document.getElementById("ages-chart");
    var ages_chart = echarts.init(ages_dom, 'walden');
    option = {
      tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'shadow'
        }
      },
      xAxis: {
        type: 'category',
        data: <?php echo $ages['labels']; ?>
      },
      yAxis: {
        type: 'value'
      },
      series: [{
        data: <?php echo $ages['values']; ?>,
        type: 'bar'
      }]
    };
    if (option && typeof option === "object") {
      ages_chart.setOption(option, true);
    }
  </script>

  <?php
    $countries_result = mysqli_query($info_link, "SELECT * from countries where subject='$subject'");
    $countries = mysqli_fetch_array($countries_result);
  ?>
  <script>
    function get_number(country) {
      var result = 0;
      $.ajax({
        url: '../search_subject.php',
        type: "post",
        data: {
            subject: "<?php echo "$subject" ?>",
            domain: "country",
            keywords: country
        },
        async: false,
        success: function(data) {
            result = data.hits.total.value;
        },
        dataType: "json"
      });
      return result;
    }

    country_legend = <?php echo $countries['country_legend']; ?>
    
    country_data = []
    for (i = 0; i < country_legend.length; ++i)
      country_data[i] = { value: get_number(country_legend[i]), name: country_legend[i] }

    var countries_dom = document.getElementById("countries-chart");
    var countries_chart = echarts.init(countries_dom, 'walden');
    option = {
      tooltip: {
        trigger: 'item',
        formatter: '{b} : {c} ({d}%)'
      },
      legend: {
        orient: 'vertical',
        left: 'left',
        data: country_legend
      },
      series: [
        {
          type: 'pie',
          radius: '55%',
          center: ['50%', '60%'],
          data: country_data
        }
      ]
    };
    if (option && typeof option === "object") {
      countries_chart.setOption(option, true);
      countries_chart.on('click', function (params) {
        country = params.name
        $.post("../search_subject.php", {
            subject: "<?php echo "$subject" ?>",
            domain: "country",
            keywords: country
        },
        function (data) {
            $("#result").html('<h1 class="text-center mb-5">List of winners in ' + country + '</h1>')
            data = data.hits.hits
            for (entry of data) {
              elem = entry._source
              $("#result").append('<h5><a href="<?php echo "../facts.php/$subject/" ?>' + elem.name
                  + '">' + elem.name + '</a></h5>')
              $("#result").append('<p>Winner of ' + elem.award + ' ' + elem.year + '.</p>')
            }
        }, "json")
      })
    }
  </script>

  <?php
    $words_result = mysqli_query($info_link, "SELECT * from hot_words where subject='$subject'");
    $words = mysqli_fetch_array($words_result);
  ?>
  <script>
    word_data = <?php echo $words['word_data']; ?>

    word_list = []
    for (i = 0; i < word_data.length; ++i)
        word_list[i] = word_data[i].name

    var words_dom = document.getElementById("words-chart");
    var words_chart = echarts.init(words_dom, 'walden');
    option = {
      tooltip: {
        trigger: 'item',
        formatter: '{b} : {c}'
      },
      legend: {
        left: 'center',
        top: '90%',
        data: word_list
      },
      series: [
        {
          type: 'pie',
          radius: [25, 200],
          roseType: 'radius',
          label: {
            show: false
          },
          emphasis: {
            label: {
              show: true
            }
          },
          data: word_data
        }
      ]
    };
    if (option && typeof option === "object") {
      words_chart.setOption(option, true);
      words_chart.on('click', function (params) {
        word = params.name
        $.post("../search_subject.php", {
          subject: "<?php echo "$subject" ?>",
          domain: "motivation",
          keywords: word
        },
        function (data) {
          $("#result").html('<h1 class="text-center mb-5">List of winners concerning ' + word + '</h1>')
          data = data.hits.hits
          for (entry of data) {
            elem = entry._source
            $("#result").append('<h5><a href="<?php echo "../facts.php/$subject/" ?>' + elem.name
              + '">' + elem.name + '</a></h5>')
            $("#result").append('<p>Winner of ' + elem.award + ' ' + elem.year + '.</p>')
          }
        }, "json")
      })
    }
  </script>

</body>

</html>