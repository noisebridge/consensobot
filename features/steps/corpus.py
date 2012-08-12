#!/usr/bin/env python
##
# corpus.py
###
"""corpus.py

"""

from consenso.corpus import Corpus
from behave import given, then

__author__ = "Danny O'Brien <http://www.spesh.com/danny/>"
__copyright__ = "Copyright Danny O'Brien"
__contributors__ = None
__license__ = "GPL v3"


@given(u'an empty set of texts in the corpus')
def step(context):
    corpus = Corpus()
    corpus.clear_text()
    assert (len(corpus.texts) == 0)

@then(u'there should be {num:d} text in the corpus')
def step(context, num=0):
    corpus = Corpus()
    assert (len(corpus.texts) == num)
