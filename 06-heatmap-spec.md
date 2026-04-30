# Heatmap Spec

## Purpose

The heatmap is the visual reward system.

It should make the user want to fill today's square.

## MVP Heatmap Range

Show the last 30 calendar days including today.

## Layout

Recommended MVP:

- 2 rows
- 15 columns
- each square represents one day
- days ordered oldest to newest
- today is the final square

## Square Size

Recommended:

- 8x8 px minimum
- 10x10 px preferred
- 2–4 px spacing
- 2 px corner radius

## Date Mapping

- Generate an array of dates from today minus 29 days through today.
- For each date:
  - find matching DailyEntry by `dateKey`
  - if complete, render complete color
  - otherwise render incomplete color

## Color Mapping

Use semantic colors where possible.

Suggested:

- incomplete: secondary gray / low contrast
- complete: green / accent color
- today incomplete: gray outline or slightly stronger border
- today complete: green filled square

Avoid using too many intensity levels in MVP.

## Empty Historical Days

If there is no entry for a past date, render incomplete.

Do not backfill challenges for past days.
