.class public final Landroid/provider/Settings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_background_color"

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_COLOR:Ljava/lang/String; = "accessibility_captioning_edge_color"

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_TYPE:Ljava/lang/String; = "accessibility_captioning_edge_type"

.field public static final ACCESSIBILITY_CAPTIONING_ENABLED:Ljava/lang/String; = "accessibility_captioning_enabled"

.field public static final ACCESSIBILITY_CAPTIONING_FONT_SCALE:Ljava/lang/String; = "accessibility_captioning_font_scale"

.field public static final ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_foreground_color"

.field public static final ACCESSIBILITY_CAPTIONING_LOCALE:Ljava/lang/String; = "accessibility_captioning_locale"

.field public static final ACCESSIBILITY_CAPTIONING_PRESET:Ljava/lang/String; = "accessibility_captioning_preset"

.field public static final ACCESSIBILITY_CAPTIONING_TYPEFACE:Ljava/lang/String; = "accessibility_captioning_typeface"

.field public static final ACCESSIBILITY_CAPTIONING_WINDOW_COLOR:Ljava/lang/String; = "accessibility_captioning_window_color"

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER:Ljava/lang/String; = "accessibility_display_daltonizer"

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED:Ljava/lang/String; = "accessibility_display_daltonizer_enabled"

.field public static final ACCESSIBILITY_DISPLAY_INVERSION_ENABLED:Ljava/lang/String; = "accessibility_display_inversion_enabled"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_AUTO_UPDATE:Ljava/lang/String; = "accessibility_display_magnification_auto_update"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE:Ljava/lang/String; = "accessibility_display_magnification_scale"

.field public static final ACCESSIBILITY_ENABLED:Ljava/lang/String; = "accessibility_enabled"

.field public static final ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED:Ljava/lang/String; = "high_text_contrast_enabled"

.field public static final ACCESSIBILITY_SCREEN_READER_URL:Ljava/lang/String; = "accessibility_script_injection_url"

.field public static final ACCESSIBILITY_SCRIPT_INJECTION:Ljava/lang/String; = "accessibility_script_injection"

.field public static final ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String; = "speak_password"

.field public static final ACCESSIBILITY_WEB_CONTENT_KEY_BINDINGS:Ljava/lang/String; = "accessibility_web_content_key_bindings"

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALLOWED_GEOLOCATION_ORIGINS:Ljava/lang/String; = "allowed_geolocation_origins"

.field public static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "mock_location"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final ANR_SHOW_BACKGROUND:Ljava/lang/String; = "anr_show_background"

.field public static final ASSISTANT:Ljava/lang/String; = "assistant"

.field public static final ASSIST_SCREENSHOT_ENABLED:Ljava/lang/String; = "assist_screenshot_enabled"

.field public static final ASSIST_STRUCTURE_ENABLED:Ljava/lang/String; = "assist_structure_enabled"

.field public static final BACKGROUND_DATA:Ljava/lang/String; = "background_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_AUTO_RESTORE:Ljava/lang/String; = "backup_auto_restore"

.field public static final BACKUP_ENABLED:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_PROVISIONED:Ljava/lang/String; = "backup_provisioned"

.field public static final BACKUP_TRANSPORT:Ljava/lang/String; = "backup_transport"

.field public static final BAR_SERVICE_COMPONENT:Ljava/lang/String; = "bar_service_component"

.field public static final BLUETOOTH_HCI_LOG:Ljava/lang/String; = "bluetooth_hci_log"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BLUETOOTH_SSP_DEBUG_MODE:Ljava/lang/String; = "bluetooth_ssp_debug_mode"

.field public static final BUGREPORT_IN_POWER_MENU:Ljava/lang/String; = "bugreport_in_power_menu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONNECTIVITY_RELEASE_PENDING_INTENT_DELAY_MS:Ljava/lang/String; = "connectivity_release_pending_intent_delay_ms"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "default_input_method"

.field public static final DEVELOPMENT_SETTINGS_ENABLED:Ljava/lang/String; = "development_settings_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIALER_DEFAULT_APPLICATION:Ljava/lang/String; = "dialer_default_application"

