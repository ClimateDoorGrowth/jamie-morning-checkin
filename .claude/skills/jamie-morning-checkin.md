# Jamie Morning Check-in

Run Jamie's daily morning check-in routine.

## What this skill does

1. Check today's calendar events (Google Calendar)
2. Review open tasks and priorities (Asana)
3. Scan overnight emails for anything urgent (Gmail)
4. Summarize yesterday's Slack highlights (Slack)
5. Output a concise morning briefing with:
   - Today's schedule
   - Top 3 priorities
   - Any urgent items requiring attention

## Instructions

Run each step in sequence. Present a clean, scannable summary — not a wall of text. Use bullet points. Flag anything time-sensitive or requiring a decision today.

Keep the full briefing under 200 words.

$SHELL_RUN: echo "Morning check-in started at $(date)"
