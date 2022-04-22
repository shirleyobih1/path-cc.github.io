---
    title: Registration and Login for the PATh Facility
    layout: table-of-contents
    table_of_contents:
        - name: Get PATh Account
          href: '#get-a-path-facility-account'
        - name: Meet Research Facilitator
          href: '#meet-with-a-research-computing-facilitator'
        - name: Upload SSH Key
          href: '#upload-an-ssh-key'
        - name: Login
          href: '#login'
        - name: Get Help
          href: '#get-help'
---

The major steps to getting started using compute resources at the PATh Facility are:

* applying for [PATh compute credits](https://www.nsf.gov/pubs/2022/nsf22051/nsf22051.jsp) and being approved by the NSF
* applying for an account 
* meeting with a PATh staff member for a short consultation and orientation
* uploading your SSH key

This guide will discuss how to apply for an account and login to the PATh Facility once you have been granted credits by the NSF.

## Get a PATh Facility Account
To register with the PATh facility, submit an application using the following steps:

1. Go to the account [registration page](https://registry.cilogon.org/registry/co_petitions/start/coef:211). You will be redirected to the CILogon sign in page. Select your institution and use your institutional credentials to login.
    <img src="{{ '/images/cilogon.png' | relative_url }}" class="img-fluid"/>

    If you have issues signing in using your institutional credentials, contact us at [support@opensciencegrid.org](support@opensciencegrid.org).


1. Once you sign in, you will be redirected to the "OSG Registration: Self Signup with Approval" page. Click "Begin" and enter your name, and email address in the following page. In many cases, this information will be automatically populated. If desired, it is possible to manually edit any information automatically filled in. Once you have entered your information, click "SUBMIT".
   <img src="{{ '/images/comanage-enrollment-form.png' | relative_url }}" class="img-fluid"/>


1. After submitting your application, you will receive an email from [registry@cilogon.org](registry@cilogon.org) to verify your email address. Click the link listed in the email to be redirected to a page confirm your invitation details. Click the "ACCEPT" button to complete this step.
   <img src="{{ '/images/comanage-email-verification-form.png' | relative_url }}" class="img-fluid"/>

## Meet with a Research Computing Facilitator

Once PATh staff receive your email verification, a Research Computing Facilitator will contact you within one business day to arrange a short consultation and introduction to PATh resources. During this meeting, our staff will provide personalized start-up guidance per your specific computational research goals and activate your account.

During this meeting your account will also be approved. Once approved, you will receive the following email:

<img src="{{ '/images/comanage-verified-email.png' | relative_url }}" class="img-fluid"/>


## Upload an SSH Key

__Adding an SSH public key is optional.__ Contact us to discuss alternative ways to authenticate when logging in.

After your account has been approved following a meeting with a Research Computing Facilitator, the last step of account creation is to add an SSH key. To do this:

1. Return to the [Registration Page](https://registry.cilogon.org/registry/co_petitions/start/coef:211) and login using CILogon if prompted.

1. Click your name at the top right. In the dropdown box, click "My Profile (OSG)" button.
   <img src="{{ '/images/ssh-homepage-dropdown.png' | relative_url }}" class="img-fluid"/>

1. On the right hand side of your profile, click "Authenticators" link.
   <img src="{{ '/images/ssh-edit-profile.png' | relative_url }}" class="img-fluid"/>

1. On the authenticators page, click the "Manage" button.
   <img src="{{ '/images/ssh-authenticator-select.png' | relative_url }}" class="img-fluid"/>

1. On the new SSH Keys page, click "Add SSH Key" and browse your computer to upload your public SSH key.

   <img src="{{ '/images/ssh-key-list.png' | relative_url }}" class="img-fluid"/>

## Login

Once your SSH key has been uploaded, you should be able to login to your designated PATh access point using a terminal or SSH program. Additional information on this process will be provided during your meeting with a Research Computing Facilitator.

## Get Help

For questions regarding logging in or creating an account, contact us at  [support@opensciencegrid.org](support@opensciencegrid.org).