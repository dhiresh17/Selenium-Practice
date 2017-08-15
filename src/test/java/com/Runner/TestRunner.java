package com.Runner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions
(
features="src\\test\\resources\\features",
glue= {"com.StepDef"},
tags={"@Test"}
)
public class TestRunner {

}
