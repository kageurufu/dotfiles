import subprocess
from i3pystatus import Status

status = Status(standalone=True, click_events=True)

status.register("clock", format="%a %-d %b %I:%M:%S %p")
status.register("pulseaudio", format="♪{volume}%")
status.register("battery",
        format="{status} {percentage:.2f}%",
        alert=True,
        alert_percentage=5,
        status={
            "DIS": "↓",
            "CHR": "↑",
            "FULL": "=",
            },
        battery_ident="BAT1")

status.register("disk", path="/home", format="/home {used}/{total}G")
status.register("disk", path="/", format="/ {used}/{total}G")

status.register("mem", format="{used_mem}/{total_mem}mB")
status.register("cpu_usage", format="CPU {usage}%")

status.register("wireless", interface="wifi", format_up="{essid} {quality:3.0f}% {v4}", format_down="{interface} DOWN")
status.register("network", interface="eth", format_up="{interface} {v4}", format_down="{interface} DOWN")

status.run()
