# Platform describing a Linux machine. Depending on whether we pass it as
# `--platform` or `--host_platform` we tell Bazel if we care about targetting or
# execution.
platform(
    name = "linux_platform",
    constraint_values = [
        "@platforms//os:linux",
    ],
)

# Similarly to the linux platform, this is a platform describing a Windows
# machine.
platform(
    name = "windows_platform",
    constraint_values = [
        "@platforms//os:windows",
    ],
)
