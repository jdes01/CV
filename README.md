# Javier de Santiago Palomino - [LinkedIn](https://www.linkedin.com/in/javier-de-santiago-3795441a3/) - [Email](jasampa3000@gmail.com) - [Github](https://github.com/jdes01)

## TL;DR

Full Stack Product Engineer with experience building end-to-end web products, from frontend experiences to scalable backend systems. Strong focus on product thinking, clean architectures (DDD, Hexagonal, CQRS), AI-assisted development, and shipping features that create business value.

## Profile

- Delivered end-to-end product features across frontend, backend and cloud infrastructure for high-traffic systems in startups and fast-paced environments
- Experienced with a wide range of technologies and eager to learn cutting-edge tools.
- Conscientious team player, dedicated to creating a comfortable team environment.
- Available within UTC -2/+2 time zone (flexible).

## Technologies

- Proficient in Python (Django/FastAPI) and TypeScript (NestJS/Next.js).
- Experience with DDD, CQRS, Clean Architectures, Event Sourcing, Event Driven Architectures, Microservices, TDD.
- Familiar with AWS/GCP, Kubernetes, Firestore, Redis, Postgres, Eventstore, MongoDB, Kafka, GraphQL, Docker.
- Auth and payments at scale: Keycloak, Stripe; monorepos with Turborepo/pnpm.
- Leading AI-assisted development: building agentic coding workflows and tooling with Claude Code, Cursor, OpenCode, Agentic workflows, MCPs and Workflow automations
- Rust and Go wannabe.

## Languages

- **Spanish:** Native
- **English:** High proficiency, excellent skills.

## Education

- B.S. in Software Engineering from Universidad de Córdoba.

## Experience

### ServiceClub (Digital marketplace platform with multiple business verticals, Spanish startup)

**Full Stack Product Developer / AI Adoption Lead** (June 2026 - Present)

- Building backend services for a multi-vertical marketplace platform (marketplace, e-learning academy, jobs board, perks/benefits, and back-office), with NestJS, Clean Architecture, DDD, and CQRS.
- Leading the company-wide adoption of AI-assisted development: defining how the engineering org works day-to-day with Claude Code and other agentic coding tools.
- Consolidated AI tooling (rules, skills, and workflows) into a single source of truth shared across editors and agents, eliminating drift and standardizing how every developer works with AI.
- Built invokable agent workflows (slash commands) for recurring engineering tasks — ticket planning, feature development, PR creation, branch review, and developer onboarding.
- Set up automated quality gates as editor hooks (lint + type-check on every change) and integrated agents with the team's tooling (Linear, code-graph navigation).
- Working with an event-driven backend (domain events via an event bus with a per-context transactional outbox), Stripe for payments, and Keycloak for authentication (including custom Java plugins and legacy password migration).
- Tech across the stack: TypeScript, NestJS, Node, pnpm, Vitest, Next.js 15 / React 19, Turborepo, Tailwind, a shared design system, AWS, Kubernetes, GitOps, and Docker.

### Tucuvi (Clinical voice AI for automated patient follow-up; first European Class IIb-certified clinical voice agent, Spanish healthtech)

**Product Engineer** (June 2024 - June 2026)

- Co-led the design and development of a strategic integration with one of the country's largest private hospital networks, enabling clinical follow-up to be automated at scale.
- These enterprise integrations became one of the company's main growth drivers, contributing to a line of business that surpassed €1M in ARR.
- Worked on the platform behind 1M+ autonomous clinical voice calls, taking part not only in the technical implementation but also in product discovery and feature design. For example, redesigned and developed a complete alert system that allows configurable and reusable alerts to be built from user responses using composable building blocks.
- Designed and implemented multiple integrations with external systems (hospital information systems, EHRs, and Salesforce), the backbone of the company's enterprise deployments.
- Unified - and also split - microservices to improve maintainability and scalability.
- Refactored and standardized CI/CD pipelines across projects.
- Championed best practices across the engineering team, including Domain-Driven Design (DDD), clean architectures, and event-driven architectures.
- Improved developer experience by enhancing debugging workflows, improving logging practices, and building automation tools (Makefiles, scripts).
- Worked extensively with Google Cloud, including Pub/Sub topics and subscriptions, Cloud Tasks, Cloud Run, Cloud Functions, storage buckets, secrets management, service accounts, and role/permission management.
- Designed and maintained Notion boards to track agile development workflows.
- Proposed and implemented testing strategies for backend services to ensure reliability and maintainability.
- Authored technical documentation and knowledge bases to support onboarding and long-term maintainability.
- Collaborated closely with product managers, designers, and data teams to align technical decisions with business needs.

