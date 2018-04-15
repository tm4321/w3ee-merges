import class CR4TelemetryScriptProxy extends CObject {
    import function LogWithName(eventType: ER4TelemetryEvents);
    import function LogWithLabel(eventType: ER4TelemetryEvents, label: String);
    import function LogWithValue(eventType: ER4TelemetryEvents, value: int);
    import function LogWithValueStr(eventType: ER4TelemetryEvents, value: String);
    import function LogWithLabelAndValue(eventType: ER4TelemetryEvents, label: String, value: int);
    import function LogWithLabelAndValueStr(eventType: ER4TelemetryEvents, label: String, value: String);
    import function SetCommonStatFlt(statType: ER4CommonStats, value: float);
    import function SetCommonStatI32(statType: ER4CommonStats, value: int);
    import function SetGameProgress(value: float);
    import function AddSessionTag(tag: String);
    import function RemoveSessionTag(tag: String);
    import function XDPPrintUserStats(statisticName: String);
    import function XDPPrintUserAchievement(achievementName: String);
}