.field public static final DISABLED_SYSTEM_INPUT_METHODS:Ljava/lang/String; = "disabled_system_input_methods"

.field public static final DOUBLE_TAP_TO_WAKE:Ljava/lang/String; = "double_tap_to_wake"

.field public static final DOZE_ENABLED:Ljava/lang/String; = "doze_enabled"

.field public static final EMERGENCY_ASSISTANCE_APPLICATION:Ljava/lang/String; = "emergency_assistance_application"

.field public static final ENABLED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "enabled_accessibility_services"

.field public static final ENABLED_CONDITION_PROVIDERS:Ljava/lang/String; = "enabled_condition_providers"

.field public static final ENABLED_INPUT_METHODS:Ljava/lang/String; = "enabled_input_methods"

.field public static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field public static final ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES:Ljava/lang/String; = "enabled_notification_policy_access_packages"

.field public static final ENABLED_ON_FIRST_BOOT_SYSTEM_PRINT_SERVICES:Ljava/lang/String; = "enabled_on_first_boot_system_print_services"

.field public static final ENABLED_PRINT_SERVICES:Ljava/lang/String; = "enabled_print_services"

.field public static final ENHANCED_VOICE_PRIVACY_ENABLED:Ljava/lang/String; = "enhanced_voice_privacy_enabled"

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMMERSIVE_MODE_CONFIRMATIONS:Ljava/lang/String; = "immersive_mode_confirmations"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_power_button_behavior"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_DEFAULT:I = 0x1

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_HANGUP:I = 0x2

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_SCREEN_OFF:I = 0x1

.field public static final INPUT_METHODS_SUBTYPE_HISTORY:Ljava/lang/String; = "input_methods_subtype_history"

.field public static final INPUT_METHOD_SELECTOR_VISIBILITY:Ljava/lang/String; = "input_method_selector_visibility"

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"

.field public static final INTERFACE_THROTTLE:Ljava/lang/String; = "interface_throttle_enable"

.field public static final INTERFACE_THROTTLE_RX_VALUE:Ljava/lang/String; = "interface_throttle_rx_value"

.field public static final INTERFACE_THROTTLE_TX_VALUE:Ljava/lang/String; = "interface_throttle_tx_value"

.field public static final LAST_SETUP_SHOWN:Ljava/lang/String; = "last_setup_shown"

.field public static final LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field public static final LOCATION_MODE_BATTERY_SAVING:I = 0x2

.field public static final LOCATION_MODE_HIGH_ACCURACY:I = 0x3

.field public static final LOCATION_MODE_OFF:I = 0x0

.field public static final LOCATION_MODE_SENSORS_ONLY:I = 0x1

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_BIOMETRIC_WEAK_FLAGS:Ljava/lang/String; = "lock_biometric_weak_flags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_allow_private_notifications"

.field public static final LOCK_SCREEN_APPWIDGET_IDS:Ljava/lang/String; = "lock_screen_appwidget_ids"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_FALLBACK_APPWIDGET_ID:Ljava/lang/String; = "lock_screen_fallback_appwidget_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_screen_lock_after_timeout"

.field public static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field public static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final LOCK_SCREEN_SHOW_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_show_notifications"

.field public static final LOCK_SCREEN_STICKY_APPWIDGET:Ljava/lang/String; = "lock_screen_sticky_appwidget"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LONG_PRESS_TIMEOUT:Ljava/lang/String; = "long_press_timeout"

.field public static final MOUNT_PLAY_NOTIFICATION_SND:Ljava/lang/String; = "mount_play_not_snd"

.field public static final MOUNT_UMS_AUTOSTART:Ljava/lang/String; = "mount_ums_autostart"

.field public static final MOUNT_UMS_NOTIFY_ENABLED:Ljava/lang/String; = "mount_ums_notify_enabled"

.field public static final MOUNT_UMS_PROMPT:Ljava/lang/String; = "mount_ums_prompt"

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFC_PAYMENT_DEFAULT_COMPONENT:Ljava/lang/String; = "nfc_payment_default_component"

