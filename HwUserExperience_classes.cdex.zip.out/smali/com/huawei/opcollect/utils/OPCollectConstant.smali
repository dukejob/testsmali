.class public final Lcom/huawei/opcollect/utils/OPCollectConstant;
.super Ljava/lang/Object;
.source "OPCollectConstant.java"


# static fields
.field public static final AIR_MODE_ACTION_NAME:Ljava/lang/String; = "AirModeAction"

.field public static final AR_ACTION_NAME:Ljava/lang/String; = "RawARStatus"

.field public static final BLUETOOTH_CONNECT_MODE_ACTION_NAME:Ljava/lang/String; = "BluetoothConnectAction"

.field public static final BLUETOOTH_STATE_MODE_ACTION_NAME:Ljava/lang/String; = "BluetoothStateAction"

.field public static final BOOT_MODE_ACTION_NAME:Ljava/lang/String; = "BootCompleteAction"

.field public static final CAMERA_TAKE_ACTION_NAME:Ljava/lang/String; = "CameraAction"

.field public static final CONTACTS_ACTION_NAME:Ljava/lang/String; = "DSContactsInfo"

.field public static final DESKCLOCK_ACTION_NAME:Ljava/lang/String; = "DeskClockAction"

.field public static final DEVICE_ACTION_NAME:Ljava/lang/String; = "RawDeviceInfo"

.field public static final DEVICE_STATUS_INFO_ACTION_NAME:Ljava/lang/String; = "RawDeviceStatusInfo"

.field public static final EYE_MODE_ACTION_NAME:Ljava/lang/String; = "EyeComfortStateAction"

.field public static final FG_APP_ACTION_NAME:Ljava/lang/String; = "HwForegroundAppAction"

.field public static final GPS_MODE_ACTION_NAME:Ljava/lang/String; = "GpsStateAction"

.field public static final HEADSET_ACTION_NAME:Ljava/lang/String; = "HeadsetPlugStateAction"

.field public static final HOTEL_ACTION_NAME:Ljava/lang/String; = "RawHotelInfo"

.field public static final LOCATION_ACTION_NAME:Ljava/lang/String; = "RawLocationRecord"

.field public static final LOCATION_MODE_ACTION_NAME:Ljava/lang/String; = "AwareLocationAction"

.field public static final LOW_BATTERY_ACTION_NAME:Ljava/lang/String; = "LowBatteryAction"

.field public static final MEDIA_ACTION_NAME:Ljava/lang/String; = "RawMediaAppStastic"

.field public static final PACKAGE_INSTALL_ACTION_NAME:Ljava/lang/String; = "PackageInstallAction"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.huawei.bd"

.field public static final PACKAGE_UNINSTALL_ACTION_NAME:Ljava/lang/String; = "PackageUninstallAction"

.field public static final PACKAGE_UPDATE_ACTION_NAME:Ljava/lang/String; = "PackageUpdateAction"

.field public static final PERMISSION:Ljava/lang/String; = "com.huawei.permission.OP_COLLECT"

.field public static final POWER_CONNECT_ACTION_NAME:Ljava/lang/String; = "PowerConnectedAction"

.field public static final POWER_DISCONNECT_ACTION_NAME:Ljava/lang/String; = "PowerDisConnectedAction"

.field public static final REBOOT_ACTION_NAME:Ljava/lang/String; = "RebootAction"

.field public static final ROTATE_MODE_ACTION_NAME:Ljava/lang/String; = "RotationStateAction"

.field public static final SCREEN_OFF_ACTION_NAME:Ljava/lang/String; = "ScreenOffAction"

.field public static final SCREEN_ON_ACTION_NAME:Ljava/lang/String; = "ScreenOnAction"

.field public static final SHUTDOWN_ACTION_NAME:Ljava/lang/String; = "ShutdownAction"

.field public static final TIMEZONE_ACTION_NAME:Ljava/lang/String; = "TimeZoneAction"

