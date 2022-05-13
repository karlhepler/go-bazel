# Go + Bazel + Gazelle

I created this repository to see if I could get Go + Bazel + Gazelle working. I followed the [Gazelle setup instructions](https://github.com/bazelbuild/bazel-gazelle#running-gazelle-with-bazel) and created a very simple `hello/main.go` file. When I run `bazel run //:gazelle`, I get the following error. I've tried uninstalling and reinstalling Go. I've tried clearing Bazel's disk and repository cache. Nothing works. What am I doing wrong here? I feel like this should be working.

```
$ bazel run //:gazelle
Starting local Bazel server and connecting to it...
INFO: Invocation ID: 31e3aed0-974a-4433-82c5-52a9ea7ff6a6
WARNING: Download from https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.32.0/rules_go-v0.32.0.zip failed: class java.io.FileNotFoundException GET returned 404 Not Found
WARNING: Download from https://mirror.bazel.build/github.com/golang/sys/archive/988cb79eb6c60b82d4b236dd5d6ffd415d9a8425.zip failed: class java.io.FileNotFoundException GET returned 404 Not Found
INFO: Analyzed target //:gazelle (84 packages loaded, 8722 targets configured).
INFO: Found 1 target...
ERROR: /private/var/tmp/_bazel_karlhepler/de01128dc1052992936b51fd35f066ba/external/org_golang_x_mod/module/BUILD.bazel:3:11: GoCompilePkg external/org_golang_x_mod/module/module.a [for host] failed: (Exit 1): builder failed: error executing command bazel-out/host/bin/external/go_sdk/builder compilepkg -sdk external/go_sdk -installsuffix darwin_amd64 -src external/org_golang_x_mod/module/module.go -src external/org_golang_x_mod/module/pseudo.go ... (remaining 24 arguments skipped)

Use --sandbox_debug to see verbose messages from the sandbox
compilepkg: missing strict dependencies:
	/private/var/tmp/_bazel_karlhepler/de01128dc1052992936b51fd35f066ba/sandbox/darwin-sandbox/17/execroot/go-bazel/external/org_golang_x_mod/module/module.go: import of "golang.org/x/xerrors"
No dependencies were provided.
Check that imports in Go sources match importpath attributes in deps.
Target //:gazelle failed to build
Use --verbose_failures to see the command lines of failed build steps.
INFO: Elapsed time: 64.518s, Critical Path: 2.68s
INFO: 34 processes: 14 internal, 20 darwin-sandbox.
FAILED: Build did NOT complete successfully
FAILED: Build did NOT complete successfully
```