.field public static final NFC_PAYMENT_FOREGROUND:Ljava/lang/String; = "nfc_payment_foreground"

.field public static final PACKAGE_VERIFIER_USER_CONSENT:Ljava/lang/String; = "package_verifier_user_consent"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"

.field public static final PAYMENT_SERVICE_SEARCH_URI:Ljava/lang/String; = "payment_service_search_uri"

.field public static final PREFERRED_TTY_MODE:Ljava/lang/String; = "preferred_tty_mode"

.field public static final PRINT_SERVICE_SEARCH_URI:Ljava/lang/String; = "print_service_search_uri"

.field public static final SCREENSAVER_ACTIVATE_ON_DOCK:Ljava/lang/String; = "screensaver_activate_on_dock"

.field public static final SCREENSAVER_ACTIVATE_ON_SLEEP:Ljava/lang/String; = "screensaver_activate_on_sleep"

.field public static final SCREENSAVER_COMPONENTS:Ljava/lang/String; = "screensaver_components"

.field public static final SCREENSAVER_DEFAULT_COMPONENT:Ljava/lang/String; = "screensaver_default_component"

.field public static final SCREENSAVER_ENABLED:Ljava/lang/String; = "screensaver_enabled"

.field public static final SEARCH_GLOBAL_SEARCH_ACTIVITY:Ljava/lang/String; = "search_global_search_activity"

.field public static final SEARCH_MAX_RESULTS_PER_SOURCE:Ljava/lang/String; = "search_max_results_per_source"

.field public static final SEARCH_MAX_RESULTS_TO_DISPLAY:Ljava/lang/String; = "search_max_results_to_display"

.field public static final SEARCH_MAX_SHORTCUTS_RETURNED:Ljava/lang/String; = "search_max_shortcuts_returned"

.field public static final SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS:Ljava/lang/String; = "search_max_source_event_age_millis"

.field public static final SEARCH_MAX_STAT_AGE_MILLIS:Ljava/lang/String; = "search_max_stat_age_millis"

.field public static final SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_clicks_for_source_ranking"

.field public static final SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_impressions_for_source_ranking"

.field public static final SEARCH_NUM_PROMOTED_SOURCES:Ljava/lang/String; = "search_num_promoted_sources"

.field public static final SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT:Ljava/lang/String; = "search_per_source_concurrent_query_limit"

.field public static final SEARCH_PREFILL_MILLIS:Ljava/lang/String; = "search_prefill_millis"

.field public static final SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS:Ljava/lang/String; = "search_promoted_source_deadline_millis"

.field public static final SEARCH_QUERY_THREAD_CORE_POOL_SIZE:Ljava/lang/String; = "search_query_thread_core_pool_size"

.field public static final SEARCH_QUERY_THREAD_MAX_POOL_SIZE:Ljava/lang/String; = "search_query_thread_max_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_core_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_max_pool_size"

.field public static final SEARCH_SOURCE_TIMEOUT_MILLIS:Ljava/lang/String; = "search_source_timeout_millis"

.field public static final SEARCH_THREAD_KEEPALIVE_SECONDS:Ljava/lang/String; = "search_thread_keepalive_seconds"

.field public static final SEARCH_WEB_RESULTS_OVERRIDE_LIMIT:Ljava/lang/String; = "search_web_results_override_limit"

.field public static final SELECTED_INPUT_METHOD_SUBTYPE:Ljava/lang/String; = "selected_input_method_subtype"

.field public static final SELECTED_SPELL_CHECKER:Ljava/lang/String; = "selected_spell_checker"

.field public static final SELECTED_SPELL_CHECKER_SUBTYPE:Ljava/lang/String; = "selected_spell_checker_subtype"

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SHOW_IME_WITH_HARD_KEYBOARD:Ljava/lang/String; = "show_ime_with_hard_keyboard"

.field public static final SHOW_NOTE_ABOUT_NOTIFICATION_HIDING:Ljava/lang/String; = "show_note_about_notification_hiding"

