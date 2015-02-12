# -*- coding: utf-8 -*-
try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'name': 'projectname',
    'version': '0.1',
    'packages': ['NAME'],
    'url': 'URL to get it at.',
    'download_url': 'Where to download it.',
    'license': '$License',
    'author': 'My Name',
    'author_email': 'My email',
    'install_requires': ['nose'],
    'scripts': [],
    'description': 'My Project'
}

setup(**config)
