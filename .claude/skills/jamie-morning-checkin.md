# Jamie Morning Check-In

A structured daily intelligence pull for Jamie Moran. Runs every morning (or on demand) to orient the day with minimum friction.

Seven steps, always in this order. Run all seven before presenting output — do not surface results mid-run.

---

## Step 1: Gmail Calendar — Today + 5-Day Scan

**CRITICAL: Always use Google Calendar (Gmail). NEVER use the iOS/native calendar tool.**

Use `tool_search("Google Calendar list events")` to load the calendar tools, then:

1. Pull all events **today** (full day, start to end).
2. Scan the **next 5 business days** for meetings that look like they require prep. Flag an event as needing prep if any of the following apply:
   - External attendees (anyone outside @climatedoor.com, @unifypartners.ca, @climateglobal.space)
   - Subject includes words like: pitch, proposal, intro, discovery, partnership, investor, client, check in, 1:1 with an external, kickoff, review
   - Meeting is longer than 45 minutes
   - Meeting includes someone from the VIP list (see below)

**VIP attendees** (always flag): Hiroki Kudo, Erin Fawcett, Lindsay Chan, Brittany Goldhawke, Morgane Briant, any LCBA contacts, any Indigenous nation contacts, any active client contacts.

3. For each flagged meeting in the 5-day window, note: date, who's attending, and a one-line prep note.

---

## Step 2: Cross-Reference Meetings Against Email

