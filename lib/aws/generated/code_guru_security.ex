# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeGuruSecurity do
  @moduledoc """
  Amazon CodeGuru Security is in preview release and is subject to change.

  This section provides documentation for the Amazon CodeGuru Security API
  operations. CodeGuru Security is a service that uses program analysis and
  machine learning to detect security policy violations and vulnerabilities, and
  recommends ways to address these security risks.

  By proactively detecting and providing recommendations for addressing security
  risks, CodeGuru Security improves the overall security of your application code.
  For more information about CodeGuru Security, see the [Amazon CodeGuru Security User
  Guide](https://docs.aws.amazon.com/codeguru/latest/security-ug/what-is-codeguru-security.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeguru-security",
      global?: false,
      protocol: "rest-json",
      service_id: "CodeGuru Security",
      signature_version: "v4",
      signing_name: "codeguru-security",
      target_prefix: nil
    }
  end

  @doc """
  Returns a list of all requested findings.
  """
  def batch_get_findings(%Client{} = client, input, options \\ []) do
    url_path = "/batchGetFindings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Use to create a scan using code uploaded to an S3 bucket.
  """
  def create_scan(%Client{} = client, input, options \\ []) do
    url_path = "/scans"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Generates a pre-signed URL and request headers used to upload a code resource.

  You can upload your code resource to the URL and add the request headers using
  any HTTP client.
  """
  def create_upload_url(%Client{} = client, input, options \\ []) do
    url_path = "/uploadUrl"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Use to get account level configuration.
  """
  def get_account_configuration(%Client{} = client, options \\ []) do
    url_path = "/accountConfiguration/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all findings generated by a particular scan.
  """
  def get_findings(
        %Client{} = client,
        scan_name,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/findings/#{AWS.Util.encode_uri(scan_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns top level metrics about an account from a specified date, including
  number of open findings, the categories with most findings, the scans with most
  open findings, and scans with most open critical findings.
  """
  def get_metrics_summary(%Client{} = client, date, options \\ []) do
    url_path = "/metrics/summary"
    headers = []
    query_params = []

    query_params =
      if !is_nil(date) do
        [{"date", date} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a scan, including whether or not a scan has completed.
  """
  def get_scan(%Client{} = client, scan_name, run_id \\ nil, options \\ []) do
    url_path = "/scans/#{AWS.Util.encode_uri(scan_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(run_id) do
        [{"runId", run_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metrics about all findings in an account within a specified time range.
  """
  def list_findings_metrics(
        %Client{} = client,
        end_date,
        max_results \\ nil,
        next_token \\ nil,
        start_date,
        options \\ []
      ) do
    url_path = "/metrics/findings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_date) do
        [{"startDate", start_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_date) do
        [{"endDate", end_date} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all the standard scans in an account.

  Does not return express scans.
  """
  def list_scans(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/scans"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all tags associated with a scan.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Use to add one or more tags to an existing scan.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Use to remove one or more tags from an existing scan.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Use to update account-level configuration with an encryption key.
  """
  def update_account_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateAccountConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