.field public static final SKIP_FIRST_USE_HINTS:Ljava/lang/String; = "skip_first_use_hints"

.field public static final SLEEP_TIMEOUT:Ljava/lang/String; = "sleep_timeout"

.field public static final SMS_DEFAULT_APPLICATION:Ljava/lang/String; = "sms_default_application"

.field public static final SPELL_CHECKER_ENABLED:Ljava/lang/String; = "spell_checker_enabled"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_secure_version"

.field public static final TOUCH_EXPLORATION_ENABLED:Ljava/lang/String; = "touch_exploration_enabled"

.field public static final TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "touch_exploration_granted_accessibility_services"

.field public static final TRUST_AGENTS_INITIALIZED:Ljava/lang/String; = "trust_agents_initialized"

.field public static final TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LOCALE:Ljava/lang/String; = "tts_default_locale"

.field public static final TTS_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"

.field public static final TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field public static final TTS_DEFAULT_SYNTH:Ljava/lang/String; = "tts_default_synth"

.field public static final TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_ENABLED_PLUGINS:Ljava/lang/String; = "tts_enabled_plugins"

.field public static final TTS_USE_DEFAULTS:Ljava/lang/String; = "tts_use_defaults"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE_ENABLED:Ljava/lang/String; = "tty_mode_enabled"

.field public static final TV_INPUT_CUSTOM_LABELS:Ljava/lang/String; = "tv_input_custom_labels"

.field public static final TV_INPUT_HIDDEN_INPUTS:Ljava/lang/String; = "tv_input_hidden_inputs"

.field public static final UI_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode"

.field public static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS:Ljava/lang/String; = "unsafe_volume_music_active_ms"

.field public static final USB_AUDIO_AUTOMATIC_ROUTING_DISABLED:Ljava/lang/String; = "usb_audio_automatic_routing_disabled"

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VOICE_INTERACTION_SERVICE:Ljava/lang/String; = "voice_interaction_service"

.field public static final VOICE_RECOGNITION_SERVICE:Ljava/lang/String; = "voice_recognition_service"

.field public static final VOLUME_CONTROLLER_SERVICE_COMPONENT:Ljava/lang/String; = "volume_controller_service_component"

.field public static final WAKE_GESTURE_ENABLED:Ljava/lang/String; = "wake_gesture_enabled"

.field public static final WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_WATCH_LIST:Ljava/lang/String; = "wifi_watchdog_watch_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIsSystemProcess:Z

