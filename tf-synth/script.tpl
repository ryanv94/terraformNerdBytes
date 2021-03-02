var assert = require('assert');

$browser.get('https://docs.newrelic.com').then(function(){
  $browser.waitForAndFindElement($driver.By.xpath('/html/body/div[1]/div[1]/div[2]/main/section[2]/div/a[3]'), 2000).then(function(dashboards){
      dashboards.click().then(function(){
        $browser.sleep(2000);
      })
  })
})
