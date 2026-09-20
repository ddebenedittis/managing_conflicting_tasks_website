# Managing Conflicting Tasks in Heterogeneous Multi-Robot Systems Through Hierarchical Optimization

Project page for *Managing Conflicting Tasks in Heterogeneous Multi-Robot Systems Through Hierarchical Optimization*, IEEE Robotics and Automation Letters.

**Live site:** https://ddebenedittis.github.io/managing_conflicting_tasks_website/

- Paper: https://doi.org/10.1109/LRA.2025.3559843
- Code: https://github.com/ddebenedittis/hierarchical_optimization_mpc

## Editing

All page content lives in a single file, [`src/paper.mdx`](src/paper.mdx): the frontmatter sets the browser-tab title and the link-preview card, the `<Header>` props set the on-page title, authors, venue and link buttons, and the Markdown body is the page.
Figures and videos go in `src/assets/` and are imported as ES modules so their URLs stay correct under the site's base path.
Only `favicon.svg` and `cover_pic.png` belong in `public/`.

## Development

There is no Node on the host, so everything runs in Docker.

```bash
./docker/build.bash     # build the image (once, and after dependency changes)
./docker/run.bash       # dev server on http://localhost:4321
```

To reproduce the production build, including the `/managing_conflicting_tasks_website/` base path that GitHub Pages serves under:

```bash
docker run --rm -u "$(id -u):$(id -g)" -e HOME=/tmp -v "$PWD":/app -w /app node:lts \
  npx astro build --site "https://ddebenedittis.github.io" --base "/managing_conflicting_tasks_website/"
```

## Deployment

Pushing to `main` triggers `.github/workflows/astro.yml`, which builds the site and publishes it to GitHub Pages.
The `--site` and `--base` flags are supplied by `actions/configure-pages`, which is why they are absent from `astro.config.ts`.

## Credits

Built with [Roman Hauksson-Neill's project page template](https://research-template.roman.technology), adapted from [Eliahu Horwitz's template](https://github.com/eliahuhorwitz/Academic-project-page-template), which was adapted from [Keunhong Park's project page for *Nerfies*](https://nerfies.github.io/).
Licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