.field private static sLockSettings:Lcom/android/internal/widget/ILockSettings;

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 4479
    const-string/jumbo v0, "content://settings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4478
    sput-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 4482
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    .line 4483
    const-string/jumbo v1, "sys.settings_secure_version"

    .line 4484
    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 4485
    const-string/jumbo v3, "GET_secure"

    .line 4486
    const-string/jumbo v4, "PUT_secure"

    .line 4482
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 4488
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 4494
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    .line 4495
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4496
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4497
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4499
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 4500
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4501
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "assisted_gps_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4502
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4503
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "bugreport_in_power_menu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4504
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "cdma_cell_broadcast_sms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4505
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "roaming_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4506
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "subscription_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4507
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "data_activity_timeout_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4508
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "data_activity_timeout_wifi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4509
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4510
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "development_settings_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4511
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4512
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "display_density_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4513
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "display_size_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4514
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "download_manager_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4515
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4516
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4517
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4518
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4519
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4520
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4521
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4522
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_global_alert_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4523
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_poll_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4524
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_sample_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4525
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_time_cache_max_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4526
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4527
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4528
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4529
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4530
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4531
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4532
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4533
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4534
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "network_preference"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4535
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_diff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4536
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_spacing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4537
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4538
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4539
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_error_poll_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4540
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_long_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4541
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_max_pdp_reset_fail_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4542
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4543
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_trigger_packet_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4544
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sampling_profiler_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4545
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_data_service_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4546
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_redir_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4547
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_target_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4548
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_apn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4549
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_required"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4550
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_supported"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4551
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4552
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4553
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_country_code"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4554
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_framework_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4555
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_frequency_band"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4556
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_idle_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4557
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4558
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_mobile_data_transition_wakelock_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4559
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4560
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4561
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4562
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4563
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_p2p_device_name"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4564
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_saved_state"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4565
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_supplicant_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4566
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_suspend_optimizations_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4567
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_enhanced_auto_join"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4568
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_network_show_rssi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4569
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4570
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4571
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wimax_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4572
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "package_verifier_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4573
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4574
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_default_response"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4575
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "data_stall_alarm_non_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4576
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "data_stall_alarm_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4577
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "gprs_register_check_period_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4578
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wtf_is_fatal"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4579
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "battery_discharge_duration_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4580
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "battery_discharge_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4581
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "send_action_app_error"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4582
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox_age_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4583
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox_max_files"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4584
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox_quota_kb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4585
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox_quota_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4586
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox_reserve_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4587
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "dropbox:"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4588
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4589
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_free_storage_log_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4590
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "disk_free_change_reporting_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4591
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4592
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_max_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4593
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4594
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sync_max_retry_delay_in_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4595
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "connectivity_change_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4596
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "captive_portal_detection_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4597
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "captive_portal_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4598
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nsd_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4599
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4600
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "default_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4601
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "inet_condition_debounce_up_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4602
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "inet_condition_debounce_down_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4603
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "read_external_storage_enforced_default"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4604
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4605
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "global_http_proxy_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4606
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "global_http_proxy_port"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4607
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "global_http_proxy_exclusion_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4608
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_global_http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4609
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "default_dns_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4610
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4611
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "webview_data_reduction_proxy_key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6449
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    .line 6450
    const-string/jumbo v1, "bugreport_in_power_menu"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 6451
    const-string/jumbo v1, "mock_location"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 6452
    const-string/jumbo v1, "parental_control_enabled"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 6453
    const-string/jumbo v1, "parental_control_redirect_url"

    aput-object v1, v0, v5

    .line 6454
    const-string/jumbo v1, "usb_mass_storage_enabled"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6455
    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 6456
    const-string/jumbo v1, "accessibility_display_magnification_scale"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 6457
    const-string/jumbo v1, "accessibility_display_magnification_auto_update"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 6458
    const-string/jumbo v1, "accessibility_script_injection"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 6459
    const-string/jumbo v1, "backup_auto_restore"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 6460
    const-string/jumbo v1, "enabled_accessibility_services"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 6461
    const-string/jumbo v1, "enabled_notification_listeners"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 6462
    const-string/jumbo v1, "enabled_input_methods"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 6463
    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 6464
    const-string/jumbo v1, "touch_exploration_enabled"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 6465
    const-string/jumbo v1, "accessibility_enabled"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 6466
    const-string/jumbo v1, "speak_password"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 6467
    const-string/jumbo v1, "high_text_contrast_enabled"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 6468
    const-string/jumbo v1, "accessibility_captioning_enabled"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 6469
    const-string/jumbo v1, "accessibility_captioning_locale"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 6470
    const-string/jumbo v1, "accessibility_captioning_background_color"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 6471
    const-string/jumbo v1, "accessibility_captioning_foreground_color"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 6472
    const-string/jumbo v1, "accessibility_captioning_edge_type"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 6473
    const-string/jumbo v1, "accessibility_captioning_edge_color"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 6474
    const-string/jumbo v1, "accessibility_captioning_typeface"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 6475
    const-string/jumbo v1, "accessibility_captioning_font_scale"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 6476
    const-string/jumbo v1, "tts_use_defaults"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 6477
    const-string/jumbo v1, "tts_default_rate"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 6478
    const-string/jumbo v1, "tts_default_pitch"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 6479
    const-string/jumbo v1, "tts_default_synth"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 6480
    const-string/jumbo v1, "tts_default_lang"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 6481
    const-string/jumbo v1, "tts_default_country"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 6482
    const-string/jumbo v1, "tts_enabled_plugins"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 6483
    const-string/jumbo v1, "tts_default_locale"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 6484
    const-string/jumbo v1, "wifi_networks_available_notification_on"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 6485
    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 6486
    const-string/jumbo v1, "wifi_num_open_networks_kept"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 6487
    const-string/jumbo v1, "selected_spell_checker"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 6488
    const-string/jumbo v1, "selected_spell_checker_subtype"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 6489
    const-string/jumbo v1, "spell_checker_enabled"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 6490
    const-string/jumbo v1, "mount_play_not_snd"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 6491
    const-string/jumbo v1, "mount_ums_autostart"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 6492
    const-string/jumbo v1, "mount_ums_prompt"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 6493
    const-string/jumbo v1, "mount_ums_notify_enabled"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 6494
    const-string/jumbo v1, "sleep_timeout"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 6495
    const-string/jumbo v1, "double_tap_to_wake"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 6449
    sput-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 6502
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    .line 6505
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "accessibility_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6506
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "mock_location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6507
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "allowed_geolocation_origins"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6508
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6509
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "enabled_accessibility_services"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6510
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "enabled_input_methods"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6511
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6512
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6513
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "lock_screen_allow_private_notifications"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6514
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_input_method_subtype"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6515
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_spell_checker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6516
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4472
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4472
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6521
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6520
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4945
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 4911
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .prologue
    .line 4917
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4919
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":F
    :cond_0
    return p2

    .line 4920
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 4921
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4951
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4952
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4953
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4956
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4957
    :catch_0
    move-exception v0

    .line 4958
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4767
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 4729
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4773
    const-string/jumbo v2, "location_mode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4776
    invoke-static {p0, p2}, Landroid/provider/Settings$Secure;->getLocationModeForUser(Landroid/content/ContentResolver;I)I

    move-result v2

    return v2

    .line 4778
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4780
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4781
    :catch_0
    move-exception v0

    .line 4782
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 4734
    const-string/jumbo v2, "location_mode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4737
    invoke-static {p0, p3}, Landroid/provider/Settings$Secure;->getLocationModeForUser(Landroid/content/ContentResolver;I)I

    move-result v2

    return v2

    .line 4739
    :cond_0
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4741
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":I
    :cond_1
    return p2

    .line 4742
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 4743
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method private static final getLocationModeForUser(Landroid/content/ContentResolver;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I

    .prologue
    .line 6658
    invoke-static {}, Landroid/provider/Settings;->-get0()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 6660
    :try_start_0
    const-string/jumbo v2, "gps"

    .line 6659
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 6662
    .local v0, "gpsEnabled":Z
    const-string/jumbo v2, "network"

    .line 6661
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 6663
    .local v1, "networkEnabled":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 6664
    const/4 v2, 0x3

    monitor-exit v3

    return v2

    .line 6665
    :cond_0
    if-eqz v0, :cond_1

    .line 6666
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 6667
    :cond_1
    if-eqz v1, :cond_2

    .line 6668
    const/4 v2, 0x2

    monitor-exit v3

    return v2

    .line 6670
    :cond_2
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .line 6658
    .end local v0    # "gpsEnabled":Z
    .end local v1    # "networkEnabled":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4859
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 4824
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4865
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4867
    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 4868
    :catch_0
    move-exception v0

    .line 4869
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 4830
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4833
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 4837
    .local v2, "value":J
    :goto_0
    return-wide v2

    .line 4833
    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0

    .line 4834
    .end local v2    # "value":J
    :catch_0
    move-exception v0

    .line 4835
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4616
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4615
    return-void
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4626
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 4632
    sget-object v3, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4633
    const-string/jumbo v3, "SettingsInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has moved from android.provider.Settings.Secure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4634
    const-string/jumbo v5, " to android.provider.Settings.Global."

    .line 4633
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4635
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4638
    :cond_0
    sget-object v3, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4639
    const-class v4, Landroid/provider/Settings$Secure;

    monitor-enter v4

    .line 4640
    :try_start_0
    sget-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    if-nez v3, :cond_1

    .line 4642
    const-string/jumbo v3, "lock_settings"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 4641
    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    sput-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 4643
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_3

    const/4 v3, 0x1

    :goto_0
    sput-boolean v3, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    .line 4646
    sget-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    if-eqz v3, :cond_2

    sget-boolean v3, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    if-eqz v3, :cond_4

    .line 4669
    :cond_2
    :goto_1
    sget-object v3, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v3, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4643
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 4639
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4649
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4651
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_6

    .line 4652
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 4653
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4654
    const/16 v4, 0x16

    .line 4653
    if-gt v3, v4, :cond_5

    const/4 v1, 0x1

    .line 4655
    .local v1, "isPreMnc":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 4657
    :try_start_1
    sget-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    const-string/jumbo v4, "0"

    invoke-interface {v3, p1, v4, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3

    .line 4653
    .end local v1    # "isPreMnc":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isPreMnc":Z
    goto :goto_2

    .line 4651
    .end local v1    # "isPreMnc":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "isPreMnc":Z
    goto :goto_2

    .line 4662
    :cond_7
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings.Secure."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4663
    const-string/jumbo v5, " is deprecated and no longer accessible."

    .line 4662
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4664
    const-string/jumbo v5, " See API documentation for potential replacements."

    .line 4662
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4658
    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4706
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4707
    const-string/jumbo v0, "SettingsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.Secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4708
    const-string/jumbo v2, " to android.provider.Settings.Global, returning global URI."

    .line 4707
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4709
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4711
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6536
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6552
    const-string/jumbo v1, "location_providers_allowed"

    .line 6551
    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6553
    .local v0, "allowedProviders":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 4976
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .prologue
    .line 4982
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 4800
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 4806
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 4887
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 4893
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4680
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 4686
    const-string/jumbo v0, "location_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4689
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, p3}, Landroid/provider/Settings$Secure;->setLocationModeForUser(Landroid/content/ContentResolver;II)Z

    move-result v0

    return v0

    .line 4691
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4692
    const-string/jumbo v0, "SettingsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4693
    const-string/jumbo v2, " to android.provider.Settings.Global"

    .line 4692
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4694
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 4696
    :cond_1
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static final setLocationModeForUser(Landroid/content/ContentResolver;II)Z
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 6612
    invoke-static {}, Landroid/provider/Settings;->-get0()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 6613
    const/4 v0, 0x0

    .line 6614
    .local v0, "gps":Z
    const/4 v2, 0x0

    .line 6615
    .local v2, "network":Z
    packed-switch p1, :pswitch_data_0

    .line 6629
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid location mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6612
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 6619
    :pswitch_0
    const/4 v0, 0x1

    .line 6641
    :goto_0
    :pswitch_1
    :try_start_1
    const-string/jumbo v4, "network"

    .line 6640
    invoke-static {p0, v4, v2, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v3

    .line 6643
    .local v3, "nlpSuccess":Z
    const-string/jumbo v4, "gps"

    .line 6642
    invoke-static {p0, v4, v0, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 6644
    .local v1, "gpsSuccess":Z
    if-eqz v1, :cond_0

    .end local v3    # "nlpSuccess":Z
    :goto_1
    monitor-exit v5

    return v3

    .line 6622
    .end local v1    # "gpsSuccess":Z
    :pswitch_2
    const/4 v2, 0x1

    .line 6623
    goto :goto_0

    .line 6625
    :pswitch_3
    const/4 v0, 0x1

    .line 6626
    const/4 v2, 0x1

    .line 6627
    goto :goto_0

    .line 6644
    .restart local v1    # "gpsSuccess":Z
    .restart local v3    # "nlpSuccess":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 6615
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6566
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 6565
    return-void
.end method

.method public static final setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6584
    invoke-static {}, Landroid/provider/Settings;->-get0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6588
    if-eqz p2, :cond_0

    .line 6589
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6593
    :goto_0
    const-string/jumbo v0, "location_providers_allowed"

    invoke-static {p0, v0, p1, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 6591
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_0

    .line 6584
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
