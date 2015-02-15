# -*- coding: utf-8 -*-
#from nose.tools import *
from pyUnit.pyUnit import WasRun, TestCase, TestResult, TestSuite


class TestCaseTest(TestCase):
    def setUp(self):
        self.result = TestResult()

    def testSuite(self):
        suite = TestSuite()
        suite.add(WasRun("testMethod"))
        suite.add(WasRun("testBrokenMethod"))
        self.result = suite.run(self.result)
        assert("2 run, 1 failed" == self.result.summary())

    def testFailedResultFormatting(self):
        self.result.testStarted()
        self.result.testFailed()
        assert("1 run, 1 failed" == self.result.summary())

    def testFailedResult(self):
        test = WasRun("testBrokenMethod")
        self.result = test.run(self.result)
        assert("1 run, 1 failed" == self.result.summary())

    def testResult(self):
        test = WasRun("testMethod")
        self.result = test.run(self.result)
        assert("1 run, 0 failed" == self.result.summary())

    def testTemplateMethod(self):
        test = WasRun("testMethod")
        test.run(self.result)
        assert("setUp testMethod tearDown" == test.log)

suite = TestSuite()
suite.add(TestCaseTest("testTemplateMethod"))
suite.add(TestCaseTest("testResult"))
suite.add(TestCaseTest("testFailedResultFormatting"))
suite.add(TestCaseTest("testFailedResult"))
suite.add(TestCaseTest("testSuite"))
result = TestResult()
suite.run(result)
print result.summary()
