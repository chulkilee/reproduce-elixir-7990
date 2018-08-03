# HelloWorld

Reproduce [elixir-lang/elixir#7990](https://github.com/elixir-lang/elixir/issues/7990)

## How to run tests

```
docker-compose build
docker-compose up 1.7.1-otp-21
docker-compose up 1.7.0-otp-21
docker-compose up 1.6.6-otp-21
```

## Results

### 1.7.1-otp-21

```
1.7.1-otp-21_1  | ==> with_number
1.7.1-otp-21_1  | ..
1.7.1-otp-21_1  |
1.7.1-otp-21_1  | Finished in 0.04 seconds
1.7.1-otp-21_1  | 1 doctest, 1 test, 0 failures
1.7.1-otp-21_1  |
1.7.1-otp-21_1  | Randomized with seed 751951
1.7.1-otp-21_1  | ==> with_jason
1.7.1-otp-21_1  | ** (Mix) Could not start application decimal: could not find application file: decimal.app
1.7.1-otp-21_1  | ** (exit) 1
1.7.1-otp-21_1  |     (mix) lib/mix/tasks/cmd.ex:41: Mix.Tasks.Cmd.run/1
1.7.1-otp-21_1  |     (mix) lib/mix/task.ex:316: Mix.Task.run_task/3
1.7.1-otp-21_1  |     (mix) lib/mix/project.ex:348: Mix.Project.in_project/4
1.7.1-otp-21_1  |     (elixir) lib/file.ex:1443: File.cd!/2
1.7.1-otp-21_1  |     (mix) lib/mix/task.ex:416: anonymous fn/4 in Mix.Task.recur/1
1.7.1-otp-21_1  |     (elixir) lib/enum.ex:1925: Enum."-reduce/3-lists^foldl/2-0-"/3
1.7.1-otp-21_1  |     (mix) lib/mix/task.ex:415: Mix.Task.recur/1
1.7.1-otp-21_1  |     (mix) lib/mix/project_stack.ex:202: Mix.ProjectStack.recur/1
```

### 1.7.0-otp-21

```
1.7.0-otp-21_1  | ==> with_number
1.7.0-otp-21_1  | ..
1.7.0-otp-21_1  |
1.7.0-otp-21_1  | Finished in 0.05 seconds
1.7.0-otp-21_1  | 1 doctest, 1 test, 0 failures
1.7.0-otp-21_1  |
1.7.0-otp-21_1  | Randomized with seed 8359
1.7.0-otp-21_1  | ==> with_jason
1.7.0-otp-21_1  | ** (Mix) Could not start application decimal: could not find application file: decimal.app
1.7.0-otp-21_1  | ** (exit) 1
1.7.0-otp-21_1  |     (mix) lib/mix/tasks/cmd.ex:41: Mix.Tasks.Cmd.run/1
1.7.0-otp-21_1  |     (mix) lib/mix/task.ex:316: Mix.Task.run_task/3
1.7.0-otp-21_1  |     (mix) lib/mix/project.ex:348: Mix.Project.in_project/4
1.7.0-otp-21_1  |     (elixir) lib/file.ex:1443: File.cd!/2
1.7.0-otp-21_1  |     (mix) lib/mix/task.ex:416: anonymous fn/4 in Mix.Task.recur/1
1.7.0-otp-21_1  |     (elixir) lib/enum.ex:1925: Enum."-reduce/3-lists^foldl/2-0-"/3
1.7.0-otp-21_1  |     (mix) lib/mix/task.ex:415: Mix.Task.recur/1
1.7.0-otp-21_1  |     (mix) lib/mix/project_stack.ex:202: Mix.ProjectStack.recur/1
```

### 1.6.6-otp-21

```
1.6.6-otp-21_1  | ==> with_number
1.6.6-otp-21_1  | ..
1.6.6-otp-21_1  |
1.6.6-otp-21_1  | Finished in 0.04 seconds
1.6.6-otp-21_1  | 1 doctest, 1 test, 0 failures
1.6.6-otp-21_1  |
1.6.6-otp-21_1  | Randomized with seed 156546
1.6.6-otp-21_1  | ==> with_jason
1.6.6-otp-21_1  | ..
1.6.6-otp-21_1  |
1.6.6-otp-21_1  | Finished in 0.04 seconds
1.6.6-otp-21_1  | 1 doctest, 1 test, 0 failures
1.6.6-otp-21_1  |
1.6.6-otp-21_1  | Randomized with seed 864337
1.6.6-otp-21_1  | ==> with_with_jason
1.6.6-otp-21_1  | ..
1.6.6-otp-21_1  |
1.6.6-otp-21_1  | Finished in 0.04 seconds
1.6.6-otp-21_1  | 1 doctest, 1 test, 0 failures
1.6.6-otp-21_1  |
1.6.6-otp-21_1  | Randomized with seed 718719
```
