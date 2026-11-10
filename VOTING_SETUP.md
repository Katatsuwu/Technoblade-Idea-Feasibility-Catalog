# Shared voting setup

The catalog now supports shared votes through Supabase. Each browser receives an anonymous sign-in, so no name or email is collected. A browser can vote for any number of ideas and remove any of its votes. The database prevents duplicate votes for the same idea and sends live updates to other open catalog pages.

## One-time setup

1. Create a Supabase project.
2. In **Authentication → Sign In / Providers**, enable **Anonymous Sign-Ins**.
3. Open **SQL Editor**, paste and run the contents of [supabase/votes.sql](supabase/votes.sql).
4. In **Project Settings → API**, copy the **Project URL** and the **anon / publishable key**. Put them in [vote-config.js](vote-config.js):

   ```js
   window.VOTE_CONFIG = {
     url: "https://YOUR-PROJECT-REF.supabase.co",
     anonKey: "YOUR-PUBLIC-ANON-OR-PUBLISHABLE-KEY"
   };
   ```

5. Commit the updated `vote-config.js`. GitHub Pages will deploy it with the catalog.

The URL and anon/publishable key are public browser values. Never put a `service_role` key or database password in the website.

## Vote identity and privacy

The anonymous account is stored in that browser. Votes remain associated with it on that browser, but clearing its site data or using another device creates a different identity. This lightweight setup does not verify a person's real-world identity, so it is suitable for informal preference polling, not a binding election. Supabase recommends CAPTCHA protection for public anonymous sign-in endpoints if abuse becomes a concern.

Until the project URL and public key are configured, voting controls stay disabled and the page explains that setup is needed.
