<cfsilent>
    <cfset local.contact = rc.contact />
</cfsilent>
<cfoutput>
<h1>Thank you for your interest</h1>
<p>Here are the details that you submitted:</p>
<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">Name</label>
        <div class="col-sm-10">
            <p class="form-control-static">#local.contact.getName()#</p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Email</label>
        <div class="col-sm-10">
            <p class="form-control-static">#local.contact.getEmail()#</p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Subject</label>
        <div class="col-sm-10">
            <p class="form-control-static">#local.contact.getSubject()#</p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Message</label>
        <div class="col-sm-10">
            <p class="form-control-static">#paragraphFormat(local.contact.getMessage())#</p>
        </div>
    </div>
</form>
</cfoutput>