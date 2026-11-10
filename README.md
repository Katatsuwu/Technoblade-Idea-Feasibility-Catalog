# Technoblade Idea Feasibility Catalog

A responsive, light-themed, single-page catalog for the ten proposals in **Project Proposal Suggestions.pdf**, plus PowerSignal, a separately supplied idea for a portable LTE gateway, power bank, and app-managed Wi-Fi mesh.

## Included

- Searchable proposal list showing the source title, suggestor, and original description.
- Detail view for each proposal with motivation, project overview, stakeholders, technology, risks, possible parts/software, five IEEE-related references, and a preliminary third-year feasibility estimate.
- PowerSignal is scoped as a gateway plus at least one compatible mesh satellite. Its app manages the local network; the mesh shares the LTE internet connection but does not boost cellular coverage.
- No build step is required. The Supabase browser client is loaded from a CDN for live voting; catalog content still loads if voting is not configured.

## Publish with GitHub Pages

In the repository, open **Settings -> Pages**. Choose **Deploy from a branch**, select `main` and `/(root)`, then save. GitHub Pages will publish `index.html` at the repository's Pages URL after deployment completes.

## Source and scope

The catalog uses the ten proposals with titles and descriptions in the provided PDF. Items 11-15 are blank `Idea / Idea Overview` placeholders, so they are not presented as proposals. PowerSignal is an additional idea supplied separately by the user. The original titles, suggestor names, and descriptions are shown in the list and detail banner. Expanded sections and feasibility percentages are preliminary project-planning judgments, not findings from a feasibility study. IEEE references link to IEEE Xplore records; full text may require institutional access. PowerSignal's 62% estimate applies to a limited student demonstrator, not a production-ready commercial device.

## Shared live voting

The page has per-idea vote toggles with shared live totals. Vote IDs cover the ten PDF proposals and the separately added PowerSignal idea. To connect the backend, follow [VOTING_SETUP.md](VOTING_SETUP.md). Until configured, vote buttons remain disabled.
