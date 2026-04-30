# Testing Plan

## Manual MVP Test Checklist

### Launch

- App launches without main window if LSUIElement is configured.
- Menu bar icon appears.
- Clicking icon opens popover.

### Today Entry

- If no entry exists today, app creates one.
- Today's challenge displays.
- Today's heatmap square is incomplete.

### Completion

- Click "That counts".
- Today's status changes to complete.
- Menu bar icon changes to complete.
- Today's heatmap square fills.
- Feedback appears.

### Persistence

- Complete today's challenge.
- Quit app.
- Relaunch app.
- Completion remains.

### Heatmap

- Heatmap shows 30 days.
- Today is final square.
- Completed days are filled.
- Missing days are empty.

### Challenge Rotation

- New entry receives challenge from bank.
- Today's challenge does not change after restart.
- Recent challenge repeats are avoided when possible.

### Date Rollover

- Simulate next day.
- Open popover.
- New entry is created.
- Menu bar icon resets to incomplete.

## Edge Cases

### UserDefaults Corruption

Expected:
App does not crash. It starts fresh.

### Multiple Clicks on That Counts

Expected:
No duplicate entries. Status remains complete.

### No Challenge Bank Items

Expected:
Fallback challenge:
"Take one slow breath."

## Quality Bar

Before calling MVP complete:

- no obvious UI jank
- no crash on launch
- no data loss after restart
- no confusing copy
