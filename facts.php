<!DOCTYPE html>
<html lang="en">

<?php
$pathinfo = $_SERVER['PATH_INFO'];
if(preg_match("/\/([\w_]+)\/(.+)/si", $pathinfo, $path)){
  $subject = $path[1];
  $name = $path[2];
}
$link = mysqli_connect("127.0.0.1:3306", 'ee101', 'ee101', 'subject_awards');
$link->set_charset("utf8");
$result = mysqli_query($link, "SELECT * from $subject where name='$name'");
if ($result)
{
  $info = mysqli_fetch_array($result);
}
function output_affiliation($affiliation)
{
  $output = '';
  foreach ($affiliation as $aff)
    $output = $output .  $aff . '. ';
  return $output;
}
function get_related($result, $param_subject, $param_name)
{
  $output = '';
  for ($info = mysqli_fetch_array($result); $info; $info = mysqli_fetch_array($result))
  {
    if ($info['name'] != $param_name) {
      $name = $info['name'];
      $output = $output . "<li><a href=\"../../facts.php/$param_subject/$name\">$name</a></li>";
    }
  }
  return $output;
}
?>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title><?php echo $info['name'] ?> - Moments in History Project</title>

  <!-- Bootstrap Core CSS -->
  <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&display=swap"
    rel="stylesheet" type="text/css">
  <link href="../../vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="../../css/stylish-portfolio.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Navigation -->
  <a class="menu-toggle rounded" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="../../index.html">Home</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="../../about.html">About</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="../../explore.html">Explore</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="../../search.html">Search</a>
      </li>
    </ul>
  </nav>

  <!-- Header -->
  <header class="masthead" style="height: 30%">
    <div class="container text-center my-auto">
      <h1 class="mb-1 text-light">Facts</h1>
      <h3 class="mb-5 text-light">
        <em>Moments in History</em>
      </h3>
    </div>
    <div class="overlay"></div>
  </header>

  <!-- Main Section -->
  <section class="content-section bg-light">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-8">
          <div class="content-section-heading">
            <h1 class="mb-2">Facts about...</h1>
            <h2 class="mb-6"><?php echo $info['name'] ?></h2>
          </div>
          <br>
          <div>
            <p>
              <strong>Award: 
                <?php
                  echo $info['award'] . ', ' . $info['year'];
                ?>
              </strong>
            </p>
            <p>Born: <?php echo $info['birth_date'] . ' in ' . $info['birth_place'] ?></p>
            <?php
              if ($info['death_date'] != '')
                echo '<p>Died: ' . $info['death_date'] . ' in ' . $info['death_place'] . '</p>';
              if (array_key_exists('affiliation',$info))
                echo '<p>Affiliation: ' . output_affiliation(json_decode(str_replace("'", "\"", $info['affiliation']), true)) . '</p>';
            ?>
            <p>Motivation: <?php echo $info['motivation'] ?></p>
            <?php
              if (array_key_exists('share',$info))
                echo '<p>Prize share:' . $info['share'] . '</p>';
              if (array_key_exists('comment',$info))
                echo '<p><em>' . $info['comment'] . '</em></p>';
            ?>
            
            <?php
              $year = $info['year'];
              $related = mysqli_query($link, "SELECT * from $subject where year=$year");
              $output = get_related($related, $subject, $name);
              if ($output != '')
              {
                echo '<h5>People sharing the prize: </h5>';
                echo '<ul>' . $output . '</ul>';
              }
            ?>

            <a class="btn btn-dark btn-xl js-scroll-trigger" href="<?php echo $info['url'] ?>">Read more</a>
          </div>
        </div>
        <div class="col-md-4">
          <img class="img-fluid rounded" src=<?php echo $info['portrait_url'] ?> alt="">
        </div>
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
  <script src="../../vendor/jquery/jquery.min.js"></script>
  <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="../../js/stylish-portfolio.js"></script>

</body>

</html>