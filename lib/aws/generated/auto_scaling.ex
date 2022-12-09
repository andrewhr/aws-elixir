# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AutoScaling do
  @moduledoc """
  Amazon EC2 Auto Scaling

  Amazon EC2 Auto Scaling is designed to automatically launch and terminate EC2
  instances based on user-defined scaling policies, scheduled actions, and health
  checks.

  For more information, see the [Amazon EC2 Auto Scaling User Guide](https://docs.aws.amazon.com/autoscaling/ec2/userguide/) and the [Amazon EC2 Auto Scaling API
  Reference](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/Welcome.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2011-01-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "autoscaling",
      global?: false,
      protocol: "query",
      service_id: "Auto Scaling",
      signature_version: "v4",
      signing_name: "autoscaling",
      target_prefix: nil
    }
  end

  @doc """
  Attaches one or more EC2 instances to the specified Auto Scaling group.

  When you attach instances, Amazon EC2 Auto Scaling increases the desired
  capacity of the group by the number of instances being attached. If the number
  of instances being attached plus the desired capacity of the group exceeds the
  maximum size of the group, the operation fails.

  If there is a Classic Load Balancer attached to your Auto Scaling group, the
  instances are also registered with the load balancer. If there are target groups
  attached to your Auto Scaling group, the instances are also registered with the
  target groups.

  For more information, see [Attach EC2 instances to your Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-instance-asg.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def attach_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachInstances", input, options)
  end

  @doc """
  Attaches one or more target groups to the specified Auto Scaling group.

  This operation is used with the following load balancer types:

    * Application Load Balancer - Operates at the application layer
  (layer 7) and supports HTTP and HTTPS.

    * Network Load Balancer - Operates at the transport layer (layer 4)
  and supports TCP, TLS, and UDP.

    * Gateway Load Balancer - Operates at the network layer (layer 3).

  To describe the target groups for an Auto Scaling group, call the
  `DescribeLoadBalancerTargetGroups` API. To detach the target group from the Auto
  Scaling group, call the `DetachLoadBalancerTargetGroups` API.

  This operation is additive and does not detach existing target groups or Classic
  Load Balancers from the Auto Scaling group.

  For more information, see [Use Elastic Load Balancing to distribute traffic across the instances in your Auto Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def attach_load_balancer_target_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachLoadBalancerTargetGroups", input, options)
  end

  @doc """
  To attach an Application Load Balancer, Network Load Balancer, or Gateway Load
  Balancer, use the `AttachLoadBalancerTargetGroups` API operation instead.

  Attaches one or more Classic Load Balancers to the specified Auto Scaling group.
  Amazon EC2 Auto Scaling registers the running instances with these Classic Load
  Balancers.

  To describe the load balancers for an Auto Scaling group, call the
  `DescribeLoadBalancers` API. To detach a load balancer from the Auto Scaling
  group, call the `DetachLoadBalancers` API.

  This operation is additive and does not detach existing Classic Load Balancers
  or target groups from the Auto Scaling group.

  For more information, see [Use Elastic Load Balancing to distribute traffic across the instances in your Auto Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def attach_load_balancers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachLoadBalancers", input, options)
  end

  @doc """
  ## Reserved for use with Amazon VPC Lattice, which is in preview and subject to
  change.

  Do not use this API for production workloads. This API is also subject to
  change.

  Attaches one or more traffic sources to the specified Auto Scaling group.

  To describe the traffic sources for an Auto Scaling group, call the
  `DescribeTrafficSources` API. To detach a traffic source from the Auto Scaling
  group, call the `DetachTrafficSources` API.

  This operation is additive and does not detach existing traffic sources from the
  Auto Scaling group.
  """
  def attach_traffic_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachTrafficSources", input, options)
  end

  @doc """
  Deletes one or more scheduled actions for the specified Auto Scaling group.
  """
  def batch_delete_scheduled_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteScheduledAction", input, options)
  end

  @doc """
  Creates or updates one or more scheduled scaling actions for an Auto Scaling
  group.
  """
  def batch_put_scheduled_update_group_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchPutScheduledUpdateGroupAction", input, options)
  end

  @doc """
  Cancels an instance refresh operation in progress.

  Cancellation does not roll back any replacements that have already been
  completed, but it prevents new replacements from being started.

  This operation is part of the [instance refresh feature](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  in Amazon EC2 Auto Scaling, which helps you update instances in your Auto
  Scaling group after you make configuration changes.
  """
  def cancel_instance_refresh(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelInstanceRefresh", input, options)
  end

  @doc """
  Completes the lifecycle action for the specified token or instance with the
  specified result.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

    1. (Optional) Create a launch template or launch configuration with
  a user data script that runs while an instance is in a wait state due to a
  lifecycle hook.

    2. (Optional) Create a Lambda function and a rule that allows Amazon
  EventBridge to invoke your Lambda function when an instance is put into a wait
  state due to a lifecycle hook.

    3. (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows
  Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.

    4. Create the lifecycle hook. Specify whether the hook is used when
  the instances launch or terminate.

    5. If you need more time, record the lifecycle action heartbeat to
  keep the instance in a wait state.

    6. ## If you finish before the timeout period ends, send a callback
  by using the `CompleteLifecycleAction` API call.

  For more information, see [Amazon EC2 Auto Scaling lifecycle hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def complete_lifecycle_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CompleteLifecycleAction", input, options)
  end

  @doc """
  ## We strongly recommend using a launch template when calling this operation to
  ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.

  Creates an Auto Scaling group with the specified name and attributes.

  If you exceed your maximum limit of Auto Scaling groups, the call fails. To
  query this limit, call the `DescribeAccountLimits` API. For information about
  updating this limit, see [Quotas for Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  For introductory exercises for creating an Auto Scaling group, see [Getting started with Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/GettingStartedTutorial.html)
  and [Tutorial: Set up a scaled and load-balanced application](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-register-lbs-with-asg.html)
  in the *Amazon EC2 Auto Scaling User Guide*. For more information, see [Auto Scaling
  groups](https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  Every Auto Scaling group has three size properties (`DesiredCapacity`,
  `MaxSize`, and `MinSize`). Usually, you set these sizes based on a specific
  number of instances. However, if you configure a mixed instances policy that
  defines weights for the instance types, you must specify these sizes with the
  same units that you use for weighting instances.
  """
  def create_auto_scaling_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAutoScalingGroup", input, options)
  end

  @doc """
  Creates a launch configuration.

  If you exceed your maximum limit of launch configurations, the call fails. To
  query this limit, call the `DescribeAccountLimits` API. For information about
  updating this limit, see [Quotas for Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  For more information, see [Launch configurations](https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchConfiguration.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  Amazon EC2 Auto Scaling configures instances launched as part of an Auto Scaling
  group using either a launch template or a launch configuration. We strongly
  recommend that you do not use launch configurations. They do not provide full
  functionality for Amazon EC2 Auto Scaling or Amazon EC2. For information about
  using launch templates, see [Launch templates](https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-templates.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def create_launch_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLaunchConfiguration", input, options)
  end

  @doc """
  Creates or updates tags for the specified Auto Scaling group.

  When you specify a tag with a key that already exists, the operation overwrites
  the previous tag definition, and you do not get an error message.

  For more information, see [Tag Auto Scaling groups and instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def create_or_update_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOrUpdateTags", input, options)
  end

  @doc """
  Deletes the specified Auto Scaling group.

  If the group has instances or scaling activities in progress, you must specify
  the option to force the deletion in order for it to succeed. The force delete
  operation will also terminate the EC2 instances. If the group has a warm pool,
  the force delete option also deletes the warm pool.

  To remove instances from the Auto Scaling group before deleting it, call the
  `DetachInstances` API with the list of instances and the option to decrement the
  desired capacity. This ensures that Amazon EC2 Auto Scaling does not launch
  replacement instances.

  To terminate all instances before deleting the Auto Scaling group, call the
  `UpdateAutoScalingGroup` API and set the minimum size and desired capacity of
  the Auto Scaling group to zero.

  If the group has scaling policies, deleting the group deletes the policies, the
  underlying alarm actions, and any alarm that no longer has an associated action.

  For more information, see [Delete your Auto Scaling infrastructure](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-process-shutdown.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def delete_auto_scaling_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAutoScalingGroup", input, options)
  end

  @doc """
  Deletes the specified launch configuration.

  The launch configuration must not be attached to an Auto Scaling group. When
  this call completes, the launch configuration is no longer available for use.
  """
  def delete_launch_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLaunchConfiguration", input, options)
  end

  @doc """
  Deletes the specified lifecycle hook.

  If there are any outstanding lifecycle actions, they are completed first
  (`ABANDON` for launching instances, `CONTINUE` for terminating instances).
  """
  def delete_lifecycle_hook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLifecycleHook", input, options)
  end

  @doc """
  Deletes the specified notification.
  """
  def delete_notification_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNotificationConfiguration", input, options)
  end

  @doc """
  Deletes the specified scaling policy.

  Deleting either a step scaling policy or a simple scaling policy deletes the
  underlying alarm action, but does not delete the alarm, even if it no longer has
  an associated action.

  For more information, see [Deleting a scaling policy](https://docs.aws.amazon.com/autoscaling/ec2/userguide/deleting-scaling-policy.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def delete_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePolicy", input, options)
  end

  @doc """
  Deletes the specified scheduled action.
  """
  def delete_scheduled_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScheduledAction", input, options)
  end

  @doc """
  Deletes the specified tags.
  """
  def delete_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTags", input, options)
  end

  @doc """
  Deletes the warm pool for the specified Auto Scaling group.

  For more information, see [Warm pools for Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def delete_warm_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWarmPool", input, options)
  end

  @doc """
  Describes the current Amazon EC2 Auto Scaling resource quotas for your account.

  When you establish an Amazon Web Services account, the account has initial
  quotas on the maximum number of Auto Scaling groups and launch configurations
  that you can create in a given Region. For more information, see [Quotas for Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_account_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountLimits", input, options)
  end

  @doc """
  Describes the available adjustment types for step scaling and simple scaling
  policies.

  The following adjustment types are supported:

    * `ChangeInCapacity`

    * `ExactCapacity`

    * `PercentChangeInCapacity`
  """
  def describe_adjustment_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAdjustmentTypes", input, options)
  end

  @doc """
  Gets information about the Auto Scaling groups in the account and Region.

  If you specify Auto Scaling group names, the output includes information for
  only the specified Auto Scaling groups. If you specify filters, the output
  includes information for only those Auto Scaling groups that meet the filter
  criteria. If you do not specify group names or filters, the output includes
  information for all Auto Scaling groups.

  This operation also returns information about instances in Auto Scaling groups.
  To retrieve information about the instances in a warm pool, you must call the
  `DescribeWarmPool` API.
  """
  def describe_auto_scaling_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutoScalingGroups", input, options)
  end

  @doc """
  Gets information about the Auto Scaling instances in the account and Region.
  """
  def describe_auto_scaling_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutoScalingInstances", input, options)
  end

  @doc """
  Describes the notification types that are supported by Amazon EC2 Auto Scaling.
  """
  def describe_auto_scaling_notification_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutoScalingNotificationTypes", input, options)
  end

  @doc """
  Gets information about the instance refreshes for the specified Auto Scaling
  group.

  This operation is part of the [instance refresh feature](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  in Amazon EC2 Auto Scaling, which helps you update instances in your Auto
  Scaling group after you make configuration changes.

  To help you determine the status of an instance refresh, this operation returns
  information about the instance refreshes you previously initiated, including
  their status, end time, the percentage of the instance refresh that is complete,
  and the number of instances remaining to update before the instance refresh is
  complete.

  The following are the possible statuses:

    * `Pending` - The request was created, but the operation has not
  started.

    * `InProgress` - The operation is in progress.

    * `Successful` - The operation completed successfully.

    * `Failed` - The operation failed to complete. You can troubleshoot
  using the status reason and the scaling activities.

    * `Cancelling` - An ongoing operation is being cancelled.
  Cancellation does not roll back any replacements that have already been
  completed, but it prevents new replacements from being started.

    * `Cancelled` - The operation is cancelled.
  """
  def describe_instance_refreshes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceRefreshes", input, options)
  end

  @doc """
  Gets information about the launch configurations in the account and Region.
  """
  def describe_launch_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLaunchConfigurations", input, options)
  end

  @doc """
  Describes the available types of lifecycle hooks.

  The following hook types are supported:

    * `autoscaling:EC2_INSTANCE_LAUNCHING`

    * `autoscaling:EC2_INSTANCE_TERMINATING`
  """
  def describe_lifecycle_hook_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLifecycleHookTypes", input, options)
  end

  @doc """
  Gets information about the lifecycle hooks for the specified Auto Scaling group.
  """
  def describe_lifecycle_hooks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLifecycleHooks", input, options)
  end

  @doc """
  Gets information about the Elastic Load Balancing target groups for the
  specified Auto Scaling group.

  To determine the attachment status of the target group, use the `State` element
  in the response. When you attach a target group to an Auto Scaling group, the
  initial `State` value is `Adding`. The state transitions to `Added` after all
  Auto Scaling instances are registered with the target group. If Elastic Load
  Balancing health checks are enabled for the Auto Scaling group, the state
  transitions to `InService` after at least one Auto Scaling instance passes the
  health check. When the target group is in the `InService` state, Amazon EC2 Auto
  Scaling can terminate and replace any instances that are reported as unhealthy.
  If no registered instances pass the health checks, the target group doesn't
  enter the `InService` state.

  Target groups also have an `InService` state if you attach them in the
  `CreateAutoScalingGroup` API call. If your target group state is `InService`,
  but it is not working properly, check the scaling activities by calling
  `DescribeScalingActivities` and take any corrective actions necessary.

  For help with failed health checks, see [Troubleshooting Amazon EC2 Auto Scaling: Health
  checks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html)
  in the *Amazon EC2 Auto Scaling User Guide*. For more information, see [Use Elastic Load Balancing to distribute traffic across the instances in your Auto
  Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  You can use this operation to describe target groups that were attached by using
  `AttachLoadBalancerTargetGroups`, but not for target groups that were attached
  by using `AttachTrafficSources`.
  """
  def describe_load_balancer_target_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLoadBalancerTargetGroups", input, options)
  end

  @doc """
  Gets information about the load balancers for the specified Auto Scaling group.

  This operation describes only Classic Load Balancers. If you have Application
  Load Balancers, Network Load Balancers, or Gateway Load Balancer, use the
  `DescribeLoadBalancerTargetGroups` API instead.

  To determine the attachment status of the load balancer, use the `State` element
  in the response. When you attach a load balancer to an Auto Scaling group, the
  initial `State` value is `Adding`. The state transitions to `Added` after all
  Auto Scaling instances are registered with the load balancer. If Elastic Load
  Balancing health checks are enabled for the Auto Scaling group, the state
  transitions to `InService` after at least one Auto Scaling instance passes the
  health check. When the load balancer is in the `InService` state, Amazon EC2
  Auto Scaling can terminate and replace any instances that are reported as
  unhealthy. If no registered instances pass the health checks, the load balancer
  doesn't enter the `InService` state.

  Load balancers also have an `InService` state if you attach them in the
  `CreateAutoScalingGroup` API call. If your load balancer state is `InService`,
  but it is not working properly, check the scaling activities by calling
  `DescribeScalingActivities` and take any corrective actions necessary.

  For help with failed health checks, see [Troubleshooting Amazon EC2 Auto Scaling: Health
  checks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html)
  in the *Amazon EC2 Auto Scaling User Guide*. For more information, see [Use Elastic Load Balancing to distribute traffic across the instances in your Auto
  Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_load_balancers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLoadBalancers", input, options)
  end

  @doc """
  Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling.
  """
  def describe_metric_collection_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMetricCollectionTypes", input, options)
  end

  @doc """
  Gets information about the Amazon SNS notifications that are configured for one
  or more Auto Scaling groups.
  """
  def describe_notification_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNotificationConfigurations", input, options)
  end

  @doc """
  Gets information about the scaling policies in the account and Region.
  """
  def describe_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePolicies", input, options)
  end

  @doc """
  Gets information about the scaling activities in the account and Region.

  When scaling events occur, you see a record of the scaling activity in the
  scaling activities. For more information, see [Verifying a scaling activity for an Auto Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  If the scaling event succeeds, the value of the `StatusCode` element in the
  response is `Successful`. If an attempt to launch instances failed, the
  `StatusCode` value is `Failed` or `Cancelled` and the `StatusMessage` element in
  the response indicates the cause of the failure. For help interpreting the
  `StatusMessage`, see [Troubleshooting Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/CHAP_Troubleshooting.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_scaling_activities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingActivities", input, options)
  end

  @doc """
  Describes the scaling process types for use with the `ResumeProcesses` and
  `SuspendProcesses` APIs.
  """
  def describe_scaling_process_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingProcessTypes", input, options)
  end

  @doc """
  Gets information about the scheduled actions that haven't run or that have not
  reached their end time.

  To describe the scaling activities for scheduled actions that have already run,
  call the `DescribeScalingActivities` API.
  """
  def describe_scheduled_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScheduledActions", input, options)
  end

  @doc """
  Describes the specified tags.

  You can use filters to limit the results. For example, you can query for the
  tags for a specific Auto Scaling group. You can specify multiple values for a
  filter. A tag must match at least one of the specified values for it to be
  included in the results.

  You can also specify multiple filters. The result includes information for a
  particular tag only if it matches all the filters. If there's no match, no
  special message is returned.

  For more information, see [Tag Auto Scaling groups and instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Describes the termination policies supported by Amazon EC2 Auto Scaling.

  For more information, see [Work with Amazon EC2 Auto Scaling termination policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_termination_policy_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTerminationPolicyTypes", input, options)
  end

  @doc """
  ## Reserved for use with Amazon VPC Lattice, which is in preview and subject to
  change.

  Do not use this API for production workloads. This API is also subject to
  change.

  Gets information about the traffic sources for the specified Auto Scaling group.
  """
  def describe_traffic_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrafficSources", input, options)
  end

  @doc """
  Gets information about a warm pool and its instances.

  For more information, see [Warm pools for Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_warm_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWarmPool", input, options)
  end

  @doc """
  Removes one or more instances from the specified Auto Scaling group.

  After the instances are detached, you can manage them independent of the Auto
  Scaling group.

  If you do not specify the option to decrement the desired capacity, Amazon EC2
  Auto Scaling launches instances to replace the ones that are detached.

  If there is a Classic Load Balancer attached to the Auto Scaling group, the
  instances are deregistered from the load balancer. If there are target groups
  attached to the Auto Scaling group, the instances are deregistered from the
  target groups.

  For more information, see [Detach EC2 instances from your Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def detach_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachInstances", input, options)
  end

  @doc """
  Detaches one or more target groups from the specified Auto Scaling group.

  When you detach a target group, it enters the `Removing` state while
  deregistering the instances in the group. When all instances are deregistered,
  then you can no longer describe the target group using the
  `DescribeLoadBalancerTargetGroups` API call. The instances remain running.

  You can use this operation to detach target groups that were attached by using
  `AttachLoadBalancerTargetGroups`, but not for target groups that were attached
  by using `AttachTrafficSources`.
  """
  def detach_load_balancer_target_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachLoadBalancerTargetGroups", input, options)
  end

  @doc """
  Detaches one or more Classic Load Balancers from the specified Auto Scaling
  group.

  This operation detaches only Classic Load Balancers. If you have Application
  Load Balancers, Network Load Balancers, or Gateway Load Balancer, use the
  `DetachLoadBalancerTargetGroups` API instead.

  When you detach a load balancer, it enters the `Removing` state while
  deregistering the instances in the group. When all instances are deregistered,
  then you can no longer describe the load balancer using the
  `DescribeLoadBalancers` API call. The instances remain running.
  """
  def detach_load_balancers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachLoadBalancers", input, options)
  end

  @doc """
  ## Reserved for use with Amazon VPC Lattice, which is in preview and subject to
  change.

  Do not use this API for production workloads. This API is also subject to
  change.

  Detaches one or more traffic sources from the specified Auto Scaling group.
  """
  def detach_traffic_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachTrafficSources", input, options)
  end

  @doc """
  Disables group metrics collection for the specified Auto Scaling group.
  """
  def disable_metrics_collection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableMetricsCollection", input, options)
  end

  @doc """
  Enables group metrics collection for the specified Auto Scaling group.

  You can use these metrics to track changes in an Auto Scaling group and to set
  alarms on threshold values. You can view group metrics using the Amazon EC2 Auto
  Scaling console or the CloudWatch console. For more information, see [Monitor CloudWatch metrics for your Auto Scaling groups and
  instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def enable_metrics_collection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableMetricsCollection", input, options)
  end

  @doc """
  Moves the specified instances into the standby state.

  If you choose to decrement the desired capacity of the Auto Scaling group, the
  instances can enter standby as long as the desired capacity of the Auto Scaling
  group after the instances are placed into standby is equal to or greater than
  the minimum capacity of the group.

  If you choose not to decrement the desired capacity of the Auto Scaling group,
  the Auto Scaling group launches new instances to replace the instances on
  standby.

  For more information, see [Temporarily removing instances from your Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def enter_standby(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnterStandby", input, options)
  end

  @doc """
  Executes the specified policy.

  This can be useful for testing the design of your scaling policy.
  """
  def execute_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecutePolicy", input, options)
  end

  @doc """
  Moves the specified instances out of the standby state.

  After you put the instances back in service, the desired capacity is
  incremented.

  For more information, see [Temporarily removing instances from your Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def exit_standby(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExitStandby", input, options)
  end

  @doc """
  Retrieves the forecast data for a predictive scaling policy.

  Load forecasts are predictions of the hourly load values using historical load
  data from CloudWatch and an analysis of historical trends. Capacity forecasts
  are represented as predicted values for the minimum capacity that is needed on
  an hourly basis, based on the hourly load forecast.

  A minimum of 24 hours of data is required to create the initial forecasts.
  However, having a full 14 days of historical data results in more accurate
  forecasts.

  For more information, see [Predictive scaling for Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def get_predictive_scaling_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPredictiveScalingForecast", input, options)
  end

  @doc """
  Creates or updates a lifecycle hook for the specified Auto Scaling group.

  Lifecycle hooks let you create solutions that are aware of events in the Auto
  Scaling instance lifecycle, and then perform a custom action on instances when
  the corresponding lifecycle event occurs.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

    1. (Optional) Create a launch template or launch configuration with
  a user data script that runs while an instance is in a wait state due to a
  lifecycle hook.

    2. (Optional) Create a Lambda function and a rule that allows Amazon
  EventBridge to invoke your Lambda function when an instance is put into a wait
  state due to a lifecycle hook.

    3. (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows
  Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.

    4. ## Create the lifecycle hook. Specify whether the hook is used
  when the instances launch or terminate.

    5. If you need more time, record the lifecycle action heartbeat to
  keep the instance in a wait state using the `RecordLifecycleActionHeartbeat` API
  call.

    6. If you finish before the timeout period ends, send a callback by
  using the `CompleteLifecycleAction` API call.

  For more information, see [Amazon EC2 Auto Scaling lifecycle hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  If you exceed your maximum limit of lifecycle hooks, which by default is 50 per
  Auto Scaling group, the call fails.

  You can view the lifecycle hooks for an Auto Scaling group using the
  `DescribeLifecycleHooks` API call. If you are no longer using a lifecycle hook,
  you can delete it by calling the `DeleteLifecycleHook` API.
  """
  def put_lifecycle_hook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutLifecycleHook", input, options)
  end

  @doc """
  Configures an Auto Scaling group to send notifications when specified events
  take place.

  Subscribers to the specified topic can have messages delivered to an endpoint
  such as a web server or an email address.

  This configuration overwrites any existing configuration.

  For more information, see [Getting Amazon SNS notifications when your Auto Scaling group
  scales](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ASGettingNotifications.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  If you exceed your maximum limit of SNS topics, which is 10 per Auto Scaling
  group, the call fails.
  """
  def put_notification_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutNotificationConfiguration", input, options)
  end

  @doc """
  Creates or updates a scaling policy for an Auto Scaling group.

  Scaling policies are used to scale an Auto Scaling group based on configurable
  metrics. If no policies are defined, the dynamic scaling and predictive scaling
  features are not used.

  For more information about using dynamic scaling, see [Target tracking scaling policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html)
  and [Step and simple scaling policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  For more information about using predictive scaling, see [Predictive scaling for Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  You can view the scaling policies for an Auto Scaling group using the
  `DescribePolicies` API call. If you are no longer using a scaling policy, you
  can delete it by calling the `DeletePolicy` API.
  """
  def put_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutScalingPolicy", input, options)
  end

  @doc """
  Creates or updates a scheduled scaling action for an Auto Scaling group.

  For more information, see [Scheduled scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/schedule_time.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  You can view the scheduled actions for an Auto Scaling group using the
  `DescribeScheduledActions` API call. If you are no longer using a scheduled
  action, you can delete it by calling the `DeleteScheduledAction` API.

  If you try to schedule your action in the past, Amazon EC2 Auto Scaling returns
  an error message.
  """
  def put_scheduled_update_group_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutScheduledUpdateGroupAction", input, options)
  end

  @doc """
  Creates or updates a warm pool for the specified Auto Scaling group.

  A warm pool is a pool of pre-initialized EC2 instances that sits alongside the
  Auto Scaling group. Whenever your application needs to scale out, the Auto
  Scaling group can draw on the warm pool to meet its new desired capacity. For
  more information and example configurations, see [Warm pools for Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  This operation must be called from the Region in which the Auto Scaling group
  was created. This operation cannot be called on an Auto Scaling group that has a
  mixed instances policy or a launch template or launch configuration that
  requests Spot Instances.

  You can view the instances in the warm pool using the `DescribeWarmPool` API
  call. If you are no longer using a warm pool, you can delete it by calling the
  `DeleteWarmPool` API.
  """
  def put_warm_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutWarmPool", input, options)
  end

  @doc """
  Records a heartbeat for the lifecycle action associated with the specified token
  or instance.

  This extends the timeout by the length of time defined using the
  `PutLifecycleHook` API call.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

    1. (Optional) Create a launch template or launch configuration with
  a user data script that runs while an instance is in a wait state due to a
  lifecycle hook.

    2. (Optional) Create a Lambda function and a rule that allows Amazon
  EventBridge to invoke your Lambda function when an instance is put into a wait
  state due to a lifecycle hook.

    3. (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows
  Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.

    4. Create the lifecycle hook. Specify whether the hook is used when
  the instances launch or terminate.

    5. ## If you need more time, record the lifecycle action heartbeat to
  keep the instance in a wait state.

    6. If you finish before the timeout period ends, send a callback by
  using the `CompleteLifecycleAction` API call.

  For more information, see [Amazon EC2 Auto Scaling lifecycle hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def record_lifecycle_action_heartbeat(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RecordLifecycleActionHeartbeat", input, options)
  end

  @doc """
  Resumes the specified suspended auto scaling processes, or all suspended
  process, for the specified Auto Scaling group.

  For more information, see [Suspending and resuming scaling processes](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def resume_processes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResumeProcesses", input, options)
  end

  @doc """
  Sets the size of the specified Auto Scaling group.

  If a scale-in activity occurs as a result of a new `DesiredCapacity` value that
  is lower than the current size of the group, the Auto Scaling group uses its
  termination policy to determine which instances to terminate.

  For more information, see [Manual scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-manual-scaling.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def set_desired_capacity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetDesiredCapacity", input, options)
  end

  @doc """
  Sets the health status of the specified instance.

  For more information, see [Health checks for Auto Scaling instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def set_instance_health(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetInstanceHealth", input, options)
  end

  @doc """
  Updates the instance protection settings of the specified instances.

  This operation cannot be called on instances in a warm pool.

  For more information about preventing instances that are part of an Auto Scaling
  group from terminating on scale in, see [Using instance scale-in protection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  If you exceed your maximum limit of instance IDs, which is 50 per Auto Scaling
  group, the call fails.
  """
  def set_instance_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetInstanceProtection", input, options)
  end

  @doc """
  Starts a new instance refresh operation.

  An instance refresh performs a rolling replacement of all or some instances in
  an Auto Scaling group. Each instance is terminated first and then replaced,
  which temporarily reduces the capacity available within your Auto Scaling group.

  This operation is part of the [instance refresh feature](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  in Amazon EC2 Auto Scaling, which helps you update instances in your Auto
  Scaling group. This feature is helpful, for example, when you have a new AMI or
  a new user data script. You just need to create a new launch template that
  specifies the new AMI or user data script. Then start an instance refresh to
  immediately begin the process of updating instances in the group.

  If the call succeeds, it creates a new instance refresh request with a unique ID
  that you can use to track its progress. To query its status, call the
  `DescribeInstanceRefreshes` API. To describe the instance refreshes that have
  already run, call the `DescribeInstanceRefreshes` API. To cancel an instance
  refresh operation in progress, use the `CancelInstanceRefresh` API.
  """
  def start_instance_refresh(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartInstanceRefresh", input, options)
  end

  @doc """
  Suspends the specified auto scaling processes, or all processes, for the
  specified Auto Scaling group.

  If you suspend either the `Launch` or `Terminate` process types, it can prevent
  other process types from functioning properly. For more information, see
  [Suspending and resuming scaling processes](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  To resume processes that have been suspended, call the `ResumeProcesses` API.
  """
  def suspend_processes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SuspendProcesses", input, options)
  end

  @doc """
  Terminates the specified instance and optionally adjusts the desired group size.

  This operation cannot be called on instances in a warm pool.

  This call simply makes a termination request. The instance is not terminated
  immediately. When an instance is terminated, the instance status changes to
  `terminated`. You can't connect to or start an instance after you've terminated
  it.

  If you do not specify the option to decrement the desired capacity, Amazon EC2
  Auto Scaling launches instances to replace the ones that are terminated.

  By default, Amazon EC2 Auto Scaling balances instances across all Availability
  Zones. If you decrement the desired capacity, your Auto Scaling group can become
  unbalanced between Availability Zones. Amazon EC2 Auto Scaling tries to
  rebalance the group, and rebalancing might terminate instances in other zones.
  For more information, see [Rebalancing activities](https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-benefits.html#AutoScalingBehavior.InstanceUsage)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def terminate_instance_in_auto_scaling_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateInstanceInAutoScalingGroup", input, options)
  end

  @doc """
  ## We strongly recommend that all Auto Scaling groups use launch templates to
  ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.

  Updates the configuration for the specified Auto Scaling group.

  To update an Auto Scaling group, specify the name of the group and the property
  that you want to change. Any properties that you don't specify are not changed
  by this update request. The new settings take effect on any scaling activities
  after this call returns.

  If you associate a new launch configuration or template with an Auto Scaling
  group, all new instances will get the updated configuration. Existing instances
  continue to run with the configuration that they were originally launched with.
  When you update a group to specify a mixed instances policy instead of a launch
  configuration or template, existing instances may be replaced to match the new
  purchasing options that you specified in the policy. For example, if the group
  currently has 100% On-Demand capacity and the policy specifies 50% Spot
  capacity, this means that half of your instances will be gradually terminated
  and relaunched as Spot Instances. When replacing instances, Amazon EC2 Auto
  Scaling launches new instances before terminating the old ones, so that updating
  your group does not compromise the performance or availability of your
  application.

  Note the following about changing `DesiredCapacity`, `MaxSize`, or `MinSize`:

    * If a scale-in activity occurs as a result of a new
  `DesiredCapacity` value that is lower than the current size of the group, the
  Auto Scaling group uses its termination policy to determine which instances to
  terminate.

    * If you specify a new value for `MinSize` without specifying a
  value for `DesiredCapacity`, and the new `MinSize` is larger than the current
  size of the group, this sets the group's `DesiredCapacity` to the new `MinSize`
  value.

    * If you specify a new value for `MaxSize` without specifying a
  value for `DesiredCapacity`, and the new `MaxSize` is smaller than the current
  size of the group, this sets the group's `DesiredCapacity` to the new `MaxSize`
  value.

  To see which properties have been set, call the `DescribeAutoScalingGroups` API.
  To view the scaling policies for an Auto Scaling group, call the
  `DescribePolicies` API. If the group has scaling policies, you can update them
  by calling the `PutScalingPolicy` API.
  """
  def update_auto_scaling_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAutoScalingGroup", input, options)
  end
end