For the **top 3-5 most important meetings** from Step 1 (today's meetings first, then flagged upcoming ones):

1. Take the external attendee names and email domains.
2. Run a Gmail search for threads involving each attendee from the last 30 days.
3. Surface any threads that contain context Jamie should know before the meeting.
4. Note if there's anything unresolved, promised, or stale in those threads.

Use `tool_search("Gmail search threads")` to load Gmail tools.

Keep this section tight. One line per thread surfaced, maximum. If there's nothing relevant, say so and move on.

---

## Step 3: Gmail Inbox — Unread Triage

Search Gmail for unread emails needing attention. Run these searches in order:

1. `label:to-respond is:unread` — highest priority. Explicitly flagged for response.
2. `label:fyi is:unread` — second priority. Need a read, not necessarily a reply.
3. `is:unread in:inbox -label:to-respond -label:fyi` — everything else unread in primary inbox. Exclude newsletters, system alerts, calendar notifications, Slack digests, Fireflies recaps, Luma event confirmations, Upwork billing summaries, and Northeastern Slack join notifications.

For each surfaced email, classify and present per the triage format below. Apply P1-P5 logic:

- **P1** — Deals in motion, active client threads, LCBA pipeline, Indigenous nation partners
- **P2** — Teammates waiting on Jamie (Chad, Nick, Ingrid, Sam, Ash, Jae, Tiffanee, Glena first)
- **P3** — Warm inbound, stale 48+ hours
- **P4** — Fresh / FYI
- **P5** — Noise (count only, never list)

Flag STALE on anything >5 days old where the ball is in Jamie's court.

**Draft replies**: When Jamie requests a draft reply for a P1 or P2 item, write the reply copy **inline in the chat only**. Do not create standalone Gmail drafts — they do not thread to the original conversation. Jamie will copy and paste into the live thread.

---

## Step 4: Asana Personal Tasks

Use `tool_search("Asana get my tasks")` to load Asana tools, then:

1. Pull **personal tasks not attached to any project** — these are Jamie's standalone to-dos.
2. Surface tasks **due today** first.
3. Then tasks **due in the next 5 business days**.
4. Note if any task is overdue (past due date and incomplete).

Do NOT list every task in a project. Only personal, unattached tasks unless Jamie asks otherwise.

---

## Step 5: LinkedIn Editorial Calendar — 10-Day Window

Check the LinkedIn Editorial Calendar in Notion for any posts with a Publish date in the **last 5 days OR next 5 days** that are NOT set to "Posted".

**Data source:** `collection://710403c7-205f-4dfc-8808-c2ffcdac2eea`
**Database URL:** `https://www.notion.so/climatedoor/5f7f700141c947968761ba483694b709`

Use `Notion:notion-search` with:
- `data_source_url`: `collection://710403c7-205f-4dfc-8808-c2ffcdac2eea`
- `query`: `publish date posts`
- `page_size`: 25

Then filter results manually:
- **Include** posts where `date:Publish date:start` falls between [today minus 5 days] and [today plus 5 days]
- **Exclude** posts where `Status` is "Posted" — those are done

**Flag urgency by Status:**
- `Needs Review` or `Needs Graphic` — blocked, action required before it can go out
- `Draft` — still in progress, likely behind if publish date is today or past
- `Idea` — not started, critical if publish date is today or past
- `Approved`, `Ready to Schedule`, `Scheduled` — on track, note only

For each flagged post, report: Story title, Account name, Publish date, Status, Post type, Owner.

If nothing falls in the window: "Editorial Calendar — Nothing in window."

**Status options in this database for reference:**
Idea / Draft / Needs Graphic / Needs Review / Approved / Ready to Schedule / Scheduled / Posted / Repurpose Later

---

## Step 6: North Star Boulder Review

Read `/mnt/skills/user/jamie-north-star/SKILL.md` and surface:

- **Tier 1 boulders** (Active Now): list each item with a one-line status note. If anything from today's calendar or email connects to a boulder, call that out explicitly.
- **Tier 2 boulders** (In Motion): list titles only, no detail unless something from today is relevant.
- Skip Tiers 3 and 4 unless Jamie asks.

---

## Output Format

Present all six sections in a single response after running all steps. Strict format, no preamble, no post-response wrap-up.

```
MORNING CHECK-IN — [Day, Date]

---

CALENDAR — TODAY
• [Time] [Meeting title] — [Attendees]. [Prep needed? Y/N — one line]

UPCOMING — PREP FLAGGED (Next 5 Business Days)
• [Date] [Meeting title] — [Why flagged]. [One-line prep note]

EMAIL CONTEXT — MEETING PREP
• [Attendee/Company] — [Thread context in one line. Action if needed.]

---

INBOX — UNREAD

P1 — DEALS IN MOTION
• [Name, Company] — [context]. [Action]

P2 — TEAM BLOCKERS
• [Teammate] — [what they need]. [Action]

P3 — STALE WARM INBOUND
• [Name] — [days silent]. [Action]

P4 — FRESH / FYI
• [Batched, one line each]

P5 — NOISE
• [Count only]

FLAGS:
• [Anything stale, promised and not delivered, or tone-sensitive]

---

ASANA — PERSONAL TASKS

DUE TODAY
• [Task name]

DUE THIS WEEK
• [Task name] — [due date]

OVERDUE
• [Task name] — [days overdue]

---

EDITORIAL CALENDAR — 10-DAY WINDOW

• [Story title] | [Account] | [Publish date] | [Status] | [Post type] | [Owner]
  → [One-line action note: e.g. "Needs graphic before Thursday", "Past due — still in Draft"]

---

NORTH STAR — BOULDER STATUS

TIER 1 (ACTIVE)
• [Boulder name] — [one-line status. Flag if today's calendar/email connects.]

TIER 2 (IN MOTION)
• [Boulder name]

---

READY: Want drafts for any P1/P2 emails? Say which ones. Want to dig into a boulder or a post?
```

---

## Step 7: Publish to Notion Archive

After presenting the check-in output, create a new entry in the Morning Check-Ins database in Notion.

**Database URL:** `https://www.notion.so/076ccfbfe49e46d8b9c98b01533b3b97`
**Data source ID:** `43f00d36-f2da-4e97-a4d9-4dba2240b431`

Use `Notion:notion-create-pages` with:
- `parent`: `{"data_source_id": "43f00d36-f2da-4e97-a4d9-4dba2240b431", "type": "data_source_id"}`
- `properties`:
  - `Title`: "Morning Check-In — [Full day and date]" (e.g., "Morning Check-In — Tuesday, April 28, 2026")
  - `date:Date:start`: today in YYYY-MM-DD
  - `date:Date:is_datetime`: 0
  - `Summary flags`: pipe-separated top 3-5 flags (e.g., "3 unaccepted invites | Draft MOU waiting | Sovereign Fund post past due")
- `content`: full check-in output in Notion Markdown, section headers as `#` headings. Do not include the page title in the content body.

Publish after presenting the output. No confirmation needed. Confirm with one line: "Archived to Notion. [link]"


## Rules

- Google Calendar only. Never the iOS/native calendar tool.
- Run all seven steps before presenting. No mid-run output.
- No em dashes. Ever.
- No preamble. No post-response summary.
- Use relative time references ("3 days silent", "due Thursday", "2 days overdue"), never absolute unless asked.
- If a step returns nothing actionable, say "[Section] — Nothing flagged." and move on.
- VIP attendees always escalate to flagged, regardless of meeting type.
- If Chad, Nick, or Ingrid are waiting on Jamie anywhere: always P2, always first in P2.
- LCBA contacts always P1. Indigenous nation contacts always P1.
- Draft replies go in chat only — never as standalone Gmail drafts.

## Tools This Skill Uses

- Google Calendar (via `tool_search("Google Calendar list events")`)
- Gmail (via `tool_search("Gmail search threads")` and `Gmail:search_threads`)
- Asana (via `tool_search("Asana get my tasks")`)
- Notion (via `Notion:notion-search` with data source `collection://710403c7-205f-4dfc-8808-c2ffcdac2eea`)
- `/mnt/skills/user/jamie-north-star/SKILL.md` — read directly for boulder context
- `jamie-email-voice` skill — on request, for drafting replies to P1/P2 items
