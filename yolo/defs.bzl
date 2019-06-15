def _yolo_library_impl(ctx):
    yolo_toolchain = ctx.toolchains["//yolo:toolchain_type"]
    print("\n" + "\n".join([
        "yolo_library(",
        "  name = '" + ctx.attr.name + "',",
        "  toolchain = {",
        "    'targetting_cpu': '" + yolo_toolchain.targetting_cpu + "',",
        "    'targetting_os': '" + yolo_toolchain.targetting_os + "',",
        "    'executing_on_cpu': '" + yolo_toolchain.executing_on_cpu + "',",
        "    'executing_on_os': '" + yolo_toolchain.executing_on_os + "',",
        "  },",
        ")",
    ]))
    return []

yolo_library = rule(
    implementation = _yolo_library_impl,
    toolchains = ["//yolo:toolchain_type"],
)

def _yolo_toolchain_impl(ctx):
    toolchain_info = platform_common.ToolchainInfo(
        targetting_cpu = ctx.attr.targetting_cpu,
        targetting_os = ctx.attr.targetting_os,
        executing_on_cpu = ctx.attr.executing_on_cpu,
        executing_on_os = ctx.attr.executing_on_os,
    )
    return [toolchain_info]

yolo_toolchain = rule(
    implementation = _yolo_toolchain_impl,
    attrs = {
        "targetting_cpu": attr.string(),
        "targetting_os": attr.string(),
        "executing_on_cpu": attr.string(),
        "executing_on_os": attr.string(),
    },
)
