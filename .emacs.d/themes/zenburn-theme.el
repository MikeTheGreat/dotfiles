



<!DOCTYPE html>
<html lang="en" class="   ">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>zenburn-emacs/zenburn-theme.el at master · bbatsov/zenburn-emacs · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="bbatsov/zenburn-emacs" name="twitter:title" /><meta content="zenburn-emacs - The Zenburn colour theme ported to Emacs" name="twitter:description" /><meta content="https://avatars2.githubusercontent.com/u/103882?v=2&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars2.githubusercontent.com/u/103882?v=2&amp;s=400" property="og:image" /><meta content="bbatsov/zenburn-emacs" property="og:title" /><meta content="https://github.com/bbatsov/zenburn-emacs" property="og:url" /><meta content="zenburn-emacs - The Zenburn colour theme ported to Emacs" property="og:description" />

    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="1812FF0A:7B5D:1EF4DA77:53FE6A4A" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="bNk/80qmJqkEeRzyjolCxeTVETezt6ZYElr7gGFC9cRJu/DdjG7ND3Z98HO6wds/KBHLcDCzMdi1fCigE02Epg==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-9c49d9e68129bbdfa78438fa0eca52a07a0a3a22.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://assets-cdn.github.com/assets/github2-bb52ae2c32e25bcf646a050d1dae29017d766bc7.css" media="all" rel="stylesheet" type="text/css" />
    


    <meta http-equiv="x-pjax-version" content="b7ba499669f778e4432768a5f6dbbe6a">

      
  <meta name="description" content="zenburn-emacs - The Zenburn colour theme ported to Emacs">
  <meta name="go-import" content="github.com/bbatsov/zenburn-emacs git https://github.com/bbatsov/zenburn-emacs.git">

  <meta content="103882" name="octolytics-dimension-user_id" /><meta content="bbatsov" name="octolytics-dimension-user_login" /><meta content="922251" name="octolytics-dimension-repository_id" /><meta content="bbatsov/zenburn-emacs" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="922251" name="octolytics-dimension-repository_network_root_id" /><meta content="bbatsov/zenburn-emacs" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/bbatsov/zenburn-emacs/commits/master.atom" rel="alternate" title="Recent Commits to zenburn-emacs:master" type="application/atom+xml">

  </head>


  <body class="logged_out  env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/join">Sign up</a>
      <a class="button signin" href="/login?return_to=%2Fbbatsov%2Fzenburn-emacs%2Fblob%2Fmaster%2Fzenburn-theme.el">Sign in</a>
    </div>

    <div class="site-search repo-scope js-site-search">
      <form accept-charset="UTF-8" action="/bbatsov/zenburn-emacs/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/bbatsov/zenburn-emacs/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <input type="text"
    class="js-site-search-field is-clearable"
    data-hotkey="s"
    name="q"
    placeholder="Search"
    data-global-scope-placeholder="Search GitHub"
    data-repo-scope-placeholder="Search"
    tabindex="1"
    autocapitalize="off">
  <div class="scope-badge">This repository</div>
</form>
    </div>

      <ul class="header-nav left">
          <li class="header-nav-item">
            <a class="header-nav-link" href="/explore">Explore</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/features">Features</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://enterprise.github.com/">Enterprise</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog">Blog</a>
          </li>
      </ul>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">


  <li>
      <a href="/login?return_to=%2Fbbatsov%2Fzenburn-emacs"
    class="minibutton with-count star-button tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>
    Star
  </a>

    <a class="social-count js-social-count" href="/bbatsov/zenburn-emacs/stargazers">
      355
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Fbbatsov%2Fzenburn-emacs"
        class="minibutton with-count js-toggler-target fork-button tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>
        Fork
      </a>
      <a href="/bbatsov/zenburn-emacs/network" class="social-count">
        132
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/bbatsov" class="url fn" itemprop="url" rel="author"><span itemprop="title">bbatsov</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/bbatsov/zenburn-emacs" class="js-current-repository js-repo-home-link">zenburn-emacs</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders" data-issue-count-url="/bbatsov/zenburn-emacs/issues/counts">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/bbatsov/zenburn-emacs" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /bbatsov/zenburn-emacs">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped tooltipped-w" aria-label="Issues">
          <a href="/bbatsov/zenburn-emacs/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /bbatsov/zenburn-emacs/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class="js-issue-replace-counter"></span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/bbatsov/zenburn-emacs/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g p" data-selected-links="repo_pulls /bbatsov/zenburn-emacs/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class="js-pull-replace-counter"></span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/bbatsov/zenburn-emacs/pulse/weekly" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /bbatsov/zenburn-emacs/pulse/weekly">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/bbatsov/zenburn-emacs/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /bbatsov/zenburn-emacs/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                
  
<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/bbatsov/zenburn-emacs.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/bbatsov/zenburn-emacs.git" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/bbatsov/zenburn-emacs" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/bbatsov/zenburn-emacs" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>


  <a href="http://windows.github.com" class="minibutton sidebar-button" title="Save bbatsov/zenburn-emacs to your computer and use it in GitHub Desktop." aria-label="Save bbatsov/zenburn-emacs to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

                <a href="/bbatsov/zenburn-emacs/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download bbatsov/zenburn-emacs as a zip file"
                   title="Download bbatsov/zenburn-emacs as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/bbatsov/zenburn-emacs/blob/e124c3f2f74d761e9af49ce632287f110cd2db5b/zenburn-theme.el" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:e2669caaa72c0ff2cad4a33e5a3b67ac -->

<div class="file-navigation">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="minibutton select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/bbatsov/zenburn-emacs/blob/master/zenburn-theme.el"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/bbatsov/zenburn-emacs/tree/v2.0/zenburn-theme.el"
                 data-name="v2.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.0">v2.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/bbatsov/zenburn-emacs/tree/v1.8/zenburn-theme.el"
                 data-name="v1.8"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.8">v1.8</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/bbatsov/zenburn-emacs/tree/v1.7/zenburn-theme.el"
                 data-name="v1.7"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.7">v1.7</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/bbatsov/zenburn-emacs/tree/v1.6/zenburn-theme.el"
                 data-name="v1.6"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.6">v1.6</a>
            </div> <!-- /.select-menu-item -->
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="button-group right">
    <a href="/bbatsov/zenburn-emacs/find/master"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button class="js-zeroclipboard minibutton zeroclipboard-button"
          data-clipboard-text="zenburn-theme.el"
          aria-label="Copy to clipboard"
          data-copied-hint="Copied!">
      <span class="octicon octicon-clippy"></span>
    </button>
  </div>

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/bbatsov/zenburn-emacs" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">zenburn-emacs</span></a></span></span><span class="separator"> / </span><strong class="final-path">zenburn-theme.el</strong>
  </div>
</div>


  <div class="commit file-history-tease">
    <div class="file-history-tease-header">
        <img alt="Bozhidar Batsov" class="avatar" data-user="103882" height="24" src="https://avatars3.githubusercontent.com/u/103882?v=2&amp;s=48" width="24" />
        <span class="author"><a href="/bbatsov" rel="author">bbatsov</a></span>
        <time datetime="2014-08-11T17:54:43+03:00" is="relative-time">August 11, 2014</time>
        <div class="commit-title">
            <a href="/bbatsov/zenburn-emacs/commit/e124c3f2f74d761e9af49ce632287f110cd2db5b" class="message" data-pjax="true" title="Merge pull request #170 from ukaszg/patch-1

add missing parens">Merge pull request</a> <a href="https://github.com/bbatsov/zenburn-emacs/pull/170" class="issue-link" title="add missing parens">#170</a> <a href="/bbatsov/zenburn-emacs/commit/e124c3f2f74d761e9af49ce632287f110cd2db5b" class="message" data-pjax="true" title="Merge pull request #170 from ukaszg/patch-1

