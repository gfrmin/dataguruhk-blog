#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Guy Freeman'
SITENAME = u'Hong Kong Data Guru'
SITEURL = 'http://localhost:8000'
SITELOGO = SITEURL + '/assets/favicon.jpeg'

PATH = 'content'

TIMEZONE = 'Asia/Hong_Kong'

DEFAULT_LANG = u'en'

ARTICLE_URL = 'blog/{date:%Y}/{date:%m}/{date:%d}/{slug}/'
ARTICLE_SAVE_AS = 'blog/{date:%Y}/{date:%m}/{date:%d}/{slug}/index.html'
INDEX_SAVE_AS = 'blog/index.html'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (('accessinfo.hk', 'https://accessinfo.hk/'),
         ('HK Magazine archive', 'https://hkmag-archive.com'),)

# Social widget
SOCIAL = (('twitter', 'https://twitter.com/dataguruhk'),
          ('facebook', 'https://facebook.com/dataguruhk'),
          ('github', 'https://github.com/slygent/dataguruhk'),
          ('rss', 'http://dataguru.hk/feeds/all.atom.xml')
)

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True

STATIC_PATHS = ['images', 'assets']

PLUGIN_PATHS = ['./plugins']
PLUGINS = ['rmd_reader', 'summary', 'sitemap']

ARTICLE_PATHS = ['articles']

RMD_READER_KNITR_OPTS_CHUNK = {'fig.path': 'assets/'}

DEFAULT_CATEGORY = 'Blog'
USE_FOLDER_AS_CATEGORY = False

THEME = "theme/Flex"
MAIN_MENU = True

COPYRIGHT_YEAR = 2016
CC_LICENSE = { 'name': 'Creative Commons Attribution-ShareAlike', 'version':'4.0', 'slug': 'by-sa' }
