# -*- coding: utf-8 -*-
try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'name': 'pyUnit',
    'version': '0.1',
    'packages': ['pyUnit'],
    'url': 'https://github.com/bystanders/cy.book.code/tree/master/test-driven.development.by.example/pyUnit',
    'download_url': 'https://github.com/bystanders/cy.book.code.git',
    'license': '$License',
    'author': 'My Name',
    'author_email': 'My email',
    'install_requires': ['nose'],
    'scripts': [],
    'description': 'pyUnit'
}

setup(**config)
