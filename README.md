# c-check-runner

This is a C runner for the Check unit testing framework.

## How to Use it

In order to use this runner for your project, edit the `codingame.yml` file and add the following lines to your project:

    runner:
	  name: codingame/c-check-runner
	  version: 3.6

You project will be compiled with the following:

```
autoreconf --install
./configure
make
```

On each run, it will execute:
```
CK_RUN_CASE=$2 tests/$1
```

Where `$1` is the first argument of your command, which is the name of the binary and `$2` is the second argument, which is the name of the test case to execute.

## Example

You can use the [example provided by Check](https://libcheck.github.io/check/doc/check_html/check_3.html). 
In the markdown file, the unit test can be called using:

@[Example]({"stubs": ["src/money.c"], "command": "check_money Core"})
