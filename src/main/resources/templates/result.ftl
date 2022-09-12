<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Pelata</title>
    <link rel="icon" type="image/svg+xml" href="/static/favicon.svg">
    <link rel="icon" type="image/png" href="/static/favicon.png">
    <link rel="stylesheet" href="/static/style.css">
    <meta name="viewport" content="width=device-width,initial-scale=1">
  </head>
  <body>
    <#include "/partials/header.ftl">

    <main>
      <section>
        <#include "/partials/form.ftl">
      </section>

      <section>
        <p>
          <span class="highlight">${result.average.minutes?string["##0"]}:${result.average.seconds?string["00"]} / km</span> average pace
        </p>
        <h2>Negative splits</h2>
        <caption>Calculated negative splits for your optimal race in minutes and seconds per kilometer:</caption>
        <div class="wrapper">
          <table>
            <thead>
              <tr>
                <#list result.distances as distance>
                  <td>${distance?string["0.0"]} km</td>
                </#list>
              </tr>
            </thead>
            <tbody>
              <#list result.splits as splits>
                <tr>
                  <#list splits as split>
                    <td>${split.minutes?string["##0"]}:${split.seconds?string["00"]}</td>
                  </#list>
                </tr>
              </#list>
            </tbody>
          </table>
        </div>
      </section>
    </main>
    
    <#include "/partials/footer.ftl">
  </body>
</html>