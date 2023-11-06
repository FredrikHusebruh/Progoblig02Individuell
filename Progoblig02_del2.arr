use context essentials2021
include option
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
  load-table: komponent, energi
    source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end

fun energi-to-number(energi :: String) -> Number:
  cases(Option) string-to-number:
    | some(a) => a
    | none => 0
  end
where:
energi-to-number("") is 0
energi-to-number("48") is 48
end
transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

sum(kWh-wealthy-consumer-data, "energi")