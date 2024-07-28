package com.visi.testrunner;

import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import com.visi.service.ServiceTest;
import com.visi.stepdef.CommonStepDefition;
import com.visi.utils.WebUtils;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/FeatureFiles", glue = { "com.visi.stepdef",
		"com.visi.Hooks" }, tags = "@GetUser", dryRun = false, plugin = { "pretty", "json:target/cucumber.json",
				"html:target/cucumber.html", "rerun:src/test/resource/rerun.txt" })
public class TestRunner extends WebUtils {

	private static final Logger log = LogManager.getLogger(CommonStepDefition.class);

	@BeforeClass
	public static void setUp() {
		ServiceTest.setUp();
	}

	@AfterClass
	public static void tearDown() throws IOException {
		ServiceTest.tearDown();
	}

}
