# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectParticipant do
  @moduledoc """
  Amazon Connect is a cloud-based contact center solution that makes it easy to
  set up and manage a customer contact center and provide reliable customer
  engagement at any scale.

  Amazon Connect enables customer contacts through voice or chat.

  The APIs described here are used by chat participants, such as agents and
  customers.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-09-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "participant.connect",
      global?: false,
      protocol: "rest-json",
      service_id: "ConnectParticipant",
      signature_version: "v4",
      signing_name: "execute-api",
      target_prefix: nil
    }
  end

  @doc """
  Creates the participant's connection.

  Note that ParticipantToken is used for invoking this API instead of
  ConnectionToken.

  The participant token is valid for the lifetime of the participant – until the
  they are part of a contact.

  The response URL for `WEBSOCKET` Type has a connect expiry timeout of 100s.
  Clients must manually connect to the returned websocket URL and subscribe to the
  desired topic.

  For chat, you need to publish the following on the established websocket
  connection:

  `{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}`

  Upon websocket URL expiry, as specified in the response ConnectionExpiry
  parameter, clients need to call this API again to obtain a new websocket URL and
  perform the same steps as before.
  """
  def create_participant_connection(%Client{} = client, input, options \\ []) do
    url_path = "/participant/connection"

    {headers, input} =
      [
        {"ParticipantToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Disconnects a participant.

  Note that ConnectionToken is used for invoking this API instead of
  ParticipantToken.
  """
  def disconnect_participant(%Client{} = client, input, options \\ []) do
    url_path = "/participant/disconnect"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves a transcript of the session.

  Note that ConnectionToken is used for invoking this API instead of
  ParticipantToken.
  """
  def get_transcript(%Client{} = client, input, options \\ []) do
    url_path = "/participant/transcript"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sends an event.

  Note that ConnectionToken is used for invoking this API instead of
  ParticipantToken.
  """
  def send_event(%Client{} = client, input, options \\ []) do
    url_path = "/participant/event"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sends a message.

  Note that ConnectionToken is used for invoking this API instead of
  ParticipantToken.
  """
  def send_message(%Client{} = client, input, options \\ []) do
    url_path = "/participant/message"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end