add missing parens">from ukaszg/patch-1</a>
        </div>
    </div>

    <div class="participation">
      <p class="quickstat">
        <a href="#blob_contributors_box" rel="facebox">
          <strong>39</strong>
           contributors
        </a>
      </p>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="bbatsov" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=bbatsov"><img alt="Bozhidar Batsov" class="avatar" data-user="103882" height="20" src="https://avatars1.githubusercontent.com/u/103882?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="tarsius" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=tarsius"><img alt="Jonas Bernoulli" class="avatar" data-user="25046" height="20" src="https://avatars0.githubusercontent.com/u/25046?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="aroig" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=aroig"><img alt="Abdó Roig-Maranges" class="avatar" data-user="1743143" height="20" src="https://avatars2.githubusercontent.com/u/1743143?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="m00natic" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=m00natic"><img alt="Andrey Kotlarski" class="avatar" data-user="64437" height="20" src="https://avatars0.githubusercontent.com/u/64437?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="lunaryorn" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=lunaryorn"><img alt="Sebastian Wiesner" class="avatar" data-user="224922" height="20" src="https://avatars2.githubusercontent.com/u/224922?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="georgek" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=georgek"><img alt="George Kettleborough" class="avatar" data-user="85981" height="20" src="https://avatars0.githubusercontent.com/u/85981?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="josherrickson" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=josherrickson"><img alt="josherrickson" class="avatar" data-user="1674171" height="20" src="https://avatars1.githubusercontent.com/u/1674171?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="impaktor" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=impaktor"><img alt="impaktor" class="avatar" data-user="619390" height="20" src="https://avatars0.githubusercontent.com/u/619390?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="dudebout" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=dudebout"><img alt="Nicolas Dudebout" class="avatar" data-user="382362" height="20" src="https://avatars3.githubusercontent.com/u/382362?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="adamrt" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=adamrt"><img alt="Adam Patterson" class="avatar" data-user="58468" height="20" src="https://avatars3.githubusercontent.com/u/58468?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="ktetzlaff" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=ktetzlaff"><img alt="ktetzlaff" class="avatar" data-user="1082960" height="20" src="https://avatars0.githubusercontent.com/u/1082960?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="jleechpe" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=jleechpe"><img alt="Jonathan Leech-Pepin" class="avatar" data-user="1301213" height="20" src="https://avatars3.githubusercontent.com/u/1301213?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="mpmiszczyk" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=mpmiszczyk"><img alt="mpmiszczyk" class="avatar" data-user="1692426" height="20" src="https://avatars3.githubusercontent.com/u/1692426?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="vgeddes" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=vgeddes"><img alt="Vincent Geddes" class="avatar" data-user="117534" height="20" src="https://avatars0.githubusercontent.com/u/117534?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="posiczko" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=posiczko"><img alt="Pawel Osiczko" class="avatar" data-user="386464" height="20" src="https://avatars1.githubusercontent.com/u/386464?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="ivoarch" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=ivoarch"><img alt="Ivaylo Kuzev" class="avatar" data-user="677124" height="20" src="https://avatars3.githubusercontent.com/u/677124?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="mpenet" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=mpenet"><img alt="Max Penet" class="avatar" data-user="106390" height="20" src="https://avatars1.githubusercontent.com/u/106390?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="quodlibetor" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=quodlibetor"><img alt="Brandon W Maister" class="avatar" data-user="277161" height="20" src="https://avatars2.githubusercontent.com/u/277161?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="joshvfleming" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=joshvfleming"><img alt="Josh Fleming" class="avatar" data-user="212140" height="20" src="https://avatars0.githubusercontent.com/u/212140?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="rexim" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=rexim"><img alt="Alexey Kutepov" class="avatar" data-user="165283" height="20" src="https://avatars1.githubusercontent.com/u/165283?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="jcinnamond" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=jcinnamond"><img alt="John Cinnamond" class="avatar" data-user="27396" height="20" src="https://avatars0.githubusercontent.com/u/27396?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="jacobj" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=jacobj"><img alt="Jacob Jenkins" class="avatar" data-user="1075421" height="20" src="https://avatars0.githubusercontent.com/u/1075421?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="proofit404" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=proofit404"><img alt="Malyshev Artem" class="avatar" data-user="1862725" height="20" src="https://avatars3.githubusercontent.com/u/1862725?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="sherrman" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=sherrman"><img alt="Sherman Mui" class="avatar" data-user="1403628" height="20" src="https://avatars3.githubusercontent.com/u/1403628?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="dan-f" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=dan-f"><img alt="Daniel Friedman" class="avatar" data-user="2146312" height="20" src="https://avatars2.githubusercontent.com/u/2146312?v=2&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="DamienCassou" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=DamienCassou"><img alt="Damien Cassou" class="avatar" data-user="217543" height="20" src="https://avatars3.githubusercontent.com/u/217543?v=2&amp;s=40" width="20" /></a>

    <a href="#blob_contributors_box" rel="facebox" class="others-text">and others</a>

    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="Bozhidar Batsov" data-user="103882" height="24" src="https://avatars3.githubusercontent.com/u/103882?v=2&amp;s=48" width="24" />
            <a href="/bbatsov">bbatsov</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Jonas Bernoulli" data-user="25046" height="24" src="https://avatars2.githubusercontent.com/u/25046?v=2&amp;s=48" width="24" />
            <a href="/tarsius">tarsius</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Abdó Roig-Maranges" data-user="1743143" height="24" src="https://avatars0.githubusercontent.com/u/1743143?v=2&amp;s=48" width="24" />
            <a href="/aroig">aroig</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Andrey Kotlarski" data-user="64437" height="24" src="https://avatars2.githubusercontent.com/u/64437?v=2&amp;s=48" width="24" />
            <a href="/m00natic">m00natic</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Sebastian Wiesner" data-user="224922" height="24" src="https://avatars0.githubusercontent.com/u/224922?v=2&amp;s=48" width="24" />
            <a href="/lunaryorn">lunaryorn</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="George Kettleborough" data-user="85981" height="24" src="https://avatars2.githubusercontent.com/u/85981?v=2&amp;s=48" width="24" />
            <a href="/georgek">georgek</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="josherrickson" data-user="1674171" height="24" src="https://avatars3.githubusercontent.com/u/1674171?v=2&amp;s=48" width="24" />
            <a href="/josherrickson">josherrickson</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="impaktor" data-user="619390" height="24" src="https://avatars2.githubusercontent.com/u/619390?v=2&amp;s=48" width="24" />
            <a href="/impaktor">impaktor</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Nicolas Dudebout" data-user="382362" height="24" src="https://avatars1.githubusercontent.com/u/382362?v=2&amp;s=48" width="24" />
            <a href="/dudebout">dudebout</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Adam Patterson" data-user="58468" height="24" src="https://avatars1.githubusercontent.com/u/58468?v=2&amp;s=48" width="24" />
            <a href="/adamrt">adamrt</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="ktetzlaff" data-user="1082960" height="24" src="https://avatars2.githubusercontent.com/u/1082960?v=2&amp;s=48" width="24" />
            <a href="/ktetzlaff">ktetzlaff</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Jonathan Leech-Pepin" data-user="1301213" height="24" src="https://avatars1.githubusercontent.com/u/1301213?v=2&amp;s=48" width="24" />
            <a href="/jleechpe">jleechpe</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="mpmiszczyk" data-user="1692426" height="24" src="https://avatars1.githubusercontent.com/u/1692426?v=2&amp;s=48" width="24" />
            <a href="/mpmiszczyk">mpmiszczyk</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Vincent Geddes" data-user="117534" height="24" src="https://avatars2.githubusercontent.com/u/117534?v=2&amp;s=48" width="24" />
            <a href="/vgeddes">vgeddes</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Pawel Osiczko" data-user="386464" height="24" src="https://avatars3.githubusercontent.com/u/386464?v=2&amp;s=48" width="24" />
            <a href="/posiczko">posiczko</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Ivaylo Kuzev" data-user="677124" height="24" src="https://avatars1.githubusercontent.com/u/677124?v=2&amp;s=48" width="24" />
            <a href="/ivoarch">ivoarch</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Max Penet" data-user="106390" height="24" src="https://avatars3.githubusercontent.com/u/106390?v=2&amp;s=48" width="24" />
            <a href="/mpenet">mpenet</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Brandon W Maister" data-user="277161" height="24" src="https://avatars0.githubusercontent.com/u/277161?v=2&amp;s=48" width="24" />
            <a href="/quodlibetor">quodlibetor</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Josh Fleming" data-user="212140" height="24" src="https://avatars2.githubusercontent.com/u/212140?v=2&amp;s=48" width="24" />
            <a href="/joshvfleming">joshvfleming</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Alexey Kutepov" data-user="165283" height="24" src="https://avatars3.githubusercontent.com/u/165283?v=2&amp;s=48" width="24" />
            <a href="/rexim">rexim</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="John Cinnamond" data-user="27396" height="24" src="https://avatars2.githubusercontent.com/u/27396?v=2&amp;s=48" width="24" />
            <a href="/jcinnamond">jcinnamond</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Jacob Jenkins" data-user="1075421" height="24" src="https://avatars2.githubusercontent.com/u/1075421?v=2&amp;s=48" width="24" />
            <a href="/jacobj">jacobj</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Malyshev Artem" data-user="1862725" height="24" src="https://avatars1.githubusercontent.com/u/1862725?v=2&amp;s=48" width="24" />
            <a href="/proofit404">proofit404</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Sherman Mui" data-user="1403628" height="24" src="https://avatars1.githubusercontent.com/u/1403628?v=2&amp;s=48" width="24" />
            <a href="/sherrman">sherrman</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Daniel Friedman" data-user="2146312" height="24" src="https://avatars0.githubusercontent.com/u/2146312?v=2&amp;s=48" width="24" />
            <a href="/dan-f">dan-f</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Damien Cassou" data-user="217543" height="24" src="https://avatars1.githubusercontent.com/u/217543?v=2&amp;s=48" width="24" />
            <a href="/DamienCassou">DamienCassou</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Chip Collier" data-user="301903" height="24" src="https://avatars1.githubusercontent.com/u/301903?v=2&amp;s=48" width="24" />
            <a href="/photex">photex</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Steve Purcell" data-user="5636" height="24" src="https://avatars1.githubusercontent.com/u/5636?v=2&amp;s=48" width="24" />
            <a href="/purcell">purcell</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Aleksander Skjæveland Larsen" data-user="296455" height="24" src="https://avatars2.githubusercontent.com/u/296455?v=2&amp;s=48" width="24" />
            <a href="/ogrim">ogrim</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Takafumi Arakaki" data-user="29282" height="24" src="https://avatars3.githubusercontent.com/u/29282?v=2&amp;s=48" width="24" />
            <a href="/tkf">tkf</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Ting-Yu Lin" data-user="102858" height="24" src="https://avatars0.githubusercontent.com/u/102858?v=2&amp;s=48" width="24" />
            <a href="/aethanyc">aethanyc</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Łukasz Gruner" data-user="1138184" height="24" src="https://avatars3.githubusercontent.com/u/1138184?v=2&amp;s=48" width="24" />
            <a href="/ukaszg">ukaszg</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Wú Dí " data-user="459711" height="24" src="https://avatars0.githubusercontent.com/u/459711?v=2&amp;s=48" width="24" />
            <a href="/5D">5D</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
          <span>1051 lines (1021 sloc)</span>
          <span class="meta-divider"></span>
        <span>59.572 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
          <a href="/bbatsov/zenburn-emacs/raw/master/zenburn-theme.el" class="minibutton " id="raw-url">Raw</a>
            <a href="/bbatsov/zenburn-emacs/blame/master/zenburn-theme.el" class="minibutton js-update-url-with-hash">Blame</a>
          <a href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el" class="minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->

          <a class="octicon-button tooltipped tooltipped-nw"
             href="http://windows.github.com" aria-label="Open this file in GitHub for Windows">
              <span class="octicon octicon-device-desktop"></span>
          </a>

            <a class="octicon-button disabled tooltipped tooltipped-w" href="#"
               aria-label="You must be signed in to make or propose changes"><span class="octicon octicon-pencil"></span></a>

          <a class="octicon-button danger disabled tooltipped tooltipped-w" href="#"
             aria-label="You must be signed in to make or propose changes">
          <span class="octicon octicon-trashcan"></span>
        </a>
      </div><!-- /.actions -->
    </div>
      
  <div class="blob-wrapper data type-emacs-lisp">
      <table class="highlight tab-size-8 js-file-line-container">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code js-file-line"><span class="c1">;;; zenburn-theme.el --- A low contrast color theme for Emacs.</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code js-file-line"><span class="c1">;; Copyright (C) 2011-2014 Bozhidar Batsov</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code js-file-line"><span class="c1">;; Author: Bozhidar Batsov &lt;bozhidar@batsov.com&gt;</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code js-file-line"><span class="c1">;; URL: http://github.com/bbatsov/zenburn-emacs</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code js-file-line"><span class="c1">;; Version: 2.1</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code js-file-line"><span class="c1">;; This program is free software; you can redistribute it and/or modify</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code js-file-line"><span class="c1">;; it under the terms of the GNU General Public License as published by</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code js-file-line"><span class="c1">;; the Free Software Foundation, either version 3 of the License, or</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code js-file-line"><span class="c1">;; (at your option) any later version.</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code js-file-line"><span class="c1">;; This program is distributed in the hope that it will be useful,</span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code js-file-line"><span class="c1">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span></td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code js-file-line"><span class="c1">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span></td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code js-file-line"><span class="c1">;; GNU General Public License for more details.</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code js-file-line"><span class="c1">;; You should have received a copy of the GNU General Public License</span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code js-file-line"><span class="c1">;; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.</span></td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code js-file-line"><span class="c1">;;; Commentary:</span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code js-file-line"><span class="c1">;; A port of the popular Vim theme Zenburn for Emacs 24, built on top</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code js-file-line"><span class="c1">;; of the new built-in theme support in Emacs 24.</span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code js-file-line"><span class="c1">;;; Credits:</span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code js-file-line"><span class="c1">;; Jani Nurminen created the original theme for vim on such this port</span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code js-file-line"><span class="c1">;; is based.</span></td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code js-file-line"><span class="c1">;;; Code:</span></td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code js-file-line"><span class="p">(</span><span class="nf">deftheme</span> <span class="nv">zenburn</span> <span class="s">&quot;The Zenburn color theme&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code js-file-line"><span class="c1">;;; Color Palette</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code js-file-line"><span class="p">(</span><span class="nf">defvar</span> <span class="nv">zenburn-colors-alist</span></td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code js-file-line">  <span class="o">&#39;</span><span class="p">((</span><span class="s">&quot;zenburn-fg+1&quot;</span>     <span class="o">.</span> <span class="s">&quot;#FFFFEF&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-fg&quot;</span>       <span class="o">.</span> <span class="s">&quot;#DCDCCC&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-fg-1&quot;</span>     <span class="o">.</span> <span class="s">&quot;#656555&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-bg-2&quot;</span>     <span class="o">.</span> <span class="s">&quot;#000000&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-bg-1&quot;</span>     <span class="o">.</span> <span class="s">&quot;#2B2B2B&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-bg-05&quot;</span>    <span class="o">.</span> <span class="s">&quot;#383838&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-bg&quot;</span>       <span class="o">.</span> <span class="s">&quot;#3F3F3F&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-bg+05&quot;</span>    <span class="o">.</span> <span class="s">&quot;#494949&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-bg+1&quot;</span>     <span class="o">.</span> <span class="s">&quot;#4F4F4F&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-bg+2&quot;</span>     <span class="o">.</span> <span class="s">&quot;#5F5F5F&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-bg+3&quot;</span>     <span class="o">.</span> <span class="s">&quot;#6F6F6F&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-red+1&quot;</span>    <span class="o">.</span> <span class="s">&quot;#DCA3A3&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-red&quot;</span>      <span class="o">.</span> <span class="s">&quot;#CC9393&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-red-1&quot;</span>    <span class="o">.</span> <span class="s">&quot;#BC8383&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-red-2&quot;</span>    <span class="o">.</span> <span class="s">&quot;#AC7373&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-red-3&quot;</span>    <span class="o">.</span> <span class="s">&quot;#9C6363&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-red-4&quot;</span>    <span class="o">.</span> <span class="s">&quot;#8C5353&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-orange&quot;</span>   <span class="o">.</span> <span class="s">&quot;#DFAF8F&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-yellow&quot;</span>   <span class="o">.</span> <span class="s">&quot;#F0DFAF&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-yellow-1&quot;</span> <span class="o">.</span> <span class="s">&quot;#E0CF9F&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-yellow-2&quot;</span> <span class="o">.</span> <span class="s">&quot;#D0BF8F&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-green-1&quot;</span>  <span class="o">.</span> <span class="s">&quot;#5F7F5F&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-green&quot;</span>    <span class="o">.</span> <span class="s">&quot;#7F9F7F&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-green+1&quot;</span>  <span class="o">.</span> <span class="s">&quot;#8FB28F&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-green+2&quot;</span>  <span class="o">.</span> <span class="s">&quot;#9FC59F&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-green+3&quot;</span>  <span class="o">.</span> <span class="s">&quot;#AFD8AF&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-green+4&quot;</span>  <span class="o">.</span> <span class="s">&quot;#BFEBBF&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-cyan&quot;</span>     <span class="o">.</span> <span class="s">&quot;#93E0E3&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-blue+1&quot;</span>   <span class="o">.</span> <span class="s">&quot;#94BFF3&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-blue&quot;</span>     <span class="o">.</span> <span class="s">&quot;#8CD0D3&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-blue-1&quot;</span>   <span class="o">.</span> <span class="s">&quot;#7CB8BB&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-blue-2&quot;</span>   <span class="o">.</span> <span class="s">&quot;#6CA0A3&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-blue-3&quot;</span>   <span class="o">.</span> <span class="s">&quot;#5C888B&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-blue-4&quot;</span>   <span class="o">.</span> <span class="s">&quot;#4C7073&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-blue-5&quot;</span>   <span class="o">.</span> <span class="s">&quot;#366060&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code js-file-line">    <span class="p">(</span><span class="s">&quot;zenburn-magenta&quot;</span>  <span class="o">.</span> <span class="s">&quot;#DC8CC3&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code js-file-line">  <span class="s">&quot;List of Zenburn colors.</span></td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code js-file-line"><span class="s">Each element has the form (NAME . HEX).</span></td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code js-file-line"><span class="s">`+N&#39; suffixes indicate a color is lighter.</span></td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code js-file-line"><span class="s">`-N&#39; suffixes indicate a color is darker.&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code js-file-line"><span class="p">(</span><span class="nf">defmacro</span> <span class="nv">zenburn-with-color-variables</span> <span class="p">(</span><span class="nf">&amp;rest</span> <span class="nv">body</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code js-file-line">  <span class="s">&quot;`let&#39; bind all colors defined in `zenburn-colors-alist&#39; around BODY.</span></td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code js-file-line"><span class="s">Also bind `class&#39; to ((class color) (min-colors 89)).&quot;</span></td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code js-file-line">  <span class="p">(</span><span class="nf">declare</span> <span class="p">(</span><span class="nf">indent</span> <span class="mi">0</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code js-file-line">  <span class="o">`</span><span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">class</span> <span class="o">&#39;</span><span class="p">((</span><span class="nf">class</span> <span class="nv">color</span><span class="p">)</span> <span class="p">(</span><span class="nf">min-colors</span> <span class="mi">89</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code js-file-line">         <span class="o">,@</span><span class="p">(</span><span class="nf">mapcar</span> <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">cons</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code js-file-line">                     <span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">intern</span> <span class="p">(</span><span class="nb">car </span><span class="nv">cons</span><span class="p">))</span> <span class="p">(</span><span class="nb">cdr </span><span class="nv">cons</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code js-file-line">                   <span class="nv">zenburn-colors-alist</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code js-file-line">     <span class="o">,@</span><span class="nv">body</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code js-file-line"><span class="c1">;;; Theme Faces</span></td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code js-file-line"><span class="p">(</span><span class="nf">zenburn-with-color-variables</span></td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code js-file-line">  <span class="p">(</span><span class="nf">custom-theme-set-faces</span></td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code js-file-line">   <span class="ss">&#39;zenburn</span></td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code js-file-line"><span class="c1">;;;; Built-in</span></td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code js-file-line"><span class="c1">;;;;; basic coloring</span></td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code js-file-line">   <span class="o">&#39;</span><span class="p">(</span><span class="nv">button</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">link</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">link-visited</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span> <span class="nv">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">default</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">cursor</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-fg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">escape-glyph</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:bold</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">fringe</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">header-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span></td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code js-file-line">                                  <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span></td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code js-file-line">                                  <span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))))</span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">highlight</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">success</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">warning</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code js-file-line"><span class="c1">;;;;; compilation</span></td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-column-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-enter-directory-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-error-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-info-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-info</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-leave-directory-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-line-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-line-number</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-message-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-warning-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-mode-line-exit</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-mode-line-fail</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">compilation-mode-line-run</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code js-file-line"><span class="c1">;;;;; grep</span></td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">grep-context-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">grep-error-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">grep-hit-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">grep-match-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L131" class="blob-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-code js-file-line"><span class="c1">;;;;; isearch</span></td>
      </tr>
      <tr>
        <td id="L132" class="blob-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">isearch</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L133" class="blob-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">isearch-fail</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L134" class="blob-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">lazy-highlight</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L135" class="blob-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L136" class="blob-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">menu</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L137" class="blob-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">minibuffer-prompt</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L138" class="blob-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mode-line</span></td>
      </tr>
      <tr>
        <td id="L139" class="blob-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-code js-file-line">     <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span></td>
      </tr>
      <tr>
        <td id="L140" class="blob-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-code js-file-line">                           <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span></td>
      </tr>
      <tr>
        <td id="L141" class="blob-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-code js-file-line">                           <span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L142" class="blob-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span> <span class="nv">:inverse-video</span> <span class="nv">t</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L143" class="blob-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mode-line-buffer-id</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L144" class="blob-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mode-line-inactive</span></td>
      </tr>
      <tr>
        <td id="L145" class="blob-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span></td>
      </tr>
      <tr>
        <td id="L146" class="blob-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-code js-file-line">                      <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span></td>
      </tr>
      <tr>
        <td id="L147" class="blob-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-code js-file-line">                      <span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))))</span></td>
      </tr>
      <tr>
        <td id="L148" class="blob-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">region</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L149" class="blob-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-code js-file-line">             <span class="p">(</span><span class="nf">t</span> <span class="nv">:inverse-video</span> <span class="nv">t</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L150" class="blob-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">secondary-selection</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L151" class="blob-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">trailing-whitespace</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L152" class="blob-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">vertical-border</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L153" class="blob-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-code js-file-line"><span class="c1">;;;;; font lock</span></td>
      </tr>
      <tr>
        <td id="L154" class="blob-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-builtin-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L155" class="blob-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-comment-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L156" class="blob-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-comment-delimiter-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L157" class="blob-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-constant-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L158" class="blob-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-doc-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L159" class="blob-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-function-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L160" class="blob-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-keyword-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L161" class="blob-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-negation-char-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L162" class="blob-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-preprocessor-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L163" class="blob-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-regexp-grouping-construct</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L164" class="blob-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-regexp-grouping-backslash</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L165" class="blob-num js-line-number" data-line-number="165"></td>
        <td id="LC165" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-string-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L166" class="blob-num js-line-number" data-line-number="166"></td>
        <td id="LC166" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-type-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L167" class="blob-num js-line-number" data-line-number="167"></td>
        <td id="LC167" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-variable-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L168" class="blob-num js-line-number" data-line-number="168"></td>
        <td id="LC168" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-lock-warning-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L169" class="blob-num js-line-number" data-line-number="169"></td>
        <td id="LC169" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L170" class="blob-num js-line-number" data-line-number="170"></td>
        <td id="LC170" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">c-annotation-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-constant-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L171" class="blob-num js-line-number" data-line-number="171"></td>
        <td id="LC171" class="blob-code js-file-line"><span class="c1">;;;;; newsticker</span></td>
      </tr>
      <tr>
        <td id="L172" class="blob-num js-line-number" data-line-number="172"></td>
        <td id="LC172" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-date-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L173" class="blob-num js-line-number" data-line-number="173"></td>
        <td id="LC173" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-default-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L174" class="blob-num js-line-number" data-line-number="174"></td>
        <td id="LC174" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-enclosure-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L175" class="blob-num js-line-number" data-line-number="175"></td>
        <td id="LC175" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-extra-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span> <span class="nv">:height</span> <span class="mf">0.8</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L176" class="blob-num js-line-number" data-line-number="176"></td>
        <td id="LC176" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-feed-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L177" class="blob-num js-line-number" data-line-number="177"></td>
        <td id="LC177" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-immortal-item-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L178" class="blob-num js-line-number" data-line-number="178"></td>
        <td id="LC178" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-new-item-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L179" class="blob-num js-line-number" data-line-number="179"></td>
        <td id="LC179" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-obsolete-item-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L180" class="blob-num js-line-number" data-line-number="180"></td>
        <td id="LC180" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-old-item-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L181" class="blob-num js-line-number" data-line-number="181"></td>
        <td id="LC181" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-statistics-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L182" class="blob-num js-line-number" data-line-number="182"></td>
        <td id="LC182" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L183" class="blob-num js-line-number" data-line-number="183"></td>
        <td id="LC183" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-immortal-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L184" class="blob-num js-line-number" data-line-number="184"></td>
        <td id="LC184" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-listwindow-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L185" class="blob-num js-line-number" data-line-number="185"></td>
        <td id="LC185" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-new-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L186" class="blob-num js-line-number" data-line-number="186"></td>
        <td id="LC186" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-obsolete-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L187" class="blob-num js-line-number" data-line-number="187"></td>
        <td id="LC187" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-old-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L188" class="blob-num js-line-number" data-line-number="188"></td>
        <td id="LC188" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-selection-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L189" class="blob-num js-line-number" data-line-number="189"></td>
        <td id="LC189" class="blob-code js-file-line"><span class="c1">;;;; Third-party</span></td>
      </tr>
      <tr>
        <td id="L190" class="blob-num js-line-number" data-line-number="190"></td>
        <td id="LC190" class="blob-code js-file-line"><span class="c1">;;;;; ace-jump</span></td>
      </tr>
      <tr>
        <td id="L191" class="blob-num js-line-number" data-line-number="191"></td>
        <td id="LC191" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ace-jump-face-background</span></td>
      </tr>
      <tr>
        <td id="L192" class="blob-num js-line-number" data-line-number="192"></td>
        <td id="LC192" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg-1</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:inverse-video</span> <span class="nv">nil</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L193" class="blob-num js-line-number" data-line-number="193"></td>
        <td id="LC193" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ace-jump-face-foreground</span></td>
      </tr>
      <tr>
        <td id="L194" class="blob-num js-line-number" data-line-number="194"></td>
        <td id="LC194" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:inverse-video</span> <span class="nv">nil</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L195" class="blob-num js-line-number" data-line-number="195"></td>
        <td id="LC195" class="blob-code js-file-line"><span class="c1">;;;;; android mode</span></td>
      </tr>
      <tr>
        <td id="L196" class="blob-num js-line-number" data-line-number="196"></td>
        <td id="LC196" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">android-mode-debug-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L197" class="blob-num js-line-number" data-line-number="197"></td>
        <td id="LC197" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">android-mode-error-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L198" class="blob-num js-line-number" data-line-number="198"></td>
        <td id="LC198" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">android-mode-info-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L199" class="blob-num js-line-number" data-line-number="199"></td>
        <td id="LC199" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">android-mode-verbose-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L200" class="blob-num js-line-number" data-line-number="200"></td>
        <td id="LC200" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">android-mode-warning-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L201" class="blob-num js-line-number" data-line-number="201"></td>
        <td id="LC201" class="blob-code js-file-line"><span class="c1">;;;;; anzu</span></td>
      </tr>
      <tr>
        <td id="L202" class="blob-num js-line-number" data-line-number="202"></td>
        <td id="LC202" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">anzu-mode-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L203" class="blob-num js-line-number" data-line-number="203"></td>
        <td id="LC203" class="blob-code js-file-line"><span class="c1">;;;;; auctex</span></td>
      </tr>
      <tr>
        <td id="L204" class="blob-num js-line-number" data-line-number="204"></td>
        <td id="LC204" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-latex-bold-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L205" class="blob-num js-line-number" data-line-number="205"></td>
        <td id="LC205" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-latex-warning-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="nv">nil</span> <span class="nv">:inherit</span> <span class="nv">font-lock-warning-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L206" class="blob-num js-line-number" data-line-number="206"></td>
        <td id="LC206" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-latex-sectioning-5-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L207" class="blob-num js-line-number" data-line-number="207"></td>
        <td id="LC207" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-latex-sedate-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L208" class="blob-num js-line-number" data-line-number="208"></td>
        <td id="LC208" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-latex-italic-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L209" class="blob-num js-line-number" data-line-number="209"></td>
        <td id="LC209" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-latex-string-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="o">,</span><span class="nv">font-lock-string-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L210" class="blob-num js-line-number" data-line-number="210"></td>
        <td id="LC210" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">font-latex-math-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L211" class="blob-num js-line-number" data-line-number="211"></td>
        <td id="LC211" class="blob-code js-file-line"><span class="c1">;;;;; auto-complete</span></td>
      </tr>
      <tr>
        <td id="L212" class="blob-num js-line-number" data-line-number="212"></td>
        <td id="LC212" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ac-candidate-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L213" class="blob-num js-line-number" data-line-number="213"></td>
        <td id="LC213" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ac-selection-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-blue-4</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L214" class="blob-num js-line-number" data-line-number="214"></td>
        <td id="LC214" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">popup-tip-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L215" class="blob-num js-line-number" data-line-number="215"></td>
        <td id="LC215" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">popup-scroll-bar-foreground-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-blue-5</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L216" class="blob-num js-line-number" data-line-number="216"></td>
        <td id="LC216" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">popup-scroll-bar-background-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L217" class="blob-num js-line-number" data-line-number="217"></td>
        <td id="LC217" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">popup-isearch-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L218" class="blob-num js-line-number" data-line-number="218"></td>
        <td id="LC218" class="blob-code js-file-line"><span class="c1">;;;;; company-mode</span></td>
      </tr>
      <tr>
        <td id="L219" class="blob-num js-line-number" data-line-number="219"></td>
        <td id="LC219" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">company-tooltip</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L220" class="blob-num js-line-number" data-line-number="220"></td>
        <td id="LC220" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">company-tooltip-selection</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L221" class="blob-num js-line-number" data-line-number="221"></td>
        <td id="LC221" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">company-tooltip-mouse</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L222" class="blob-num js-line-number" data-line-number="222"></td>
        <td id="LC222" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">company-tooltip-common</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L223" class="blob-num js-line-number" data-line-number="223"></td>
        <td id="LC223" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">company-tooltip-common-selection</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L224" class="blob-num js-line-number" data-line-number="224"></td>
        <td id="LC224" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">company-scrollbar-fg</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L225" class="blob-num js-line-number" data-line-number="225"></td>
        <td id="LC225" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">company-scrollbar-bg</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L226" class="blob-num js-line-number" data-line-number="226"></td>
        <td id="LC226" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">company-preview</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L227" class="blob-num js-line-number" data-line-number="227"></td>
        <td id="LC227" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">company-preview-common</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L228" class="blob-num js-line-number" data-line-number="228"></td>
        <td id="LC228" class="blob-code js-file-line"><span class="c1">;;;;; bm</span></td>
      </tr>
      <tr>
        <td id="L229" class="blob-num js-line-number" data-line-number="229"></td>
        <td id="LC229" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">bm-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L230" class="blob-num js-line-number" data-line-number="230"></td>
        <td id="LC230" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">bm-fringe-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L231" class="blob-num js-line-number" data-line-number="231"></td>
        <td id="LC231" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">bm-fringe-persistent-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-green-1</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L232" class="blob-num js-line-number" data-line-number="232"></td>
        <td id="LC232" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">bm-persistent-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-green-1</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L233" class="blob-num js-line-number" data-line-number="233"></td>
        <td id="LC233" class="blob-code js-file-line"><span class="c1">;;;;; clojure-test-mode</span></td>
      </tr>
      <tr>
        <td id="L234" class="blob-num js-line-number" data-line-number="234"></td>
        <td id="LC234" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">clojure-test-failure-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L235" class="blob-num js-line-number" data-line-number="235"></td>
        <td id="LC235" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">clojure-test-error-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L236" class="blob-num js-line-number" data-line-number="236"></td>
        <td id="LC236" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">clojure-test-success-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L237" class="blob-num js-line-number" data-line-number="237"></td>
        <td id="LC237" class="blob-code js-file-line"><span class="c1">;;;;; coq</span></td>
      </tr>
      <tr>
        <td id="L238" class="blob-num js-line-number" data-line-number="238"></td>
        <td id="LC238" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">coq-solve-tactics-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="nv">nil</span> <span class="nv">:inherit</span> <span class="nv">font-lock-constant-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L239" class="blob-num js-line-number" data-line-number="239"></td>
        <td id="LC239" class="blob-code js-file-line"><span class="c1">;;;;; ctable</span></td>
      </tr>
      <tr>
        <td id="L240" class="blob-num js-line-number" data-line-number="240"></td>
        <td id="LC240" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ctbl:face-cell-select</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L241" class="blob-num js-line-number" data-line-number="241"></td>
        <td id="LC241" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ctbl:face-continue-bar</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L242" class="blob-num js-line-number" data-line-number="242"></td>
        <td id="LC242" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ctbl:face-row-select</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L243" class="blob-num js-line-number" data-line-number="243"></td>
        <td id="LC243" class="blob-code js-file-line"><span class="c1">;;;;; diff</span></td>
      </tr>
      <tr>
        <td id="L244" class="blob-num js-line-number" data-line-number="244"></td>
        <td id="LC244" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-added</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span> <span class="nv">:background</span> <span class="nv">nil</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L245" class="blob-num js-line-number" data-line-number="245"></td>
        <td id="LC245" class="blob-code js-file-line">                 <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span> <span class="nv">:background</span> <span class="nv">nil</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L246" class="blob-num js-line-number" data-line-number="246"></td>
        <td id="LC246" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-changed</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L247" class="blob-num js-line-number" data-line-number="247"></td>
        <td id="LC247" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-removed</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:background</span> <span class="nv">nil</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L248" class="blob-num js-line-number" data-line-number="248"></td>
        <td id="LC248" class="blob-code js-file-line">                   <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-3</span> <span class="nv">:background</span> <span class="nv">nil</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L249" class="blob-num js-line-number" data-line-number="249"></td>
        <td id="LC249" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-refine-added</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">diff-added</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L250" class="blob-num js-line-number" data-line-number="250"></td>
        <td id="LC250" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-refine-change</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">diff-changed</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L251" class="blob-num js-line-number" data-line-number="251"></td>
        <td id="LC251" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-refine-removed</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">diff-removed</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L252" class="blob-num js-line-number" data-line-number="252"></td>
        <td id="LC252" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-header</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L253" class="blob-num js-line-number" data-line-number="253"></td>
        <td id="LC253" class="blob-code js-file-line">                  <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L254" class="blob-num js-line-number" data-line-number="254"></td>
        <td id="LC254" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-file-header</span></td>
      </tr>
      <tr>
        <td id="L255" class="blob-num js-line-number" data-line-number="255"></td>
        <td id="LC255" class="blob-code js-file-line">     <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:bold</span> <span class="nv">t</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L256" class="blob-num js-line-number" data-line-number="256"></td>
        <td id="LC256" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:bold</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L257" class="blob-num js-line-number" data-line-number="257"></td>
        <td id="LC257" class="blob-code js-file-line"><span class="c1">;;;;; diff-hl</span></td>
      </tr>
      <tr>
        <td id="L258" class="blob-num js-line-number" data-line-number="258"></td>
        <td id="LC258" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-hl-change</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L259" class="blob-num js-line-number" data-line-number="259"></td>
        <td id="LC259" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-hl-delete</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L260" class="blob-num js-line-number" data-line-number="260"></td>
        <td id="LC260" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-hl-insert</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L261" class="blob-num js-line-number" data-line-number="261"></td>
        <td id="LC261" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diff-hl-unknown</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L262" class="blob-num js-line-number" data-line-number="262"></td>
        <td id="LC262" class="blob-code js-file-line"><span class="c1">;;;;; dim-autoload</span></td>
      </tr>
      <tr>
        <td id="L263" class="blob-num js-line-number" data-line-number="263"></td>
        <td id="LC263" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">dim-autoload-cookie-line</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L264" class="blob-num js-line-number" data-line-number="264"></td>
        <td id="LC264" class="blob-code js-file-line"><span class="c1">;;;;; dired+</span></td>
      </tr>
      <tr>
        <td id="L265" class="blob-num js-line-number" data-line-number="265"></td>
        <td id="LC265" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-display-msg</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L266" class="blob-num js-line-number" data-line-number="266"></td>
        <td id="LC266" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-compressed-file-suffix</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L267" class="blob-num js-line-number" data-line-number="267"></td>
        <td id="LC267" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-date-time</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L268" class="blob-num js-line-number" data-line-number="268"></td>
        <td id="LC268" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-deletion</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L269" class="blob-num js-line-number" data-line-number="269"></td>
        <td id="LC269" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-deletion-file-name</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L270" class="blob-num js-line-number" data-line-number="270"></td>
        <td id="LC270" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-dir-heading</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L271" class="blob-num js-line-number" data-line-number="271"></td>
        <td id="LC271" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-dir-priv</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L272" class="blob-num js-line-number" data-line-number="272"></td>
        <td id="LC272" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-exec-priv</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L273" class="blob-num js-line-number" data-line-number="273"></td>
        <td id="LC273" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-executable-tag</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L274" class="blob-num js-line-number" data-line-number="274"></td>
        <td id="LC274" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-file-name</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L275" class="blob-num js-line-number" data-line-number="275"></td>
        <td id="LC275" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-file-suffix</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L276" class="blob-num js-line-number" data-line-number="276"></td>
        <td id="LC276" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-flag-mark</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L277" class="blob-num js-line-number" data-line-number="277"></td>
        <td id="LC277" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-flag-mark-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L278" class="blob-num js-line-number" data-line-number="278"></td>
        <td id="LC278" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-ignored-file-name</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L279" class="blob-num js-line-number" data-line-number="279"></td>
        <td id="LC279" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-link-priv</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L280" class="blob-num js-line-number" data-line-number="280"></td>
        <td id="LC280" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-mode-line-flagged</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L281" class="blob-num js-line-number" data-line-number="281"></td>
        <td id="LC281" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-mode-line-marked</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L282" class="blob-num js-line-number" data-line-number="282"></td>
        <td id="LC282" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-no-priv</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L283" class="blob-num js-line-number" data-line-number="283"></td>
        <td id="LC283" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-number</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L284" class="blob-num js-line-number" data-line-number="284"></td>
        <td id="LC284" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-other-priv</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L285" class="blob-num js-line-number" data-line-number="285"></td>
        <td id="LC285" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-rare-priv</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L286" class="blob-num js-line-number" data-line-number="286"></td>
        <td id="LC286" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-read-priv</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L287" class="blob-num js-line-number" data-line-number="287"></td>
        <td id="LC287" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-symlink</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L288" class="blob-num js-line-number" data-line-number="288"></td>
        <td id="LC288" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">diredp-write-priv</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L289" class="blob-num js-line-number" data-line-number="289"></td>
        <td id="LC289" class="blob-code js-file-line"><span class="c1">;;;;; ediff</span></td>
      </tr>
      <tr>
        <td id="L290" class="blob-num js-line-number" data-line-number="290"></td>
        <td id="LC290" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-current-diff-A</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L291" class="blob-num js-line-number" data-line-number="291"></td>
        <td id="LC291" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-current-diff-Ancestor</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L292" class="blob-num js-line-number" data-line-number="292"></td>
        <td id="LC292" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-current-diff-B</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-green-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L293" class="blob-num js-line-number" data-line-number="293"></td>
        <td id="LC293" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-current-diff-C</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-blue-5</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L294" class="blob-num js-line-number" data-line-number="294"></td>
        <td id="LC294" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-even-diff-A</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L295" class="blob-num js-line-number" data-line-number="295"></td>
        <td id="LC295" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-even-diff-Ancestor</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L296" class="blob-num js-line-number" data-line-number="296"></td>
        <td id="LC296" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-even-diff-B</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L297" class="blob-num js-line-number" data-line-number="297"></td>
        <td id="LC297" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-even-diff-C</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L298" class="blob-num js-line-number" data-line-number="298"></td>
        <td id="LC298" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-fine-diff-A</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red-2</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L299" class="blob-num js-line-number" data-line-number="299"></td>
        <td id="LC299" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-fine-diff-Ancestor</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red-2</span> <span class="nv">weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L300" class="blob-num js-line-number" data-line-number="300"></td>
        <td id="LC300" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-fine-diff-B</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-green</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L301" class="blob-num js-line-number" data-line-number="301"></td>
        <td id="LC301" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-fine-diff-C</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-blue-3</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L302" class="blob-num js-line-number" data-line-number="302"></td>
        <td id="LC302" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-odd-diff-A</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L303" class="blob-num js-line-number" data-line-number="303"></td>
        <td id="LC303" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-odd-diff-Ancestor</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L304" class="blob-num js-line-number" data-line-number="304"></td>
        <td id="LC304" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-odd-diff-B</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L305" class="blob-num js-line-number" data-line-number="305"></td>
        <td id="LC305" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ediff-odd-diff-C</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L306" class="blob-num js-line-number" data-line-number="306"></td>
        <td id="LC306" class="blob-code js-file-line"><span class="c1">;;;;; egg</span></td>
      </tr>
      <tr>
        <td id="L307" class="blob-num js-line-number" data-line-number="307"></td>
        <td id="LC307" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">egg-text-base</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L308" class="blob-num js-line-number" data-line-number="308"></td>
        <td id="LC308" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">egg-help-header-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L309" class="blob-num js-line-number" data-line-number="309"></td>
        <td id="LC309" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">egg-help-header-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L310" class="blob-num js-line-number" data-line-number="310"></td>
        <td id="LC310" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">egg-branch</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L311" class="blob-num js-line-number" data-line-number="311"></td>
        <td id="LC311" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">egg-branch-mono</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L312" class="blob-num js-line-number" data-line-number="312"></td>
        <td id="LC312" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">egg-term</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L313" class="blob-num js-line-number" data-line-number="313"></td>
        <td id="LC313" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">egg-diff-add</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L314" class="blob-num js-line-number" data-line-number="314"></td>
        <td id="LC314" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">egg-diff-del</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L315" class="blob-num js-line-number" data-line-number="315"></td>
        <td id="LC315" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">egg-diff-file-header</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L316" class="blob-num js-line-number" data-line-number="316"></td>
        <td id="LC316" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">egg-section-title</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L317" class="blob-num js-line-number" data-line-number="317"></td>
        <td id="LC317" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">egg-stash-mono</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L318" class="blob-num js-line-number" data-line-number="318"></td>
        <td id="LC318" class="blob-code js-file-line"><span class="c1">;;;;; elfeed</span></td>
      </tr>
      <tr>
        <td id="L319" class="blob-num js-line-number" data-line-number="319"></td>
        <td id="LC319" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">elfeed-search-date-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span> <span class="nv">:underline</span> <span class="nv">t</span></td>
      </tr>
      <tr>
        <td id="L320" class="blob-num js-line-number" data-line-number="320"></td>
        <td id="LC320" class="blob-code js-file-line">                                              <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L321" class="blob-num js-line-number" data-line-number="321"></td>
        <td id="LC321" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">elfeed-search-tag-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L322" class="blob-num js-line-number" data-line-number="322"></td>
        <td id="LC322" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">elfeed-search-feed-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L323" class="blob-num js-line-number" data-line-number="323"></td>
        <td id="LC323" class="blob-code js-file-line"><span class="c1">;;;;; emacs-w3m</span></td>
      </tr>
      <tr>
        <td id="L324" class="blob-num js-line-number" data-line-number="324"></td>
        <td id="LC324" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">w3m-anchor</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:underline</span> <span class="nv">t</span></td>
      </tr>
      <tr>
        <td id="L325" class="blob-num js-line-number" data-line-number="325"></td>
        <td id="LC325" class="blob-code js-file-line">                                 <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L326" class="blob-num js-line-number" data-line-number="326"></td>
        <td id="LC326" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">w3m-arrived-anchor</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span></td>
      </tr>
      <tr>
        <td id="L327" class="blob-num js-line-number" data-line-number="327"></td>
        <td id="LC327" class="blob-code js-file-line">                                         <span class="nv">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L328" class="blob-num js-line-number" data-line-number="328"></td>
        <td id="LC328" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">w3m-form</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L329" class="blob-num js-line-number" data-line-number="329"></td>
        <td id="LC329" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">w3m-header-line-location-title</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span></td>
      </tr>
      <tr>
        <td id="L330" class="blob-num js-line-number" data-line-number="330"></td>
        <td id="LC330" class="blob-code js-file-line">                                                     <span class="nv">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L331" class="blob-num js-line-number" data-line-number="331"></td>
        <td id="LC331" class="blob-code js-file-line">   <span class="o">&#39;</span><span class="p">(</span><span class="nv">w3m-history-current-url</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">match</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L332" class="blob-num js-line-number" data-line-number="332"></td>
        <td id="LC332" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">w3m-lnum</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L333" class="blob-num js-line-number" data-line-number="333"></td>
        <td id="LC333" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">w3m-lnum-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span></td>
      </tr>
      <tr>
        <td id="L334" class="blob-num js-line-number" data-line-number="334"></td>
        <td id="LC334" class="blob-code js-file-line">                                     <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span></td>
      </tr>
      <tr>
        <td id="L335" class="blob-num js-line-number" data-line-number="335"></td>
        <td id="LC335" class="blob-code js-file-line">                                     <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L336" class="blob-num js-line-number" data-line-number="336"></td>
        <td id="LC336" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">w3m-lnum-minibuffer-prompt</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L337" class="blob-num js-line-number" data-line-number="337"></td>
        <td id="LC337" class="blob-code js-file-line"><span class="c1">;;;;; erc</span></td>
      </tr>
      <tr>
        <td id="L338" class="blob-num js-line-number" data-line-number="338"></td>
        <td id="LC338" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-action-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">erc-default-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L339" class="blob-num js-line-number" data-line-number="339"></td>
        <td id="LC339" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-bold-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L340" class="blob-num js-line-number" data-line-number="340"></td>
        <td id="LC340" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-current-nick-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L341" class="blob-num js-line-number" data-line-number="341"></td>
        <td id="LC341" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-dangerous-host-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-warning-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L342" class="blob-num js-line-number" data-line-number="342"></td>
        <td id="LC342" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-default-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L343" class="blob-num js-line-number" data-line-number="343"></td>
        <td id="LC343" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-direct-msg-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">erc-default</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L344" class="blob-num js-line-number" data-line-number="344"></td>
        <td id="LC344" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-error-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-warning-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L345" class="blob-num js-line-number" data-line-number="345"></td>
        <td id="LC345" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-fool-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">erc-default</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L346" class="blob-num js-line-number" data-line-number="346"></td>
        <td id="LC346" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-highlight-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">hover-highlight</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L347" class="blob-num js-line-number" data-line-number="347"></td>
        <td id="LC347" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-input-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L348" class="blob-num js-line-number" data-line-number="348"></td>
        <td id="LC348" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-keyword-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L349" class="blob-num js-line-number" data-line-number="349"></td>
        <td id="LC349" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-nick-default-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L350" class="blob-num js-line-number" data-line-number="350"></td>
        <td id="LC350" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-my-nick-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L351" class="blob-num js-line-number" data-line-number="351"></td>
        <td id="LC351" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-nick-msg-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">erc-default</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L352" class="blob-num js-line-number" data-line-number="352"></td>
        <td id="LC352" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-notice-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L353" class="blob-num js-line-number" data-line-number="353"></td>
        <td id="LC353" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-pal-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L354" class="blob-num js-line-number" data-line-number="354"></td>
        <td id="LC354" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-prompt-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L355" class="blob-num js-line-number" data-line-number="355"></td>
        <td id="LC355" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-timestamp-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L356" class="blob-num js-line-number" data-line-number="356"></td>
        <td id="LC356" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">erc-underline-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L357" class="blob-num js-line-number" data-line-number="357"></td>
        <td id="LC357" class="blob-code js-file-line"><span class="c1">;;;;; ert</span></td>
      </tr>
      <tr>
        <td id="L358" class="blob-num js-line-number" data-line-number="358"></td>
        <td id="LC358" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ert-test-result-expected</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L359" class="blob-num js-line-number" data-line-number="359"></td>
        <td id="LC359" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ert-test-result-unexpected</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L360" class="blob-num js-line-number" data-line-number="360"></td>
        <td id="LC360" class="blob-code js-file-line"><span class="c1">;;;;; eshell</span></td>
      </tr>
      <tr>
        <td id="L361" class="blob-num js-line-number" data-line-number="361"></td>
        <td id="LC361" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">eshell-prompt</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L362" class="blob-num js-line-number" data-line-number="362"></td>
        <td id="LC362" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-archive</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L363" class="blob-num js-line-number" data-line-number="363"></td>
        <td id="LC363" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-backup</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-comment-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L364" class="blob-num js-line-number" data-line-number="364"></td>
        <td id="LC364" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-clutter</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-comment-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L365" class="blob-num js-line-number" data-line-number="365"></td>
        <td id="LC365" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-directory</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L366" class="blob-num js-line-number" data-line-number="366"></td>
        <td id="LC366" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-executable</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L367" class="blob-num js-line-number" data-line-number="367"></td>
        <td id="LC367" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-unreadable</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L368" class="blob-num js-line-number" data-line-number="368"></td>
        <td id="LC368" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-missing</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-warning-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L369" class="blob-num js-line-number" data-line-number="369"></td>
        <td id="LC369" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-product</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-doc-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L370" class="blob-num js-line-number" data-line-number="370"></td>
        <td id="LC370" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-special</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L371" class="blob-num js-line-number" data-line-number="371"></td>
        <td id="LC371" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-symlink</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L372" class="blob-num js-line-number" data-line-number="372"></td>
        <td id="LC372" class="blob-code js-file-line"><span class="c1">;;;;; flx</span></td>
      </tr>
      <tr>
        <td id="L373" class="blob-num js-line-number" data-line-number="373"></td>
        <td id="LC373" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flx-highlight-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L374" class="blob-num js-line-number" data-line-number="374"></td>
        <td id="LC374" class="blob-code js-file-line"><span class="c1">;;;;; flycheck</span></td>
      </tr>
      <tr>
        <td id="L375" class="blob-num js-line-number" data-line-number="375"></td>
        <td id="LC375" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flycheck-error</span></td>
      </tr>
      <tr>
        <td id="L376" class="blob-num js-line-number" data-line-number="376"></td>
        <td id="LC376" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L377" class="blob-num js-line-number" data-line-number="377"></td>
        <td id="LC377" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">)</span> <span class="nv">:inherit</span> <span class="nv">unspecified</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L378" class="blob-num js-line-number" data-line-number="378"></td>
        <td id="LC378" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L379" class="blob-num js-line-number" data-line-number="379"></td>
        <td id="LC379" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flycheck-warning</span></td>
      </tr>
      <tr>
        <td id="L380" class="blob-num js-line-number" data-line-number="380"></td>
        <td id="LC380" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L381" class="blob-num js-line-number" data-line-number="381"></td>
        <td id="LC381" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">)</span> <span class="nv">:inherit</span> <span class="nv">unspecified</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L382" class="blob-num js-line-number" data-line-number="382"></td>
        <td id="LC382" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L383" class="blob-num js-line-number" data-line-number="383"></td>
        <td id="LC383" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flycheck-info</span></td>
      </tr>
      <tr>
        <td id="L384" class="blob-num js-line-number" data-line-number="384"></td>
        <td id="LC384" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L385" class="blob-num js-line-number" data-line-number="385"></td>
        <td id="LC385" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">)</span> <span class="nv">:inherit</span> <span class="nv">unspecified</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L386" class="blob-num js-line-number" data-line-number="386"></td>
        <td id="LC386" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L387" class="blob-num js-line-number" data-line-number="387"></td>
        <td id="LC387" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flycheck-fringe-error</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L388" class="blob-num js-line-number" data-line-number="388"></td>
        <td id="LC388" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flycheck-fringe-warning</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L389" class="blob-num js-line-number" data-line-number="389"></td>
        <td id="LC389" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flycheck-fringe-info</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L390" class="blob-num js-line-number" data-line-number="390"></td>
        <td id="LC390" class="blob-code js-file-line"><span class="c1">;;;;; flymake</span></td>
      </tr>
      <tr>
        <td id="L391" class="blob-num js-line-number" data-line-number="391"></td>
        <td id="LC391" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flymake-errline</span></td>
      </tr>
      <tr>
        <td id="L392" class="blob-num js-line-number" data-line-number="392"></td>
        <td id="LC392" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L393" class="blob-num js-line-number" data-line-number="393"></td>
        <td id="LC393" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L394" class="blob-num js-line-number" data-line-number="394"></td>
        <td id="LC394" class="blob-code js-file-line">                   <span class="nv">:inherit</span> <span class="nv">unspecified</span> <span class="nv">:foreground</span> <span class="nv">unspecified</span> <span class="nv">:background</span> <span class="nv">unspecified</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L395" class="blob-num js-line-number" data-line-number="395"></td>
        <td id="LC395" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L396" class="blob-num js-line-number" data-line-number="396"></td>
        <td id="LC396" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flymake-warnline</span></td>
      </tr>
      <tr>
        <td id="L397" class="blob-num js-line-number" data-line-number="397"></td>
        <td id="LC397" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L398" class="blob-num js-line-number" data-line-number="398"></td>
        <td id="LC398" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L399" class="blob-num js-line-number" data-line-number="399"></td>
        <td id="LC399" class="blob-code js-file-line">                   <span class="nv">:inherit</span> <span class="nv">unspecified</span> <span class="nv">:foreground</span> <span class="nv">unspecified</span> <span class="nv">:background</span> <span class="nv">unspecified</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L400" class="blob-num js-line-number" data-line-number="400"></td>
        <td id="LC400" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L401" class="blob-num js-line-number" data-line-number="401"></td>
        <td id="LC401" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flymake-infoline</span></td>
      </tr>
      <tr>
        <td id="L402" class="blob-num js-line-number" data-line-number="402"></td>
        <td id="LC402" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L403" class="blob-num js-line-number" data-line-number="403"></td>
        <td id="LC403" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L404" class="blob-num js-line-number" data-line-number="404"></td>
        <td id="LC404" class="blob-code js-file-line">                   <span class="nv">:inherit</span> <span class="nv">unspecified</span> <span class="nv">:foreground</span> <span class="nv">unspecified</span> <span class="nv">:background</span> <span class="nv">unspecified</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L405" class="blob-num js-line-number" data-line-number="405"></td>
        <td id="LC405" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L406" class="blob-num js-line-number" data-line-number="406"></td>
        <td id="LC406" class="blob-code js-file-line"><span class="c1">;;;;; flyspell</span></td>
      </tr>
      <tr>
        <td id="L407" class="blob-num js-line-number" data-line-number="407"></td>
        <td id="LC407" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flyspell-duplicate</span></td>
      </tr>
      <tr>
        <td id="L408" class="blob-num js-line-number" data-line-number="408"></td>
        <td id="LC408" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L409" class="blob-num js-line-number" data-line-number="409"></td>
        <td id="LC409" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">)</span> <span class="nv">:inherit</span> <span class="nv">unspecified</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L410" class="blob-num js-line-number" data-line-number="410"></td>
        <td id="LC410" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L411" class="blob-num js-line-number" data-line-number="411"></td>
        <td id="LC411" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">flyspell-incorrect</span></td>
      </tr>
      <tr>
        <td id="L412" class="blob-num js-line-number" data-line-number="412"></td>
        <td id="LC412" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L413" class="blob-num js-line-number" data-line-number="413"></td>
        <td id="LC413" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">)</span> <span class="nv">:inherit</span> <span class="nv">unspecified</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L414" class="blob-num js-line-number" data-line-number="414"></td>
        <td id="LC414" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L415" class="blob-num js-line-number" data-line-number="415"></td>
        <td id="LC415" class="blob-code js-file-line"><span class="c1">;;;;; full-ack</span></td>
      </tr>
      <tr>
        <td id="L416" class="blob-num js-line-number" data-line-number="416"></td>
        <td id="LC416" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ack-separator</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L417" class="blob-num js-line-number" data-line-number="417"></td>
        <td id="LC417" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ack-file</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L418" class="blob-num js-line-number" data-line-number="418"></td>
        <td id="LC418" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ack-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L419" class="blob-num js-line-number" data-line-number="419"></td>
        <td id="LC419" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ack-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L420" class="blob-num js-line-number" data-line-number="420"></td>
        <td id="LC420" class="blob-code js-file-line"><span class="c1">;;;;; git-gutter</span></td>
      </tr>
      <tr>
        <td id="L421" class="blob-num js-line-number" data-line-number="421"></td>
        <td id="LC421" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">git-gutter:added</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:inverse-video</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L422" class="blob-num js-line-number" data-line-number="422"></td>
        <td id="LC422" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">git-gutter:deleted</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:inverse-video</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L423" class="blob-num js-line-number" data-line-number="423"></td>
        <td id="LC423" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">git-gutter:modified</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:inverse-video</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L424" class="blob-num js-line-number" data-line-number="424"></td>
        <td id="LC424" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">git-gutter:unchanged</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:inverse-video</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L425" class="blob-num js-line-number" data-line-number="425"></td>
        <td id="LC425" class="blob-code js-file-line"><span class="c1">;;;;; git-gutter-fr</span></td>
      </tr>
      <tr>
        <td id="L426" class="blob-num js-line-number" data-line-number="426"></td>
        <td id="LC426" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">git-gutter-fr:added</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span>  <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L427" class="blob-num js-line-number" data-line-number="427"></td>
        <td id="LC427" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">git-gutter-fr:deleted</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L428" class="blob-num js-line-number" data-line-number="428"></td>
        <td id="LC428" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">git-gutter-fr:modified</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L429" class="blob-num js-line-number" data-line-number="429"></td>
        <td id="LC429" class="blob-code js-file-line"><span class="c1">;;;;; git-rebase-mode</span></td>
      </tr>
      <tr>
        <td id="L430" class="blob-num js-line-number" data-line-number="430"></td>
        <td id="LC430" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">git-rebase-hash</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground,</span> <span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L431" class="blob-num js-line-number" data-line-number="431"></td>
        <td id="LC431" class="blob-code js-file-line"><span class="c1">;;;;; gnus</span></td>
      </tr>
      <tr>
        <td id="L432" class="blob-num js-line-number" data-line-number="432"></td>
        <td id="LC432" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-1-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L433" class="blob-num js-line-number" data-line-number="433"></td>
        <td id="LC433" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-1-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-1-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L434" class="blob-num js-line-number" data-line-number="434"></td>
        <td id="LC434" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-2-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L435" class="blob-num js-line-number" data-line-number="435"></td>
        <td id="LC435" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-2-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-2-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L436" class="blob-num js-line-number" data-line-number="436"></td>
        <td id="LC436" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-3-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L437" class="blob-num js-line-number" data-line-number="437"></td>
        <td id="LC437" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-3-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-3-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L438" class="blob-num js-line-number" data-line-number="438"></td>
        <td id="LC438" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-4-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L439" class="blob-num js-line-number" data-line-number="439"></td>
        <td id="LC439" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-4-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-4-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L440" class="blob-num js-line-number" data-line-number="440"></td>
        <td id="LC440" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-5-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L441" class="blob-num js-line-number" data-line-number="441"></td>
        <td id="LC441" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-5-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-5-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L442" class="blob-num js-line-number" data-line-number="442"></td>
        <td id="LC442" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-6</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-6-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L443" class="blob-num js-line-number" data-line-number="443"></td>
        <td id="LC443" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-6-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-6-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L444" class="blob-num js-line-number" data-line-number="444"></td>
        <td id="LC444" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-low</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-low-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L445" class="blob-num js-line-number" data-line-number="445"></td>
        <td id="LC445" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-low-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-low-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L446" class="blob-num js-line-number" data-line-number="446"></td>
        <td id="LC446" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-1-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L447" class="blob-num js-line-number" data-line-number="447"></td>
        <td id="LC447" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-2-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L448" class="blob-num js-line-number" data-line-number="448"></td>
        <td id="LC448" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-3-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L449" class="blob-num js-line-number" data-line-number="449"></td>
        <td id="LC449" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-4-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L450" class="blob-num js-line-number" data-line-number="450"></td>
        <td id="LC450" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-5-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L451" class="blob-num js-line-number" data-line-number="451"></td>
        <td id="LC451" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-6</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-6-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L452" class="blob-num js-line-number" data-line-number="452"></td>
        <td id="LC452" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-low</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-low-empty</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L453" class="blob-num js-line-number" data-line-number="453"></td>
        <td id="LC453" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-header-content</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">message-header-other</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L454" class="blob-num js-line-number" data-line-number="454"></td>
        <td id="LC454" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-header-from</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">message-header-from</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L455" class="blob-num js-line-number" data-line-number="455"></td>
        <td id="LC455" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-header-name</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">message-header-name</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L456" class="blob-num js-line-number" data-line-number="456"></td>
        <td id="LC456" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-header-newsgroups</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">message-header-other</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L457" class="blob-num js-line-number" data-line-number="457"></td>
        <td id="LC457" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-header-subject</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">message-header-subject</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L458" class="blob-num js-line-number" data-line-number="458"></td>
        <td id="LC458" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-cancelled</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L459" class="blob-num js-line-number" data-line-number="459"></td>
        <td id="LC459" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-high-ancient</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L460" class="blob-num js-line-number" data-line-number="460"></td>
        <td id="LC460" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-high-read</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L461" class="blob-num js-line-number" data-line-number="461"></td>
        <td id="LC461" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-high-ticked</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L462" class="blob-num js-line-number" data-line-number="462"></td>
        <td id="LC462" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-high-unread</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L463" class="blob-num js-line-number" data-line-number="463"></td>
        <td id="LC463" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-low-ancient</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L464" class="blob-num js-line-number" data-line-number="464"></td>
        <td id="LC464" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-low-read</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L465" class="blob-num js-line-number" data-line-number="465"></td>
        <td id="LC465" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-low-ticked</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L466" class="blob-num js-line-number" data-line-number="466"></td>
        <td id="LC466" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-low-unread</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L467" class="blob-num js-line-number" data-line-number="467"></td>
        <td id="LC467" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-normal-ancient</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L468" class="blob-num js-line-number" data-line-number="468"></td>
        <td id="LC468" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-normal-read</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L469" class="blob-num js-line-number" data-line-number="469"></td>
        <td id="LC469" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-normal-ticked</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L470" class="blob-num js-line-number" data-line-number="470"></td>
        <td id="LC470" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-normal-unread</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L471" class="blob-num js-line-number" data-line-number="471"></td>
        <td id="LC471" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-selected</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L472" class="blob-num js-line-number" data-line-number="472"></td>
        <td id="LC472" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L473" class="blob-num js-line-number" data-line-number="473"></td>
        <td id="LC473" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-10</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L474" class="blob-num js-line-number" data-line-number="474"></td>
        <td id="LC474" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-11</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L475" class="blob-num js-line-number" data-line-number="475"></td>
        <td id="LC475" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L476" class="blob-num js-line-number" data-line-number="476"></td>
        <td id="LC476" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L477" class="blob-num js-line-number" data-line-number="477"></td>
        <td id="LC477" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L478" class="blob-num js-line-number" data-line-number="478"></td>
        <td id="LC478" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L479" class="blob-num js-line-number" data-line-number="479"></td>
        <td id="LC479" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-6</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L480" class="blob-num js-line-number" data-line-number="480"></td>
        <td id="LC480" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-7</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L481" class="blob-num js-line-number" data-line-number="481"></td>
        <td id="LC481" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-8</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L482" class="blob-num js-line-number" data-line-number="482"></td>
        <td id="LC482" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-9</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L483" class="blob-num js-line-number" data-line-number="483"></td>
        <td id="LC483" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-1-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L484" class="blob-num js-line-number" data-line-number="484"></td>
        <td id="LC484" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-2-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L485" class="blob-num js-line-number" data-line-number="485"></td>
        <td id="LC485" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-3-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L486" class="blob-num js-line-number" data-line-number="486"></td>
        <td id="LC486" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-4-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L487" class="blob-num js-line-number" data-line-number="487"></td>
        <td id="LC487" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-5-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L488" class="blob-num js-line-number" data-line-number="488"></td>
        <td id="LC488" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-6-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L489" class="blob-num js-line-number" data-line-number="489"></td>
        <td id="LC489" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-low-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L490" class="blob-num js-line-number" data-line-number="490"></td>
        <td id="LC490" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-signature</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L491" class="blob-num js-line-number" data-line-number="491"></td>
        <td id="LC491" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">gnus-x</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L492" class="blob-num js-line-number" data-line-number="492"></td>
        <td id="LC492" class="blob-code js-file-line"><span class="c1">;;;;; guide-key</span></td>
      </tr>
      <tr>
        <td id="L493" class="blob-num js-line-number" data-line-number="493"></td>
        <td id="LC493" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">guide-key/highlight-command-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L494" class="blob-num js-line-number" data-line-number="494"></td>
        <td id="LC494" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">guide-key/key-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L495" class="blob-num js-line-number" data-line-number="495"></td>
        <td id="LC495" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">guide-key/prefix-command-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L496" class="blob-num js-line-number" data-line-number="496"></td>
        <td id="LC496" class="blob-code js-file-line"><span class="c1">;;;;; helm</span></td>
      </tr>
      <tr>
        <td id="L497" class="blob-num js-line-number" data-line-number="497"></td>
        <td id="LC497" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-header</span></td>
      </tr>
      <tr>
        <td id="L498" class="blob-num js-line-number" data-line-number="498"></td>
        <td id="LC498" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span></td>
      </tr>
      <tr>
        <td id="L499" class="blob-num js-line-number" data-line-number="499"></td>
        <td id="LC499" class="blob-code js-file-line">                      <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span></td>
      </tr>
      <tr>
        <td id="L500" class="blob-num js-line-number" data-line-number="500"></td>
        <td id="LC500" class="blob-code js-file-line">                      <span class="nv">:underline</span> <span class="nv">nil</span></td>
      </tr>
      <tr>
        <td id="L501" class="blob-num js-line-number" data-line-number="501"></td>
        <td id="LC501" class="blob-code js-file-line">                      <span class="nv">:box</span> <span class="nv">nil</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L502" class="blob-num js-line-number" data-line-number="502"></td>
        <td id="LC502" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-source-header</span></td>
      </tr>
      <tr>
        <td id="L503" class="blob-num js-line-number" data-line-number="503"></td>
        <td id="LC503" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span></td>
      </tr>
      <tr>
        <td id="L504" class="blob-num js-line-number" data-line-number="504"></td>
        <td id="LC504" class="blob-code js-file-line">                      <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span></td>
      </tr>
      <tr>
        <td id="L505" class="blob-num js-line-number" data-line-number="505"></td>
        <td id="LC505" class="blob-code js-file-line">                      <span class="nv">:underline</span> <span class="nv">nil</span></td>
      </tr>
      <tr>
        <td id="L506" class="blob-num js-line-number" data-line-number="506"></td>
        <td id="LC506" class="blob-code js-file-line">                      <span class="nv">:weight</span> <span class="nv">bold</span></td>
      </tr>
      <tr>
        <td id="L507" class="blob-num js-line-number" data-line-number="507"></td>
        <td id="LC507" class="blob-code js-file-line">                      <span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))))</span></td>
      </tr>
      <tr>
        <td id="L508" class="blob-num js-line-number" data-line-number="508"></td>
        <td id="LC508" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-selection</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span> <span class="nv">:underline</span> <span class="nv">nil</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L509" class="blob-num js-line-number" data-line-number="509"></td>
        <td id="LC509" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-selection-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L510" class="blob-num js-line-number" data-line-number="510"></td>
        <td id="LC510" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-visible-mark</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L511" class="blob-num js-line-number" data-line-number="511"></td>
        <td id="LC511" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-candidate-number</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L512" class="blob-num js-line-number" data-line-number="512"></td>
        <td id="LC512" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-separator</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L513" class="blob-num js-line-number" data-line-number="513"></td>
        <td id="LC513" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-time-zone-current</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L514" class="blob-num js-line-number" data-line-number="514"></td>
        <td id="LC514" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-time-zone-home</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L515" class="blob-num js-line-number" data-line-number="515"></td>
        <td id="LC515" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-bookmark-addressbook</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L516" class="blob-num js-line-number" data-line-number="516"></td>
        <td id="LC516" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-bookmark-directory</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="nv">nil</span> <span class="nv">:background</span> <span class="nv">nil</span> <span class="nv">:inherit</span> <span class="nv">helm-ff-directory</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L517" class="blob-num js-line-number" data-line-number="517"></td>
        <td id="LC517" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-bookmark-file</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="nv">nil</span> <span class="nv">:background</span> <span class="nv">nil</span> <span class="nv">:inherit</span> <span class="nv">helm-ff-file</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L518" class="blob-num js-line-number" data-line-number="518"></td>
        <td id="LC518" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-bookmark-gnus</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L519" class="blob-num js-line-number" data-line-number="519"></td>
        <td id="LC519" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-bookmark-info</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L520" class="blob-num js-line-number" data-line-number="520"></td>
        <td id="LC520" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-bookmark-man</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L521" class="blob-num js-line-number" data-line-number="521"></td>
        <td id="LC521" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-bookmark-w3m</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L522" class="blob-num js-line-number" data-line-number="522"></td>
        <td id="LC522" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-buffer-not-saved</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L523" class="blob-num js-line-number" data-line-number="523"></td>
        <td id="LC523" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-buffer-process</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L524" class="blob-num js-line-number" data-line-number="524"></td>
        <td id="LC524" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-buffer-saved-out</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L525" class="blob-num js-line-number" data-line-number="525"></td>
        <td id="LC525" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-buffer-size</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg-1</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L526" class="blob-num js-line-number" data-line-number="526"></td>
        <td id="LC526" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-ff-directory</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L527" class="blob-num js-line-number" data-line-number="527"></td>
        <td id="LC527" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-ff-file</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L528" class="blob-num js-line-number" data-line-number="528"></td>
        <td id="LC528" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-ff-executable</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L529" class="blob-num js-line-number" data-line-number="529"></td>
        <td id="LC529" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-ff-invalid-symlink</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L530" class="blob-num js-line-number" data-line-number="530"></td>
        <td id="LC530" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-ff-symlink</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L531" class="blob-num js-line-number" data-line-number="531"></td>
        <td id="LC531" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-ff-prefix</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L532" class="blob-num js-line-number" data-line-number="532"></td>
        <td id="LC532" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-grep-cmd-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L533" class="blob-num js-line-number" data-line-number="533"></td>
        <td id="LC533" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-grep-file</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L534" class="blob-num js-line-number" data-line-number="534"></td>
        <td id="LC534" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-grep-finish</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L535" class="blob-num js-line-number" data-line-number="535"></td>
        <td id="LC535" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-grep-lineno</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg-1</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L536" class="blob-num js-line-number" data-line-number="536"></td>
        <td id="LC536" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-grep-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="nv">nil</span> <span class="nv">:background</span> <span class="nv">nil</span> <span class="nv">:inherit</span> <span class="nv">helm-match</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L537" class="blob-num js-line-number" data-line-number="537"></td>
        <td id="LC537" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-grep-running</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L538" class="blob-num js-line-number" data-line-number="538"></td>
        <td id="LC538" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-moccur-buffer</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L539" class="blob-num js-line-number" data-line-number="539"></td>
        <td id="LC539" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-mu-contacts-address-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg-1</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L540" class="blob-num js-line-number" data-line-number="540"></td>
        <td id="LC540" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">helm-mu-contacts-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L541" class="blob-num js-line-number" data-line-number="541"></td>
        <td id="LC541" class="blob-code js-file-line"><span class="c1">;;;;; hl-line-mode</span></td>
      </tr>
      <tr>
        <td id="L542" class="blob-num js-line-number" data-line-number="542"></td>
        <td id="LC542" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">hl-line-face</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L543" class="blob-num js-line-number" data-line-number="543"></td>
        <td id="LC543" class="blob-code js-file-line">                   <span class="p">(</span><span class="nf">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L544" class="blob-num js-line-number" data-line-number="544"></td>
        <td id="LC544" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">hl-line</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))</span> <span class="c1">; old emacsen</span></td>
      </tr>
      <tr>
        <td id="L545" class="blob-num js-line-number" data-line-number="545"></td>
        <td id="LC545" class="blob-code js-file-line">              <span class="p">(</span><span class="nf">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L546" class="blob-num js-line-number" data-line-number="546"></td>
        <td id="LC546" class="blob-code js-file-line"><span class="c1">;;;;; hl-sexp</span></td>
      </tr>
      <tr>
        <td id="L547" class="blob-num js-line-number" data-line-number="547"></td>
        <td id="LC547" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">hl-sexp-face</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L548" class="blob-num js-line-number" data-line-number="548"></td>
        <td id="LC548" class="blob-code js-file-line">                   <span class="p">(</span><span class="nf">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L549" class="blob-num js-line-number" data-line-number="549"></td>
        <td id="LC549" class="blob-code js-file-line"><span class="c1">;;;;; ido-mode</span></td>
      </tr>
      <tr>
        <td id="L550" class="blob-num js-line-number" data-line-number="550"></td>
        <td id="LC550" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ido-first-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L551" class="blob-num js-line-number" data-line-number="551"></td>
        <td id="LC551" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ido-only-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L552" class="blob-num js-line-number" data-line-number="552"></td>
        <td id="LC552" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ido-subdir</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L553" class="blob-num js-line-number" data-line-number="553"></td>
        <td id="LC553" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ido-indicator</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L554" class="blob-num js-line-number" data-line-number="554"></td>
        <td id="LC554" class="blob-code js-file-line"><span class="c1">;;;;; iedit-mode</span></td>
      </tr>
      <tr>
        <td id="L555" class="blob-num js-line-number" data-line-number="555"></td>
        <td id="LC555" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">iedit-occurrence</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L556" class="blob-num js-line-number" data-line-number="556"></td>
        <td id="LC556" class="blob-code js-file-line"><span class="c1">;;;;; jabber-mode</span></td>
      </tr>
      <tr>
        <td id="L557" class="blob-num js-line-number" data-line-number="557"></td>
        <td id="LC557" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">jabber-roster-user-away</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L558" class="blob-num js-line-number" data-line-number="558"></td>
        <td id="LC558" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">jabber-roster-user-online</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L559" class="blob-num js-line-number" data-line-number="559"></td>
        <td id="LC559" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">jabber-roster-user-dnd</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L560" class="blob-num js-line-number" data-line-number="560"></td>
        <td id="LC560" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">jabber-rare-time-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L561" class="blob-num js-line-number" data-line-number="561"></td>
        <td id="LC561" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">jabber-chat-prompt-local</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L562" class="blob-num js-line-number" data-line-number="562"></td>
        <td id="LC562" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">jabber-chat-prompt-foreign</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L563" class="blob-num js-line-number" data-line-number="563"></td>
        <td id="LC563" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">jabber-activity-face</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L564" class="blob-num js-line-number" data-line-number="564"></td>
        <td id="LC564" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">jabber-activity-personal-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L565" class="blob-num js-line-number" data-line-number="565"></td>
        <td id="LC565" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">jabber-title-small</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:height</span> <span class="mf">1.1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L566" class="blob-num js-line-number" data-line-number="566"></td>
        <td id="LC566" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">jabber-title-medium</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:height</span> <span class="mf">1.2</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L567" class="blob-num js-line-number" data-line-number="567"></td>
        <td id="LC567" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">jabber-title-large</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:height</span> <span class="mf">1.3</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L568" class="blob-num js-line-number" data-line-number="568"></td>
        <td id="LC568" class="blob-code js-file-line"><span class="c1">;;;;; js2-mode</span></td>
      </tr>
      <tr>
        <td id="L569" class="blob-num js-line-number" data-line-number="569"></td>
        <td id="LC569" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">js2-warning</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:underline</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L570" class="blob-num js-line-number" data-line-number="570"></td>
        <td id="LC570" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">js2-error</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L571" class="blob-num js-line-number" data-line-number="571"></td>
        <td id="LC571" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">js2-jsdoc-tag</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L572" class="blob-num js-line-number" data-line-number="572"></td>
        <td id="LC572" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">js2-jsdoc-type</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L573" class="blob-num js-line-number" data-line-number="573"></td>
        <td id="LC573" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">js2-jsdoc-value</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L574" class="blob-num js-line-number" data-line-number="574"></td>
        <td id="LC574" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">js2-function-param</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground,</span> <span class="nv">zenburn-green+3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L575" class="blob-num js-line-number" data-line-number="575"></td>
        <td id="LC575" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">js2-external-variable</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L576" class="blob-num js-line-number" data-line-number="576"></td>
        <td id="LC576" class="blob-code js-file-line"><span class="c1">;;;;; ledger-mode</span></td>
      </tr>
      <tr>
        <td id="L577" class="blob-num js-line-number" data-line-number="577"></td>
        <td id="LC577" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-payee-uncleared-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L578" class="blob-num js-line-number" data-line-number="578"></td>
        <td id="LC578" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-payee-cleared-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L579" class="blob-num js-line-number" data-line-number="579"></td>
        <td id="LC579" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-xact-highlight-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L580" class="blob-num js-line-number" data-line-number="580"></td>
        <td id="LC580" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-pending-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">weight:</span> <span class="nv">normal</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L581" class="blob-num js-line-number" data-line-number="581"></td>
        <td id="LC581" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-other-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L582" class="blob-num js-line-number" data-line-number="582"></td>
        <td id="LC582" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-posting-account-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L583" class="blob-num js-line-number" data-line-number="583"></td>
        <td id="LC583" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-posting-account-cleared-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L584" class="blob-num js-line-number" data-line-number="584"></td>
        <td id="LC584" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-posting-account-pending-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L585" class="blob-num js-line-number" data-line-number="585"></td>
        <td id="LC585" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-posting-amount-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L586" class="blob-num js-line-number" data-line-number="586"></td>
        <td id="LC586" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-posting-account-pending-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L587" class="blob-num js-line-number" data-line-number="587"></td>
        <td id="LC587" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-occur-narrowed-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg-1</span> <span class="nv">:invisible</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L588" class="blob-num js-line-number" data-line-number="588"></td>
        <td id="LC588" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-occur-xact-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L589" class="blob-num js-line-number" data-line-number="589"></td>
        <td id="LC589" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-comment-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L590" class="blob-num js-line-number" data-line-number="590"></td>
        <td id="LC590" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-reconciler-uncleared-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L591" class="blob-num js-line-number" data-line-number="591"></td>
        <td id="LC591" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-reconciler-cleared-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L592" class="blob-num js-line-number" data-line-number="592"></td>
        <td id="LC592" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-reconciler-pending-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L593" class="blob-num js-line-number" data-line-number="593"></td>
        <td id="LC593" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ledger-font-report-clickable-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L594" class="blob-num js-line-number" data-line-number="594"></td>
        <td id="LC594" class="blob-code js-file-line"><span class="c1">;;;;; linum-mode</span></td>
      </tr>
      <tr>
        <td id="L595" class="blob-num js-line-number" data-line-number="595"></td>
        <td id="LC595" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">linum</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L596" class="blob-num js-line-number" data-line-number="596"></td>
        <td id="LC596" class="blob-code js-file-line"><span class="c1">;;;;; macrostep</span></td>
      </tr>
      <tr>
        <td id="L597" class="blob-num js-line-number" data-line-number="597"></td>
        <td id="LC597" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">macrostep-gensym-1</span></td>
      </tr>
      <tr>
        <td id="L598" class="blob-num js-line-number" data-line-number="598"></td>
        <td id="LC598" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L599" class="blob-num js-line-number" data-line-number="599"></td>
        <td id="LC599" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">macrostep-gensym-2</span></td>
      </tr>
      <tr>
        <td id="L600" class="blob-num js-line-number" data-line-number="600"></td>
        <td id="LC600" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L601" class="blob-num js-line-number" data-line-number="601"></td>
        <td id="LC601" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">macrostep-gensym-3</span></td>
      </tr>
      <tr>
        <td id="L602" class="blob-num js-line-number" data-line-number="602"></td>
        <td id="LC602" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L603" class="blob-num js-line-number" data-line-number="603"></td>
        <td id="LC603" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">macrostep-gensym-4</span></td>
      </tr>
      <tr>
        <td id="L604" class="blob-num js-line-number" data-line-number="604"></td>
        <td id="LC604" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L605" class="blob-num js-line-number" data-line-number="605"></td>
        <td id="LC605" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">macrostep-gensym-5</span></td>
      </tr>
      <tr>
        <td id="L606" class="blob-num js-line-number" data-line-number="606"></td>
        <td id="LC606" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L607" class="blob-num js-line-number" data-line-number="607"></td>
        <td id="LC607" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">macrostep-expansion-highlight-face</span></td>
      </tr>
      <tr>
        <td id="L608" class="blob-num js-line-number" data-line-number="608"></td>
        <td id="LC608" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">highlight</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L609" class="blob-num js-line-number" data-line-number="609"></td>
        <td id="LC609" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">macrostep-macro-face</span></td>
      </tr>
      <tr>
        <td id="L610" class="blob-num js-line-number" data-line-number="610"></td>
        <td id="LC610" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L611" class="blob-num js-line-number" data-line-number="611"></td>
        <td id="LC611" class="blob-code js-file-line"><span class="c1">;;;;; magit</span></td>
      </tr>
      <tr>
        <td id="L612" class="blob-num js-line-number" data-line-number="612"></td>
        <td id="LC612" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">magit-item-highlight</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+05</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L613" class="blob-num js-line-number" data-line-number="613"></td>
        <td id="LC613" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">magit-section-title</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L614" class="blob-num js-line-number" data-line-number="614"></td>
        <td id="LC614" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">magit-process-ok</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L615" class="blob-num js-line-number" data-line-number="615"></td>
        <td id="LC615" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">magit-process-ng</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L616" class="blob-num js-line-number" data-line-number="616"></td>
        <td id="LC616" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">magit-branch</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L617" class="blob-num js-line-number" data-line-number="617"></td>
        <td id="LC617" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">magit-log-author</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L618" class="blob-num js-line-number" data-line-number="618"></td>
        <td id="LC618" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">magit-log-sha1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground,</span> <span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L619" class="blob-num js-line-number" data-line-number="619"></td>
        <td id="LC619" class="blob-code js-file-line"><span class="c1">;;;;; message-mode</span></td>
      </tr>
      <tr>
        <td id="L620" class="blob-num js-line-number" data-line-number="620"></td>
        <td id="LC620" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">message-cited-text</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-comment-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L621" class="blob-num js-line-number" data-line-number="621"></td>
        <td id="LC621" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">message-header-name</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L622" class="blob-num js-line-number" data-line-number="622"></td>
        <td id="LC622" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">message-header-other</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L623" class="blob-num js-line-number" data-line-number="623"></td>
        <td id="LC623" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">message-header-to</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L624" class="blob-num js-line-number" data-line-number="624"></td>
        <td id="LC624" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">message-header-from</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L625" class="blob-num js-line-number" data-line-number="625"></td>
        <td id="LC625" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">message-header-cc</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L626" class="blob-num js-line-number" data-line-number="626"></td>
        <td id="LC626" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">message-header-newsgroups</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L627" class="blob-num js-line-number" data-line-number="627"></td>
        <td id="LC627" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">message-header-subject</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L628" class="blob-num js-line-number" data-line-number="628"></td>
        <td id="LC628" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">message-header-xheader</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L629" class="blob-num js-line-number" data-line-number="629"></td>
        <td id="LC629" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">message-mml</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L630" class="blob-num js-line-number" data-line-number="630"></td>
        <td id="LC630" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">message-separator</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-comment-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L631" class="blob-num js-line-number" data-line-number="631"></td>
        <td id="LC631" class="blob-code js-file-line"><span class="c1">;;;;; mew</span></td>
      </tr>
      <tr>
        <td id="L632" class="blob-num js-line-number" data-line-number="632"></td>
        <td id="LC632" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-subject</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L633" class="blob-num js-line-number" data-line-number="633"></td>
        <td id="LC633" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-from</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L634" class="blob-num js-line-number" data-line-number="634"></td>
        <td id="LC634" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-date</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L635" class="blob-num js-line-number" data-line-number="635"></td>
        <td id="LC635" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-to</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L636" class="blob-num js-line-number" data-line-number="636"></td>
        <td id="LC636" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-key</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L637" class="blob-num js-line-number" data-line-number="637"></td>
        <td id="LC637" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-private</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L638" class="blob-num js-line-number" data-line-number="638"></td>
        <td id="LC638" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-important</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L639" class="blob-num js-line-number" data-line-number="639"></td>
        <td id="LC639" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-marginal</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L640" class="blob-num js-line-number" data-line-number="640"></td>
        <td id="LC640" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-warning</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L641" class="blob-num js-line-number" data-line-number="641"></td>
        <td id="LC641" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-xmew</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L642" class="blob-num js-line-number" data-line-number="642"></td>
        <td id="LC642" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-xmew-bad</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L643" class="blob-num js-line-number" data-line-number="643"></td>
        <td id="LC643" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-url</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L644" class="blob-num js-line-number" data-line-number="644"></td>
        <td id="LC644" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-comment</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L645" class="blob-num js-line-number" data-line-number="645"></td>
        <td id="LC645" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-cite1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L646" class="blob-num js-line-number" data-line-number="646"></td>
        <td id="LC646" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-cite2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L647" class="blob-num js-line-number" data-line-number="647"></td>
        <td id="LC647" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-cite3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L648" class="blob-num js-line-number" data-line-number="648"></td>
        <td id="LC648" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-cite4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L649" class="blob-num js-line-number" data-line-number="649"></td>
        <td id="LC649" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-cite5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L650" class="blob-num js-line-number" data-line-number="650"></td>
        <td id="LC650" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-review</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L651" class="blob-num js-line-number" data-line-number="651"></td>
        <td id="LC651" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-escape</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L652" class="blob-num js-line-number" data-line-number="652"></td>
        <td id="LC652" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-delete</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L653" class="blob-num js-line-number" data-line-number="653"></td>
        <td id="LC653" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-unlink</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L654" class="blob-num js-line-number" data-line-number="654"></td>
        <td id="LC654" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-refile</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L655" class="blob-num js-line-number" data-line-number="655"></td>
        <td id="LC655" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-unread</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L656" class="blob-num js-line-number" data-line-number="656"></td>
        <td id="LC656" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-eof-message</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L657" class="blob-num js-line-number" data-line-number="657"></td>
        <td id="LC657" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mew-face-eof-part</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L658" class="blob-num js-line-number" data-line-number="658"></td>
        <td id="LC658" class="blob-code js-file-line"><span class="c1">;;;;; mic-paren</span></td>
      </tr>
      <tr>
        <td id="L659" class="blob-num js-line-number" data-line-number="659"></td>
        <td id="LC659" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">paren-face-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L660" class="blob-num js-line-number" data-line-number="660"></td>
        <td id="LC660" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">paren-face-mismatch</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-magenta</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L661" class="blob-num js-line-number" data-line-number="661"></td>
        <td id="LC661" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">paren-face-no-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L662" class="blob-num js-line-number" data-line-number="662"></td>
        <td id="LC662" class="blob-code js-file-line"><span class="c1">;;;;; mingus</span></td>
      </tr>
      <tr>
        <td id="L663" class="blob-num js-line-number" data-line-number="663"></td>
        <td id="LC663" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mingus-directory-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L664" class="blob-num js-line-number" data-line-number="664"></td>
        <td id="LC664" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mingus-pausing-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L665" class="blob-num js-line-number" data-line-number="665"></td>
        <td id="LC665" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mingus-playing-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L666" class="blob-num js-line-number" data-line-number="666"></td>
        <td id="LC666" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mingus-playlist-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L667" class="blob-num js-line-number" data-line-number="667"></td>
        <td id="LC667" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mingus-song-file-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L668" class="blob-num js-line-number" data-line-number="668"></td>
        <td id="LC668" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mingus-stopped-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L669" class="blob-num js-line-number" data-line-number="669"></td>
        <td id="LC669" class="blob-code js-file-line"><span class="c1">;;;;; nav</span></td>
      </tr>
      <tr>
        <td id="L670" class="blob-num js-line-number" data-line-number="670"></td>
        <td id="LC670" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">nav-face-heading</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L671" class="blob-num js-line-number" data-line-number="671"></td>
        <td id="LC671" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">nav-face-button-num</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L672" class="blob-num js-line-number" data-line-number="672"></td>
        <td id="LC672" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">nav-face-dir</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L673" class="blob-num js-line-number" data-line-number="673"></td>
        <td id="LC673" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">nav-face-hdir</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L674" class="blob-num js-line-number" data-line-number="674"></td>
        <td id="LC674" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">nav-face-file</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L675" class="blob-num js-line-number" data-line-number="675"></td>
        <td id="LC675" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">nav-face-hfile</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L676" class="blob-num js-line-number" data-line-number="676"></td>
        <td id="LC676" class="blob-code js-file-line"><span class="c1">;;;;; mu4e</span></td>
      </tr>
      <tr>
        <td id="L677" class="blob-num js-line-number" data-line-number="677"></td>
        <td id="LC677" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mu4e-cited-1-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span>    <span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L678" class="blob-num js-line-number" data-line-number="678"></td>
        <td id="LC678" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mu4e-cited-2-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L679" class="blob-num js-line-number" data-line-number="679"></td>
        <td id="LC679" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mu4e-cited-3-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-2</span>  <span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L680" class="blob-num js-line-number" data-line-number="680"></td>
        <td id="LC680" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mu4e-cited-4-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span>   <span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L681" class="blob-num js-line-number" data-line-number="681"></td>
        <td id="LC681" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mu4e-cited-5-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-4</span>  <span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L682" class="blob-num js-line-number" data-line-number="682"></td>
        <td id="LC682" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mu4e-cited-6-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span> <span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L683" class="blob-num js-line-number" data-line-number="683"></td>
        <td id="LC683" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mu4e-cited-7-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span>    <span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L684" class="blob-num js-line-number" data-line-number="684"></td>
        <td id="LC684" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mu4e-replied-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L685" class="blob-num js-line-number" data-line-number="685"></td>
        <td id="LC685" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mu4e-trashed-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span> <span class="nv">:strike-through</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L686" class="blob-num js-line-number" data-line-number="686"></td>
        <td id="LC686" class="blob-code js-file-line"><span class="c1">;;;;; mumamo</span></td>
      </tr>
      <tr>
        <td id="L687" class="blob-num js-line-number" data-line-number="687"></td>
        <td id="LC687" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mumamo-background-chunk-major</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="nv">nil</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L688" class="blob-num js-line-number" data-line-number="688"></td>
        <td id="LC688" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mumamo-background-chunk-submode1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L689" class="blob-num js-line-number" data-line-number="689"></td>
        <td id="LC689" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mumamo-background-chunk-submode2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L690" class="blob-num js-line-number" data-line-number="690"></td>
        <td id="LC690" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mumamo-background-chunk-submode3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L691" class="blob-num js-line-number" data-line-number="691"></td>
        <td id="LC691" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">mumamo-background-chunk-submode4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L692" class="blob-num js-line-number" data-line-number="692"></td>
        <td id="LC692" class="blob-code js-file-line"><span class="c1">;;;;; org-mode</span></td>
      </tr>
      <tr>
        <td id="L693" class="blob-num js-line-number" data-line-number="693"></td>
        <td id="LC693" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-agenda-date-today</span></td>
      </tr>
      <tr>
        <td id="L694" class="blob-num js-line-number" data-line-number="694"></td>
        <td id="LC694" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg+1</span> <span class="nv">:slant</span> <span class="nv">italic</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">)))</span> <span class="nv">t</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L695" class="blob-num js-line-number" data-line-number="695"></td>
        <td id="LC695" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-agenda-structure</span></td>
      </tr>
      <tr>
        <td id="L696" class="blob-num js-line-number" data-line-number="696"></td>
        <td id="LC696" class="blob-code js-file-line">     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-comment-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L697" class="blob-num js-line-number" data-line-number="697"></td>
        <td id="LC697" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-archived</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L698" class="blob-num js-line-number" data-line-number="698"></td>
        <td id="LC698" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-checkbox</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg+1</span></td>
      </tr>
      <tr>
        <td id="L699" class="blob-num js-line-number" data-line-number="699"></td>
        <td id="LC699" class="blob-code js-file-line">                                   <span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))))</span></td>
      </tr>
      <tr>
        <td id="L700" class="blob-num js-line-number" data-line-number="700"></td>
        <td id="LC700" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-date</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L701" class="blob-num js-line-number" data-line-number="701"></td>
        <td id="LC701" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-deadline-announce</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L702" class="blob-num js-line-number" data-line-number="702"></td>
        <td id="LC702" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-done</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L703" class="blob-num js-line-number" data-line-number="703"></td>
        <td id="LC703" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-formula</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L704" class="blob-num js-line-number" data-line-number="704"></td>
        <td id="LC704" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-headline-done</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L705" class="blob-num js-line-number" data-line-number="705"></td>
        <td id="LC705" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-hide</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L706" class="blob-num js-line-number" data-line-number="706"></td>
        <td id="LC706" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-level-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L707" class="blob-num js-line-number" data-line-number="707"></td>
        <td id="LC707" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-level-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L708" class="blob-num js-line-number" data-line-number="708"></td>
        <td id="LC708" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-level-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L709" class="blob-num js-line-number" data-line-number="709"></td>
        <td id="LC709" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-level-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L710" class="blob-num js-line-number" data-line-number="710"></td>
        <td id="LC710" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-level-5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L711" class="blob-num js-line-number" data-line-number="711"></td>
        <td id="LC711" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-level-6</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L712" class="blob-num js-line-number" data-line-number="712"></td>
        <td id="LC712" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-level-7</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L713" class="blob-num js-line-number" data-line-number="713"></td>
        <td id="LC713" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-level-8</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L714" class="blob-num js-line-number" data-line-number="714"></td>
        <td id="LC714" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-link</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L715" class="blob-num js-line-number" data-line-number="715"></td>
        <td id="LC715" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-scheduled</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L716" class="blob-num js-line-number" data-line-number="716"></td>
        <td id="LC716" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-scheduled-previously</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L717" class="blob-num js-line-number" data-line-number="717"></td>
        <td id="LC717" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-scheduled-today</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L718" class="blob-num js-line-number" data-line-number="718"></td>
        <td id="LC718" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-sexp-date</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L719" class="blob-num js-line-number" data-line-number="719"></td>
        <td id="LC719" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-special-keyword</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-comment-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L720" class="blob-num js-line-number" data-line-number="720"></td>
        <td id="LC720" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-table</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L721" class="blob-num js-line-number" data-line-number="721"></td>
        <td id="LC721" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-tag</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L722" class="blob-num js-line-number" data-line-number="722"></td>
        <td id="LC722" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-time-grid</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L723" class="blob-num js-line-number" data-line-number="723"></td>
        <td id="LC723" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-todo</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L724" class="blob-num js-line-number" data-line-number="724"></td>
        <td id="LC724" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-upcoming-deadline</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-keyword-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L725" class="blob-num js-line-number" data-line-number="725"></td>
        <td id="LC725" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-warning</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">nil</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L726" class="blob-num js-line-number" data-line-number="726"></td>
        <td id="LC726" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-column</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L727" class="blob-num js-line-number" data-line-number="727"></td>
        <td id="LC727" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-column-title</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span> <span class="nv">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L728" class="blob-num js-line-number" data-line-number="728"></td>
        <td id="LC728" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-mode-line-clock</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L729" class="blob-num js-line-number" data-line-number="729"></td>
        <td id="LC729" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-mode-line-clock-overrun</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L730" class="blob-num js-line-number" data-line-number="730"></td>
        <td id="LC730" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-ellipsis</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L731" class="blob-num js-line-number" data-line-number="731"></td>
        <td id="LC731" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">org-footnote</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L732" class="blob-num js-line-number" data-line-number="732"></td>
        <td id="LC732" class="blob-code js-file-line"><span class="c1">;;;;; outline</span></td>
      </tr>
      <tr>
        <td id="L733" class="blob-num js-line-number" data-line-number="733"></td>
        <td id="LC733" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">outline-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L734" class="blob-num js-line-number" data-line-number="734"></td>
        <td id="LC734" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">outline-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L735" class="blob-num js-line-number" data-line-number="735"></td>
        <td id="LC735" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">outline-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L736" class="blob-num js-line-number" data-line-number="736"></td>
        <td id="LC736" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">outline-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L737" class="blob-num js-line-number" data-line-number="737"></td>
        <td id="LC737" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">outline-5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L738" class="blob-num js-line-number" data-line-number="738"></td>
        <td id="LC738" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">outline-6</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L739" class="blob-num js-line-number" data-line-number="739"></td>
        <td id="LC739" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">outline-7</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L740" class="blob-num js-line-number" data-line-number="740"></td>
        <td id="LC740" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">outline-8</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L741" class="blob-num js-line-number" data-line-number="741"></td>
        <td id="LC741" class="blob-code js-file-line"><span class="c1">;;;;; p4</span></td>
      </tr>
      <tr>
        <td id="L742" class="blob-num js-line-number" data-line-number="742"></td>
        <td id="LC742" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">p4-depot-added-face</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:inherit</span> <span class="nv">diff-added</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L743" class="blob-num js-line-number" data-line-number="743"></td>
        <td id="LC743" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">p4-depot-branch-op-face</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:inherit</span> <span class="nv">diff-changed</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L744" class="blob-num js-line-number" data-line-number="744"></td>
        <td id="LC744" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">p4-depot-deleted-face</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:inherit</span> <span class="nv">diff-removed</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L745" class="blob-num js-line-number" data-line-number="745"></td>
        <td id="LC745" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">p4-depot-unmapped-face</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:inherit</span> <span class="nv">diff-changed</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L746" class="blob-num js-line-number" data-line-number="746"></td>
        <td id="LC746" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">p4-diff-change-face</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:inherit</span> <span class="nv">diff-changed</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L747" class="blob-num js-line-number" data-line-number="747"></td>
        <td id="LC747" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">p4-diff-del-face</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:inherit</span> <span class="nv">diff-removed</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L748" class="blob-num js-line-number" data-line-number="748"></td>
        <td id="LC748" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">p4-diff-file-face</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:inherit</span> <span class="nv">diff-file-header</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L749" class="blob-num js-line-number" data-line-number="749"></td>
        <td id="LC749" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">p4-diff-head-face</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:inherit</span> <span class="nv">diff-header</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L750" class="blob-num js-line-number" data-line-number="750"></td>
        <td id="LC750" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">p4-diff-ins-face</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:inherit</span> <span class="nv">diff-added</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L751" class="blob-num js-line-number" data-line-number="751"></td>
        <td id="LC751" class="blob-code js-file-line"><span class="c1">;;;;; perspective</span></td>
      </tr>
      <tr>
        <td id="L752" class="blob-num js-line-number" data-line-number="752"></td>
        <td id="LC752" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">persp-selected-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span> <span class="nv">:inherit</span> <span class="nv">mode-line</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L753" class="blob-num js-line-number" data-line-number="753"></td>
        <td id="LC753" class="blob-code js-file-line"><span class="c1">;;;;; powerline</span></td>
      </tr>
      <tr>
        <td id="L754" class="blob-num js-line-number" data-line-number="754"></td>
        <td id="LC754" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">powerline-active1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span> <span class="nv">:inherit</span> <span class="nv">mode-line</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L755" class="blob-num js-line-number" data-line-number="755"></td>
        <td id="LC755" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">powerline-active2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span> <span class="nv">:inherit</span> <span class="nv">mode-line</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L756" class="blob-num js-line-number" data-line-number="756"></td>
        <td id="LC756" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">powerline-inactive1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span> <span class="nv">:inherit</span> <span class="nv">mode-line-inactive</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L757" class="blob-num js-line-number" data-line-number="757"></td>
        <td id="LC757" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">powerline-inactive2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span> <span class="nv">:inherit</span> <span class="nv">mode-line-inactive</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L758" class="blob-num js-line-number" data-line-number="758"></td>
        <td id="LC758" class="blob-code js-file-line"><span class="c1">;;;;; proofgeneral</span></td>
      </tr>
      <tr>
        <td id="L759" class="blob-num js-line-number" data-line-number="759"></td>
        <td id="LC759" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-active-area-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L760" class="blob-num js-line-number" data-line-number="760"></td>
        <td id="LC760" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-boring-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L761" class="blob-num js-line-number" data-line-number="761"></td>
        <td id="LC761" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-command-mouse-highlight-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">proof-mouse-highlight-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L762" class="blob-num js-line-number" data-line-number="762"></td>
        <td id="LC762" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-debug-message-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">proof-boring-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L763" class="blob-num js-line-number" data-line-number="763"></td>
        <td id="LC763" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-declaration-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-keyword-face</span> <span class="nv">:foreground</span> <span class="nv">nil</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L764" class="blob-num js-line-number" data-line-number="764"></td>
        <td id="LC764" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-eager-annotation-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L765" class="blob-num js-line-number" data-line-number="765"></td>
        <td id="LC765" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-error-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L766" class="blob-num js-line-number" data-line-number="766"></td>
        <td id="LC766" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-highlight-dependency-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L767" class="blob-num js-line-number" data-line-number="767"></td>
        <td id="LC767" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-highlight-dependent-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L768" class="blob-num js-line-number" data-line-number="768"></td>
        <td id="LC768" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-locked-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-blue-5</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L769" class="blob-num js-line-number" data-line-number="769"></td>
        <td id="LC769" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-mouse-highlight-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L770" class="blob-num js-line-number" data-line-number="770"></td>
        <td id="LC770" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-queue-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L771" class="blob-num js-line-number" data-line-number="771"></td>
        <td id="LC771" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-region-mouse-highlight-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">proof-mouse-highlight-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L772" class="blob-num js-line-number" data-line-number="772"></td>
        <td id="LC772" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-script-highlight-error-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-red-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L773" class="blob-num js-line-number" data-line-number="773"></td>
        <td id="LC773" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-tacticals-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-constant-face</span> <span class="nv">:foreground</span> <span class="nv">nil</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L774" class="blob-num js-line-number" data-line-number="774"></td>
        <td id="LC774" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-tactics-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-constant-face</span> <span class="nv">:foreground</span> <span class="nv">nil</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L775" class="blob-num js-line-number" data-line-number="775"></td>
        <td id="LC775" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">proof-warning-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L776" class="blob-num js-line-number" data-line-number="776"></td>
        <td id="LC776" class="blob-code js-file-line"><span class="c1">;;;;; rainbow-delimiters</span></td>
      </tr>
      <tr>
        <td id="L777" class="blob-num js-line-number" data-line-number="777"></td>
        <td id="LC777" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-1-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L778" class="blob-num js-line-number" data-line-number="778"></td>
        <td id="LC778" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-2-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L779" class="blob-num js-line-number" data-line-number="779"></td>
        <td id="LC779" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-3-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L780" class="blob-num js-line-number" data-line-number="780"></td>
        <td id="LC780" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-4-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L781" class="blob-num js-line-number" data-line-number="781"></td>
        <td id="LC781" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-5-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L782" class="blob-num js-line-number" data-line-number="782"></td>
        <td id="LC782" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-6-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L783" class="blob-num js-line-number" data-line-number="783"></td>
        <td id="LC783" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-7-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L784" class="blob-num js-line-number" data-line-number="784"></td>
        <td id="LC784" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-8-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L785" class="blob-num js-line-number" data-line-number="785"></td>
        <td id="LC785" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-9-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L786" class="blob-num js-line-number" data-line-number="786"></td>
        <td id="LC786" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-10-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L787" class="blob-num js-line-number" data-line-number="787"></td>
        <td id="LC787" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-11-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L788" class="blob-num js-line-number" data-line-number="788"></td>
        <td id="LC788" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-12-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-5</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L789" class="blob-num js-line-number" data-line-number="789"></td>
        <td id="LC789" class="blob-code js-file-line"><span class="c1">;;;;; rcirc</span></td>
      </tr>
      <tr>
        <td id="L790" class="blob-num js-line-number" data-line-number="790"></td>
        <td id="LC790" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-my-nick</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L791" class="blob-num js-line-number" data-line-number="791"></td>
        <td id="LC791" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-other-nick</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L792" class="blob-num js-line-number" data-line-number="792"></td>
        <td id="LC792" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-bright-nick</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L793" class="blob-num js-line-number" data-line-number="793"></td>
        <td id="LC793" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-dim-nick</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L794" class="blob-num js-line-number" data-line-number="794"></td>
        <td id="LC794" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-server</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L795" class="blob-num js-line-number" data-line-number="795"></td>
        <td id="LC795" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-server-prefix</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L796" class="blob-num js-line-number" data-line-number="796"></td>
        <td id="LC796" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-timestamp</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L797" class="blob-num js-line-number" data-line-number="797"></td>
        <td id="LC797" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-nick-in-message</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L798" class="blob-num js-line-number" data-line-number="798"></td>
        <td id="LC798" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-nick-in-message-full-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L799" class="blob-num js-line-number" data-line-number="799"></td>
        <td id="LC799" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-prompt</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:bold</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L800" class="blob-num js-line-number" data-line-number="800"></td>
        <td id="LC800" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-track-nick</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inverse-video</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L801" class="blob-num js-line-number" data-line-number="801"></td>
        <td id="LC801" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-track-keyword</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L802" class="blob-num js-line-number" data-line-number="802"></td>
        <td id="LC802" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-url</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L803" class="blob-num js-line-number" data-line-number="803"></td>
        <td id="LC803" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rcirc-keyword</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:bold</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L804" class="blob-num js-line-number" data-line-number="804"></td>
        <td id="LC804" class="blob-code js-file-line"><span class="c1">;;;;; rpm-mode</span></td>
      </tr>
      <tr>
        <td id="L805" class="blob-num js-line-number" data-line-number="805"></td>
        <td id="LC805" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-dir-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L806" class="blob-num js-line-number" data-line-number="806"></td>
        <td id="LC806" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-doc-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L807" class="blob-num js-line-number" data-line-number="807"></td>
        <td id="LC807" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-ghost-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L808" class="blob-num js-line-number" data-line-number="808"></td>
        <td id="LC808" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-macro-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L809" class="blob-num js-line-number" data-line-number="809"></td>
        <td id="LC809" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-obsolete-tag-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L810" class="blob-num js-line-number" data-line-number="810"></td>
        <td id="LC810" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-package-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L811" class="blob-num js-line-number" data-line-number="811"></td>
        <td id="LC811" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-section-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L812" class="blob-num js-line-number" data-line-number="812"></td>
        <td id="LC812" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-tag-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L813" class="blob-num js-line-number" data-line-number="813"></td>
        <td id="LC813" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-var-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L814" class="blob-num js-line-number" data-line-number="814"></td>
        <td id="LC814" class="blob-code js-file-line"><span class="c1">;;;;; rst-mode</span></td>
      </tr>
      <tr>
        <td id="L815" class="blob-num js-line-number" data-line-number="815"></td>
        <td id="LC815" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rst-level-1-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L816" class="blob-num js-line-number" data-line-number="816"></td>
        <td id="LC816" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rst-level-2-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L817" class="blob-num js-line-number" data-line-number="817"></td>
        <td id="LC817" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rst-level-3-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L818" class="blob-num js-line-number" data-line-number="818"></td>
        <td id="LC818" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rst-level-4-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L819" class="blob-num js-line-number" data-line-number="819"></td>
        <td id="LC819" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rst-level-5-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L820" class="blob-num js-line-number" data-line-number="820"></td>
        <td id="LC820" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">rst-level-6-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L821" class="blob-num js-line-number" data-line-number="821"></td>
        <td id="LC821" class="blob-code js-file-line"><span class="c1">;;;;; sh-mode</span></td>
      </tr>
      <tr>
        <td id="L822" class="blob-num js-line-number" data-line-number="822"></td>
        <td id="LC822" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">sh-heredoc</span>     <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:bold</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L823" class="blob-num js-line-number" data-line-number="823"></td>
        <td id="LC823" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">sh-quoted-exec</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L824" class="blob-num js-line-number" data-line-number="824"></td>
        <td id="LC824" class="blob-code js-file-line"><span class="c1">;;;;; show-paren</span></td>
      </tr>
      <tr>
        <td id="L825" class="blob-num js-line-number" data-line-number="825"></td>
        <td id="LC825" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">show-paren-mismatch</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L826" class="blob-num js-line-number" data-line-number="826"></td>
        <td id="LC826" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">show-paren-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L827" class="blob-num js-line-number" data-line-number="827"></td>
        <td id="LC827" class="blob-code js-file-line"><span class="c1">;;;;; smartparens</span></td>
      </tr>
      <tr>
        <td id="L828" class="blob-num js-line-number" data-line-number="828"></td>
        <td id="LC828" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">sp-show-pair-mismatch-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L829" class="blob-num js-line-number" data-line-number="829"></td>
        <td id="LC829" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">sp-show-pair-match-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L830" class="blob-num js-line-number" data-line-number="830"></td>
        <td id="LC830" class="blob-code js-file-line"><span class="c1">;;;;; sml-mode-line</span></td>
      </tr>
      <tr>
        <td id="L831" class="blob-num js-line-number" data-line-number="831"></td>
        <td id="LC831" class="blob-code js-file-line">   <span class="o">&#39;</span><span class="p">(</span><span class="nv">sml-modeline-end-face</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:inherit</span> <span class="nv">default</span> <span class="nv">:width</span> <span class="nv">condensed</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L832" class="blob-num js-line-number" data-line-number="832"></td>
        <td id="LC832" class="blob-code js-file-line"><span class="c1">;;;;; SLIME</span></td>
      </tr>
      <tr>
        <td id="L833" class="blob-num js-line-number" data-line-number="833"></td>
        <td id="LC833" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">slime-repl-output-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L834" class="blob-num js-line-number" data-line-number="834"></td>
        <td id="LC834" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">slime-repl-inputed-output-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L835" class="blob-num js-line-number" data-line-number="835"></td>
        <td id="LC835" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">slime-error-face</span></td>
      </tr>
      <tr>
        <td id="L836" class="blob-num js-line-number" data-line-number="836"></td>
        <td id="LC836" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L837" class="blob-num js-line-number" data-line-number="837"></td>
        <td id="LC837" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L838" class="blob-num js-line-number" data-line-number="838"></td>
        <td id="LC838" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span></td>
      </tr>
      <tr>
        <td id="L839" class="blob-num js-line-number" data-line-number="839"></td>
        <td id="LC839" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L840" class="blob-num js-line-number" data-line-number="840"></td>
        <td id="LC840" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">slime-warning-face</span></td>
      </tr>
      <tr>
        <td id="L841" class="blob-num js-line-number" data-line-number="841"></td>
        <td id="LC841" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L842" class="blob-num js-line-number" data-line-number="842"></td>
        <td id="LC842" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L843" class="blob-num js-line-number" data-line-number="843"></td>
        <td id="LC843" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span></td>
      </tr>
      <tr>
        <td id="L844" class="blob-num js-line-number" data-line-number="844"></td>
        <td id="LC844" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L845" class="blob-num js-line-number" data-line-number="845"></td>
        <td id="LC845" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">slime-style-warning-face</span></td>
      </tr>
      <tr>
        <td id="L846" class="blob-num js-line-number" data-line-number="846"></td>
        <td id="LC846" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L847" class="blob-num js-line-number" data-line-number="847"></td>
        <td id="LC847" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L848" class="blob-num js-line-number" data-line-number="848"></td>
        <td id="LC848" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span></td>
      </tr>
      <tr>
        <td id="L849" class="blob-num js-line-number" data-line-number="849"></td>
        <td id="LC849" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L850" class="blob-num js-line-number" data-line-number="850"></td>
        <td id="LC850" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">slime-note-face</span></td>
      </tr>
      <tr>
        <td id="L851" class="blob-num js-line-number" data-line-number="851"></td>
        <td id="LC851" class="blob-code js-file-line">     <span class="p">((((</span><span class="nf">supports</span> <span class="nv">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L852" class="blob-num js-line-number" data-line-number="852"></td>
        <td id="LC852" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="p">(</span><span class="nf">:style</span> <span class="nv">wave</span> <span class="nv">:color</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L853" class="blob-num js-line-number" data-line-number="853"></td>
        <td id="LC853" class="blob-code js-file-line">      <span class="p">(</span><span class="nf">t</span></td>
      </tr>
      <tr>
        <td id="L854" class="blob-num js-line-number" data-line-number="854"></td>
        <td id="LC854" class="blob-code js-file-line">       <span class="p">(</span><span class="nf">:underline</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L855" class="blob-num js-line-number" data-line-number="855"></td>
        <td id="LC855" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">slime-highlight-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">highlight</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L856" class="blob-num js-line-number" data-line-number="856"></td>
        <td id="LC856" class="blob-code js-file-line"><span class="c1">;;;;; speedbar</span></td>
      </tr>
      <tr>
        <td id="L857" class="blob-num js-line-number" data-line-number="857"></td>
        <td id="LC857" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">speedbar-button-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L858" class="blob-num js-line-number" data-line-number="858"></td>
        <td id="LC858" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">speedbar-directory-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L859" class="blob-num js-line-number" data-line-number="859"></td>
        <td id="LC859" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">speedbar-file-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L860" class="blob-num js-line-number" data-line-number="860"></td>
        <td id="LC860" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">speedbar-highlight-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L861" class="blob-num js-line-number" data-line-number="861"></td>
        <td id="LC861" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">speedbar-selected-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L862" class="blob-num js-line-number" data-line-number="862"></td>
        <td id="LC862" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">speedbar-separator-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L863" class="blob-num js-line-number" data-line-number="863"></td>
        <td id="LC863" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">speedbar-tag-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L864" class="blob-num js-line-number" data-line-number="864"></td>
        <td id="LC864" class="blob-code js-file-line"><span class="c1">;;;;; tabbar</span></td>
      </tr>
      <tr>
        <td id="L865" class="blob-num js-line-number" data-line-number="865"></td>
        <td id="LC865" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">tabbar-button</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span></td>
      </tr>
      <tr>
        <td id="L866" class="blob-num js-line-number" data-line-number="866"></td>
        <td id="LC866" class="blob-code js-file-line">                                    <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L867" class="blob-num js-line-number" data-line-number="867"></td>
        <td id="LC867" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">tabbar-selected</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span></td>
      </tr>
      <tr>
        <td id="L868" class="blob-num js-line-number" data-line-number="868"></td>
        <td id="LC868" class="blob-code js-file-line">                                      <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span></td>
      </tr>
      <tr>
        <td id="L869" class="blob-num js-line-number" data-line-number="869"></td>
        <td id="LC869" class="blob-code js-file-line">                                      <span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">pressed-button</span><span class="p">)))))</span></td>
      </tr>
      <tr>
        <td id="L870" class="blob-num js-line-number" data-line-number="870"></td>
        <td id="LC870" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">tabbar-unselected</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span></td>
      </tr>
      <tr>
        <td id="L871" class="blob-num js-line-number" data-line-number="871"></td>
        <td id="LC871" class="blob-code js-file-line">                                        <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span></td>
      </tr>
      <tr>
        <td id="L872" class="blob-num js-line-number" data-line-number="872"></td>
        <td id="LC872" class="blob-code js-file-line">                                        <span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))))</span></td>
      </tr>
      <tr>
        <td id="L873" class="blob-num js-line-number" data-line-number="873"></td>
        <td id="LC873" class="blob-code js-file-line"><span class="c1">;;;;; term</span></td>
      </tr>
      <tr>
        <td id="L874" class="blob-num js-line-number" data-line-number="874"></td>
        <td id="LC874" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">term-color-black</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span></td>
      </tr>
      <tr>
        <td id="L875" class="blob-num js-line-number" data-line-number="875"></td>
        <td id="LC875" class="blob-code js-file-line">                                       <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L876" class="blob-num js-line-number" data-line-number="876"></td>
        <td id="LC876" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">term-color-red</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-2</span></td>
      </tr>
      <tr>
        <td id="L877" class="blob-num js-line-number" data-line-number="877"></td>
        <td id="LC877" class="blob-code js-file-line">                                       <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L878" class="blob-num js-line-number" data-line-number="878"></td>
        <td id="LC878" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">term-color-green</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span></td>
      </tr>
      <tr>
        <td id="L879" class="blob-num js-line-number" data-line-number="879"></td>
        <td id="LC879" class="blob-code js-file-line">                                       <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L880" class="blob-num js-line-number" data-line-number="880"></td>
        <td id="LC880" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">term-color-yellow</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span></td>
      </tr>
      <tr>
        <td id="L881" class="blob-num js-line-number" data-line-number="881"></td>
        <td id="LC881" class="blob-code js-file-line">                                       <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L882" class="blob-num js-line-number" data-line-number="882"></td>
        <td id="LC882" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">term-color-blue</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span></td>
      </tr>
      <tr>
        <td id="L883" class="blob-num js-line-number" data-line-number="883"></td>
        <td id="LC883" class="blob-code js-file-line">                                      <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-blue-4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L884" class="blob-num js-line-number" data-line-number="884"></td>
        <td id="LC884" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">term-color-magenta</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span></td>
      </tr>
      <tr>
        <td id="L885" class="blob-num js-line-number" data-line-number="885"></td>
        <td id="LC885" class="blob-code js-file-line">                                         <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L886" class="blob-num js-line-number" data-line-number="886"></td>
        <td id="LC886" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">term-color-cyan</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span></td>
      </tr>
      <tr>
        <td id="L887" class="blob-num js-line-number" data-line-number="887"></td>
        <td id="LC887" class="blob-code js-file-line">                                       <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L888" class="blob-num js-line-number" data-line-number="888"></td>
        <td id="LC888" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">term-color-white</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span></td>
      </tr>
      <tr>
        <td id="L889" class="blob-num js-line-number" data-line-number="889"></td>
        <td id="LC889" class="blob-code js-file-line">                                       <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-fg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L890" class="blob-num js-line-number" data-line-number="890"></td>
        <td id="LC890" class="blob-code js-file-line">   <span class="o">&#39;</span><span class="p">(</span><span class="nv">term-default-fg-color</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">term-color-white</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L891" class="blob-num js-line-number" data-line-number="891"></td>
        <td id="LC891" class="blob-code js-file-line">   <span class="o">&#39;</span><span class="p">(</span><span class="nv">term-default-bg-color</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">term-color-black</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L892" class="blob-num js-line-number" data-line-number="892"></td>
        <td id="LC892" class="blob-code js-file-line"><span class="c1">;;;;; undo-tree</span></td>
      </tr>
      <tr>
        <td id="L893" class="blob-num js-line-number" data-line-number="893"></td>
        <td id="LC893" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">undo-tree-visualizer-active-branch-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg+1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L894" class="blob-num js-line-number" data-line-number="894"></td>
        <td id="LC894" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">undo-tree-visualizer-current-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L895" class="blob-num js-line-number" data-line-number="895"></td>
        <td id="LC895" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">undo-tree-visualizer-default-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L896" class="blob-num js-line-number" data-line-number="896"></td>
        <td id="LC896" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">undo-tree-visualizer-register-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L897" class="blob-num js-line-number" data-line-number="897"></td>
        <td id="LC897" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">undo-tree-visualizer-unmodified-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L898" class="blob-num js-line-number" data-line-number="898"></td>
        <td id="LC898" class="blob-code js-file-line"><span class="c1">;;;;; volatile-highlights</span></td>
      </tr>
      <tr>
        <td id="L899" class="blob-num js-line-number" data-line-number="899"></td>
        <td id="LC899" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">vhl/default-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L900" class="blob-num js-line-number" data-line-number="900"></td>
        <td id="LC900" class="blob-code js-file-line"><span class="c1">;;;;; web-mode</span></td>
      </tr>
      <tr>
        <td id="L901" class="blob-num js-line-number" data-line-number="901"></td>
        <td id="LC901" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-builtin-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="o">,</span><span class="nv">font-lock-builtin-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L902" class="blob-num js-line-number" data-line-number="902"></td>
        <td id="LC902" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-comment-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="o">,</span><span class="nv">font-lock-comment-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L903" class="blob-num js-line-number" data-line-number="903"></td>
        <td id="LC903" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-constant-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="o">,</span><span class="nv">font-lock-constant-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L904" class="blob-num js-line-number" data-line-number="904"></td>
        <td id="LC904" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-css-at-rule-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L905" class="blob-num js-line-number" data-line-number="905"></td>
        <td id="LC905" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-css-prop-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L906" class="blob-num js-line-number" data-line-number="906"></td>
        <td id="LC906" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-css-pseudo-class-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L907" class="blob-num js-line-number" data-line-number="907"></td>
        <td id="LC907" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-css-rule-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L908" class="blob-num js-line-number" data-line-number="908"></td>
        <td id="LC908" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-doctype-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="o">,</span><span class="nv">font-lock-comment-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L909" class="blob-num js-line-number" data-line-number="909"></td>
        <td id="LC909" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-folded-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:underline</span> <span class="nv">t</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L910" class="blob-num js-line-number" data-line-number="910"></td>
        <td id="LC910" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-function-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L911" class="blob-num js-line-number" data-line-number="911"></td>
        <td id="LC911" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-html-attr-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L912" class="blob-num js-line-number" data-line-number="912"></td>
        <td id="LC912" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-html-attr-value-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="o">,</span><span class="nv">font-lock-string-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L913" class="blob-num js-line-number" data-line-number="913"></td>
        <td id="LC913" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-html-tag-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L914" class="blob-num js-line-number" data-line-number="914"></td>
        <td id="LC914" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-keyword-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="o">,</span><span class="nv">font-lock-keyword-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L915" class="blob-num js-line-number" data-line-number="915"></td>
        <td id="LC915" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-preprocessor-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="o">,</span><span class="nv">font-lock-preprocessor-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L916" class="blob-num js-line-number" data-line-number="916"></td>
        <td id="LC916" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-string-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="o">,</span><span class="nv">font-lock-string-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L917" class="blob-num js-line-number" data-line-number="917"></td>
        <td id="LC917" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-type-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="o">,</span><span class="nv">font-lock-type-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L918" class="blob-num js-line-number" data-line-number="918"></td>
        <td id="LC918" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-variable-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="o">,</span><span class="nv">font-lock-variable-name-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L919" class="blob-num js-line-number" data-line-number="919"></td>
        <td id="LC919" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-server-background-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L920" class="blob-num js-line-number" data-line-number="920"></td>
        <td id="LC920" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-server-comment-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">web-mode-comment-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L921" class="blob-num js-line-number" data-line-number="921"></td>
        <td id="LC921" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-server-string-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">web-mode-string-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L922" class="blob-num js-line-number" data-line-number="922"></td>
        <td id="LC922" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-symbol-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-constant-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L923" class="blob-num js-line-number" data-line-number="923"></td>
        <td id="LC923" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-warning-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-warning-face</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L924" class="blob-num js-line-number" data-line-number="924"></td>
        <td id="LC924" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">web-mode-whitespaces-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L925" class="blob-num js-line-number" data-line-number="925"></td>
        <td id="LC925" class="blob-code js-file-line"><span class="c1">;;;;; whitespace-mode</span></td>
      </tr>
      <tr>
        <td id="L926" class="blob-num js-line-number" data-line-number="926"></td>
        <td id="LC926" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">whitespace-space</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L927" class="blob-num js-line-number" data-line-number="927"></td>
        <td id="LC927" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">whitespace-hspace</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L928" class="blob-num js-line-number" data-line-number="928"></td>
        <td id="LC928" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">whitespace-tab</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L929" class="blob-num js-line-number" data-line-number="929"></td>
        <td id="LC929" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">whitespace-newline</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L930" class="blob-num js-line-number" data-line-number="930"></td>
        <td id="LC930" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">whitespace-trailing</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L931" class="blob-num js-line-number" data-line-number="931"></td>
        <td id="LC931" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">whitespace-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L932" class="blob-num js-line-number" data-line-number="932"></td>
        <td id="LC932" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">whitespace-space-before-tab</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L933" class="blob-num js-line-number" data-line-number="933"></td>
        <td id="LC933" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">whitespace-indentation</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L934" class="blob-num js-line-number" data-line-number="934"></td>
        <td id="LC934" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">whitespace-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L935" class="blob-num js-line-number" data-line-number="935"></td>
        <td id="LC935" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">whitespace-space-after-tab</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L936" class="blob-num js-line-number" data-line-number="936"></td>
        <td id="LC936" class="blob-code js-file-line"><span class="c1">;;;;; wanderlust</span></td>
      </tr>
      <tr>
        <td id="L937" class="blob-num js-line-number" data-line-number="937"></td>
        <td id="LC937" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-few-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L938" class="blob-num js-line-number" data-line-number="938"></td>
        <td id="LC938" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-many-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L939" class="blob-num js-line-number" data-line-number="939"></td>
        <td id="LC939" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-path-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L940" class="blob-num js-line-number" data-line-number="940"></td>
        <td id="LC940" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-unread-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L941" class="blob-num js-line-number" data-line-number="941"></td>
        <td id="LC941" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-zero-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L942" class="blob-num js-line-number" data-line-number="942"></td>
        <td id="LC942" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-unknown-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L943" class="blob-num js-line-number" data-line-number="943"></td>
        <td id="LC943" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-citation-header</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L944" class="blob-num js-line-number" data-line-number="944"></td>
        <td id="LC944" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-cited-text-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L945" class="blob-num js-line-number" data-line-number="945"></td>
        <td id="LC945" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-cited-text-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L946" class="blob-num js-line-number" data-line-number="946"></td>
        <td id="LC946" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-cited-text-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L947" class="blob-num js-line-number" data-line-number="947"></td>
        <td id="LC947" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-cited-text-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L948" class="blob-num js-line-number" data-line-number="948"></td>
        <td id="LC948" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-header-contents-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L949" class="blob-num js-line-number" data-line-number="949"></td>
        <td id="LC949" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-headers-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L950" class="blob-num js-line-number" data-line-number="950"></td>
        <td id="LC950" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-important-header-contents</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L951" class="blob-num js-line-number" data-line-number="951"></td>
        <td id="LC951" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-header-contents</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L952" class="blob-num js-line-number" data-line-number="952"></td>
        <td id="LC952" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-important-header-contents2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L953" class="blob-num js-line-number" data-line-number="953"></td>
        <td id="LC953" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-signature</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L954" class="blob-num js-line-number" data-line-number="954"></td>
        <td id="LC954" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-unimportant-header-contents</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L955" class="blob-num js-line-number" data-line-number="955"></td>
        <td id="LC955" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-answered-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L956" class="blob-num js-line-number" data-line-number="956"></td>
        <td id="LC956" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-disposed-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span></td>
      </tr>
      <tr>
        <td id="L957" class="blob-num js-line-number" data-line-number="957"></td>
        <td id="LC957" class="blob-code js-file-line">                                                         <span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L958" class="blob-num js-line-number" data-line-number="958"></td>
        <td id="LC958" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-new-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L959" class="blob-num js-line-number" data-line-number="959"></td>
        <td id="LC959" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-normal-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L960" class="blob-num js-line-number" data-line-number="960"></td>
        <td id="LC960" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-thread-top-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L961" class="blob-num js-line-number" data-line-number="961"></td>
        <td id="LC961" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-thread-indent-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L962" class="blob-num js-line-number" data-line-number="962"></td>
        <td id="LC962" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-refiled-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L963" class="blob-num js-line-number" data-line-number="963"></td>
        <td id="LC963" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-displaying-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L964" class="blob-num js-line-number" data-line-number="964"></td>
        <td id="LC964" class="blob-code js-file-line"><span class="c1">;;;;; which-func-mode</span></td>
      </tr>
      <tr>
        <td id="L965" class="blob-num js-line-number" data-line-number="965"></td>
        <td id="LC965" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">which-func</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L966" class="blob-num js-line-number" data-line-number="966"></td>
        <td id="LC966" class="blob-code js-file-line"><span class="c1">;;;;; yascroll</span></td>
      </tr>
      <tr>
        <td id="L967" class="blob-num js-line-number" data-line-number="967"></td>
        <td id="LC967" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">yascroll:thumb-text-area</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L968" class="blob-num js-line-number" data-line-number="968"></td>
        <td id="LC968" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">yascroll:thumb-fringe</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L969" class="blob-num js-line-number" data-line-number="969"></td>
        <td id="LC969" class="blob-code js-file-line">   <span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L970" class="blob-num js-line-number" data-line-number="970"></td>
        <td id="LC970" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L971" class="blob-num js-line-number" data-line-number="971"></td>
        <td id="LC971" class="blob-code js-file-line"><span class="c1">;;; Theme Variables</span></td>
      </tr>
      <tr>
        <td id="L972" class="blob-num js-line-number" data-line-number="972"></td>
        <td id="LC972" class="blob-code js-file-line"><span class="p">(</span><span class="nf">zenburn-with-color-variables</span></td>
      </tr>
      <tr>
        <td id="L973" class="blob-num js-line-number" data-line-number="973"></td>
        <td id="LC973" class="blob-code js-file-line">  <span class="p">(</span><span class="nf">custom-theme-set-variables</span></td>
      </tr>
      <tr>
        <td id="L974" class="blob-num js-line-number" data-line-number="974"></td>
        <td id="LC974" class="blob-code js-file-line">   <span class="ss">&#39;zenburn</span></td>
      </tr>
      <tr>
        <td id="L975" class="blob-num js-line-number" data-line-number="975"></td>
        <td id="LC975" class="blob-code js-file-line"><span class="c1">;;;;; ansi-color</span></td>
      </tr>
      <tr>
        <td id="L976" class="blob-num js-line-number" data-line-number="976"></td>
        <td id="LC976" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">ansi-color-names-vector</span> <span class="p">[</span><span class="o">,</span><span class="nv">zenburn-bg</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="o">,</span><span class="nv">zenburn-green</span> <span class="o">,</span><span class="nv">zenburn-yellow</span></td>
      </tr>
      <tr>
        <td id="L977" class="blob-num js-line-number" data-line-number="977"></td>
        <td id="LC977" class="blob-code js-file-line">                                          <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="o">,</span><span class="nv">zenburn-magenta</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">])</span></td>
      </tr>
      <tr>
        <td id="L978" class="blob-num js-line-number" data-line-number="978"></td>
        <td id="LC978" class="blob-code js-file-line"><span class="c1">;;;;; fill-column-indicator</span></td>
      </tr>
      <tr>
        <td id="L979" class="blob-num js-line-number" data-line-number="979"></td>
        <td id="LC979" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">fci-rule-color</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L980" class="blob-num js-line-number" data-line-number="980"></td>
        <td id="LC980" class="blob-code js-file-line"><span class="c1">;;;;; vc-annotate</span></td>
      </tr>
      <tr>
        <td id="L981" class="blob-num js-line-number" data-line-number="981"></td>
        <td id="LC981" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">vc-annotate-color-map</span></td>
      </tr>
      <tr>
        <td id="L982" class="blob-num js-line-number" data-line-number="982"></td>
        <td id="LC982" class="blob-code js-file-line">     <span class="o">&#39;</span><span class="p">((</span> <span class="mi">20</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L983" class="blob-num js-line-number" data-line-number="983"></td>
        <td id="LC983" class="blob-code js-file-line">       <span class="p">(</span> <span class="mi">40</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L984" class="blob-num js-line-number" data-line-number="984"></td>
        <td id="LC984" class="blob-code js-file-line">       <span class="p">(</span> <span class="mi">60</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L985" class="blob-num js-line-number" data-line-number="985"></td>
        <td id="LC985" class="blob-code js-file-line">       <span class="p">(</span> <span class="mi">80</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L986" class="blob-num js-line-number" data-line-number="986"></td>
        <td id="LC986" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">100</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L987" class="blob-num js-line-number" data-line-number="987"></td>
        <td id="LC987" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">120</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L988" class="blob-num js-line-number" data-line-number="988"></td>
        <td id="LC988" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">140</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-green-1</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L989" class="blob-num js-line-number" data-line-number="989"></td>
        <td id="LC989" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">160</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L990" class="blob-num js-line-number" data-line-number="990"></td>
        <td id="LC990" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">180</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L991" class="blob-num js-line-number" data-line-number="991"></td>
        <td id="LC991" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">200</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L992" class="blob-num js-line-number" data-line-number="992"></td>
        <td id="LC992" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">220</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L993" class="blob-num js-line-number" data-line-number="993"></td>
        <td id="LC993" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">240</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L994" class="blob-num js-line-number" data-line-number="994"></td>
        <td id="LC994" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">260</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L995" class="blob-num js-line-number" data-line-number="995"></td>
        <td id="LC995" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">280</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-blue-2</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L996" class="blob-num js-line-number" data-line-number="996"></td>
        <td id="LC996" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">300</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L997" class="blob-num js-line-number" data-line-number="997"></td>
        <td id="LC997" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">320</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L998" class="blob-num js-line-number" data-line-number="998"></td>
        <td id="LC998" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">340</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L999" class="blob-num js-line-number" data-line-number="999"></td>
        <td id="LC999" class="blob-code js-file-line">       <span class="p">(</span><span class="mi">360</span><span class="o">.</span> <span class="o">.</span> <span class="o">,</span><span class="nv">zenburn-magenta</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L1000" class="blob-num js-line-number" data-line-number="1000"></td>
        <td id="LC1000" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">vc-annotate-very-old-color</span> <span class="o">,</span><span class="nv">zenburn-magenta</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L1001" class="blob-num js-line-number" data-line-number="1001"></td>
        <td id="LC1001" class="blob-code js-file-line">   <span class="o">`</span><span class="p">(</span><span class="nf">vc-annotate-background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L1002" class="blob-num js-line-number" data-line-number="1002"></td>
        <td id="LC1002" class="blob-code js-file-line">   <span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L1003" class="blob-num js-line-number" data-line-number="1003"></td>
        <td id="LC1003" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1004" class="blob-num js-line-number" data-line-number="1004"></td>
        <td id="LC1004" class="blob-code js-file-line"><span class="c1">;;; Rainbow Support</span></td>
      </tr>
      <tr>
        <td id="L1005" class="blob-num js-line-number" data-line-number="1005"></td>
        <td id="LC1005" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1006" class="blob-num js-line-number" data-line-number="1006"></td>
        <td id="LC1006" class="blob-code js-file-line"><span class="p">(</span><span class="nf">declare-function</span> <span class="nv">rainbow-mode</span> <span class="ss">&#39;rainbow-mode</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L1007" class="blob-num js-line-number" data-line-number="1007"></td>
        <td id="LC1007" class="blob-code js-file-line"><span class="p">(</span><span class="nf">declare-function</span> <span class="nv">rainbow-colorize-by-assoc</span> <span class="ss">&#39;rainbow-mode</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L1008" class="blob-num js-line-number" data-line-number="1008"></td>
        <td id="LC1008" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1009" class="blob-num js-line-number" data-line-number="1009"></td>
        <td id="LC1009" class="blob-code js-file-line"><span class="p">(</span><span class="nf">defvar</span> <span class="nv">zenburn-add-font-lock-keywords</span> <span class="nv">nil</span></td>
      </tr>
      <tr>
        <td id="L1010" class="blob-num js-line-number" data-line-number="1010"></td>
        <td id="LC1010" class="blob-code js-file-line">  <span class="s">&quot;Whether to add font-lock keywords for zenburn color names.</span></td>
      </tr>
      <tr>
        <td id="L1011" class="blob-num js-line-number" data-line-number="1011"></td>
        <td id="LC1011" class="blob-code js-file-line"><span class="s">In buffers visiting library `zenburn-theme.el&#39; the zenburn</span></td>
      </tr>
      <tr>
        <td id="L1012" class="blob-num js-line-number" data-line-number="1012"></td>
        <td id="LC1012" class="blob-code js-file-line"><span class="s">specific keywords are always added.  In all other Emacs-Lisp</span></td>
      </tr>
      <tr>
        <td id="L1013" class="blob-num js-line-number" data-line-number="1013"></td>
        <td id="LC1013" class="blob-code js-file-line"><span class="s">buffers this variable controls whether this should be done.</span></td>
      </tr>
      <tr>
        <td id="L1014" class="blob-num js-line-number" data-line-number="1014"></td>
        <td id="LC1014" class="blob-code js-file-line"><span class="s">This requires library `rainbow-mode&#39;.&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L1015" class="blob-num js-line-number" data-line-number="1015"></td>
        <td id="LC1015" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1016" class="blob-num js-line-number" data-line-number="1016"></td>
        <td id="LC1016" class="blob-code js-file-line"><span class="p">(</span><span class="nf">defvar</span> <span class="nv">zenburn-colors-font-lock-keywords</span> <span class="nv">nil</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L1017" class="blob-num js-line-number" data-line-number="1017"></td>
        <td id="LC1017" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1018" class="blob-num js-line-number" data-line-number="1018"></td>
        <td id="LC1018" class="blob-code js-file-line"><span class="c1">;; (defadvice rainbow-turn-on (after zenburn activate)</span></td>
      </tr>
      <tr>
        <td id="L1019" class="blob-num js-line-number" data-line-number="1019"></td>
        <td id="LC1019" class="blob-code js-file-line"><span class="c1">;;   &quot;Maybe also add font-lock keywords for zenburn colors.&quot;</span></td>
      </tr>
      <tr>
        <td id="L1020" class="blob-num js-line-number" data-line-number="1020"></td>
        <td id="LC1020" class="blob-code js-file-line"><span class="c1">;;   (when (and (derived-mode-p &#39;emacs-lisp-mode)</span></td>
      </tr>
      <tr>
        <td id="L1021" class="blob-num js-line-number" data-line-number="1021"></td>
        <td id="LC1021" class="blob-code js-file-line"><span class="c1">;;              (or zenburn-add-font-lock-keywords</span></td>
      </tr>
      <tr>
        <td id="L1022" class="blob-num js-line-number" data-line-number="1022"></td>
        <td id="LC1022" class="blob-code js-file-line"><span class="c1">;;                  (equal (file-name-nondirectory (buffer-file-name))</span></td>
      </tr>
      <tr>
        <td id="L1023" class="blob-num js-line-number" data-line-number="1023"></td>
        <td id="LC1023" class="blob-code js-file-line"><span class="c1">;;                         &quot;zenburn-theme.el&quot;)))</span></td>
      </tr>
      <tr>
        <td id="L1024" class="blob-num js-line-number" data-line-number="1024"></td>
        <td id="LC1024" class="blob-code js-file-line"><span class="c1">;;     (unless zenburn-colors-font-lock-keywords</span></td>
      </tr>
      <tr>
        <td id="L1025" class="blob-num js-line-number" data-line-number="1025"></td>
        <td id="LC1025" class="blob-code js-file-line"><span class="c1">;;       (setq zenburn-colors-font-lock-keywords</span></td>
      </tr>
      <tr>
        <td id="L1026" class="blob-num js-line-number" data-line-number="1026"></td>
        <td id="LC1026" class="blob-code js-file-line"><span class="c1">;;             `((,(regexp-opt (mapcar &#39;car zenburn-colors-alist) &#39;words)</span></td>
      </tr>
      <tr>
        <td id="L1027" class="blob-num js-line-number" data-line-number="1027"></td>
        <td id="LC1027" class="blob-code js-file-line"><span class="c1">;;                (0 (rainbow-colorize-by-assoc zenburn-colors-alist))))))</span></td>
      </tr>
      <tr>
        <td id="L1028" class="blob-num js-line-number" data-line-number="1028"></td>
        <td id="LC1028" class="blob-code js-file-line"><span class="c1">;;     (font-lock-add-keywords nil zenburn-colors-font-lock-keywords)))</span></td>
      </tr>
      <tr>
        <td id="L1029" class="blob-num js-line-number" data-line-number="1029"></td>
        <td id="LC1029" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1030" class="blob-num js-line-number" data-line-number="1030"></td>
        <td id="LC1030" class="blob-code js-file-line"><span class="c1">;; (defadvice rainbow-turn-off (after zenburn activate)</span></td>
      </tr>
      <tr>
        <td id="L1031" class="blob-num js-line-number" data-line-number="1031"></td>
        <td id="LC1031" class="blob-code js-file-line"><span class="c1">;;   &quot;Also remove font-lock keywords for zenburn colors.&quot;</span></td>
      </tr>
      <tr>
        <td id="L1032" class="blob-num js-line-number" data-line-number="1032"></td>
        <td id="LC1032" class="blob-code js-file-line"><span class="c1">;;   (font-lock-remove-keywords nil zenburn-colors-font-lock-keywords))</span></td>
      </tr>
      <tr>
        <td id="L1033" class="blob-num js-line-number" data-line-number="1033"></td>
        <td id="LC1033" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1034" class="blob-num js-line-number" data-line-number="1034"></td>
        <td id="LC1034" class="blob-code js-file-line"><span class="c1">;;; Footer</span></td>
      </tr>
      <tr>
        <td id="L1035" class="blob-num js-line-number" data-line-number="1035"></td>
        <td id="LC1035" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1036" class="blob-num js-line-number" data-line-number="1036"></td>
        <td id="LC1036" class="blob-code js-file-line"><span class="c1">;;;###autoload</span></td>
      </tr>
      <tr>
        <td id="L1037" class="blob-num js-line-number" data-line-number="1037"></td>
        <td id="LC1037" class="blob-code js-file-line"><span class="p">(</span><span class="k">and </span><span class="nv">load-file-name</span></td>
      </tr>
      <tr>
        <td id="L1038" class="blob-num js-line-number" data-line-number="1038"></td>
        <td id="LC1038" class="blob-code js-file-line">     <span class="p">(</span><span class="nf">boundp</span> <span class="ss">&#39;custom-theme-load-path</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L1039" class="blob-num js-line-number" data-line-number="1039"></td>
        <td id="LC1039" class="blob-code js-file-line">     <span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;custom-theme-load-path</span></td>
      </tr>
      <tr>
        <td id="L1040" class="blob-num js-line-number" data-line-number="1040"></td>
        <td id="LC1040" class="blob-code js-file-line">                  <span class="p">(</span><span class="nf">file-name-as-directory</span></td>
      </tr>
      <tr>
        <td id="L1041" class="blob-num js-line-number" data-line-number="1041"></td>
        <td id="LC1041" class="blob-code js-file-line">                   <span class="p">(</span><span class="nf">file-name-directory</span> <span class="nv">load-file-name</span><span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L1042" class="blob-num js-line-number" data-line-number="1042"></td>
        <td id="LC1042" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1043" class="blob-num js-line-number" data-line-number="1043"></td>
        <td id="LC1043" class="blob-code js-file-line"><span class="p">(</span><span class="nf">provide-theme</span> <span class="ss">&#39;zenburn</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L1044" class="blob-num js-line-number" data-line-number="1044"></td>
        <td id="LC1044" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1045" class="blob-num js-line-number" data-line-number="1045"></td>
        <td id="LC1045" class="blob-code js-file-line"><span class="c1">;; Local Variables:</span></td>
      </tr>
      <tr>
        <td id="L1046" class="blob-num js-line-number" data-line-number="1046"></td>
        <td id="LC1046" class="blob-code js-file-line"><span class="c1">;; no-byte-compile: t</span></td>
      </tr>
      <tr>
        <td id="L1047" class="blob-num js-line-number" data-line-number="1047"></td>
        <td id="LC1047" class="blob-code js-file-line"><span class="c1">;; indent-tabs-mode: nil</span></td>
      </tr>
      <tr>
        <td id="L1048" class="blob-num js-line-number" data-line-number="1048"></td>
        <td id="LC1048" class="blob-code js-file-line"><span class="c1">;; eval: (when (require &#39;rainbow-mode nil t) (rainbow-mode 1))</span></td>
      </tr>
      <tr>
        <td id="L1049" class="blob-num js-line-number" data-line-number="1049"></td>
        <td id="LC1049" class="blob-code js-file-line"><span class="c1">;; End:</span></td>
      </tr>
      <tr>
        <td id="L1050" class="blob-num js-line-number" data-line-number="1050"></td>
        <td id="LC1050" class="blob-code js-file-line"><span class="c1">;;; zenburn-theme.el ends here</span></td>
      </tr>
</table>

  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.02500s from github-fe120-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents js-suggester-field" placeholder=""></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-2b4202fc62ef88e1a007a9ed05df10607b189f42.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-726fe1ccb219488ac368ffb23bbbd8abc6ec67e6.js" type="text/javascript"></script>
      
      
        <script async src="https://www.google-analytics.com/analytics.js"></script>
  </body>
</html>

