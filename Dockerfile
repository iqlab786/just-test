      - GF_FEATURE_TOGGLES_ENABLE=externalServiceAccounts,mcp,assistants,grafanaAdvisor
      - GF_AUTH_MANAGED_SERVICE_ACCOUNTS_ENABLED=true
 
 
      - GF_SECURITY_ALLOW_EMBEDDING=true
      - GF_SECURITY_COOKIE_SAMESITE=disabled
 
      - GF_SECURITY_COOKIE_SECURE=false
      - GF_SECURITY_CONTENT_SECURITY_POLICY=false
      - GF_AUTH_ANONYMOUS_ENABLED=true
      - GF_AUTH_ANONYMOUS_ORG_ROLE=Viewer
      - GF_SECURITY_X_FRAME_OPTIONS=
    volumes:
      - grafana-storage:/var/lib/grafana
