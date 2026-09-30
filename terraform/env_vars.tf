# Supabase

resource "vercel_project_environment_variables" "production" {
  project_id = data.vercel_project.main.id
  variables = [
    {
      key       = "NEXT_PUBLIC_SUPABASE_URL"
      value     = var.supabase_url_production
      target    = ["production"]
      sensitive = false
    },
    {
      key       = "NEXT_PUBLIC_SUPABASE_ANON_KEY"
      value     = var.supabase_anon_key_production
      target    = ["production"]
      sensitive = false
    },
    {
      key       = "SUPABASE_SERVICE_ROLE_KEY"
      value     = var.supabase_service_role_key_production
      target    = ["production"]
      sensitive = true
    },
    {
      key       = "LOG_LEVEL"
      value     = "ERROR"
      target    = ["production"]
      sensitive = false
    },
    {
      key       = "NEXT_PUBLIC_LOG_LEVEL"
      value     = "ERROR"
      target    = ["production"]
      sensitive = false
    },
    {
      key       = "USE_IN_MEMORY_REPOSITORY"
      value     = "false"
      target    = ["production"]
      sensitive = false
    },
    {
      key       = "NEXT_PUBLIC_USE_IN_MEMORY_REPOSITORY"
      value     = "false"
      target    = ["production"]
      sensitive = false
    },
    {
      key       = "SENTRY_AUTH_TOKEN"
      value     = var.sentry_auth_token
      target    = ["production"]
      sensitive = true
    },
    {
      key       = "FLAGS_SECRET"
      value     = var.vercel_flags_secret
      target    = ["production"]
      sensitive = true
    },
    {
      key       = "OTEL_EXPORTER_OTLP_ENDPOINT"
      value     = var.grafana_otlp_endpoint
      target    = ["production"]
      sensitive = true
    },
    {
      key       = "OTEL_EXPORTER_OTLP_HEADERS"
      value     = var.grafana_otlp_headers
      target    = ["production"]
      sensitive = true
    },
  ]
}

resource "vercel_project_environment_variables" "preview" {
  project_id = data.vercel_project.main.id
  variables = [
    {
      key       = "NEXT_PUBLIC_SUPABASE_URL"
      value     = var.supabase_url_preview
      target    = ["preview"]
      sensitive = false
    },
    {
      key       = "NEXT_PUBLIC_SUPABASE_ANON_KEY"
      value     = var.supabase_anon_key_preview
      target    = ["preview"]
      sensitive = false
    },
    {
      key       = "SUPABASE_SERVICE_ROLE_KEY"
      value     = var.supabase_service_role_key_preview
      target    = ["preview"]
      sensitive = true
    },
    {
      key       = "LOG_LEVEL"
      value     = "DEBUG"
      target    = ["preview"]
      sensitive = false
    },
    {
      key       = "NEXT_PUBLIC_LOG_LEVEL"
      value     = "DEBUG"
      target    = ["preview"]
      sensitive = false
    },
    {
      key       = "USE_IN_MEMORY_REPOSITORY"
      value     = "true"
      target    = ["preview"]
      sensitive = false
    },
    {
      key       = "NEXT_PUBLIC_USE_IN_MEMORY_REPOSITORY"
      value     = "true"
      target    = ["preview"]
      sensitive = false
    },
    {
      key       = "SENTRY_AUTH_TOKEN"
      value     = var.sentry_auth_token
      target    = ["preview"]
      sensitive = true
    },
    {
      key       = "FLAGS_SECRET"
      value     = var.vercel_flags_secret
      target    = ["preview"]
      sensitive = true
    },
    {
      key       = "OTEL_EXPORTER_OTLP_ENDPOINT"
      value     = var.grafana_otlp_endpoint
      target    = ["preview"]
      sensitive = true
    },
    {
      key       = "OTEL_EXPORTER_OTLP_HEADERS"
      value     = var.grafana_otlp_headers
      target    = ["preview"]
      sensitive = true
    },
    {
      key       = "NEXT_OTEL_VERBOSE"
      value     = "1"
      target    = ["preview"]
      sensitive = false
    },
  ]
}

resource "vercel_project_environment_variables" "development" {
  project_id = data.vercel_project.main.id
  variables = [
    {
      key       = "NEXT_PUBLIC_SUPABASE_URL"
      value     = var.supabase_url_development
      target    = ["development"]
      sensitive = false
    },
    {
      key       = "NEXT_PUBLIC_SUPABASE_ANON_KEY"
      value     = var.supabase_anon_key_development
      target    = ["development"]
      sensitive = false
    },
    {
      key       = "SUPABASE_SERVICE_ROLE_KEY"
      value     = var.supabase_service_role_key_development
      target    = ["development"]
      sensitive = false
    },
    {
      key       = "LOG_LEVEL"
      value     = "DEBUG"
      target    = ["development"]
      sensitive = false
    },
    {
      key       = "NEXT_PUBLIC_LOG_LEVEL"
      value     = "DEBUG"
      target    = ["development"]
      sensitive = false
    },
    {
      key       = "USE_IN_MEMORY_REPOSITORY"
      value     = "false"
      target    = ["development"]
      sensitive = false
    },
    {
      key       = "NEXT_PUBLIC_USE_IN_MEMORY_REPOSITORY"
      value     = "false"
      target    = ["development"]
      sensitive = false
    },
    {
      key       = "FLAGS_SECRET"
      value     = var.vercel_flags_secret
      target    = ["development"]
      sensitive = false
    },
  ]
}
