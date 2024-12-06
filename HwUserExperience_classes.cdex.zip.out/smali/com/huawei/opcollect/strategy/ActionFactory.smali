.class public Lcom/huawei/opcollect/strategy/ActionFactory;
.super Ljava/lang/Object;
.source "ActionFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getSysEventAction(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/opcollect/strategy/Action;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 104
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    const-string v1, "broadcast.boot_completed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_2
    const-string v1, "broadcast.shutdown_phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_3
    const-string v1, "broadcast.reboot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/RebootAction;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_4
    const-string v1, "contentobserver.airmode_on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    invoke-static {p0}, Lcom/huawei/opcollect/collector/observercollection/AirModeAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/AirModeAction;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_5
    const-string v1, "contentobserver.airmode_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 121
    invoke-static {p0}, Lcom/huawei/opcollect/collector/observercollection/AirModeAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/AirModeAction;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_6
    const-string v1, "broadcast.power_connected"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 124
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_7
    const-string v1, "broadcast.power_disconnected"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 127
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_8
    const-string v1, "broadcast.wifi_connected"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 130
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_9
    const-string v1, "broadcast.wifi_disconnected"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 133
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_a
    const-string v1, "broadcast.deskclock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 136
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :cond_b
    const-string v1, "broadcast.take_picture"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 139
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/CameraAction;

    move-result-object v0

    goto/16 :goto_0

    .line 141
    :cond_c
    const-string v1, "broadcast.low_power"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 142
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/LowBatteryAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/LowBatteryAction;

    move-result-object v0

    goto/16 :goto_0

    .line 144
    :cond_d
    const-string v1, "broadcast.tomezone_change"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 145
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;

    move-result-object v0

    goto/16 :goto_0

    .line 147
    :cond_e
    const-string v1, "broadcast.screen_on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 148
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :cond_f
    const-string v1, "broadcast.screen_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 151
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;

    move-result-object v0

    goto/16 :goto_0

    .line 153
    :cond_10
    const-string v1, "broadcast.bluetooth_connected"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 154
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    move-result-object v0

    goto/16 :goto_0

    .line 156
    :cond_11
    const-string v1, "broadcast.bluetooth_disconnected"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 157
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    move-result-object v0

    goto/16 :goto_0

    .line 159
    :cond_12
    const-string v1, "broadcast.app_install"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 160
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;

    move-result-object v0

    goto/16 :goto_0

    .line 162
    :cond_13
    const-string v1, "broadcast.app_uninstall"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 163
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/PackageUninstallAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/PackageUninstallAction;

    move-result-object v0

    goto/16 :goto_0

    .line 165
    :cond_14
    const-string v1, "broadcast.app_update"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 166
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 168
    :cond_15
    const-string v1, "broadcast.headset_plug"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 169
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 171
    :cond_16
    const-string v1, "broadcast.headset_unplug"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 172
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 174
    :cond_17
    const-string v1, "contentobserver.rotate_on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 175
    invoke-static {p0}, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :cond_18
    const-string v1, "contentobserver.rotate_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 178
    invoke-static {p0}, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 180
    :cond_19
    const-string v1, "contentobserver.bluetooth_on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 181
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :cond_1a
    const-string v1, "contentobserver.bluetooth_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 184
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 186
    :cond_1b
    const-string v1, "contentobserver.gps_on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 187
    invoke-static {p0}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 189
    :cond_1c
    const-string v1, "contentobserver.gps_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 190
    invoke-static {p0}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 192
    :cond_1d
    const-string v1, "contentobserver.eyecomfort_on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 193
    invoke-static {p0}, Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :cond_1e
    const-string v1, "contentobserver.eyecomfort_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 196
    invoke-static {p0}, Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 198
    :cond_1f
    const-string v1, "calback.foreground_app_change"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 199
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;

    move-result-object v0

    goto/16 :goto_0

    .line 201
    :cond_20
    const-string v1, "broadcast.location_change"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 202
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    move-result-object v0

    goto/16 :goto_0

    .line 204
    :cond_21
    const-string v1, "broadcast.wifi_on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 205
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 207
    :cond_22
    const-string v1, "broadcast.wifi_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 208
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

    move-result-object v0

    goto/16 :goto_0

    .line 210
    :cond_23
    const-string v1, "broadcast.user_present"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 211
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;

    move-result-object v0

    goto/16 :goto_0

    .line 213
    :cond_24
    const-string v1, "battery_left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 214
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    move-result-object v0

    goto/16 :goto_0

    .line 216
    :cond_25
    const-string v1, "power_saving_status"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 217
    invoke-static {p0}, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;

    move-result-object v0

    goto/16 :goto_0

    .line 219
    :cond_26
    const-string v1, "no_disturb_status"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 220
    invoke-static {p0}, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;

    move-result-object v0

    goto/16 :goto_0

    .line 222
    :cond_27
    const-string v1, "nfc_status"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-static {p0}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getSysInfoAction(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/opcollect/strategy/Action;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 68
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_DEVICE_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-static {p0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_2
    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_MEDIA_APP_STASTIC:Lcom/huawei/opcollect/strategy/ActionTableName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-static {p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_3
    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_LOCATION_RECORD:Lcom/huawei/opcollect/strategy/ActionTableName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    invoke-static {p0}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_4
    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_AR_STATUS:Lcom/huawei/opcollect/strategy/ActionTableName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    invoke-static {p0}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_5
    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_WEATHER_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    invoke-static {p0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_6
    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_DEVICE_STATUS_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    invoke-static {p0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_7
    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->DS_CONTACTS_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "2.11.6"

    .line 90
    invoke-static {p0, v1}, Lcom/huawei/opcollect/utils/OPCollectUtils;->checkODMFApiVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {p0}, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;

    move-result-object v0

    goto :goto_0
.end method
