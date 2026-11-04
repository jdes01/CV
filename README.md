# Javier de Santiago Palomino - [LinkedIn](https://www.linkedin.com/in/javier-de-santiago-3795441a3/) - [Email](jasampa3000@gmail.com) - [Github](https://github.com/jdes01)

## TL;DR

Senior product engineer and founder. My specialty is breadth with depth: best practices, architecture and design patterns, engineering techniques, languages, tools and platforms. That range is what lets me direct swarms of AI agents that deliver a lot, deliver it well, and deliver it fast. I take on the work teams put off: modernizing legacy platforms that serve production traffic, building delivery and observability from scratch, and building whole products end to end.

## What I bring

- **Legacy modernization without stopping the business.** I upgrade frameworks and languages in monoliths serving live traffic, refactor old codebases into modern monorepos, and delete dead code and dead infrastructure along the way.
- **Engineering foundations that multiply delivery.** I have led adoption of best practices on several fronts: branching strategy, CI/CD, testing, local development environments, monorepos, observability, security and data access.
- **Software factories.** I build the harness (conventions, quality gates, skills, MCP integrations, executable specs) that lets agents ship production code safely, and I put agents to work inside real business workflows.
- **Teaching teams to work with AI.** I train engineers to get the best out of agents and keep the team current as the tooling changes.
- **Founder mindset.** I founded and run [Tranki](https://trankitests.com), a product live in production with real users.

## Experience

### EuroTransportCar (Vehicle transport and logistics platform, Spanish company)

**Senior Software Engineer, Platform & AI** (September 2026 - Present)

In my first two months:

- **Modernized the core platform while it served production traffic.** Upgraded a 10-year-old monolith across major framework, language and test-tooling versions, removed dead integrations and dead code, and improved slow queries. The team now works on a supported, observable stack.
- **Changed how the team delivers.** Redesigned the branching strategy, built CI/CD and test suites where there were practically none (from 0 to 889 E2E scenarios, 17 → 215 unit test files), and made every deploy pass a test gate. Shipping went from risky and manual to routine.
- **Rebuilt local development as a harness.** Every developer gets a reproducible environment that uses the production image, a local database per worktree built from sanitized production snapshots, and parallel E2E runs. Agents and humans share the same quality gates.
- **Built observability from scratch.** Logs became structured, and traces connect Sentry, Loki and Grafana. I set up Grafana, rolled out a telemetry agent on every server, rebuilt Sentry into real error triage, added cron alerting, and introduced PostHog for product analytics and session replay. Incidents went from guesswork to queries.
- **Took ownership of the infrastructure** across OVH, Datalix, Hetzner, Kubernetes and Cloudflare. I coordinated database migrations between providers with verified data, managed firewalls, and consolidated eight Docker images into one with faster builds and near-instant pod shutdown.
- **Built new products end to end on my own.** I created the new TypeScript monorepo (DDD, architecture fitness functions, mutation testing) and shipped full verticals on it, such as electronic transport control documents (DeCA) in three days and embeddable client dashboards.
- **Led AI adoption.** I trained the team to use agents well and put agents into business workflows: an MCP server for clients, a quoting bot, and AI-driven incident analysis.
- **Built `etc-atlas`, the team's AI operations hub.** It brings 12 data sources (Kubernetes, databases, Grafana, Sentry, cloud providers, Discord) behind one agent, with read and write strictly separated. Audit checks run against the live systems. Atlas starts and coordinates tasks itself and stays in sync with the trackers (Jira, GitHub), and it keeps the infrastructure documentation, incident history and investigations current. The whole team uses it.
- **Built internal tooling for operations.** An ops console installs observability on each server, injects secrets, manages scoped API keys, and exposes a secure MCP endpoint so agents can operate the platform.

**Security**

- Ran security audits that found intrusions on our servers. We documented them, reported them, and removed the attackers.
- Moved every application off shared `root` database access to its own least-privilege account, which made per-environment credential rotation possible.
- Took secrets out of git and container images and moved them to Infisical, using a Kubernetes operator in production.
- Hardened the network with firewalls, Cloudflare rules and layer-7 flood mitigation.

### ServiceClub (Digital marketplace platform with multiple business verticals, Spanish startup)

**Full Stack Product Engineer** (June 2026 - August 2026)

- Built backend services for a multi-vertical marketplace (marketplace, academy, jobs, perks, back office). The stack was an event-driven NestJS architecture with a transactional outbox, Stripe payments, and Keycloak auth, including custom plugins and a legacy password migration.
- Set up the team's shared agent tooling and AI workflows.
- My time there was short because the company carried out a collective layoff (ERE) three months after I joined.

### Tucuvi (Clinical voice AI for automated patient follow-up; first European Class IIb-certified clinical voice agent, Spanish healthtech)

**Product Engineer** (June 2024 - June 2026)

- Co-led a strategic integration with one of the country's largest private hospital networks. Enterprise integrations became a main growth driver, in a line of business that passed €1M ARR.
- Worked on the platform behind 1M+ autonomous clinical voice calls, from product discovery to delivery. That included redesigning the alerting system into composable building blocks that clinicians configure themselves.
- Designed the integrations with hospital information systems, EHRs and Salesforce that enterprise deployments were built on.
- Reshaped service boundaries, standardized CI/CD across projects, set the backend testing strategy, and promoted DDD and event-driven architecture across the team.

### Certainly (AI-driven no-code chatbot builder platform, Danish startup)

**Backend Engineer** (June 2022 - June 2024)

- Built distributed message queues behind US SMS campaigns for the MrBeast brand Feastables.
- Shipped a Shopify app that attached an AI-generated bot to a shop in seconds, plus internal tooling that cloned production chatbots locally for debugging.
- Refactored legacy code to CQRS, hexagonal architecture and DDD, and migrated infrastructure between cloud providers.

## Founder

### [Tranki](https://trankitests.com) - Founder & sole engineer (March 2026 - Present)

Mobile-first, social flashcards with spaced repetition ("Anki, but pretty. And free."), live in production with real users. I run everything: product, engineering, ML and operations.

- **A software factory of one.** I deliver through a pipeline of parallel agents with written specs, red-test-first fixes, human checkpoints and a ledger of which model handles which kind of task. That throughput normally takes a full team: 550+ commits in 7 months across the app, a backoffice, the marketing site and an ML worker.
- **AI inside the product.** I fine-tuned and deployed my own models to turn imported decks into interactive questions, because off-the-shelf models scored at chance. Imports of thousands of cards went from about 24 minutes to about 1, and users can study while the import runs.
- **Production-grade operations at near-zero cost.** The product runs on self-hosted infrastructure: zero-downtime deploys with automatic rollback, daily off-site backups, secret management, and a hardened supply chain.
- **Quality built into the system,** not left to discipline. The same gate runs locally and in CI, with architecture contracts, coverage required on every change, and tests that hit real databases and real browsers.

## Toolbox

- **Architecture:** DDD, CQRS, event-driven systems, event sourcing, clean/hexagonal architecture, modular monoliths, microservices.
- **Platform:** Docker, Kubernetes, Docker Swarm, GitHub Actions, Grafana stack, Sentry, PostHog, Infisical, AWS, GCP, Hetzner, OVH, Cloudflare.
- **Languages:** TypeScript, Python, PHP, plus Go and Rust.
- **AI:** Claude Code, Cursor, OpenCode, MCP, agent skills and workflows, fine-tuning small open models.

## Other projects

- [ElCirculo](https://elcirculo.io), [Netspaces](https://github.com/jdes01/Netspaces), [Cowrent](https://github.com/jdes01/cowrent), [Hexagonal Rust](https://github.com/jdes01/hexagonal-rust): matching algorithms, and one domain built in NestJS with event sourcing, Go and Rust to compare architectures across languages.

## Languages

- **Spanish:** Native
- **English:** Professional proficiency

## Education & community

- B.S. in Software Engineering, Universidad de Córdoba.
- Coordinated the university's free-software community for 4 years.
- Led a 500-attendee software conference for 3 years. Raised $20k in sponsorship and reached 500k+ Twitter interactions in one month.
