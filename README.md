# Javier de Santiago Palomino - [LinkedIn](https://www.linkedin.com/in/javier-de-santiago-3795441a3/) - [Email](jasampa3000@gmail.com) - [Github](https://github.com/jdes01)

## TL;DR

Senior product engineer and founder. I take on the work most teams put off: upgrading a ten-year-old monolith in production, getting secrets out of git, turning a pile of log files into observability you can query, and building a product end to end that real users rely on. AI-native: I run coding agents as a managed engineering process, and I teach teams to do the same.

## Selected impact

- **Founded [Tranki](https://trankitests.com)** and run it as its only engineer. It is a live flashcards platform with real users: the product, an ML import pipeline, a backoffice, and self-hosted infrastructure with zero-downtime deploys.
- **Moved a legacy monolith across major versions in production** (Symfony 2.8 → 3.4, PHP 7.1 → 7.4, PHPUnit 4.8 → 8.5): 583 files and +43k/−54k lines, with parameter-by-parameter parity checks before go-live.
- **Built a safety net where there was none.** I led the work that took a codebase from zero to 889 E2E scenarios and from 17 to 215 unit test files, which is what made the upgrade possible.
- **Removed plaintext credentials from git and container images.** Secrets now come from Infisical (a Kubernetes operator in prod), and every environment has its own least-privilege MySQL account, so credentials can be rotated per environment.
- **Led AI adoption across two engineering teams:** shared agent tooling, team conventions, MCP integrations, and an internal AI agent that answers questions about the whole infrastructure.

## How I work with AI

- I treat agents as a delivery pipeline, not autocomplete. Parallel agents work on sub-issues, a human checkpoint sits before every fix, tests are red first, and a delivery ledger records which model tier each kind of ticket needs.
- I build the levers that make agents useful for a team: layered `CLAUDE.md`/`AGENTS.md` conventions, shared skills and slash commands (planning, implementation, review, onboarding), quality gates on every change, and MCP servers for Grafana, Sentry, PostHog, Infisical, Cloudflare, Jira and Linear.
- I design for safety: read-only versus write modes, scoped API keys, encrypted provider credentials, and rules for treating untrusted input as untrusted.
- I teach teams to work this way and keep up with the tooling as it changes: Claude Code, Cursor, OpenCode, agentic workflows and MCP.

## Experience

### EuroTransportCar (Vehicle transport and logistics platform, Spanish company)

**Senior Software Engineer, Platform & AI** (September 2026 - Present)

- **Modernized the core legacy platform in production.** Upgraded Symfony 2.8 → 3.4, Doctrine 2.5 → 2.7, PHP 7.1 → 7.4, PHPUnit 4.8 → 8.5 and the Sentry SDK 1.x → 3.x, removed dead SOAP integrations and migrated 206 uses of a legacy security adapter. Side effects: 117 of 157 crons stopped running in dev mode, and 454 lost PDF documents were recovered.
- **Rebuilt the delivery pipeline.** One multistage Docker image replaced 8 Dockerfiles (~10.7k lines deleted), builds take 1–1.5 min, and pods shut down in under 1 s instead of 30 s. A test gate now runs before every environment, deploy buttons are tied to branch policy, and E2E runs in 4 shards. I also found and fixed checks that were passing silently (PHPStan reporting "OK" while failing, deploys failing once CI quota ran out).
- **Introduced structured, queryable observability.** Logs are now JSON with a `trace_id` shared with Sentry and go to Loki through Grafana Alloy, using an OpenTelemetry-style label model. Alloy deploys per server from the internal ops console, Grafana alerts catch failing, missing and silent crons, and Sentry was cleaned up into real error triage.
- **Took secrets out of the repo.** A single `%env()%` config replaced per-environment parameter files committed to git. 61 variables are served from Infisical, and I verified the resolved config hash-for-hash (589 prod parameters) before switching over.
- **Replaced shared root database access** with per-environment, least-privilege MySQL accounts across 3 products. This made per-environment credential rotation possible and documented the access model.
- **Handled production incidents with data.** Fixed connection exhaustion with targeted indexes, fixed a fleet import that deregistered vehicles because of a clock bug, and migrated the test, dev, demo and upsell databases to Hetzner ahead of a provider shutdown, with checksum-verified dumps.
- **Built `etc-atlas`, an AI infrastructure agent** that the team uses. It answers questions across 12 sources (Kubernetes, MySQL, Grafana, Sentry, cloud providers) in read-only or write mode, keeps a written record of incidents and investigations, and includes skills for tickets and executable specs. I also added an MCP endpoint with scoped API keys to the internal ops console.
- **Designed the new TypeScript platform**: a pnpm monorepo with DDD, oRPC, architecture fitness functions and mutation testing. On it I shipped DeCA v1 (electronic transport control documents: issue, publish, void, PDF, public verification) in 3 days, and an embeddable client-dashboards micro-frontend signed by the legacy app.
- Delivered ~27 product tickets across invoicing and partner integrations (Arval/Ridecell, OnLogist, Hiflow, Alquiber, Volkswagen) and an OAuth MCP server for clients.

### ServiceClub (Digital marketplace platform with multiple business verticals, Spanish startup)

**Full Stack Product Engineer / AI Adoption Lead** (June 2026 - August 2026)

- Led company-wide adoption of AI-assisted development and defined how the engineering team works day to day with Claude Code and other agentic tools.
- Merged rules, skills and workflows into a single source of truth shared across editors and agents, so every developer worked from the same setup.
- Built agent workflows for recurring engineering tasks (ticket planning, feature development, PR creation, branch review, onboarding), quality gates on every change, and integrations with Linear and code-graph navigation.
- Built backend services for a multi-vertical marketplace (marketplace, academy, jobs, perks, back office) on an event-driven NestJS architecture with a transactional outbox, Stripe payments and Keycloak auth, including custom Java plugins and legacy password migration.

### Tucuvi (Clinical voice AI for automated patient follow-up; first European Class IIb-certified clinical voice agent, Spanish healthtech)

**Product Engineer** (June 2024 - June 2026)

- Co-led the design and build of a strategic integration with one of the country's largest private hospital networks. These enterprise integrations became a main growth driver, in a line of business that passed €1M ARR.
- Worked on the platform behind 1M+ autonomous clinical voice calls across discovery, design and delivery. For example, I redesigned the alert system into composable, reusable building blocks that clinicians configure themselves.
- Designed integrations with hospital information systems, EHRs and Salesforce, which became the backbone of the company's enterprise deployments.
- Reshaped service boundaries by merging and splitting microservices, standardized CI/CD across projects, and introduced the backend testing strategy.
- Promoted DDD, clean and event-driven architecture across the team. Worked across GCP: Pub/Sub, Cloud Tasks, Cloud Run, Cloud Functions and IAM.

### Certainly (AI-driven no-code chatbot builder platform, Danish startup)

**Backend Engineer** (June 2022 - June 2024)

- Built distributed message queues that powered SMS campaigns in the US market for the MrBeast brand Feastables.
- Built a Shopify app that attached an AI-generated bot to a shop in seconds, a CLI that cloned buggy production chatbots into local environments, and a translation library with language-frequency caching.
- Refactored legacy code to CQRS, hexagonal architecture and DDD. Migrated Redis between cloud providers. Integrated Shopify, Zendesk/Sunshine and Azure.

## Founder

### [Tranki](https://trankitests.com) - Founder & sole engineer (March 2026 - Present)

Mobile-first, social flashcards with spaced repetition ("Anki, but pretty. And free."). Live in production with real users. 550+ commits in 7 months. Includes the student app, an operator backoffice, the marketing site and a background ML worker.

- **AI in the product.** Users import Anki decks (one test deck had 5,400+ cards), and a background worker turns multiple-choice cards into interactive questions. Zero-shot models scored at chance on real cards (42%), so I fine-tuned and deployed two small open models on CPU, an import judge and a card tagger, with held-out evaluation and calibrated thresholds. Putting a regex ahead of the model cut a 5,400-card import from ~24 min to ~1 min, and users can study the deck while it converts.
- **Durable jobs without extra infrastructure.** Postgres is the queue (outbox, `SKIP LOCKED`, backpressure, per-card outcomes), and it survives deploys and retries. The rejected alternatives (Celery, Temporal, Go/River) are written up in an ADR.
- **Production ops on self-hosted infrastructure.** A two-node Docker Swarm cluster runs under Dokploy behind a Cloudflare Tunnel, with no public IP. Deploys are zero-downtime with automatic rollback and check that the live release matches the commit. Postgres is backed up daily to a second machine, and secrets live in Infisical.
- **Supply-chain-hardened delivery.** Images are built once and promoted by retag, so releases never rebuild. Actions are pinned to a SHA, and zizmor, osv-scanner and gitleaks run in CI. Local hooks and CI run the same single gate.
- **Quality as a system.** About 200 test files cover real Postgres via testcontainers, Vitest in a real browser, and hermetic Playwright e2e. Coverage gates are set per layer, and changed lines need at least 80% coverage. Import-linter enforces layer contracts, and dead-code tooling runs in CI.
- **Product engineering.** Built the FSRS spaced-repetition engine with reviews stored as append-only facts and card state as a projection, plus Google OAuth, public deck discovery and cloning, web push, and free/pro plans. Stack: FastAPI, PostgreSQL, React 19 and TanStack, with Sentry and PostHog.

## Skills

- **Architecture:** DDD, CQRS, event-driven systems, event sourcing, clean/hexagonal architecture, modular monoliths and microservices, legacy modernization.
- **Platform:** Docker, Kubernetes, Docker Swarm/Dokploy, GitHub Actions, Grafana/Loki/Alloy/Prometheus, Sentry, PostHog, Infisical, AWS/GCP/Hetzner, Cloudflare.
- **Languages:** TypeScript (NestJS, Hono, React, Next.js), Python (FastAPI, Django), PHP (Symfony). Go and Rust for side projects.
- **Data:** PostgreSQL, MySQL, Redis, MongoDB, Kafka, EventStore.
- **AI:** Claude Code, Cursor, OpenCode, MCP servers, agent skills and workflows, fine-tuning and serving small open models.

## Other projects

- [ElCirculo](https://elcirculo.io): interest-based matching for meetups. Worked on matching algorithms and third-party integrations.
- [Netspaces](https://github.com/jdes01/Netspaces), [Cowrent](https://github.com/jdes01/cowrent), [Hexagonal Rust](https://github.com/jdes01/hexagonal-rust): one coworking-booking domain built in NestJS + Kafka + event sourcing, Go and Rust, to compare architectures across languages.

## Languages

- **Spanish:** Native
- **English:** Professional proficiency

## Education & community

- B.S. in Software Engineering, Universidad de Córdoba.
- Coordinated the university's free-software community for 4 years (Aula de Software Libre).
- Led a 500-attendee software conference for 3 years: team, speakers, marketing and sponsorship. Raised $20k and reached 500k+ Twitter interactions in one month.
