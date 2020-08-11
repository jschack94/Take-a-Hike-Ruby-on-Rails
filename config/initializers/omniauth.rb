Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '3371647822898573', 'b572b8d2dc96bea05c7c2536239cfdd9'
  end