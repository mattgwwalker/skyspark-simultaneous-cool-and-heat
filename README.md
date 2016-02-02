# skyspark-simultaneous-cool-and-heat
SkySpark: Extension demonstrating testing of Axon-based function to detect simultaneous cooling and heating

The extension provides an Axon function `simultaneousCoolAndHeat()`, which detects whether heating and cooling is occurring simultaneously on, say, an AHU. (It's very similar in functionality to `ahuCoolAndHeat()` in the HVAC module).

More importantly, this extension contains Fantom-based code to test `simultaneousCoolAndHeat()`.  After compilation, the tests may be run with the command:

    fant simultaneousCoolAndHeatExt

And you should see the lovely text:

    All tests passed! [1 tests, 6 methods, 19 verifies]

However there is a second feature in the extension, the ability to check the configuration of records. This feature is provided by the Axon function `simultaneousCoolAndHeatTestModel()`. This function either returns null on success, or a string describing any problems that were detected. For example, the following can be executed from within the Folio app in the Demo Project:

    // returns null to indicate success
    simultaneousCoolAndHeatTestModel(@Headquarters.AHU-1)

    // returns "The equipment's cool points aren't correctly configured.
    // There is not at least one match for the filter cool and point and
    // equipRef==@Headquarters.ElecMeter-Main and his and tz and kind."
    simultaneousCoolAndHeatTestModel(@Headquarters.ElecMeter-Main)
