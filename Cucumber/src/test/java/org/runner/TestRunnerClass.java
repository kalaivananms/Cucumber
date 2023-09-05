package org.runner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = "\\src\\test\\resources\\Features\\Booking.feature", glue = {"org.stepdefinition"}, monochrome=true,plugin = {"pretty","json:\\src\\test\\resources\\Reports\\output.json"} ,dryRun=true, strict=true, snippets=SnippetType.CAMELCASE)
public class TestRunnerClass {

}