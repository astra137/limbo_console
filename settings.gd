extends Node

const SETTING_PATHS = {
	PAUSES_WHILE_OPENED = "addons/limbo_console/pauses_tree_while_opened"
}

const SETTINGS_WITH_DEFAULTS = {
	SETTING_PATHS.PAUSES_WHILE_OPENED: true
}

static func pauses_while_opened() -> bool:
	return ProjectSettings.get_setting(
		SETTING_PATHS.PAUSES_WHILE_OPENED,
		SETTINGS_WITH_DEFAULTS[SETTING_PATHS.PAUSES_WHILE_OPENED]
	)

static func setup() -> void:
	for setting_path in SETTINGS_WITH_DEFAULTS:
		if(not ProjectSettings.has_setting(setting_path)):
			var default_value = SETTINGS_WITH_DEFAULTS[setting_path]
			ProjectSettings.set_setting(setting_path, default_value)
			ProjectSettings.set_initial_value(setting_path, default_value)
			ProjectSettings.set_as_basic(setting_path, true)
