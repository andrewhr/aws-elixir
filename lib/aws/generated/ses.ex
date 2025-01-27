# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SES do
  @moduledoc """
  Amazon Simple Email Service

  This document contains reference information for the [Amazon Simple Email Service](https://aws.amazon.com/ses/) (Amazon SES) API, version 2010-12-01.

  This document is best used in conjunction with the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html).

  For a list of Amazon SES endpoints to use in service requests, see [Regions and Amazon SES](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html)
  in the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html).

  This documentation contains reference information related to the following:

    * [Amazon SES API Actions](https://docs.aws.amazon.com/ses/latest/APIReference/API_Operations.html)

    * [Amazon SES API Data Types](https://docs.aws.amazon.com/ses/latest/APIReference/API_Types.html)

    * [Common Parameters](https://docs.aws.amazon.com/ses/latest/APIReference/CommonParameters.html)

    * [Common Errors](https://docs.aws.amazon.com/ses/latest/APIReference/CommonErrors.html)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "Amazon SES",
      api_version: "2010-12-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "email",
      global?: false,
      protocol: "query",
      service_id: "SES",
      signature_version: "v4",
      signing_name: "ses",
      target_prefix: nil
    }
  end

  @doc """
  Creates a receipt rule set by cloning an existing one.

  All receipt rules and configurations are copied to the new receipt rule set and
  are completely independent of the source rule set.

  For information about setting up rule sets, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules).

  You can execute this operation no more than once per second.
  """
  def clone_receipt_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CloneReceiptRuleSet", input, options)
  end

  @doc """
  Creates a configuration set.

  Configuration sets enable you to publish email sending events. For information
  about using configuration sets, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

  You can execute this operation no more than once per second.
  """
  def create_configuration_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConfigurationSet", input, options)
  end

  @doc """
  Creates a configuration set event destination.

  When you create or update an event destination, you must provide one, and only
  one, destination. The destination can be CloudWatch, Amazon Kinesis Firehose, or
  Amazon Simple Notification Service (Amazon SNS).

  An event destination is the Amazon Web Services service to which Amazon SES
  publishes the email sending events associated with a configuration set. For
  information about using configuration sets, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

  You can execute this operation no more than once per second.
  """
  def create_configuration_set_event_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConfigurationSetEventDestination", input, options)
  end

  @doc """
  Creates an association between a configuration set and a custom domain for open
  and click event tracking.

  By default, images and links used for tracking open and click events are hosted
  on domains operated by Amazon SES. You can configure a subdomain of your own to
  handle these events. For information about using custom domains, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html).
  """
  def create_configuration_set_tracking_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConfigurationSetTrackingOptions", input, options)
  end

  @doc """
  Creates a new custom verification email template.

  For more information about custom verification email templates, see [Using Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def create_custom_verification_email_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Creates a new IP address filter.

  For information about setting up IP address filters, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def create_receipt_filter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReceiptFilter", input, options)
  end

  @doc """
  Creates a receipt rule.

  For information about setting up receipt rules, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def create_receipt_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReceiptRule", input, options)
  end

  @doc """
  Creates an empty receipt rule set.

  For information about setting up receipt rule sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules).

  You can execute this operation no more than once per second.
  """
  def create_receipt_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReceiptRuleSet", input, options)
  end

  @doc """
  Creates an email template.

  Email templates enable you to send personalized email to one or more
  destinations in a single operation. For more information, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html).

  You can execute this operation no more than once per second.
  """
  def create_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTemplate", input, options)
  end

  @doc """
  Deletes a configuration set.

  Configuration sets enable you to publish email sending events. For information
  about using configuration sets, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

  You can execute this operation no more than once per second.
  """
  def delete_configuration_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConfigurationSet", input, options)
  end

  @doc """
  Deletes a configuration set event destination.

  Configuration set event destinations are associated with configuration sets,
  which enable you to publish email sending events. For information about using
  configuration sets, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

  You can execute this operation no more than once per second.
  """
  def delete_configuration_set_event_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConfigurationSetEventDestination", input, options)
  end

  @doc """
  Deletes an association between a configuration set and a custom domain for open
  and click event tracking.

  By default, images and links used for tracking open and click events are hosted
  on domains operated by Amazon SES. You can configure a subdomain of your own to
  handle these events. For information about using custom domains, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html).

  Deleting this kind of association results in emails sent using the specified
  configuration set to capture open and click events using the standard, Amazon
  SES-operated domains.
  """
  def delete_configuration_set_tracking_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConfigurationSetTrackingOptions", input, options)
  end

  @doc """
  Deletes an existing custom verification email template.

  For more information about custom verification email templates, see [Using Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def delete_custom_verification_email_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Deletes the specified identity (an email address or a domain) from the list of
  verified identities.

  You can execute this operation no more than once per second.
  """
  def delete_identity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIdentity", input, options)
  end

  @doc """
  Deletes the specified sending authorization policy for the given identity (an
  email address or a domain).

  This operation returns successfully even if a policy with the specified name
  does not exist.

  This operation is for the identity owner only. If you have not verified the
  identity, it returns an error.

  Sending authorization is a feature that enables an identity owner to authorize
  other senders to use its identities. For information about using sending
  authorization, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html).

  You can execute this operation no more than once per second.
  """
  def delete_identity_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIdentityPolicy", input, options)
  end

  @doc """
  Deletes the specified IP address filter.

  For information about managing IP address filters, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def delete_receipt_filter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReceiptFilter", input, options)
  end

  @doc """
  Deletes the specified receipt rule.

  For information about managing receipt rules, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def delete_receipt_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReceiptRule", input, options)
  end

  @doc """
  Deletes the specified receipt rule set and all of the receipt rules it contains.

  The currently active rule set cannot be deleted.

  For information about managing receipt rule sets, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def delete_receipt_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReceiptRuleSet", input, options)
  end

  @doc """
  Deletes an email template.

  You can execute this operation no more than once per second.
  """
  def delete_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTemplate", input, options)
  end

  @doc """
  Deprecated.

  Use the `DeleteIdentity` operation to delete email addresses and domains.
  """
  def delete_verified_email_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVerifiedEmailAddress", input, options)
  end

  @doc """
  Returns the metadata and receipt rules for the receipt rule set that is
  currently active.

  For information about setting up receipt rule sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules).

  You can execute this operation no more than once per second.
  """
  def describe_active_receipt_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeActiveReceiptRuleSet", input, options)
  end

  @doc """
  Returns the details of the specified configuration set.

  For information about using configuration sets, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

  You can execute this operation no more than once per second.
  """
  def describe_configuration_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConfigurationSet", input, options)
  end

  @doc """
  Returns the details of the specified receipt rule.

  For information about setting up receipt rules, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def describe_receipt_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReceiptRule", input, options)
  end

  @doc """
  Returns the details of the specified receipt rule set.

  For information about managing receipt rule sets, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def describe_receipt_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReceiptRuleSet", input, options)
  end

  @doc """
  Returns the email sending status of the Amazon SES account for the current
  Region.

  You can execute this operation no more than once per second.
  """
  def get_account_sending_enabled(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccountSendingEnabled", input, options)
  end

  @doc """
  Returns the custom email verification template for the template name you
  specify.

  For more information about custom verification email templates, see [Using Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def get_custom_verification_email_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Returns the current status of Easy DKIM signing for an entity.

  For domain name identities, this operation also returns the DKIM tokens that are
  required for Easy DKIM signing, and whether Amazon SES has successfully verified
  that these tokens have been published.

  This operation takes a list of identities as input and returns the following
  information for each:

    * Whether Easy DKIM signing is enabled or disabled.

    * A set of DKIM tokens that represent the identity. If the identity
  is an email address, the tokens represent the domain of that address.

    * Whether Amazon SES has successfully verified the DKIM tokens
  published in the domain's DNS. This information is only returned for domain name
  identities, not for email addresses.

  This operation is throttled at one request per second and can only get DKIM
  attributes for up to 100 identities at a time.

  For more information about creating DNS records using DKIM tokens, go to the
  [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy-managing.html).
  """
  def get_identity_dkim_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIdentityDkimAttributes", input, options)
  end

  @doc """
  Returns the custom MAIL FROM attributes for a list of identities (email
  addresses : domains).

  This operation is throttled at one request per second and can only get custom
  MAIL FROM attributes for up to 100 identities at a time.
  """
  def get_identity_mail_from_domain_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIdentityMailFromDomainAttributes", input, options)
  end

  @doc """
  Given a list of verified identities (email addresses and/or domains), returns a
  structure describing identity notification attributes.

  This operation is throttled at one request per second and can only get
  notification attributes for up to 100 identities at a time.

  For more information about using notifications with Amazon SES, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html).
  """
  def get_identity_notification_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIdentityNotificationAttributes", input, options)
  end

  @doc """
  Returns the requested sending authorization policies for the given identity (an
  email address or a domain).

  The policies are returned as a map of policy names to policy contents. You can
  retrieve a maximum of 20 policies at a time.

  This operation is for the identity owner only. If you have not verified the
  identity, it returns an error.

  Sending authorization is a feature that enables an identity owner to authorize
  other senders to use its identities. For information about using sending
  authorization, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html).

  You can execute this operation no more than once per second.
  """
  def get_identity_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIdentityPolicies", input, options)
  end

  @doc """
  Given a list of identities (email addresses and/or domains), returns the
  verification status and (for domain identities) the verification token for each
  identity.

  The verification status of an email address is "Pending" until the email address
  owner clicks the link within the verification email that Amazon SES sent to that
  address. If the email address owner clicks the link within 24 hours, the
  verification status of the email address changes to "Success". If the link is
  not clicked within 24 hours, the verification status changes to "Failed." In
  that case, to verify the email address, you must restart the verification
  process from the beginning.

  For domain identities, the domain's verification status is "Pending" as Amazon
  SES searches for the required TXT record in the DNS settings of the domain. When
  Amazon SES detects the record, the domain's verification status changes to
  "Success". If Amazon SES is unable to detect the record within 72 hours, the
  domain's verification status changes to "Failed." In that case, to verify the
  domain, you must restart the verification process from the beginning.

  This operation is throttled at one request per second and can only get
  verification attributes for up to 100 identities at a time.
  """
  def get_identity_verification_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIdentityVerificationAttributes", input, options)
  end

  @doc """
  Provides the sending limits for the Amazon SES account.

  You can execute this operation no more than once per second.
  """
  def get_send_quota(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSendQuota", input, options)
  end

  @doc """
  Provides sending statistics for the current Amazon Web Services Region.

  The result is a list of data points, representing the last two weeks of sending
  activity. Each data point in the list contains statistics for a 15-minute period
  of time.

  You can execute this operation no more than once per second.
  """
  def get_send_statistics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSendStatistics", input, options)
  end

  @doc """
  Displays the template object (which includes the Subject line, HTML part and
  text part) for the template you specify.

  You can execute this operation no more than once per second.
  """
  def get_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTemplate", input, options)
  end

  @doc """
  Provides a list of the configuration sets associated with your Amazon SES
  account in the current Amazon Web Services Region.

  For information about using configuration sets, see [Monitoring Your Amazon SES Sending
  Activity](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html)
  in the *Amazon SES Developer Guide.*

  You can execute this operation no more than once per second. This operation
  returns up to 1,000 configuration sets each time it is run. If your Amazon SES
  account has more than 1,000 configuration sets, this operation also returns
  `NextToken`. You can then execute the `ListConfigurationSets` operation again,
  passing the `NextToken` parameter and the value of the NextToken element to
  retrieve additional results.
  """
  def list_configuration_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConfigurationSets", input, options)
  end

  @doc """
  Lists the existing custom verification email templates for your account in the
  current Amazon Web Services Region.

  For more information about custom verification email templates, see [Using Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def list_custom_verification_email_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomVerificationEmailTemplates", input, options)
  end

  @doc """
  Returns a list containing all of the identities (email addresses and domains)
  for your Amazon Web Services account in the current Amazon Web Services Region,
  regardless of verification status.

  You can execute this operation no more than once per second.

  It's recommended that for successive pagination calls of this API, you continue
  to the use the same parameter/value pairs as used in the original call, e.g., if
  you used `IdentityType=Domain` in the the original call and received a
  `NextToken` in the response, you should continue providing the
  `IdentityType=Domain` parameter for further `NextToken` calls; however, if you
  didn't provide the `IdentityType` parameter in the original call, then continue
  to not provide it for successive pagination calls. Using this protocol will
  ensure consistent results.
  """
  def list_identities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListIdentities", input, options)
  end

  @doc """
  Returns a list of sending authorization policies that are attached to the given
  identity (an email address or a domain).

  This operation returns only a list. To get the actual policy content, use
  `GetIdentityPolicies`.

  This operation is for the identity owner only. If you have not verified the
  identity, it returns an error.

  Sending authorization is a feature that enables an identity owner to authorize
  other senders to use its identities. For information about using sending
  authorization, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html).

  You can execute this operation no more than once per second.
  """
  def list_identity_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListIdentityPolicies", input, options)
  end

  @doc """
  Lists the IP address filters associated with your Amazon Web Services account in
  the current Amazon Web Services Region.

  For information about managing IP address filters, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def list_receipt_filters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReceiptFilters", input, options)
  end

  @doc """
  Lists the receipt rule sets that exist under your Amazon Web Services account in
  the current Amazon Web Services Region.

  If there are additional receipt rule sets to be retrieved, you receive a
  `NextToken` that you can provide to the next call to `ListReceiptRuleSets` to
  retrieve the additional entries.

  For information about managing receipt rule sets, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def list_receipt_rule_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReceiptRuleSets", input, options)
  end

  @doc """
  Lists the email templates present in your Amazon SES account in the current
  Amazon Web Services Region.

  You can execute this operation no more than once per second.
  """
  def list_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTemplates", input, options)
  end

  @doc """
  Deprecated.

  Use the `ListIdentities` operation to list the email addresses and domains
  associated with your account.
  """
  def list_verified_email_addresses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVerifiedEmailAddresses", input, options)
  end

  @doc """
  Adds or updates the delivery options for a configuration set.
  """
  def put_configuration_set_delivery_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutConfigurationSetDeliveryOptions", input, options)
  end

  @doc """
  Adds or updates a sending authorization policy for the specified identity (an
  email address or a domain).

  This operation is for the identity owner only. If you have not verified the
  identity, it returns an error.

  Sending authorization is a feature that enables an identity owner to authorize
  other senders to use its identities. For information about using sending
  authorization, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html).

  You can execute this operation no more than once per second.
  """
  def put_identity_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutIdentityPolicy", input, options)
  end

  @doc """
  Reorders the receipt rules within a receipt rule set.

  All of the rules in the rule set must be represented in this request. That is,
  it is error if the reorder request doesn't explicitly position all of the rules.

  For information about managing receipt rule sets, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def reorder_receipt_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReorderReceiptRuleSet", input, options)
  end

  @doc """
  Generates and sends a bounce message to the sender of an email you received
  through Amazon SES.

  You can only use this operation on an email up to 24 hours after you receive it.

  You cannot use this operation to send generic bounces for mail that was not
  received by Amazon SES.

  For information about receiving email through Amazon SES, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email.html).

  You can execute this operation no more than once per second.
  """
  def send_bounce(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendBounce", input, options)
  end

  @doc """
  Composes an email message to multiple destinations.

  The message body is created using an email template.

  To send email using this operation, your call must meet the following
  requirements:

    * The call must refer to an existing email template. You can create
  email templates using `CreateTemplate`.

    * The message must be sent from a verified email address or domain.

    * If your account is still in the Amazon SES sandbox, you may send
  only to verified addresses or domains, or to email addresses associated with the
  Amazon SES Mailbox Simulator. For more information, see [Verifying Email Addresses and
  Domains](https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html)
  in the *Amazon SES Developer Guide.*

    * The maximum message size is 10 MB.

    * Each `Destination` parameter must include at least one recipient
  email address. The recipient address can be a To: address, a CC: address, or a
  BCC: address. If a recipient email address is invalid (that is, it is not in the
  format *UserName@[SubDomain.]Domain.TopLevelDomain*), the entire message is
  rejected, even if the message contains other recipients that are valid.

    * The message may not include more than 50 recipients, across the
  To:, CC: and BCC: fields. If you need to send an email message to a larger
  audience, you can divide your recipient list into groups of 50 or fewer, and
  then call the `SendBulkTemplatedEmail` operation several times to send the
  message to each group.

    * The number of destinations you can contact in a single call can be
  limited by your account's maximum sending rate.
  """
  def send_bulk_templated_email(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendBulkTemplatedEmail", input, options)
  end

  @doc """
  Adds an email address to the list of identities for your Amazon SES account in
  the current Amazon Web Services Region and attempts to verify it.

  As a result of executing this operation, a customized verification email is sent
  to the specified address.

  To use this operation, you must first create a custom verification email
  template. For more information about creating and using custom verification
  email templates, see [Using Custom Verification Email Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def send_custom_verification_email(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendCustomVerificationEmail", input, options)
  end

  @doc """
  Composes an email message and immediately queues it for sending.

  To send email using this operation, your message must meet the following
  requirements:

    * The message must be sent from a verified email address or domain.
  If you attempt to send email using a non-verified address or domain, the
  operation results in an "Email address not verified" error.

    * If your account is still in the Amazon SES sandbox, you may only
  send to verified addresses or domains, or to email addresses associated with the
  Amazon SES Mailbox Simulator. For more information, see [Verifying Email Addresses and
  Domains](https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html)
  in the *Amazon SES Developer Guide.*

    * The maximum message size is 10 MB.

    * The message must include at least one recipient email address. The
  recipient address can be a To: address, a CC: address, or a BCC: address. If a
  recipient email address is invalid (that is, it is not in the format
  *UserName@[SubDomain.]Domain.TopLevelDomain*), the entire message is rejected, even if the message contains other recipients that are valid.

    * The message may not include more than 50 recipients, across the
  To:, CC: and BCC: fields. If you need to send an email message to a larger
  audience, you can divide your recipient list into groups of 50 or fewer, and
  then call the `SendEmail` operation several times to send the message to each
  group.

  For every message that you send, the total number of recipients (including each
  recipient in the To:, CC: and BCC: fields) is counted against the maximum number
  of emails you can send in a 24-hour period (your *sending quota*). For more
  information about sending quotas in Amazon SES, see [Managing Your Amazon SES
  Sending
  Limits](https://docs.aws.amazon.com/ses/latest/dg/manage-sending-quotas.html) in
  the *Amazon SES Developer Guide.*
  """
  def send_email(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendEmail", input, options)
  end

  @doc """
  Composes an email message and immediately queues it for sending.

  This operation is more flexible than the `SendEmail` operation. When you use the
  `SendRawEmail` operation, you can specify the headers of the message as well as
  its content. This flexibility is useful, for example, when you need to send a
  multipart MIME email (such a message that contains both a text and an HTML
  version). You can also use this operation to send messages that include
  attachments.

  The `SendRawEmail` operation has the following requirements:

    * You can only send email from [verified email addresses or domains](https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html).
  If you try to send email from an address that isn't verified, the operation
  results in an "Email address not verified" error.

    * If your account is still in the [Amazon SES sandbox](https://docs.aws.amazon.com/ses/latest/dg/request-production-access.html),
  you can only send email to other verified addresses in your account, or to
  addresses that are associated with the [Amazon SES mailbox simulator](https://docs.aws.amazon.com/ses/latest/dg/send-an-email-from-console.html).

    * The maximum message size, including attachments, is 10 MB.

    * Each message has to include at least one recipient address. A
  recipient address includes any address on the To:, CC:, or BCC: lines.

    * If you send a single message to more than one recipient address,
  and one of the recipient addresses isn't in a valid format (that is, it's not in
  the format *UserName@[SubDomain.]Domain.TopLevelDomain*), Amazon SES rejects the entire message, even if the other addresses are valid.

    * Each message can include up to 50 recipient addresses across the
  To:, CC:, or BCC: lines. If you need to send a single message to more than 50
  recipients, you have to split the list of recipient addresses into groups of
  less than 50 recipients, and send separate messages to each group.

    * Amazon SES allows you to specify 8-bit Content-Transfer-Encoding
  for MIME message parts. However, if Amazon SES has to modify the contents of
  your message (for example, if you use open and click tracking), 8-bit content
  isn't preserved. For this reason, we highly recommend that you encode all
  content that isn't 7-bit ASCII. For more information, see [MIME
  Encoding](https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html#send-email-mime-encoding)
  in the *Amazon SES Developer Guide*.

  Additionally, keep the following considerations in mind when using the
  `SendRawEmail` operation:

    * Although you can customize the message headers when using the
  `SendRawEmail` operation, Amazon SES automatically applies its own `Message-ID`
  and `Date` headers; if you passed these headers when creating the message, they
  are overwritten by the values that Amazon SES provides.

    * If you are using sending authorization to send on behalf of
  another user, `SendRawEmail` enables you to specify the cross-account identity
  for the email's Source, From, and Return-Path parameters in one of two ways: you
  can pass optional parameters `SourceArn`, `FromArn`, and/or `ReturnPathArn`, or
  you can include the following X-headers in the header of your raw email:

      * `X-SES-SOURCE-ARN`

      * `X-SES-FROM-ARN`

      * `X-SES-RETURN-PATH-ARN`

  Don't include these X-headers in the DKIM signature. Amazon SES removes these
  before it sends the email.

  If you only specify the `SourceIdentityArn` parameter, Amazon SES sets the From
  and Return-Path addresses to the same identity that you specified.

  For more information about sending authorization, see the [Using Sending Authorization with Amazon
  SES](https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html) in
  the *Amazon SES Developer Guide.*

    * For every message that you send, the total number of recipients
  (including each recipient in the To:, CC: and BCC: fields) is counted against
  the maximum number of emails you can send in a 24-hour period (your *sending
  quota*). For more information about sending quotas in Amazon SES, see [Managing Your Amazon SES Sending
  Limits](https://docs.aws.amazon.com/ses/latest/dg/manage-sending-quotas.html) in
  the *Amazon SES Developer Guide.*
  """
  def send_raw_email(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendRawEmail", input, options)
  end

  @doc """
  Composes an email message using an email template and immediately queues it for
  sending.

  To send email using this operation, your call must meet the following
  requirements:

    * The call must refer to an existing email template. You can create
  email templates using the `CreateTemplate` operation.

    * The message must be sent from a verified email address or domain.

    * If your account is still in the Amazon SES sandbox, you may only
  send to verified addresses or domains, or to email addresses associated with the
  Amazon SES Mailbox Simulator. For more information, see [Verifying Email Addresses and
  Domains](https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html)
  in the *Amazon SES Developer Guide.*

    * The maximum message size is 10 MB.

    * Calls to the `SendTemplatedEmail` operation may only include one
  `Destination` parameter. A destination is a set of recipients that receives the
  same version of the email. The `Destination` parameter can include up to 50
  recipients, across the To:, CC: and BCC: fields.

    * The `Destination` parameter must include at least one recipient
  email address. The recipient address can be a To: address, a CC: address, or a
  BCC: address. If a recipient email address is invalid (that is, it is not in the
  format *UserName@[SubDomain.]Domain.TopLevelDomain*), the entire message is rejected, even if the message contains other recipients that are valid.

  If your call to the `SendTemplatedEmail` operation includes all of the required
  parameters, Amazon SES accepts it and returns a Message ID. However, if Amazon
  SES can't render the email because the template contains errors, it doesn't send
  the email. Additionally, because it already accepted the message, Amazon SES
  doesn't return a message stating that it was unable to send the email.

  For these reasons, we highly recommend that you set up Amazon SES to send you
  notifications when Rendering Failure events occur. For more information, see
  [Sending Personalized Email Using the Amazon SES
  API](https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html)
  in the *Amazon Simple Email Service Developer Guide*.
  """
  def send_templated_email(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendTemplatedEmail", input, options)
  end

  @doc """
  Sets the specified receipt rule set as the active receipt rule set.

  To disable your email-receiving through Amazon SES completely, you can call this
  operation with `RuleSetName` set to null.

  For information about managing receipt rule sets, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def set_active_receipt_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetActiveReceiptRuleSet", input, options)
  end

  @doc """
  Enables or disables Easy DKIM signing of email sent from an identity.

  If Easy DKIM signing is enabled for a domain, then Amazon SES uses DKIM to sign
  all email that it sends from addresses on that domain. If Easy DKIM signing is
  enabled for an email address, then Amazon SES uses DKIM to sign all email it
  sends from that address.

  For email addresses (for example, `user@example.com`), you can only enable DKIM
  signing if the corresponding domain (in this case, `example.com`) has been set
  up to use Easy DKIM.

  You can enable DKIM signing for an identity at any time after you start the
  verification process for the identity, even if the verification process isn't
  complete.

  You can execute this operation no more than once per second.

  For more information about Easy DKIM signing, go to the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html).
  """
  def set_identity_dkim_enabled(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetIdentityDkimEnabled", input, options)
  end

  @doc """
  Given an identity (an email address or a domain), enables or disables whether
  Amazon SES forwards bounce and complaint notifications as email.

  Feedback forwarding can only be disabled when Amazon Simple Notification Service
  (Amazon SNS) topics are specified for both bounces and complaints.

  Feedback forwarding does not apply to delivery notifications. Delivery
  notifications are only available through Amazon SNS.

  You can execute this operation no more than once per second.

  For more information about using notifications with Amazon SES, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html).
  """
  def set_identity_feedback_forwarding_enabled(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetIdentityFeedbackForwardingEnabled", input, options)
  end

  @doc """
  Given an identity (an email address or a domain), sets whether Amazon SES
  includes the original email headers in the Amazon Simple Notification Service
  (Amazon SNS) notifications of a specified type.

  You can execute this operation no more than once per second.

  For more information about using notifications with Amazon SES, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html).
  """
  def set_identity_headers_in_notifications_enabled(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetIdentityHeadersInNotificationsEnabled", input, options)
  end

  @doc """
  Enables or disables the custom MAIL FROM domain setup for a verified identity
  (an email address or a domain).

  To send emails using the specified MAIL FROM domain, you must add an MX record
  to your MAIL FROM domain's DNS settings. To ensure that your emails pass Sender
  Policy Framework (SPF) checks, you must also add or update an SPF record. For
  more information, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/mail-from.html).

  You can execute this operation no more than once per second.
  """
  def set_identity_mail_from_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetIdentityMailFromDomain", input, options)
  end

  @doc """
  Sets an Amazon Simple Notification Service (Amazon SNS) topic to use when
  delivering notifications.

  When you use this operation, you specify a verified identity, such as an email
  address or domain. When you send an email that uses the chosen identity in the
  Source field, Amazon SES sends notifications to the topic you specified. You can
  send bounce, complaint, or delivery notifications (or any combination of the
  three) to the Amazon SNS topic that you specify.

  You can execute this operation no more than once per second.

  For more information about feedback notification, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html).
  """
  def set_identity_notification_topic(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetIdentityNotificationTopic", input, options)
  end

  @doc """
  Sets the position of the specified receipt rule in the receipt rule set.

  For information about managing receipt rules, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def set_receipt_rule_position(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetReceiptRulePosition", input, options)
  end

  @doc """
  Creates a preview of the MIME content of an email when provided with a template
  and a set of replacement data.

  You can execute this operation no more than once per second.
  """
  def test_render_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestRenderTemplate", input, options)
  end

  @doc """
  Enables or disables email sending across your entire Amazon SES account in the
  current Amazon Web Services Region.

  You can use this operation in conjunction with Amazon CloudWatch alarms to
  temporarily pause email sending across your Amazon SES account in a given Amazon
  Web Services Region when reputation metrics (such as your bounce or complaint
  rates) reach certain thresholds.

  You can execute this operation no more than once per second.
  """
  def update_account_sending_enabled(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccountSendingEnabled", input, options)
  end

  @doc """
  Updates the event destination of a configuration set.

  Event destinations are associated with configuration sets, which enable you to
  publish email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or
  Amazon Simple Notification Service (Amazon SNS). For information about using
  configuration sets, see [Monitoring Your Amazon SES Sending Activity](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html)
  in the *Amazon SES Developer Guide.*

  When you create or update an event destination, you must provide one, and only
  one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis
  Firehose, or Amazon Simple Notification Service (Amazon SNS).

  You can execute this operation no more than once per second.
  """
  def update_configuration_set_event_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConfigurationSetEventDestination", input, options)
  end

  @doc """
  Enables or disables the publishing of reputation metrics for emails sent using a
  specific configuration set in a given Amazon Web Services Region.

  Reputation metrics include bounce and complaint rates. These metrics are
  published to Amazon CloudWatch. By using CloudWatch, you can create alarms when
  bounce or complaint rates exceed certain thresholds.

  You can execute this operation no more than once per second.
  """
  def update_configuration_set_reputation_metrics_enabled(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "UpdateConfigurationSetReputationMetricsEnabled",
      input,
      options
    )
  end

  @doc """
  Enables or disables email sending for messages sent using a specific
  configuration set in a given Amazon Web Services Region.

  You can use this operation in conjunction with Amazon CloudWatch alarms to
  temporarily pause email sending for a configuration set when the reputation
  metrics for that configuration set (such as your bounce on complaint rate)
  exceed certain thresholds.

  You can execute this operation no more than once per second.
  """
  def update_configuration_set_sending_enabled(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConfigurationSetSendingEnabled", input, options)
  end

  @doc """
  Modifies an association between a configuration set and a custom domain for open
  and click event tracking.

  By default, images and links used for tracking open and click events are hosted
  on domains operated by Amazon SES. You can configure a subdomain of your own to
  handle these events. For information about using custom domains, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html).
  """
  def update_configuration_set_tracking_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConfigurationSetTrackingOptions", input, options)
  end

  @doc """
  Updates an existing custom verification email template.

  For more information about custom verification email templates, see [Using Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def update_custom_verification_email_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Updates a receipt rule.

  For information about managing receipt rules, see the [Amazon SES Developer Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

  You can execute this operation no more than once per second.
  """
  def update_receipt_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateReceiptRule", input, options)
  end

  @doc """
  Updates an email template.

  Email templates enable you to send personalized email to one or more
  destinations in a single operation. For more information, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html).

  You can execute this operation no more than once per second.
  """
  def update_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTemplate", input, options)
  end

  @doc """
  Returns a set of DKIM tokens for a domain identity.

  When you execute the `VerifyDomainDkim` operation, the domain that you specify
  is added to the list of identities that are associated with your account. This
  is true even if you haven't already associated the domain with your account by
  using the `VerifyDomainIdentity` operation. However, you can't send email from
  the domain until you either successfully [verify it](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#verify-domain-procedure)
  or you successfully [set up DKIM for it](https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html).

  You use the tokens that are generated by this operation to create CNAME records.
  When Amazon SES detects that you've added these records to the DNS configuration
  for a domain, you can start sending email from that domain. You can start
  sending email even if you haven't added the TXT record provided by the
  VerifyDomainIdentity operation to the DNS configuration for your domain. All
  email that you send from the domain is authenticated using DKIM.

  To create the CNAME records for DKIM authentication, use the following values:

    * **Name**: *token*._domainkey.*example.com*

    * **Type**: CNAME

    * **Value**: *token*.dkim.amazonses.com

  In the preceding example, replace *token* with one of the tokens that are
  generated when you execute this operation. Replace *example.com* with your
  domain. Repeat this process for each token that's generated by this operation.

  You can execute this operation no more than once per second.
  """
  def verify_domain_dkim(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "VerifyDomainDkim", input, options)
  end

  @doc """
  Adds a domain to the list of identities for your Amazon SES account in the
  current Amazon Web Services Region and attempts to verify it.

  For more information about verifying domains, see [Verifying Email Addresses and Domains](https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html)
  in the *Amazon SES Developer Guide.*

  You can execute this operation no more than once per second.
  """
  def verify_domain_identity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "VerifyDomainIdentity", input, options)
  end

  @doc """
  Deprecated.

  Use the `VerifyEmailIdentity` operation to verify a new email address.
  """
  def verify_email_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "VerifyEmailAddress", input, options)
  end

  @doc """
  Adds an email address to the list of identities for your Amazon SES account in
  the current Amazon Web Services Region and attempts to verify it.

  As a result of executing this operation, a verification email is sent to the
  specified address.

  You can execute this operation no more than once per second.
  """
  def verify_email_identity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "VerifyEmailIdentity", input, options)
  end
end
