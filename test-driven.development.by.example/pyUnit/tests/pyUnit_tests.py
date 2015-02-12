# -*- coding: utf-8 -*-
#from nose.tools import *
from pyUnit.pyUnit import WasRun, TestCase


class TestCaseTest(TestCase):
    def testTemplateMethod(self):
        test = WasRun("testMethod")
        test.run()
        assert("setUp testMethod tearDown" == test.log)

TestCaseTest("testTemplateMethod").run()
