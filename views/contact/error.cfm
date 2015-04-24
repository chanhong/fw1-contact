<cfoutput>
<h1>Exception Occurred</h1>
<p>This action in <strong>#request.failedaction#</strong> falied.</p>
<cfdump var="#request.exception.cause#" label="Exception" expand="true" />
</cfoutput>