# -*- coding: utf-8 -*-
#from nose.tools import *
from pyUnit.pyUnit import WasRun, TestCase


class TestCaseTest(TestCase):
    def testRunning(self):
        test = WasRun("testMethod")
        assert(not test.wasRun)
        test.run()
        assert(test.wasRun)

TestCaseTest("testRunning").run()

#def setup():
#    print "SETUP!"

#def teardown():
#    print "TEAR DOWN!"

