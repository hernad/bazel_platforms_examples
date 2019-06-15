load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "platforms",
    sha256 = "a07fe5e75964361885db725039c2ba673f0ee0313d971ae4f50c9b18cd28b0b5",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/platforms/archive/441afe1bfdadd6236988e9cac159df6b5a9f5a98.zip",
        "https://github.com/bazelbuild/platforms/archive/441afe1bfdadd6236988e9cac159df6b5a9f5a98.zip",
    ],
    strip_prefix = "platforms-441afe1bfdadd6236988e9cac159df6b5a9f5a98"
)

# Tell Bazel about our toolchains so it can resolve them based on values passed
# in --platform, --host_platform, and --execution_platforms options.
register_toolchains("//yolo:all")

# Tell Bazel that //:linux_platform is allowed execution platform - that our
# host system or remote execution service can handle that platform.
register_execution_platforms("//:linux_platform")
