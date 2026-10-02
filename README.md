# Flutter BLoC Counter - Mini Project

A Flutter project that demonstrates state management with the BLoC pattern
using the `flutter_bloc` package. It is split into three phases, each one
as a separate Flutter app.

## Projects

| Folder | Description |
|---|---|
| `phase1_blocs` | `CounterBloc` (int state) and `ThemeBloc` (light/dark theme) |
| `phase2_bloc_widgets` | `BlocListener`, `BlocBuilder` and `BlocConsumer` |
| `phase3_counter_app` | Full counter app using `CounterCubit` |

## Technologies

- Flutter & Dart
- flutter_bloc (BLoC, Cubit, BlocProvider, BlocBuilder, BlocListener, BlocConsumer)

## Phase 1 - Intro to BLoC

CounterBloc and ThemeBloc handling two different types of state.

![Phase 1](screenshots/phase1_blocs.png)
![Phase 1 dark theme](screenshots/phase1_dark_theme.png)
![Phase 1](screenshots/Phase1_video.mp4)

## Phase 2 - BlocListener, BlocBuilder and BlocConsumer

SnackBar shown by `BlocListener` when the counter reaches 5:

![BlocListener](screenshots/phase2_listener_snackbar.png)

Counter updated by `BlocBuilder`:

![BlocBuilder](screenshots/phase2_builder_counter.png)

Counter updated by `BlocConsumer`:

![BlocConsumer](screenshots/phase2_consumer_counter.png)

## Phase 3 - Counter App

- `CounterCubit` provided with `BlocProvider`
- Dialog shown by `BlocListener` when the counter becomes negative
- Message shown by `BlocConsumer` when the counter reaches 10 or -10

![Dialog](screenshots/phase3_dialog.png)
![Consumer message](screenshots/phase3_consumer_message.png)
![Consumer message](screenshots/phase3_consumer_message1.png)
![Phase 3](screenshots/Phase3_video.mp4)
