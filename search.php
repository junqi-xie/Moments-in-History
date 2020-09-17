<?php
  $domain = isset($_POST['domain']) ? htmlspecialchars($_POST['domain']) : '';
  $keywords = isset($_POST['keywords']) ? htmlspecialchars($_POST['keywords']) : '';
  if ($domain == 'country' or $domain == 'birth_date' or $domain == 'death_date')
    $method = 'match_phrase';
  else
    $method = 'match';
  $param = "{
    \"size\": 1000,
    \"query\": {
      \"$method\":{
        \"$domain\": \"$keywords\"
      }
    },
    \"highlight\": {
      \"fields\": {
        \"$domain\": { }
      }
    }
  }";
  $curl = curl_init();
  curl_setopt($curl, CURLOPT_URL, "http://127.0.0.1:9200/subject_awards/_search");
  $header = array(
    "content-type:application/json; charset=UTF-8"
  );
  curl_setopt ($curl,CURLOPT_HTTPHEADER, $header) ;
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
  $timeout = 10;
  curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, $timeout);
  curl_setopt($curl, CURLOPT_POSTFIELDS, $param);
  $res = curl_exec($curl);
  curl_close($curl);
  echo $res;
?>