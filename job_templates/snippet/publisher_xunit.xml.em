    <xunit plugin="xunit@@1.102">
      <types>
@[for prefix in ['ws/build', 'work space/build space']]@
        <CTestType>
          <pattern>@(prefix)/*/Testing/*/Test.xml</pattern>
          <skipNoTestFiles>true</skipNoTestFiles>
          <failIfNotNew>true</failIfNotNew>
          <deleteOutputFiles>true</deleteOutputFiles>
          <stopProcessingIfError>true</stopProcessingIfError>
        </CTestType>
        <GoogleTestType>
          <pattern>@(prefix)/*/test_results/**/*.gtest.xml</pattern>
          <skipNoTestFiles>true</skipNoTestFiles>
          <failIfNotNew>true</failIfNotNew>
          <deleteOutputFiles>true</deleteOutputFiles>
          <stopProcessingIfError>true</stopProcessingIfError>
        </GoogleTestType>
        <JUnitType>
          <pattern>@(prefix)/*/test_results/**/*.xunit.xml</pattern>
          <skipNoTestFiles>true</skipNoTestFiles>
          <failIfNotNew>true</failIfNotNew>
          <deleteOutputFiles>true</deleteOutputFiles>
          <stopProcessingIfError>true</stopProcessingIfError>
        </JUnitType>
@[end for]@
      </types>
      <thresholds>
        <org.jenkinsci.plugins.xunit.threshold.FailedThreshold>
          <unstableThreshold>0</unstableThreshold>
          <unstableNewThreshold></unstableNewThreshold>
          <failureThreshold></failureThreshold>
          <failureNewThreshold></failureNewThreshold>
        </org.jenkinsci.plugins.xunit.threshold.FailedThreshold>
        <org.jenkinsci.plugins.xunit.threshold.SkippedThreshold>
          <unstableThreshold></unstableThreshold>
          <unstableNewThreshold></unstableNewThreshold>
          <failureThreshold></failureThreshold>
          <failureNewThreshold></failureNewThreshold>
        </org.jenkinsci.plugins.xunit.threshold.SkippedThreshold>
      </thresholds>
      <thresholdMode>1</thresholdMode>
      <extraConfiguration>
        <testTimeMargin>3000</testTimeMargin>
      </extraConfiguration>
    </xunit>