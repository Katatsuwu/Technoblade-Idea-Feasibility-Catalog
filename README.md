# Technoblade Idea Feasibility Catalog

A responsive, light-themed, single-page catalog for the ten complete proposals in **Project Proposal Suggestions.pdf**.

## Included

- Searchable proposal list showing the source title, suggestor, and original description.
- Detail view for each proposal with motivation, project overview, stakeholders, technology, risks, possible parts/software, five IEEE-related references, and a preliminary third-year feasibility estimate.
- No build step is required. The Supabase browser client is loaded from a CDN for live voting; catalog content still loads if voting is not configured.

## Publish with GitHub Pages

In the repository, open **Settings -> Pages**. Choose **Deploy from a branch**, select `main` and `/(root)`, then save. GitHub Pages will publish `index.html` at the repository's Pages URL after deployment completes.

## Source and scope

The catalog uses the ten proposals with titles and descriptions in the provided PDF. Items 11-15 are blank `Idea / Idea Overview` placeholders, so they are not presented as proposals. The original titles, suggestor names, and descriptions are shown in the list and detail banner. Expanded sections and feasibility percentages are preliminary project-planning judgments, not findings from a feasibility study. Each set of IEEE references links to an IEEE Xplore search for the paper title; full text may require institutional access.

## Shared live voting

The page has per-idea vote toggles with shared live totals. To connect the backend, follow [VOTING_SETUP.md](VOTING_SETUP.md). Until configured, vote buttons remain disabled.
