{% if (is_post() and page.comments) %}
  <!--
  <link rel="stylesheet" href="https://imsun.github.io/gitment/style/default.css">
  <script src="https://imsun.github.io/gitment/dist/gitment.browser.js"></script>
  -->
  <link rel="stylesheet" href="/attaches/assets/gitment/gitment.css">
  <script src="/attaches/assets/gitment/gitment.js"></script>
  <script>
    const gitment = new Gitment({
      id: '{{ page.path }}', // optional
      owner: 'gmlove',
      title: '{{ page.title }}',
      repo: 'gmlove.github.io',
      oauth: {
        client_id: '75eb53812430d581cd14',
        client_secret: '5f50853e9d5be69ddc4094d7ec896fc6e0f9f14b',
      },
      // ...
      // For more available options, check out the documentation below
    })

    gitment.render('comments')
    // or
    // gitment.render(document.getElementById('comments'))
    // or
    // document.body.appendChild(gitment.render())
  </script>
{% endif %}
