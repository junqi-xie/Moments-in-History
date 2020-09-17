<?php
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

  $subject = isset($_POST['subject']) ? htmlspecialchars($_POST['subject']) : '';
  $award = get_award($subject);
  $domain = isset($_POST['domain']) ? htmlspecialchars($_POST['domain']) : '';
  $keywords = isset($_POST['keywords']) ? htmlspecialchars($_POST['keywords']) : '';
  if ($domain == 'country' or $domain == 'birth_date' or $domain == 'death_date')
    $method = 'match_phrase';
  else
    $method = 'match';
  $param = "{
    \"size\": 1000,
    \"query\":{
      \"bool\":{
        \"must\":[
          {
            \"$method\":{
              \"$domain\": \"$keywords\"
            }
          }
        ],
        \"filter\":{
          \"match_phrase\":{
            \"award\": \"$award\"
          }
        }
      }
    }
  }";
  $curl = curl_init();
  curl_setopt($curl, CURLOPT_URL,"http://127.0.0.1:9200/subject_awards/_search");
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