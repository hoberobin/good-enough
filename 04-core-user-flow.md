# Core User Flow

## First Launch

1. App launches.
2. App creates today's entry if missing.
3. Menu bar icon appears in incomplete state.
4. User clicks icon.
5. Popover opens.
6. User sees today's challenge and heatmap.

No onboarding is required for MVP.

## Daily Completion Flow

1. User opens popover.
2. User reads challenge.
3. User performs the challenge.
4. User clicks **That counts**.
5. App updates today's entry to complete.
6. Today's square fills.
7. Completion feedback appears.
8. Menu bar icon updates to complete state.
9. Popover may close automatically after a short delay.

Recommended delay:
500–800 ms after completion so the user sees the reward.

## New Day Flow

1. App launches, becomes active, or popover opens.
2. App checks local date.
3. If no entry exists for today:
   - create today's entry
   - assign a new challenge
   - set status to incomplete
4. Menu bar icon displays incomplete state.

## Already Completed Flow

If today's challenge is complete:

- show completed state
- keep challenge visible
- show feedback copy such as "Good enough."
- keep heatmap visible
- primary button may be disabled or replaced with "Done for today"
