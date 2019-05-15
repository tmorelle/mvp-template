<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/AndroidElement.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${featureName}${kindOfElement}.kt" />
    <instantiate from="src/app_package/DaggerModule.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${featureName}${kindOfElement}Module.kt" />
    <instantiate from="src/app_package/Presenter.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${featureName}${kindOfElement}Presenter.kt" />
    <instantiate from="src/app_package/View.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${featureName}${kindOfElement}View.kt" />
    <instantiate from="res/layout/layout_template.xml" to="${escapeXmlAttribute(resOut)}/layout/${kindOfElement?lower_case}_${featureName?lower_case}.xml" />

    <open file="${srcOut}/${featureName}${kindOfElement}.kt"/>
</recipe>