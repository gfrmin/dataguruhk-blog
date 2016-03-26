#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Guy Freeman'
SITENAME = u'Hong Kong Data Guru'
SITEURL = ''

PATH = 'content'

TIMEZONE = 'Asia/Hong_Kong'

DEFAULT_LANG = u'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (('accessinfohk', 'http://accessinfo.hk/'),
         ('webb-site.com', 'http://webb-site.com/'),)

# Social widget
SOCIAL = (('Twitter', 'http://twitter.com/dataguruhk'),
('Facebook', 'http://facebook.com/dataguruhk'),
('Github', 'http://github.com/slygent/dataguruhkpython'))

DEFAULT_PAGINATION = False

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True

STATIC_PATHS = ['images', 'assets']

PLUGIN_PATHS = ['./plugins']
PLUGINS = ['rmd_reader']

ARTICLE_PATHS = ['articles']

RMD_READER_KNITR_OPTS_CHUNK = {'fig.path': 'assets/'}

DEFAULT_CATEGORY = 'Blog'
USE_FOLDER_AS_CATEGORY = False
