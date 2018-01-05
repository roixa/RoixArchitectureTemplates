<?xml version="1.0"?>
<recipe>


   	<merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="root/build.proj.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/../build.gradle" />
    <open file="${escapeXmlAttribute(projectOut)}/../build.gradle" />	

    <merge from="root/build.android.gradle.ftl"
             

to="${escapeXmlAttribute(projectOut)}/build.gradle" />
    <merge from="root/build.dep.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />
	<open file="${escapeXmlAttribute(projectOut)}/build.gradle" />	

	<instantiate from="root/resources.gradle.ftl"
                to="${escapeXmlAttribute(projectOut)}/resources.gradle" />



</recipe>