.field public static final TRIP_ACTION_NAME:Ljava/lang/String; = "RawTrainFlightTickInfo"

.field public static final USER_PRESENT_ACTION_NAME:Ljava/lang/String; = "UserPresentAction"

.field public static final WEATHER_ACTION_NAME:Ljava/lang/String; = "RawWeatherInfo"

.field public static final WIFI_BSSID:Ljava/lang/String; = "wifiBssid"

.field public static final WIFI_CONNECT_ACTION_NAME:Ljava/lang/String; = "WifiConnectAction"

.field public static final WIFI_IP:Ljava/lang/String; = "ip"

.field public static final WIFI_LEVEL:Ljava/lang/String; = "wifiLevel"

.field public static final WIFI_NAME:Ljava/lang/String; = "name"

.field public static final WIFI_SSID:Ljava/lang/String; = "wifiSsid"

.field public static final WIFI_STATE_ACTION_NAME:Ljava/lang/String; = "WifiStateAction"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static getActionNameFromSwitchName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "switchName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    const-string v1, "RawWeatherInfo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    const-string v0, "RawWeatherInfo"

    goto :goto_0

    .line 74
    :cond_2
    const-string v1, "RawARStatus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    const-string v0, "RawARStatus"

    goto :goto_0

    .line 76
    :cond_3
    const-string v1, "RawLocationRecord"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    const-string v0, "RawLocationRecord"

    goto :goto_0

    .line 78
    :cond_4
    const-string v1, "RawMediaAppStastic"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    const-string v0, "RawMediaAppStastic"

    goto :goto_0

    .line 80
    :cond_5
    const-string v1, "RawHotelInfo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    const-string v0, "RawHotelInfo"

    goto :goto_0

    .line 82
    :cond_6
    const-string v1, "RawTrainFlightTickInfo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 83
    const-string v0, "RawTrainFlightTickInfo"

    goto :goto_0

    .line 84
    :cond_7
    const-string v1, "RawDeviceInfo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 85
    const-string v0, "RawDeviceInfo"

    goto :goto_0

    .line 86
    :cond_8
    const-string v1, "DSContactsInfo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 87
    const-string v0, "DSContactsInfo"

    goto :goto_0

    .line 88
    :cond_9
    const-string v1, "RawDeviceStatusInfo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 89
    const-string v0, "RawDeviceStatusInfo"

    goto :goto_0

    .line 90
    :cond_a
    const-string v1, "broadcast.wifi_off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "broadcast.wifi_on"

    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 92
    :cond_b
    const-string v0, "WifiStateAction"

    goto :goto_0

    .line 93
    :cond_c
    const-string v1, "broadcast.wifi_connected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "broadcast.wifi_disconnected"

    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 95
    :cond_d
    const-string v0, "WifiConnectAction"

    goto/16 :goto_0

    .line 96
    :cond_e
    const-string v1, "broadcast.tomezone_change"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 97
    const-string v0, "TimeZoneAction"

    goto/16 :goto_0

    .line 98
    :cond_f
    const-string v1, "broadcast.shutdown_phone"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 99
    const-string v0, "ShutdownAction"

    goto/16 :goto_0

    .line 100
    :cond_10
    const-string v1, "broadcast.screen_off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 101
    const-string v0, "ScreenOffAction"

    goto/16 :goto_0

    .line 102
    :cond_11
    const-string v1, "broadcast.screen_on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 103
    const-string v0, "ScreenOnAction"

    goto/16 :goto_0

    .line 104
    :cond_12
    const-string v1, "broadcast.reboot"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 105
    const-string v0, "RebootAction"

    goto/16 :goto_0

    .line 106
    :cond_13
    const-string v1, "broadcast.power_disconnected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 107
    const-string v0, "PowerDisConnectedAction"

    goto/16 :goto_0

    .line 108
    :cond_14
    const-string v1, "broadcast.power_connected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 109
    const-string v0, "PowerConnectedAction"

    goto/16 :goto_0

    .line 110
    :cond_15
    const-string v1, "broadcast.app_update"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 111
    const-string v0, "PackageUpdateAction"

    goto/16 :goto_0

    .line 112
    :cond_16
    const-string v1, "broadcast.app_uninstall"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 113
    const-string v0, "PackageUninstallAction"

    goto/16 :goto_0

    .line 114
    :cond_17
    const-string v1, "broadcast.app_install"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 115
    const-string v0, "PackageInstallAction"

    goto/16 :goto_0

    .line 116
    :cond_18
    const-string v1, "broadcast.low_power"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 117
    const-string v0, "LowBatteryAction"

    goto/16 :goto_0

    .line 118
    :cond_19
    const-string v1, "calback.foreground_app_change"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 119
    const-string v0, "HwForegroundAppAction"

    goto/16 :goto_0

    .line 120
    :cond_1a
    const-string v1, "broadcast.headset_plug"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "broadcast.headset_unplug"

    .line 121
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 122
    :cond_1b
    const-string v0, "HeadsetPlugStateAction"

    goto/16 :goto_0

    .line 123
    :cond_1c
    const-string v1, "broadcast.deskclock"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 124
    const-string v0, "DeskClockAction"

    goto/16 :goto_0

    .line 125
    :cond_1d
    const-string v1, "broadcast.take_picture"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 126
    const-string v0, "CameraAction"

    goto/16 :goto_0

    .line 127
    :cond_1e
    const-string v1, "broadcast.boot_completed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 128
    const-string v0, "BootCompleteAction"

    goto/16 :goto_0

    .line 129
    :cond_1f
    const-string v1, "contentobserver.bluetooth_off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "contentobserver.bluetooth_on"

    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 131
    :cond_20
    const-string v0, "BluetoothStateAction"

    goto/16 :goto_0

    .line 132
    :cond_21
    const-string v1, "broadcast.bluetooth_connected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "broadcast.bluetooth_disconnected"

    .line 133
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 134
    :cond_22
    const-string v0, "BluetoothConnectAction"

    goto/16 :goto_0

    .line 135
    :cond_23
    const-string v1, "broadcast.location_change"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 136
    const-string v0, "AwareLocationAction"

    goto/16 :goto_0

    .line 137
    :cond_24
    const-string v1, "contentobserver.rotate_off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "contentobserver.rotate_on"

    .line 138
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 139
    :cond_25
    const-string v0, "RotationStateAction"

    goto/16 :goto_0

    .line 140
    :cond_26
    const-string v1, "contentobserver.gps_off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "contentobserver.gps_on"

    .line 141
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 142
    :cond_27
    const-string v0, "GpsStateAction"

    goto/16 :goto_0

    .line 143
    :cond_28
    const-string v1, "contentobserver.eyecomfort_off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "contentobserver.eyecomfort_on"

    .line 144
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 145
    :cond_29
    const-string v0, "EyeComfortStateAction"

    goto/16 :goto_0

    .line 146
    :cond_2a
    const-string v1, "contentobserver.airmode_off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "contentobserver.airmode_on"

    .line 147
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 148
    :cond_2b
    const-string v0, "AirModeAction"

    goto/16 :goto_0

    .line 149
    :cond_2c
    const-string v1, "broadcast.user_present"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 150
    const-string v0, "UserPresentAction"

    goto/16 :goto_0

    .line 151
    :cond_2d
    const-string v1, "battery_left"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 152
    const-string v0, "battery_left"

    goto/16 :goto_0

    .line 153
    :cond_2e
    const-string v1, "power_saving_status"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 154
    const-string v0, "power_saving_status"

    goto/16 :goto_0

    .line 155
    :cond_2f
    const-string v1, "no_disturb_status"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 156
    const-string v0, "no_disturb_status"

    goto/16 :goto_0

    .line 157
    :cond_30
    const-string v1, "nfc_status"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string v0, "nfc_status"

    goto/16 :goto_0
.end method
