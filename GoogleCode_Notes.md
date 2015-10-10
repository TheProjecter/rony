## Real URL ##
### Default ###
http://code.google.com/p/rony/<br>
<a href='http://code.google.com/p/rony/source/browse/'>http://code.google.com/p/rony/source/browse/</a><br>
HEAD is at<br>
<a href='http://rony.googlecode.com/hg/'>http://rony.googlecode.com/hg/</a><br>
<h3>Wiki</h3>
<a href='http://code.google.com/p/rony/w/list'>http://code.google.com/p/rony/w/list</a><br>
HEAD is at<br>
<a href='http://wiki.rony.googlecode.com/hg/'>http://wiki.rony.googlecode.com/hg/</a><br>
<h3>Subrepos</h3>
<a href='http://gentoo-overlay.rony.googlecode.com/hg/'>http://gentoo-overlay.rony.googlecode.com/hg/</a><br>
HEAD is at<br>
<a href='http://gentoo-overlay.rony.googlecode.com/hg/'>http://gentoo-overlay.rony.googlecode.com/hg/</a><br>

<h2>HG to Git</h2>
(install hg-fast-import)<br>
<pre><code>$ mkdir temp-git &amp;&amp; cd temp-git<br>
$ git clone temp-git<br>
$ (remove useename from .git/config)<br>
$ hg-fast-export -r hg_old<br>
$ git checkout<br>
$ git push origin master<br>
</code></pre>