<cfsilent>
    <cfset local.contact = rc.contact />
</cfsilent>
<!--- <cfdump var="#rc#" expand="false" label="RC" /> --->
<cfoutput>
<div class="page-header">
    <h2>Send Us a Message</h2>
</div>
<form action="#buildUrl('contact.save')#" method="post" data-parsley-validate>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="#local.contact.getName()#" class="form-control input-lg" required />
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="#local.contact.getEmail()#" class="form-control input-lg" required />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" value="#local.contact.getSubject()#" class="form-control input-lg" required />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <label for="message">Message:</label>
                <textarea name="message" id="message" rows="10" class="form-control input-lg" required>#local.contact.getMessage()#</textarea>
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary btn-lg">Submit</button>
</form>
</cfoutput>