### Certainly (AI driven general-purpose chatbot no-code builder platform, Danish startup)

**Backend Engineer** (June 2022 - June 2024)

- Refactored, maintained, and developed new features, including libraries and internal tools.
- Implemented several features, such as:
  - A language translator library with user-language-detected frequency caching.
  - A CLI using Typer to replicate production chatbots locally, enabling cloning of buggy client chatbots into local environments.
  - Shopify plugin app to attach an ai-generated lite version bot to your shop in seconds.
  - Distribuited message queues allowing Mr Beast brand 'feastables' to make sms campains in the USA market.
- Refactored legacy code to CQRS + Hexagonal architecture + DDD.
- Worked with domain events, Azure logs, AWS, Postgres, Redis, and feature flags.
- Migrated databases, including moving Redis from one cloud provider to another.
- Handled various integrations: Shopify, Sunshine/Zendesk, and Azure.

## Biggest Side Projects:

### [Tranki - Spaced-repetition flashcards, but pretty and free](https://trankitests.com)

- A mobile-first, social flashcard app built around spaced repetition ("Anki, but pretty. And free."): import your `.apkg` decks, study them on any device from the browser, and share them with the community — passwordless sign-in, no installs.
- **Technologies:**
  - Backend API in Python with FastAPI, PostgreSQL, and Alembic migrations (managed with `uv`).
  - Frontend React 19 SPA with Vite and a Storybook-documented design system, i18n included.
  - Clean Architecture, DDD, CQRS, value objects, and a Rust-inspired Result pattern end to end.
  - Full testing pyramid (unit, integration, e2e) wired into pre-commit / pre-push hooks and CI.
  - Self-hosted on a home server via systemd, nginx, and Tailscale funnel, with Sentry monitoring.
  - Google OAuth, `.apkg` deck import, optimistic updates, and community deck sharing.

### [Matching-interests-based meetings app - ElCirculo](https://elcirculo.io)

- Worked refactoring and developing features, such as interfaces, matching algorithms and third-parties integrations.

### [Coworking App - Netspaces](https://github.com/jdes01/Netspaces)

- **Technologies:**
  - Backend API + booking microservice both in TypeScript with NestJS connected with Kafka.
  - Frontend React app with Next.js.
  - Fully dockerized setup.
  - GraphQL federation.
  - API gateway.
  - Event sourcing.
  - Kafka.
  - Eventstore, MongoDB, and Redis.
  - DDD, Hexagonal, and CQRS patterns.
  - Grafana/Loki/Prometheus.
  - Elasticsearch.

### [Hexagonal Rust](https://github.com/jdes01/hexagonal-rust)

- A small side project exploring the potential for a clean backend microservice written in Rust, ensuring memory safety and ultra-high speed.

### [Cowrent - Rewriting Netspaces in Golang](https://github.com/jdes01/cowrent)

- **Technologies:**
  - Golang API using Gin.
  - Contracts library with Protobufs.
  - Frontend React app with Next.js.
  - Fully dockerized setup.
  - Custom Logger.
  - Grafana, Loki, Prometheus.
  - Custom Result type (Rust-inspired).
  - DDD and Hexagonal architecture.

## Extra

- Coordinated college software community for 4 years (Aula de Software Libre de la Universidad de Córdoba).
- Led a 500-attendee software conference for 3 years, coordinating team, speakers, marketing, sponsorships and community engagement. Raised $20k in sponsorships and achieved 500k+ Twitter interactions in a single month
