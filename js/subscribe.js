(function(){
  var feedUrl = "https://pcr.apple.com/{{ site.podcast.id }}"
  var itunesUrl = "https://itunes.apple.com/jp/podcast/{{ site.podcast.name }}/{{ site.podcast.id }}";

  var link = document.getElementById("subscribe_link");
  if (window.navigator.platform.match(/(MacIntel|iPhone|iPad|iPod)/)) {
    link.href = itunesUrl;
  } else {
    link.href = feedUrl;
  }
})();
