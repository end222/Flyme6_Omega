.class final Lcom/android/server/display/WifiDisplayController;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayController$ChannelConflictState;,
        Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;,
        Lcom/android/server/display/WifiDisplayController$SinkState;,
        Lcom/android/server/display/WifiDisplayController$Listener;,
        Lcom/android/server/display/WifiDisplayController$1;,
        Lcom/android/server/display/WifiDisplayController$2;,
        Lcom/android/server/display/WifiDisplayController$3;,
        Lcom/android/server/display/WifiDisplayController$4;,
        Lcom/android/server/display/WifiDisplayController$5;,
        Lcom/android/server/display/WifiDisplayController$6;,
        Lcom/android/server/display/WifiDisplayController$7;,
        Lcom/android/server/display/WifiDisplayController$8;,
        Lcom/android/server/display/WifiDisplayController$9;,
        Lcom/android/server/display/WifiDisplayController$10;,
        Lcom/android/server/display/WifiDisplayController$11;,
        Lcom/android/server/display/WifiDisplayController$12;,
        Lcom/android/server/display/WifiDisplayController$13;,
        Lcom/android/server/display/WifiDisplayController$14;,
        Lcom/android/server/display/WifiDisplayController$15;,
        Lcom/android/server/display/WifiDisplayController$16;,
        Lcom/android/server/display/WifiDisplayController$17;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x3c

.field private static final CONNECT_MAX_RETRIES:I = 0x3

.field private static final CONNECT_MIN_RETRIES:I = 0x0

.field private static final CONNECT_RETRY_DELAY_MILLIS:I = 0x1f4

.field private static DEBUG:Z = false

.field private static final DEFAULT_CONTROL_PORT:I = 0x1c44

.field private static final DISCOVER_PEERS_INTERVAL_MILLIS:I = 0x2710

.field public static final DRM_CONTENT_MEDIAPLAYER:Ljava/lang/String; = "com.mediatek.mediaplayer.DRM_PLAY"

.field private static final MAX_THROUGHPUT:I = 0x32

.field private static final RECONNECT_RETRY_DELAY_MILLIS:I = 0x3e8

.field private static final RESCAN_RETRY_DELAY_MILLIS:I = 0x7d0

.field private static final RTSP_SINK_TIMEOUT_SECONDS:I = 0xa

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x4b

.field private static final RTSP_TIMEOUT_SECONDS_CERT_MODE:I = 0x78

.field private static final TAG:Ljava/lang/String; = "WifiDisplayController"

.field private static final WFDCONTROLLER_AVERATE_SCORE_COUNT:I = 0x4

.field private static final WFDCONTROLLER_HDMI_UPDATE:I = 0x2

.field private static final WFDCONTROLLER_INVALID_VALUE:I = -0x1

.field private static final WFDCONTROLLER_LATENCY_INFO_DELAY_MILLIS:I = 0x7d0

.field private static final WFDCONTROLLER_LATENCY_INFO_FIRST_MILLIS:I = 0x64

.field private static final WFDCONTROLLER_LATENCY_INFO_PERIOD_MILLIS:I = 0xbb8

.field private static final WFDCONTROLLER_LINK_INFO_PERIOD_MILLIS:I = 0x7d0

.field private static final WFDCONTROLLER_PRE_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field private static final WFDCONTROLLER_SCORE_THRESHOLD1:I = 0x64

.field private static final WFDCONTROLLER_SCORE_THRESHOLD2:I = 0x50

.field private static final WFDCONTROLLER_SCORE_THRESHOLD3:I = 0x1e

.field private static final WFDCONTROLLER_SCORE_THRESHOLD4:I = 0xa

.field private static final WFDCONTROLLER_WFD_STAT_DISCONNECT:I = 0x0

.field private static final WFDCONTROLLER_WFD_STAT_FILE:Ljava/lang/String; = "/proc/wmt_tm/wfd_stat"

.field private static final WFDCONTROLLER_WFD_STAT_STANDBY:I = 0x1

.field private static final WFDCONTROLLER_WFD_STAT_STREAMING:I = 0x2

.field private static final WFDCONTROLLER_WFD_UPDATE:I = 0x0

.field private static final WFDCONTROLLER_WIFI_APP_SCAN_PERIOD_MILLIS:I = 0x64

.field private static final WFD_BLOCK_MAC_TIME:I = 0x3a98

.field private static final WFD_BUILD_CONNECT_DIALOG:I = 0x9

.field private static final WFD_CHANGE_RESOLUTION_DIALOG:I = 0x5

.field public static final WFD_CHANNEL_CONFLICT_OCCURS:Ljava/lang/String; = "com.mediatek.wifi.p2p.OP.channel"

.field public static final WFD_CLEARMOTION_DIMMED:Ljava/lang/String; = "com.mediatek.clearmotion.DIMMED_UPDATE"

.field private static final WFD_CONFIRM_CONNECT_DIALOG:I = 0x8

.field public static final WFD_CONNECTION:Ljava/lang/String; = "com.mediatek.wfd.connection"

.field private static final WFD_HDMI_EXCLUDED_DIALOG_HDMI_UPDATE:I = 0x3

.field private static final WFD_HDMI_EXCLUDED_DIALOG_WFD_UPDATE:I = 0x2

.field public static final WFD_PORTRAIT:Ljava/lang/String; = "com.mediatek.wfd.portrait"

.field private static final WFD_RECONNECT_DIALOG:I = 0x4

.field public static final WFD_SINK_CHANNEL_CONFLICT_OCCURS:Ljava/lang/String; = "com.mediatek.wifi.p2p.freq.conflict"

.field private static final WFD_SINK_DISCOVER_RETRY_COUNT:I = 0x5

.field private static final WFD_SINK_DISCOVER_RETRY_DELAY_MILLIS:I = 0x64

.field public static final WFD_SINK_GC_REQUEST_CONNECT:Ljava/lang/String; = "com.mediatek.wifi.p2p.GO.GCrequest.connect"

.field private static final WFD_SINK_IP_RETRY_COUNT:I = 0x32

.field private static final WFD_SINK_IP_RETRY_DELAY_MILLIS:I = 0x3e8

.field private static final WFD_SINK_IP_RETRY_FIRST_DELAY:I = 0x12c

.field private static final WFD_SOUND_PATH_DIALOG:I = 0x6

.field private static final WFD_WAIT_CONNECT_DIALOG:I = 0x7

.field private static final WFD_WIFIP2P_EXCLUDED_DIALOG:I = 0x1

.field private static final wfdLinkInfoPattern:Ljava/util/regex/Pattern;


# instance fields
.field private WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

.field private WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

.field private WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

.field private WFDCONTROLLER_DISPLAY_RESOLUTION:I

.field private WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

.field private WFDCONTROLLER_DISPLAY_TOAST_TIME:I

.field private WFDCONTROLLER_QE_ON:Z

.field private WFDCONTROLLER_SQC_INFO_ON:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoChannelSelection:Z

.field private mAutoEnableWifi:Z

.field private final mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupShowTouchVal:I

.field private mBlockMac:Ljava/lang/String;

.field private mBuildConnectDialog:Landroid/app/AlertDialog;

.field private mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mChangeResolutionDialog:Landroid/app/AlertDialog;

.field private mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

.field private mConfirmConnectDialog:Landroid/app/AlertDialog;

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDRMContent_Mediaplayer:Z

.field private final mDelayProfiling:Ljava/lang/Runnable;

.field private mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mDiscoverPeers:Ljava/lang/Runnable;

.field private mDiscoverPeersInProgress:Z

.field private mDisplayApToast:Z

.field private final mDisplayNotification:Ljava/lang/Runnable;

.field private final mDisplayToast:Ljava/lang/Runnable;

.field private final mEnableWifiDelay:Ljava/lang/Runnable;

.field private mFast_DesiredMac:Ljava/lang/String;

.field private mFast_NeedFastRtsp:Z

.field private final mGetSinkIpAddr:Ljava/lang/Runnable;

.field private mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

.field private mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

.field private mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field private mIsConnected_OtherP2p:Z

.field private mIsConnecting_P2p_Rtsp:Z

.field private mIsNeedRotate:Z

.field private mIsWFDConnected:Z

.field private mLastTimeConnected:Z

.field private final mLatencyInfo:Ljava/lang/Runnable;

.field mLatencyPanelView:Landroid/view/View;

.field private mLatencyProfiling:I

.field private mLevel:I

.field private final mListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field private mNetworkId:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotiTimerStarted:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mP2pOperFreq:I

.field private mPlayerID_Mediaplayer:I

.field private mPrevResolution:I

.field private mRSSI:I

.field private mRTSPConnecting:Z

.field private final mReConnect:Ljava/lang/Runnable;

.field private mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mReConnecteDialog:Landroid/app/AlertDialog;

.field private mReConnecting:Z

.field private mReConnection_Timeout_Remain_Seconds:I

.field private mReScanning:Z

.field private mReconnectForResolutionChange:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mResolution:I

.field private final mRtspSinkTimeout:Ljava/lang/Runnable;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mScanRequested:Z

.field private final mScanWifiAp:Ljava/lang/Runnable;

.field private mScore:[I

.field private mScoreIndex:I

.field private mScoreLevel:I

.field private mSinkDeviceName:Ljava/lang/String;

.field private final mSinkDiscover:Ljava/lang/Runnable;

.field private mSinkDiscoverRetryCount:I

.field private mSinkEnabled:Z

.field private mSinkIpAddress:Ljava/lang/String;

.field private mSinkIpRetryCount:I

.field private mSinkMacAddress:Ljava/lang/String;

.field private mSinkPort:I

.field private mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

.field private mSinkSurface:Landroid/view/Surface;

.field private mSoundPathDialog:Landroid/app/AlertDialog;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStopWifiScan:Z

.field mTextView:Landroid/widget/TextView;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mToastTimerStarted:Z

.field private mUserDecided:Z

.field private mWaitConnectDialog:Landroid/app/AlertDialog;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockSink:Landroid/os/PowerManager$WakeLock;

.field private mWfdEnabled:Z

.field private mWfdEnabling:Z

.field mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

.field private mWifiApConnected:Z

.field private mWifiApFreq:I

.field private mWifiApSsid:Ljava/lang/String;

.field private mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

.field private mWifiDisplayCertMode:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayWpsConfig:I

.field private final mWifiLinkInfo:Ljava/lang/Runnable;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkId:I

.field private final mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pChannelId:I

.field private mWifiP2pEnabled:Z

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiPowerSaving:Z

.field private mWifiRate:I

.field private mWifiScore:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConfirmConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mGetSinkIpAddr:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/display/WifiDisplayController;)Lcom/android/internal/view/IInputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    return v0
.end method

.method static synthetic -get28(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    return v0
.end method

.method static synthetic -get29(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    return v0
.end method

.method static synthetic -get30(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I

    return v0
.end method

.method static synthetic -get31(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    return v0
.end method

.method static synthetic -get32(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mRSSI:I

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    return v0
.end method

.method static synthetic -get34(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic -get39(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    return v0
.end method

.method static synthetic -get40(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscover:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscoverRetryCount:I

    return v0
.end method

.method static synthetic -get44(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    return v0
.end method

.method static synthetic -get45(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get46(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I

    return v0
.end method

.method static synthetic -get47(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get48(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkPort:I

    return v0
.end method

.method static synthetic -get49(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$SinkState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    return v0
.end method

.method static synthetic -get50(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get51(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    return v0
.end method

.method static synthetic -get52(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get53(Lcom/android/server/display/WifiDisplayController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get54(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return v0
.end method

.method static synthetic -get55(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    return v0
.end method

.method static synthetic -get56(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I

    return v0
.end method

.method static synthetic -get57(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get58(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get59(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    return v0
.end method

.method static synthetic -get60(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get61(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get62(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiNetworkId:I

    return v0
.end method

.method static synthetic -get63(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic -get64(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    return v0
.end method

.method static synthetic -get65(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic -get66(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    return v0
.end method

.method static synthetic -get67(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    return v0
.end method

.method static synthetic -get68()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/android/server/display/WifiDisplayController;->wfdLinkInfoPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    return p1
.end method

.method static synthetic -set17(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    return p1
.end method

.method static synthetic -set20(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    return p1
.end method

.method static synthetic -set21(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mRSSI:I

    return p1
.end method

.method static synthetic -set22(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    return p1
.end method

.method static synthetic -set23(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    return p1
.end method

.method static synthetic -set24(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return p1
.end method

.method static synthetic -set25(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mReScanning:Z

    return p1
.end method

.method static synthetic -set26(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    return p1
.end method

.method static synthetic -set27(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic -set28(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set29(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscoverRetryCount:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    return p1
.end method

.method static synthetic -set30(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set31(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I

    return p1
.end method

.method static synthetic -set32(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set33(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkPort:I

    return p1
.end method

.method static synthetic -set34(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set35(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    return p1
.end method

.method static synthetic -set36(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    return p1
.end method

.method static synthetic -set37(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    return p1
.end method

.method static synthetic -set38(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return p1
.end method

.method static synthetic -set39(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    return p1
.end method

.method static synthetic -set40(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I

    return p1
.end method

.method static synthetic -set41(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set42(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiNetworkId:I

    return p1
.end method

.method static synthetic -set43(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    return p1
.end method

.method static synthetic -set44(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 1
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "session"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 1
    .param p0, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;IZ)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "flags"    # I
    .param p3, "portrait"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/WifiDisplayController;->actionAtConnected(Landroid/hardware/display/WifiDisplay;IZ)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->actionAtConnecting()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->actionAtConnectionFailed()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->chooseNo_HDMIExcludeDialog_WfdUpdate()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->chooseNo_WifiDirectExcludeDialog()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->connectRtsp()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/WifiDisplayController;Ljava/util/regex/Matcher;)Z
    .locals 1
    .param p1, "match"    # Ljava/util/regex/Matcher;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->checkInterference(Ljava/util/regex/Matcher;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->enableWifiDisplay()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V
    .locals 0
    .param p1, "event"    # Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleChannelConflictProcedure(Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;I)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;I)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p1, "timeoutOccurred"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleLatencyProfilingChange()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handlePortraitResolutionSupportChange()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleResolutionChange()V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanResults()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleSecureOptionChange()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleSinkP2PConnection(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->notifyApDisconnected()V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->notifyDisplayConnecting()V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplaySource(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->retryConnection()V

    return-void
.end method

.method static synthetic -wrap43(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->revertResolutionChange()V

    return-void
.end method

.method static synthetic -wrap44(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->sendPortraitIntent()V

    return-void
.end method

.method static synthetic -wrap45(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->setSinkMiracastMode()V

    return-void
.end method

.method static synthetic -wrap46(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .param p1, "dialogID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap47(Lcom/android/server/display/WifiDisplayController;II)V
    .locals 0
    .param p1, "titleId"    # I
    .param p2, "contentId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->showNotification(II)V

    return-void
.end method

.method static synthetic -wrap48(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startChannelConflictProcedure()V

    return-void
.end method

.method static synthetic -wrap49(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startProfilingInfo()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap50(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startWaitConnection()V

    return-void
.end method

.method static synthetic -wrap51(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    return-void
.end method

.method static synthetic -wrap52(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->turnOffHdmi()V

    return-void
.end method

.method static synthetic -wrap53(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method static synthetic -wrap54(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->updateIfHdcp(I)V

    return-void
.end method

.method static synthetic -wrap55(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->updateIfSinkConnected(Z)V

    return-void
.end method

.method static synthetic -wrap56(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    return-void
.end method

.method static synthetic -wrap57(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettingsHDMI()V

    return-void
.end method

.method static synthetic -wrap58(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    return-void
.end method

.method static synthetic -wrap59(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p1, "interference"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->updateSignalLevel(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiApNum()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap60(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .param p1, "wfd_stat"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    return-void
.end method

.method static synthetic -wrap61(Lcom/android/server/display/WifiDisplayController;ZLandroid/content/Intent;)V
    .locals 0
    .param p1, "connected"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->updateWifiP2pChannelId(ZLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I
    .locals 1
    .param p1, "decString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->parseDec(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I
    .locals 1
    .param p1, "floatString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->parseFloat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    .line 2700
    const-string/jumbo v0, "sta_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}|any)\nlink_score=(.*)\nper=(.*)\nrssi=(.*)\nphy=(.*)\nrate=(.*)\ntotal_cnt=(.*)\nthreshold_cnt=(.*)\nfail_cnt=(.*)\ntimeout_cnt=(.*)\napt=(.*)\naat=(.*)\nTC_buf_full_cnt=(.*)\nTC_sta_que_len=(.*)\nTC_avg_que_len=(.*)\nTC_cur_que_len=(.*)\nflag=(.*)\nreserved0=(.*)\nreserved1=(.*)"

    .line 2699
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/WifiDisplayController;->wfdLinkInfoPattern:Ljava/util/regex/Pattern;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/WifiDisplayController$Listener;

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    .line 226
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 288
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    .line 289
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    .line 291
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    .line 292
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    .line 295
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    .line 297
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    .line 298
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    .line 299
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I

    .line 300
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiNetworkId:I

    .line 301
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    .line 303
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 304
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 308
    const/4 v7, 0x4

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    .line 309
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 311
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 312
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 313
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    .line 314
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    .line 315
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mRSSI:I

    .line 331
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mStopWifiScan:Z

    .line 360
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    .line 367
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I

    .line 368
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    .line 388
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    .line 1742
    new-instance v7, Lcom/android/server/display/WifiDisplayController$1;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$1;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    .line 1750
    new-instance v7, Lcom/android/server/display/WifiDisplayController$2;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$2;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    .line 1762
    new-instance v7, Lcom/android/server/display/WifiDisplayController$3;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$3;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    .line 1947
    new-instance v7, Lcom/android/server/display/WifiDisplayController$4;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$4;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    .line 2720
    new-instance v7, Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    .line 3061
    new-instance v7, Lcom/android/server/display/WifiDisplayController$6;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3634
    new-instance v7, Lcom/android/server/display/WifiDisplayController$7;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$7;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    .line 3686
    new-instance v7, Lcom/android/server/display/WifiDisplayController$8;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$8;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    .line 3705
    new-instance v7, Lcom/android/server/display/WifiDisplayController$9;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$9;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    .line 3763
    new-instance v7, Lcom/android/server/display/WifiDisplayController$10;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$10;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    .line 3780
    new-instance v7, Lcom/android/server/display/WifiDisplayController$11;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$11;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    .line 3828
    new-instance v7, Lcom/android/server/display/WifiDisplayController$12;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$12;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    .line 4816
    new-instance v7, Lcom/android/server/display/WifiDisplayController$13;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$13;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscover:Ljava/lang/Runnable;

    .line 4831
    new-instance v7, Lcom/android/server/display/WifiDisplayController$14;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$14;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mGetSinkIpAddr:Ljava/lang/Runnable;

    .line 4949
    new-instance v7, Lcom/android/server/display/WifiDisplayController$15;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    .line 5043
    new-instance v7, Lcom/android/server/display/WifiDisplayController$16;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$16;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 5057
    new-instance v7, Lcom/android/server/display/WifiDisplayController$17;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$17;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    .line 432
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 433
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 434
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 436
    const-string/jumbo v7, "wifip2p"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 437
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, p1, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 442
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 444
    new-instance v7, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v7}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 447
    const-string/jumbo v7, "mtkhdmi"

    .line 446
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/IMtkHdmiManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    .line 448
    const-string/jumbo v7, "audio"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 451
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 452
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string/jumbo v7, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string/jumbo v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string/jumbo v7, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string/jumbo v7, "com.mediatek.mediaplayer.DRM_PLAY"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string/jumbo v7, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string/jumbo v7, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string/jumbo v7, "com.mediatek.wifi.p2p.GO.GCrequest.connect"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string/jumbo v7, "com.mediatek.wifi.p2p.OP.channel"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string/jumbo v7, "com.mediatek.wifi.p2p.freq.conflict"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v1, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 468
    new-instance v4, Lcom/android/server/display/WifiDisplayController$18;

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v7}, Lcom/android/server/display/WifiDisplayController$18;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 477
    .local v4, "settingsObserver":Landroid/database/ContentObserver;
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 479
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v7, "wifi_display_on"

    .line 478
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 479
    const/4 v8, 0x0

    .line 478
    invoke-virtual {v3, v7, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 481
    const-string/jumbo v7, "wifi_display_certification_on"

    .line 480
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 481
    const/4 v8, 0x0

    .line 480
    invoke-virtual {v3, v7, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 483
    const-string/jumbo v7, "wifi_display_wps_config"

    .line 482
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 483
    const/4 v8, 0x0

    .line 482
    invoke-virtual {v3, v7, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 484
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    .line 489
    new-instance v5, Lcom/android/server/display/WifiDisplayController$19;

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v7}, Lcom/android/server/display/WifiDisplayController$19;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 497
    .local v5, "settingsObserverHDMI":Landroid/database/ContentObserver;
    const-string/jumbo v7, "hdmi_enable_status"

    .line 496
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 497
    const/4 v8, 0x0

    .line 496
    invoke-virtual {v3, v7, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 499
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 500
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 501
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 502
    const-string/jumbo v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RealMetrics, Width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v8, :cond_0

    .line 504
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mIsNeedRotate:Z

    .line 508
    :cond_0
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/display/WifiDisplayController;->registerEMObserver(II)V

    .line 511
    const-string/jumbo v7, "notification"

    .line 510
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 514
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/display/WifiDisplayController;->actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V

    .line 515
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    .line 519
    const-string/jumbo v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 520
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v7, "UIBC Source"

    const/16 v8, 0x1a

    invoke-virtual {v2, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 523
    const-string/jumbo v7, "statusbar"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 524
    const-string/jumbo v7, "WFD Sink"

    const/16 v8, 0x1a

    invoke-virtual {v2, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    .line 431
    return-void
.end method

.method private actionAtConnected(Landroid/hardware/display/WifiDisplay;IZ)V
    .locals 10
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "flags"    # I
    .param p3, "portrait"    # Z

    .prologue
    .line 2327
    const-string/jumbo v5, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 2344
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.mediatek.wfd.connection"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2345
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2346
    const-string/jumbo v5, "connected"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2347
    if-eqz p1, :cond_7

    .line 2348
    const-string/jumbo v5, "device_address"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2349
    const-string/jumbo v5, "device_name"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2350
    const-string/jumbo v5, "device_alias"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2359
    :goto_0
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_8

    const/4 v2, 0x1

    .line 2360
    .local v2, "secure":Z
    :goto_1
    if-eqz v2, :cond_9

    .line 2361
    const-string/jumbo v5, "secure"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2366
    :goto_2
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "secure:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v4

    .line 2372
    .local v4, "usingUIBC":I
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_0

    .line 2373
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_a

    .line 2374
    :cond_0
    const-string/jumbo v5, "uibc_touch_mouse"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2380
    :goto_3
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2382
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-eqz v5, :cond_1

    .line 2383
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 2386
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 2387
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v5, :cond_c

    .line 2388
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2389
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 2390
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "acquire wifilock"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_2
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 2401
    :goto_4
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v5, :cond_3

    .line 2403
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2404
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetSignalParam()V

    .line 2408
    :cond_3
    const-string/jumbo v5, "ro.mtk_wfd_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2410
    const-string/jumbo v5, "af.policy.r_submix_prio_adjust"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_d

    const/4 v3, 0x1

    .line 2411
    .local v3, "show":Z
    :goto_5
    if-eqz v3, :cond_4

    .line 2412
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->checkA2dpStatus()V

    .line 2416
    :cond_4
    invoke-direct {p0, v4, p3}, Lcom/android/server/display/WifiDisplayController;->updateChosenCapability(IZ)V

    .line 2418
    const-string/jumbo v5, "input_method"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2419
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    .line 2422
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 2424
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 2425
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    .line 2426
    const-wide/16 v8, 0x7d0

    .line 2424
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2431
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v3    # "show":Z
    :cond_5
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->notifyClearMotion(Z)V

    .line 2435
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    if-eqz v5, :cond_6

    .line 2436
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->checkIfWifiApIs11G()V

    .line 2326
    :cond_6
    return-void

    .line 2352
    .end local v2    # "secure":Z
    .end local v4    # "usingUIBC":I
    :cond_7
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", null display"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    const-string/jumbo v5, "device_address"

    const-string/jumbo v6, "00:00:00:00:00:00"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2354
    const-string/jumbo v5, "device_name"

    const-string/jumbo v6, "wifidisplay dongle"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2355
    const-string/jumbo v5, "device_alias"

    const-string/jumbo v6, "wifidisplay dongle"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2359
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "secure":Z
    goto/16 :goto_1

    .line 2364
    :cond_9
    const-string/jumbo v5, "secure"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2377
    .restart local v4    # "usingUIBC":I
    :cond_a
    const-string/jumbo v5, "uibc_touch_mouse"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2394
    :cond_b
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "WFD connected, and WifiLock is Held!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2397
    :cond_c
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "actionAtConnected(): mWifiManager: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2398
    const-string/jumbo v7, ", mWifiLock: "

    .line 2397
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2398
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 2397
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2410
    :cond_d
    const/4 v3, 0x0

    .restart local v3    # "show":Z
    goto/16 :goto_5
.end method

.method private actionAtConnecting()V
    .locals 3

    .prologue
    .line 2531
    const-string/jumbo v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    return-void
.end method

.method private actionAtConnectionFailed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2540
    const-string/jumbo v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-eqz v0, :cond_0

    .line 2543
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v1, 0x8050086

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2545
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 2548
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->stopWifiScan(Z)V

    .line 2539
    return-void
.end method

.method private actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 2441
    const-string/jumbo v1, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Push2TV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2457
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;

    .line 2458
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Add block mac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$36;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$36;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 2466
    const-wide/16 v4, 0x3a98

    .line 2460
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2469
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 2471
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.wfd.connection"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2472
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2473
    const-string/jumbo v1, "connected"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2474
    if-eqz p1, :cond_5

    .line 2475
    const-string/jumbo v1, "device_address"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2476
    const-string/jumbo v1, "device_name"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2477
    const-string/jumbo v1, "device_alias"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2484
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2486
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-eqz v1, :cond_1

    .line 2487
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v2, 0x8050086

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2489
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 2492
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 2493
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_7

    .line 2494
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2495
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2496
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "release wifilock"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2507
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v1, :cond_3

    .line 2508
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2510
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->clearNotify()V

    .line 2513
    const-string/jumbo v1, "ro.mtk_wfd_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2516
    invoke-direct {p0, v6, v6}, Lcom/android/server/display/WifiDisplayController;->updateChosenCapability(IZ)V

    .line 2519
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopProfilingInfo()V

    .line 2524
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/server/display/WifiDisplayController;->notifyClearMotion(Z)V

    .line 2527
    invoke-direct {p0, v6}, Lcom/android/server/display/WifiDisplayController;->stopWifiScan(Z)V

    .line 2440
    return-void

    .line 2479
    :cond_5
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", null display"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const-string/jumbo v1, "device_address"

    const-string/jumbo v2, "00:00:00:00:00:00"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2481
    const-string/jumbo v1, "device_name"

    const-string/jumbo v2, "wifidisplay dongle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2482
    const-string/jumbo v1, "device_alias"

    const-string/jumbo v2, "wifidisplay dongle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2500
    :cond_6
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "WFD disconnected, and WifiLock isn\'t Held!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2503
    :cond_7
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "actionAtDisconnected(): mWifiManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2504
    const-string/jumbo v3, ", mWifiLock: "

    .line 2503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2504
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 2503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 10
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    .line 1800
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1801
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "advertiseDisplay(): ----->\n\tdisplay: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1803
    const-string/jumbo v3, "\n\tsurface: "

    .line 1801
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1804
    const-string/jumbo v3, "\n\twidth: "

    .line 1801
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1805
    const-string/jumbo v3, "\n\theight: "

    .line 1801
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1806
    const-string/jumbo v3, "\n\tflags: "

    .line 1801
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1810
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    if-eq v0, p2, :cond_3

    .line 1815
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1816
    .local v4, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1818
    .local v2, "oldSurface":Landroid/view/Surface;
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1819
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1820
    iput p3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    .line 1821
    iput p4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    .line 1822
    iput p5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    .line 1824
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/WifiDisplayController$35;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    move v6, p5

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/WifiDisplayController$35;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1799
    .end local v2    # "oldSurface":Landroid/view/Surface;
    .end local v4    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_2
    :goto_0
    return-void

    .line 1811
    :cond_3
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    if-ne v0, p3, :cond_1

    .line 1812
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    if-ne v0, p4, :cond_1

    .line 1813
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    if-ne v0, p5, :cond_1

    .line 1873
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1874
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "advertiseDisplay() : no need update!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private blockNotificationList(Z)V
    .locals 3
    .param p1, "block"    # Z

    .prologue
    .line 4958
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "blockNotificationList(), block:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4959
    if-eqz p1, :cond_0

    .line 4960
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4957
    :goto_0
    return-void

    .line 4962
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private checkA2dpStatus()V
    .locals 6

    .prologue
    .line 3317
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 3319
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3320
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "checkA2dpStatus(), BT is not enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    return-void

    .line 3327
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_display_sound_path_do_not_remind"

    const/4 v5, -0x1

    .line 3326
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3330
    .local v2, "value":I
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkA2dpStatus(), value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3334
    return-void

    .line 3337
    :cond_1
    new-instance v1, Lcom/android/server/display/WifiDisplayController$37;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$37;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3361
    .local v1, "profileListener":Landroid/bluetooth/BluetoothProfile$ServiceListener;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 3314
    return-void
.end method

.method private checkIfWifiApIs11G()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 4422
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v7, "checkIfWifiApIs11G()"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiStatus()Ljava/lang/String;

    move-result-object v4

    .line 4425
    .local v4, "wifiStatus":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 4426
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "getWifiStatus() return null."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    return-void

    .line 4430
    :cond_0
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 4431
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWifiStatus() return: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    :cond_1
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4436
    .local v3, "tokens":[Ljava/lang/String;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v2, v3, v5

    .line 4437
    .local v2, "token":Ljava/lang/String;
    const-string/jumbo v8, "group_cipher="

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4438
    const-string/jumbo v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4439
    .local v1, "nameValue":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->nameValueAssign([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4440
    .local v0, "cipher":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 4441
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "cipher is null."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    .end local v0    # "cipher":Ljava/lang/String;
    .end local v1    # "nameValue":[Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 4445
    .restart local v0    # "cipher":Ljava/lang/String;
    .restart local v1    # "nameValue":[Ljava/lang/String;
    .restart local v2    # "token":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cipher is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    const-string/jumbo v5, "TKIP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "WEP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4450
    :cond_4
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 4451
    const v7, 0x8050092

    .line 4449
    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 4436
    .end local v0    # "cipher":Ljava/lang/String;
    .end local v1    # "nameValue":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private checkInterference(Ljava/util/regex/Matcher;)Z
    .locals 12
    .param p1, "match"    # Ljava/util/regex/Matcher;

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 2673
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->intValue()I

    move-result v4

    .line 2674
    .local v4, "rssi":I
    const/4 v8, 0x6

    invoke-virtual {p1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->intValue()I

    move-result v3

    .line 2675
    .local v3, "rate":I
    const/4 v8, 0x7

    invoke-virtual {p1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2676
    .local v7, "totalCnt":I
    const/16 v8, 0x8

    invoke-virtual {p1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2677
    .local v5, "thresholdCnt":I
    const/16 v8, 0x9

    invoke-virtual {p1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2678
    .local v2, "failCnt":I
    invoke-virtual {p1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2679
    .local v6, "timeoutCnt":I
    const/16 v8, 0xb

    invoke-virtual {p1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2680
    .local v1, "apt":I
    const/16 v8, 0xc

    invoke-virtual {p1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2691
    .local v0, "aat":I
    const/16 v8, -0x32

    if-lt v4, v8, :cond_0

    const/16 v8, 0x3a

    if-ge v3, v8, :cond_1

    .line 2693
    :cond_0
    return v10

    .line 2691
    :cond_1
    if-lt v7, v11, :cond_0

    const/4 v8, 0x3

    if-gt v5, v8, :cond_0

    .line 2692
    if-gt v2, v9, :cond_0

    if-gt v6, v9, :cond_0

    if-gt v1, v9, :cond_0

    if-gt v0, v10, :cond_0

    .line 2695
    const/4 v8, 0x0

    return v8
.end method

.method private chooseNo_HDMIExcludeDialog_WfdUpdate()V
    .locals 3

    .prologue
    .line 3897
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3898
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 3896
    return-void
.end method

.method private chooseNo_WifiDirectExcludeDialog()V
    .locals 2

    .prologue
    .line 3885
    const-string/jumbo v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 3886
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "[sink] callback onDisplayConnectionFailed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    .line 3884
    :goto_0
    return-void

    .line 3890
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    goto :goto_0
.end method

.method private clearNotify()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3746
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    if-eqz v0, :cond_0

    .line 3747
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3748
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    .line 3752
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    if-eqz v0, :cond_1

    .line 3754
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3755
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 3759
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3760
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3759
    const/4 v2, 0x0

    .line 3760
    const v3, 0x8050080

    .line 3759
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3744
    return-void
.end method

.method private computeFeatureState()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 864
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v0, :cond_0

    .line 865
    const-string/jumbo v0, "ro.mtk_wfd_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_0

    .line 867
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "Wifi p2p is disabled, update WIFI_DISPLAY_ON as false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    .line 869
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 871
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 878
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_0
    return v0

    .line 875
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 879
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1083
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect: device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_4

    .line 1096
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1095
    if-eqz v0, :cond_4

    .line 1097
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1098
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect: connecting to the same dongle already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1099
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    .line 1098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_1
    return-void

    .line 1087
    :cond_2
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1088
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect: nothing to do, already connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1089
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    .line 1088
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_3
    return-void

    .line 1105
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    .line 1106
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1116
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_8

    .line 1117
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring request to connect to Wifi display because the  feature is currently disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1118
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return-void

    .line 1107
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_5

    .line 1108
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 1109
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect: nothing to do, already connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1110
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    .line 1109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1110
    const-string/jumbo v2, " and not part way through "

    .line 1109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1111
    const-string/jumbo v2, "connecting to a different device."

    .line 1109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_7
    return-void

    .line 1122
    :cond_8
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    .line 1124
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 1082
    return-void
.end method

.method private connectRtsp()V
    .locals 6

    .prologue
    .line 4866
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connectRtsp(), mSinkState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$72;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$72;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4937
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 4868
    invoke-static {v1, v2, v3, v4}, Landroid/media/RemoteDisplay;->connect(Ljava/lang/String;Landroid/view/Surface;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 4939
    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4942
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v1, :cond_0

    .line 4943
    const/16 v0, 0x78

    .line 4945
    .local v0, "rtspTimeout":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4865
    return-void

    .line 4943
    .end local v0    # "rtspTimeout":I
    :cond_0
    const/16 v0, 0xa

    .restart local v0    # "rtspTimeout":I
    goto :goto_0
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 7
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1943
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1944
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v5

    .line 1943
    const/4 v3, 0x0

    .line 1944
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1943
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 3
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1935
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method private static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 3
    .param p0, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 1939
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method private dialogReconnect()V
    .locals 1

    .prologue
    .line 3824
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 3823
    return-void
.end method

.method private dialogWfdHdmiConflict(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x2

    .line 2656
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2657
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2658
    const-string/jumbo v2, ", which = "

    .line 2657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    :cond_0
    if-nez p1, :cond_2

    .line 2662
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 2655
    :cond_1
    :goto_0
    return-void

    .line 2664
    :cond_2
    if-ne v3, p1, :cond_1

    .line 2665
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    goto :goto_0
.end method

.method private disconnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1128
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disconnect, mRemoteDisplayInterface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const-string/jumbo v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 1132
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V

    .line 1133
    return-void

    .line 1137
    :cond_0
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1144
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 1127
    return-void
.end method

.method private declared-synchronized disconnectWfdSink()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 4605
    :try_start_0
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", SinkState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4608
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    .line 4607
    if-eqz v0, :cond_2

    .line 4610
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGetSinkIpAddr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4611
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscover:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4613
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopPeerDiscovery()V

    .line 4614
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "Disconnected from WFD sink (P2P)."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4618
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateIfSinkConnected(Z)V

    .line 4620
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 4622
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$67;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$67;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4653
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 4654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    .line 4655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;

    .line 4656
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkPort:I

    .line 4657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    .line 4658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    .line 4660
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$69;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$69;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 4604
    return-void

    .line 4630
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4631
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    .line 4630
    if-eqz v0, :cond_1

    .line 4633
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_4

    .line 4635
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "before dispose()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    .line 4637
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "after dispose()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4642
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4643
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$68;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$68;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 4383
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4384
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4385
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4386
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4382
    return-void
.end method

.method private dismissDialogDetail(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 4391
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4392
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4390
    :cond_0
    return-void
.end method

.method private enableWifiDisplay()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2586
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2589
    const-string/jumbo v2, "ro.mtk_wfd_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2590
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 2589
    if-eqz v2, :cond_0

    .line 2590
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-eqz v2, :cond_1

    .line 2603
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    .line 2604
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 2584
    :goto_0
    return-void

    .line 2592
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2593
    const-string/jumbo v3, "wifi_reenable_delay"

    const-wide/16 v4, 0x1f4

    .line 2592
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2595
    .local v0, "delay":J
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Enable wifi with delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2599
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v3, 0x8050088

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    .prologue
    .line 5245
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enterCCState(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5246
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    .line 5244
    return-void
.end method

.method private enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    .line 4967
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enterSinkState(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4968
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    .line 4966
    return-void
.end method

.method private getAudioFocus(Z)V
    .locals 5
    .param p1, "grab"    # Z

    .prologue
    .line 5004
    if-eqz p1, :cond_1

    .line 5005
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 5006
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 5007
    const/4 v3, 0x3

    .line 5008
    const/4 v4, 0x1

    .line 5005
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 5009
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 5010
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "requestAudioFocus() FAIL !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5003
    .end local v0    # "ret":I
    :cond_0
    :goto_0
    return-void

    .line 5013
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method private getAverageScore()I
    .locals 6

    .prologue
    .line 2895
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    rem-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    aput v5, v3, v4

    .line 2896
    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 2898
    const/4 v0, 0x0

    .line 2899
    .local v0, "count":I
    const/4 v2, 0x0

    .line 2900
    .local v2, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 2901
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    aget v3, v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2902
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 2903
    add-int/lit8 v0, v0, 0x1

    .line 2900
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2906
    :cond_1
    div-int v3, v2, v0

    return v3
.end method

.method private getFreqId(I)I
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 3544
    sparse-switch p1, :sswitch_data_0

    .line 3630
    const/4 v0, 0x0

    return v0

    .line 3547
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 3549
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 3551
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 3553
    :sswitch_3
    const/4 v0, 0x4

    return v0

    .line 3555
    :sswitch_4
    const/4 v0, 0x5

    return v0

    .line 3557
    :sswitch_5
    const/4 v0, 0x6

    return v0

    .line 3559
    :sswitch_6
    const/4 v0, 0x7

    return v0

    .line 3561
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 3563
    :sswitch_8
    const/16 v0, 0x9

    return v0

    .line 3565
    :sswitch_9
    const/16 v0, 0xa

    return v0

    .line 3567
    :sswitch_a
    const/16 v0, 0xb

    return v0

    .line 3569
    :sswitch_b
    const/16 v0, 0xc

    return v0

    .line 3571
    :sswitch_c
    const/16 v0, 0xd

    return v0

    .line 3573
    :sswitch_d
    const/16 v0, 0xe

    return v0

    .line 3576
    :sswitch_e
    const/16 v0, 0x24

    return v0

    .line 3578
    :sswitch_f
    const/16 v0, 0x26

    return v0

    .line 3580
    :sswitch_10
    const/16 v0, 0x28

    return v0

    .line 3582
    :sswitch_11
    const/16 v0, 0x2a

    return v0

    .line 3584
    :sswitch_12
    const/16 v0, 0x2c

    return v0

    .line 3586
    :sswitch_13
    const/16 v0, 0x2e

    return v0

    .line 3588
    :sswitch_14
    const/16 v0, 0x30

    return v0

    .line 3590
    :sswitch_15
    const/16 v0, 0x34

    return v0

    .line 3592
    :sswitch_16
    const/16 v0, 0x38

    return v0

    .line 3594
    :sswitch_17
    const/16 v0, 0x3c

    return v0

    .line 3596
    :sswitch_18
    const/16 v0, 0x40

    return v0

    .line 3598
    :sswitch_19
    const/16 v0, 0x64

    return v0

    .line 3600
    :sswitch_1a
    const/16 v0, 0x68

    return v0

    .line 3602
    :sswitch_1b
    const/16 v0, 0x6c

    return v0

    .line 3604
    :sswitch_1c
    const/16 v0, 0x70

    return v0

    .line 3606
    :sswitch_1d
    const/16 v0, 0x74

    return v0

    .line 3608
    :sswitch_1e
    const/16 v0, 0x78

    return v0

    .line 3610
    :sswitch_1f
    const/16 v0, 0x7c

    return v0

    .line 3612
    :sswitch_20
    const/16 v0, 0x80

    return v0

    .line 3614
    :sswitch_21
    const/16 v0, 0x84

    return v0

    .line 3616
    :sswitch_22
    const/16 v0, 0x88

    return v0

    .line 3618
    :sswitch_23
    const/16 v0, 0x8c

    return v0

    .line 3620
    :sswitch_24
    const/16 v0, 0x95

    return v0

    .line 3622
    :sswitch_25
    const/16 v0, 0x99

    return v0

    .line 3624
    :sswitch_26
    const/16 v0, 0x9d

    return v0

    .line 3626
    :sswitch_27
    const/16 v0, 0xa1

    return v0

    .line 3628
    :sswitch_28
    const/16 v0, 0xa5

    return v0

    .line 3544
    nop

    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_0
        0x971 -> :sswitch_1
        0x976 -> :sswitch_2
        0x97b -> :sswitch_3
        0x980 -> :sswitch_4
        0x985 -> :sswitch_5
        0x98a -> :sswitch_6
        0x98f -> :sswitch_7
        0x994 -> :sswitch_8
        0x999 -> :sswitch_9
        0x99e -> :sswitch_a
        0x9a3 -> :sswitch_b
        0x9a8 -> :sswitch_c
        0x9b4 -> :sswitch_d
        0x143c -> :sswitch_e
        0x1446 -> :sswitch_f
        0x1450 -> :sswitch_10
        0x145a -> :sswitch_11
        0x1464 -> :sswitch_12
        0x146e -> :sswitch_13
        0x1478 -> :sswitch_14
        0x148c -> :sswitch_15
        0x14a0 -> :sswitch_16
        0x14b4 -> :sswitch_17
        0x14c8 -> :sswitch_18
        0x157c -> :sswitch_19
        0x1590 -> :sswitch_1a
        0x15a4 -> :sswitch_1b
        0x15b8 -> :sswitch_1c
        0x15cc -> :sswitch_1d
        0x15e0 -> :sswitch_1e
        0x15f4 -> :sswitch_1f
        0x1608 -> :sswitch_20
        0x161c -> :sswitch_21
        0x1630 -> :sswitch_22
        0x1644 -> :sswitch_23
        0x1671 -> :sswitch_24
        0x1685 -> :sswitch_25
        0x1699 -> :sswitch_26
        0x16ad -> :sswitch_27
        0x16c1 -> :sswitch_28
    .end sparse-switch
.end method

.method private static getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;
    .locals 8
    .param p0, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v7, 0x0

    .line 1893
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1900
    .local v3, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 1901
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1902
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1903
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    .line 1904
    check-cast v0, Ljava/net/Inet4Address;

    .end local v0    # "addr":Ljava/net/InetAddress;
    return-object v0

    .line 1894
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "iface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 1895
    .local v2, "ex":Ljava/net/SocketException;
    const-string/jumbo v4, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not obtain address of network interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1896
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    .line 1895
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1897
    return-object v7

    .line 1908
    .end local v2    # "ex":Ljava/net/SocketException;
    .restart local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v3    # "iface":Ljava/net/NetworkInterface;
    :cond_1
    const-string/jumbo v4, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not obtain address of network interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1909
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    .line 1908
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1909
    const-string/jumbo v6, " because it had no IPv4 addresses."

    .line 1908
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    return-object v7
.end method

.method private static getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 2
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1914
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string/jumbo v1, "DIRECT-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string/jumbo v1, "Broadcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1914
    if-eqz v0, :cond_0

    .line 1917
    const/16 v0, 0x216a

    return v0

    .line 1919
    :cond_0
    const/16 v0, 0x1c44

    return v0
.end method

.method private getResolutionIndex(I)I
    .locals 1
    .param p1, "settingValue"    # I

    .prologue
    const/4 v0, 0x5

    .line 3159
    packed-switch p1, :pswitch_data_0

    .line 3167
    return v0

    .line 3162
    :pswitch_0
    return v0

    .line 3165
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 3159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSameFreqNetworkId()I
    .locals 12

    .prologue
    .line 5205
    const-string/jumbo v9, "WifiDisplayController"

    const-string/jumbo v10, "getSameFreqNetworkId()"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5206
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 5207
    .local v2, "everConnecteds":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 5209
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v6, :cond_0

    if-nez v2, :cond_1

    .line 5210
    :cond_0
    const-string/jumbo v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "results:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5211
    const-string/jumbo v11, ",everConnecteds:"

    .line 5210
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5212
    const/4 v9, -0x1

    return v9

    .line 5215
    :cond_1
    const/16 v3, -0x80

    .line 5216
    .local v3, "maxRssi":I
    const/4 v7, -0x1

    .line 5217
    .local v7, "selectedNetworkId":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "everConnected$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5218
    .local v0, "everConnected":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 5220
    .local v8, "trim":Ljava/lang/String;
    const-string/jumbo v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SSID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",NetId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5222
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "result$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 5224
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-object v9, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 5225
    iget-object v9, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v10, "[IBSS]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 5224
    if-nez v9, :cond_3

    .line 5230
    iget-object v9, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 5231
    iget v9, v4, Landroid/net/wifi/ScanResult;->frequency:I

    iget v10, p0, Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I

    if-ne v9, v10, :cond_3

    iget v9, v4, Landroid/net/wifi/ScanResult;->level:I

    if-le v9, v3, :cond_3

    .line 5233
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 5234
    iget v3, v4, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 5240
    .end local v0    # "everConnected":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "result$iterator":Ljava/util/Iterator;
    .end local v8    # "trim":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Selected Network Id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5241
    return v7
.end method

.method private getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 7
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "session"    # I

    .prologue
    const/4 v1, 0x0

    .line 1580
    if-nez p1, :cond_0

    .line 1581
    return-object v1

    .line 1583
    :cond_0
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 1584
    .local v6, "addr":Ljava/net/Inet4Address;
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 1585
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 1587
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1588
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    .line 1589
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move v2, p2

    .line 1584
    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    .local v0, "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1591
    const-string/jumbo v1, "WifiDisplayController"

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_1
    return-object v0

    .line 1585
    .end local v0    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1589
    :cond_3
    const-string/jumbo v5, ""

    goto :goto_1
.end method

.method private getWifiApNum()I
    .locals 11

    .prologue
    .line 3483
    const/4 v1, 0x0

    .line 3484
    .local v1, "count":I
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 3485
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3487
    .local v0, "SSIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    .line 3488
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 3490
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 3491
    iget-object v8, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v9, "[IBSS]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 3490
    if-nez v8, :cond_0

    .line 3495
    iget v8, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v8}, Lcom/android/server/display/WifiDisplayController;->getFreqId(I)I

    move-result v8

    iget v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    if-ne v8, v9, :cond_0

    .line 3497
    const/4 v2, 0x0

    .line 3499
    .local v2, "duplicate":Z
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "ssid$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3500
    .local v6, "ssid":Ljava/lang/String;
    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3501
    const/4 v2, 0x1

    .line 3506
    .end local v6    # "ssid":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_0

    .line 3507
    sget-boolean v8, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 3508
    const-string/jumbo v8, "WifiDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AP SSID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    :cond_3
    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3511
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3517
    .end local v2    # "duplicate":Z
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "result$iterator":Ljava/util/Iterator;
    .end local v7    # "ssid$iterator":Ljava/util/Iterator;
    :cond_4
    return v1
.end method

.method private getWifiLock()V
    .locals 3

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 2301
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2303
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v1, "WFD_WifiLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 2299
    :cond_1
    return-void
.end method

.method private handleChannelConflictProcedure(Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V
    .locals 7
    .param p1, "event"    # Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5119
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5120
    :cond_0
    return-void

    .line 5122
    :cond_1
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleChannelConflictProcedure(), evt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ccState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5124
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_DISCONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5125
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    if-ne p1, v1, :cond_3

    .line 5127
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v6, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setFreqConflictExResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 5128
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_WFD_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    .line 5117
    :cond_2
    :goto_0
    return-void

    .line 5131
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v5, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setFreqConflictExResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 5132
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0

    .line 5134
    :cond_4
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_WFD_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5135
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_WFD_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    if-ne p1, v1, :cond_5

    .line 5137
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connect AP, mNetworkId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5139
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 5141
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0

    .line 5145
    :cond_5
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0

    .line 5147
    :cond_6
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5148
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    if-ne p1, v1, :cond_8

    .line 5150
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayApToast:Z

    if-eqz v1, :cond_7

    .line 5152
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 5154
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 5155
    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    aput-object v3, v2, v5

    const v3, 0x8050100

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5153
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5159
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_7
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0

    .line 5162
    :cond_8
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0
.end method

.method private handleConnectionChanged(Landroid/net/NetworkInfo;I)V
    .locals 4
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "reason"    # I

    .prologue
    const/4 v3, 0x0

    .line 1617
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleConnectionChanged(), mWfdEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1619
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1620
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v0, :cond_1

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$33;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$33;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 1732
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_2

    .line 1733
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    .line 1734
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-eqz v0, :cond_2

    .line 1735
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "Wifi P2p connection is connected but it does not wifidisplay trigger"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 1615
    :cond_2
    return-void

    .line 1689
    :cond_3
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1692
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    .line 1693
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 1699
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_6

    .line 1700
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    .line 1701
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z

    if-eqz v0, :cond_6

    .line 1703
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    if-eqz v0, :cond_6

    .line 1704
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "requestStartScan() for resolution change."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReScanning:Z

    .line 1708
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 1711
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    .line 1712
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1717
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    .line 1720
    const/4 v0, 0x7

    if-ne v0, p2, :cond_7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_7

    .line 1721
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reconnect procedure start, ReConnectDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dialogReconnect()V

    .line 1727
    :cond_7
    sget-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_WFD_P2P_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->handleChannelConflictProcedure(Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V

    goto/16 :goto_0
.end method

.method private handleConnectionFailure(Z)V
    .locals 6
    .param p1, "timeoutOccurred"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1776
    const-string/jumbo v2, "WifiDisplayController"

    const-string/jumbo v3, "Wifi display connection failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_0

    .line 1779
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    if-lez v2, :cond_2

    .line 1780
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1781
    .local v0, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$34;

    invoke-direct {v3, p0, v0}, Lcom/android/server/display/WifiDisplayController$34;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1791
    if-eqz p1, :cond_1

    :goto_0
    int-to-long v4, v1

    .line 1781
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1775
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_1
    return-void

    .line 1791
    .restart local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const/16 v1, 0x1f4

    goto :goto_0

    .line 1793
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    goto :goto_1
.end method

.method private handleLatencyProfilingChange()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 3240
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_latency_profiling"

    const/4 v3, 0x2

    .line 3239
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3242
    .local v0, "value":I
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-ne v0, v1, :cond_0

    .line 3243
    return-void

    .line 3246
    :cond_0
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleLatencyProfilingChange(), connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    .line 3249
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-eq v1, v4, :cond_1

    .line 3250
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3254
    :cond_1
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-eqz v1, :cond_2

    .line 3255
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 3256
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 3254
    if-eqz v1, :cond_4

    .line 3258
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startProfilingInfo()V

    .line 3237
    :goto_0
    return-void

    .line 3256
    :cond_3
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-eq v1, v4, :cond_2

    .line 3260
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopProfilingInfo()V

    goto :goto_0
.end method

.method private handleLevelChange()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3716
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-gez v0, :cond_2

    .line 3719
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    if-nez v0, :cond_0

    .line 3721
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 3722
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    .line 3723
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 3721
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3724
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    .line 3728
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    if-nez v0, :cond_1

    .line 3730
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 3731
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    .line 3732
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 3730
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3733
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 3714
    :cond_1
    :goto_0
    return-void

    .line 3739
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->clearNotify()V

    goto :goto_0
.end method

.method private handlePeersChanged()V
    .locals 0

    .prologue
    .line 1610
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    .line 1607
    return-void
.end method

.method private handlePortraitResolutionSupportChange()V
    .locals 4

    .prologue
    .line 3117
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_portrait_resolution"

    const/4 v3, 0x0

    .line 3116
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3118
    .local v0, "value":I
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePortraitResolutionSupportChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    const-string/jumbo v1, "media.wfd.portrait"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    return-void
.end method

.method private handleResolutionChange()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3175
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_display_max_resolution"

    .line 3174
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3177
    .local v3, "r":I
    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    if-ne v3, v4, :cond_0

    .line 3178
    return-void

    .line 3181
    :cond_0
    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    .line 3182
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 3184
    const-string/jumbo v4, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleResolutionChange(), resolution:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 3188
    .local v1, "idxModified":I
    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v2

    .line 3190
    .local v2, "idxOriginal":I
    if-ne v1, v2, :cond_1

    .line 3191
    return-void

    .line 3195
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_display_change_resolution_remind"

    .line 3194
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 3198
    .local v0, "doNotRemind":Z
    :goto_0
    const-string/jumbo v4, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", doNotRemind:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    const-string/jumbo v4, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v4, :cond_3

    .line 3205
    :cond_2
    if-eqz v0, :cond_5

    .line 3206
    const-string/jumbo v4, "WifiDisplayController"

    const-string/jumbo v5, "-- reconnect for resolution change --"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 3210
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    .line 3171
    :cond_3
    :goto_1
    return-void

    .line 3194
    .end local v0    # "doNotRemind":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "doNotRemind":Z
    goto :goto_0

    .line 3213
    :cond_5
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    goto :goto_1
.end method

.method private handleScanFinished()V
    .locals 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$28;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$28;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1056
    return-void
.end method

.method private handleScanResults()V
    .locals 6

    .prologue
    .line 1033
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1034
    .local v0, "count":I
    sget-object v4, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/WifiDisplay;

    .line 1035
    .local v2, "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1036
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1037
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1038
    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1041
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$27;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/server/display/WifiDisplayController$27;-><init>(Lcom/android/server/display/WifiDisplayController;I[Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1032
    return-void
.end method

.method private handleScanStarted()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$26;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$26;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1022
    return-void
.end method

.method private handleSecureOptionChange()V
    .locals 4

    .prologue
    .line 3145
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_security_option"

    const/4 v3, 0x1

    .line 3144
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3147
    .local v0, "secureOption":I
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    if-ne v0, v1, :cond_0

    .line 3148
    return-void

    .line 3151
    :cond_0
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSecureOptionChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 3155
    const-string/jumbo v1, "ro.sf.security.image"

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    return-void
.end method

.method private handleSinkP2PConnection(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 4679
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSinkP2PConnection(), sinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4684
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4685
    return-void

    .line 4688
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$70;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$70;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 4678
    :cond_1
    :goto_0
    return-void

    .line 4746
    :cond_2
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4747
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    .line 4746
    if-eqz v0, :cond_1

    .line 4750
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V

    goto :goto_0
.end method

.method private handleStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1598
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    .line 1599
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 1601
    if-nez p1, :cond_0

    .line 1602
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dismissDialog()V

    .line 1596
    :cond_0
    return-void
.end method

.method private hideLatencyPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3300
    const-string/jumbo v1, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3305
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3304
    check-cast v0, Landroid/view/WindowManager;

    .line 3307
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3308
    iput-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 3311
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    iput-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 3299
    return-void
.end method

.method private initPortraitResolutionSupport()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3106
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3107
    const-string/jumbo v1, "wifi_display_portrait_resolution"

    .line 3105
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3111
    const-string/jumbo v0, "media.wfd.portrait"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    return-void
.end method

.method private initSecureOption()V
    .locals 3

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3135
    const-string/jumbo v1, "wifi_display_security_option"

    .line 3136
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 3133
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3139
    const-string/jumbo v0, "wlan.wfd.security.image"

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3132
    return-void
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2190
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InjectKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 2192
    const/4 v1, 0x2

    .line 2191
    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2189
    return-void
.end method

.method private injectPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2196
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2197
    const-string/jumbo v0, "Input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InjectPointerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 2199
    const/4 v1, 0x2

    .line 2198
    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2195
    return-void
.end method

.method private isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    .prologue
    .line 5250
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .locals 2
    .param p0, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1930
    if-eq p0, v0, :cond_0

    .line 1931
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return v0

    .line 1931
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    .line 4972
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSourceDeviceType(I)Z
    .locals 3
    .param p1, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4778
    if-eqz p1, :cond_0

    .line 4779
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 4778
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 4779
    goto :goto_0
.end method

.method private static isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1923
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    .line 1924
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    .line 1923
    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    .line 1923
    if-eqz v0, :cond_0

    .line 1926
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->isPrimarySinkDeviceType(I)Z

    move-result v0

    .line 1923
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiDisplaySource(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 4756
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v1, :cond_1

    .line 4757
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v1

    .line 4756
    if-eqz v1, :cond_1

    .line 4758
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v1

    .line 4756
    if-eqz v1, :cond_1

    .line 4759
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->isSourceDeviceType(I)Z

    move-result v0

    .line 4761
    :goto_0
    if-nez v0, :cond_0

    .line 4762
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "This is not WFD source device !!!!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    :cond_0
    return v0

    .line 4756
    :cond_1
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0
.end method

.method private loadDebugLevel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2567
    const-string/jumbo v1, "wlan.wfd.controller.debug"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2568
    .local v0, "debugLevel":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2569
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", debugLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2579
    sput-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    .line 2566
    :goto_0
    return-void

    .line 2573
    :pswitch_0
    sput-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    goto :goto_0

    .line 2576
    :pswitch_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    goto :goto_0

    .line 2571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadWfdWpsSetup()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2552
    const-string/jumbo v1, "wlan.wfd.wps.setup"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2553
    .local v0, "wfdWpsSetup":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2554
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", wfdWpsSetup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2562
    return v4

    .line 2558
    :pswitch_0
    return v5

    .line 2560
    :pswitch_1
    return v4

    .line 2556
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nameValueAssign([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "nameValue"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4461
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    .line 4462
    :cond_0
    return-object v2

    .line 4464
    :cond_1
    const/4 v0, 0x1

    aget-object v0, p1, v0

    return-object v0
.end method

.method private notifyApDisconnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5027
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "notifyApDisconnected()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5030
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 5032
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 5033
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x8050102

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5031
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5038
    const v1, 0x8050103

    .line 5039
    const v2, 0x8050104

    .line 5037
    invoke-direct {p0, v1, v2}, Lcom/android/server/display/WifiDisplayController;->showNotification(II)V

    .line 5026
    return-void
.end method

.method private notifyClearMotion(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 4398
    const-string/jumbo v1, "ro.mtk_clearmotion_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4402
    const-string/jumbo v2, "sys.display.clearMotion.dimmed"

    .line 4403
    if-eqz p1, :cond_1

    const-string/jumbo v1, "1"

    .line 4401
    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4406
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.clearmotion.DIMMED_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4407
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4409
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4397
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 4403
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method private notifyDisplayConnecting()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 4769
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    .line 4770
    const-string/jumbo v1, "Temp address"

    const-string/jumbo v2, "WiFi Display Device"

    const/4 v3, 0x0

    .line 4771
    const/4 v6, 0x0

    move v5, v4

    .line 4769
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 4773
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "[sink] callback onDisplayConnecting()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4774
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V

    .line 4767
    return-void
.end method

.method private parseDec(Ljava/lang/String;)I
    .locals 5
    .param p1, "decString"    # Ljava/lang/String;

    .prologue
    .line 2768
    const/4 v1, 0x0

    .line 2771
    .local v1, "num":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2775
    :goto_0
    return v1

    .line 2772
    :catch_0
    move-exception v0

    .line 2773
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse dec string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseFloat(Ljava/lang/String;)I
    .locals 5
    .param p1, "floatString"    # Ljava/lang/String;

    .prologue
    .line 2779
    const/4 v1, 0x0

    .line 2782
    .local v1, "num":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    .line 2786
    :goto_0
    return v1

    .line 2783
    :catch_0
    move-exception v0

    .line 2784
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse float string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private popupDialog(Landroid/app/AlertDialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 4369
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 4370
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4372
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 4368
    return-void
.end method

.method private prepareDialog(I)V
    .locals 13
    .param p1, "dialogID"    # I

    .prologue
    .line 3913
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 3915
    .local v3, "mResource":Landroid/content/res/Resources;
    const/4 v10, 0x1

    if-ne v10, p1, :cond_1

    .line 3917
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3918
    const v11, 0x8050076

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3917
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3919
    const v11, 0x10403d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$38;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$38;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3917
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3945
    const v11, 0x10403a4

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$39;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$39;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3917
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3955
    new-instance v11, Lcom/android/server/display/WifiDisplayController$40;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$40;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3917
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3965
    new-instance v11, Lcom/android/server/display/WifiDisplayController$41;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$41;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3917
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    .line 3977
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    .line 3912
    :cond_0
    :goto_0
    return-void

    .line 3979
    :cond_1
    const/4 v10, 0x2

    if-ne v10, p1, :cond_2

    .line 3981
    const v10, 0x8050073

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->reviseHDMIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3984
    .local v5, "messageString":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3986
    const v11, 0x10403d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$42;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$42;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3984
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4000
    const v11, 0x10403a4

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$43;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$43;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3984
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4010
    new-instance v11, Lcom/android/server/display/WifiDisplayController$44;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$44;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3984
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4020
    new-instance v11, Lcom/android/server/display/WifiDisplayController$45;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$45;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3984
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    .line 4032
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 4034
    .end local v5    # "messageString":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x3

    if-ne v10, p1, :cond_3

    .line 4035
    const v10, 0x8050074

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->reviseHDMIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4038
    .restart local v5    # "messageString":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4040
    const v11, 0x10403d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$46;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$46;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4038
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4050
    const v11, 0x10403a4

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$47;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$47;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4038
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4060
    new-instance v11, Lcom/android/server/display/WifiDisplayController$48;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$48;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4038
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4070
    new-instance v11, Lcom/android/server/display/WifiDisplayController$49;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$49;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4038
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

    .line 4082
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4084
    .end local v5    # "messageString":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x4

    if-ne v10, p1, :cond_4

    .line 4086
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4087
    const v11, 0x8050084

    .line 4086
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4088
    const v11, 0x8050085

    .line 4086
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4089
    const v11, 0x10403d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$50;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$50;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4086
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4104
    const v11, 0x10403a4

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$51;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$51;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4086
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4112
    new-instance v11, Lcom/android/server/display/WifiDisplayController$52;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$52;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4086
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    .line 4121
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4123
    :cond_4
    const/4 v10, 0x5

    if-ne v10, p1, :cond_5

    .line 4126
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4127
    .local v0, "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x807000b

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4128
    .local v2, "checkboxLayout":Landroid/view/View;
    const v10, 0x811003f

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 4129
    .local v1, "checkbox":Landroid/widget/CheckBox;
    const v10, 0x8050091

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 4132
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4134
    const v11, 0x8050090

    .line 4132
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4135
    const v11, 0x10403d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$53;

    invoke-direct {v12, p0, v1}, Lcom/android/server/display/WifiDisplayController$53;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/widget/CheckBox;)V

    .line 4132
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4167
    const/high16 v11, 0x1040000

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$54;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$54;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4132
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4178
    new-instance v11, Lcom/android/server/display/WifiDisplayController$55;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$55;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4132
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mChangeResolutionDialog:Landroid/app/AlertDialog;

    .line 4190
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mChangeResolutionDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4192
    .end local v0    # "adbInflater":Landroid/view/LayoutInflater;
    .end local v1    # "checkbox":Landroid/widget/CheckBox;
    .end local v2    # "checkboxLayout":Landroid/view/View;
    :cond_5
    const/4 v10, 0x6

    if-ne v10, p1, :cond_7

    .line 4195
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4196
    .restart local v0    # "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x807000b

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4197
    .restart local v2    # "checkboxLayout":Landroid/view/View;
    const v10, 0x811003f

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 4198
    .restart local v1    # "checkbox":Landroid/widget/CheckBox;
    const v10, 0x8050091

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 4202
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "wifi_display_sound_path_do_not_remind"

    const/4 v12, -0x1

    .line 4201
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 4203
    .local v9, "value":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    .line 4204
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4208
    :cond_6
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4210
    const v11, 0x8050089

    .line 4208
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4211
    const v11, 0x10403d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$56;

    invoke-direct {v12, p0, v1}, Lcom/android/server/display/WifiDisplayController$56;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/widget/CheckBox;)V

    .line 4208
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4233
    new-instance v11, Lcom/android/server/display/WifiDisplayController$57;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$57;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4208
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mSoundPathDialog:Landroid/app/AlertDialog;

    .line 4240
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mSoundPathDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4242
    .end local v0    # "adbInflater":Landroid/view/LayoutInflater;
    .end local v1    # "checkbox":Landroid/widget/CheckBox;
    .end local v2    # "checkboxLayout":Landroid/view/View;
    .end local v9    # "value":I
    :cond_7
    const/4 v10, 0x7

    if-ne v10, p1, :cond_8

    .line 4245
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4246
    .restart local v0    # "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x807001d

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 4247
    .local v7, "progressLayout":Landroid/view/View;
    const v10, 0x811006f

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 4248
    .local v6, "progressBar":Landroid/widget/ProgressBar;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 4249
    const v10, 0x8110070

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 4250
    .local v8, "progressText":Landroid/widget/TextView;
    const v10, 0x8050094

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 4253
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4255
    const/high16 v11, 0x1040000

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$58;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$58;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4253
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4265
    new-instance v11, Lcom/android/server/display/WifiDisplayController$59;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$59;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4253
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    .line 4275
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4277
    .end local v0    # "adbInflater":Landroid/view/LayoutInflater;
    .end local v6    # "progressBar":Landroid/widget/ProgressBar;
    .end local v7    # "progressLayout":Landroid/view/View;
    .end local v8    # "progressText":Landroid/widget/TextView;
    :cond_8
    const/16 v10, 0x8

    if-ne v10, p1, :cond_9

    .line 4279
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4281
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4282
    const-string/jumbo v11, " "

    .line 4281
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4283
    const v11, 0x8050095

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4281
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4286
    .local v4, "message":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4288
    const v11, 0x10403a3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$60;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$60;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4286
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4306
    const v11, 0x10403a4

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$61;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$61;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4286
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4317
    new-instance v11, Lcom/android/server/display/WifiDisplayController$62;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$62;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4286
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mConfirmConnectDialog:Landroid/app/AlertDialog;

    .line 4328
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mConfirmConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4329
    .end local v4    # "message":Ljava/lang/String;
    :cond_9
    const/16 v10, 0x9

    if-ne v10, p1, :cond_0

    .line 4332
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4333
    .restart local v0    # "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x807001d

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 4334
    .restart local v7    # "progressLayout":Landroid/view/View;
    const v10, 0x811006f

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 4335
    .restart local v6    # "progressBar":Landroid/widget/ProgressBar;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 4336
    const v10, 0x8110070

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 4337
    .restart local v8    # "progressText":Landroid/widget/TextView;
    const v10, 0x8050096

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 4340
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4342
    const/high16 v11, 0x1040000

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$63;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$63;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4340
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4352
    new-instance v11, Lcom/android/server/display/WifiDisplayController$64;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$64;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4340
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;

    .line 4362
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0
.end method

.method private readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 6
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1885
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1886
    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    .line 1887
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    move-object v0, p0

    move-object v1, p1

    .line 1885
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1884
    return-void
.end method

.method private registerEMObserver(II)V
    .locals 10
    .param p1, "widthPixels"    # I
    .param p2, "heightPixels"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2958
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0003

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    .line 2959
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0004

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    .line 2960
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0005

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    .line 2961
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0006

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    .line 2962
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0007

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    .line 2963
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 2965
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerEMObserver(), tt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2966
    const-string/jumbo v6, ",nt:"

    .line 2965
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2966
    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    .line 2965
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2967
    const-string/jumbo v6, ",res:"

    .line 2965
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2967
    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    .line 2965
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2968
    const-string/jumbo v6, ",ps:"

    .line 2965
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2968
    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    .line 2965
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2969
    const-string/jumbo v6, ",psd:"

    .line 2965
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2969
    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    .line 2965
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2970
    const-string/jumbo v6, ",so:"

    .line 2965
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2970
    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 2965
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_display_display_toast_time"

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    .line 2973
    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2976
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_display_notification_time"

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    .line 2975
    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2978
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_display_sqc_info_on"

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    if-eqz v2, :cond_2

    move v2, v3

    .line 2977
    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2980
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_display_qe_on"

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v2, :cond_3

    move v2, v3

    .line 2979
    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2982
    const-string/jumbo v2, "ro.mtk_wfd_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2986
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_display_max_resolution"

    .line 2985
    invoke-static {v2, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2989
    .local v0, "r":I
    if-ne v0, v7, :cond_6

    .line 2990
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    if-ltz v2, :cond_4

    .line 2991
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    if-gt v2, v9, :cond_4

    .line 2992
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    .line 3011
    :goto_2
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 3012
    .local v1, "resolutionIndex":I
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mResolution:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", resolutionIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    const-string/jumbo v2, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    .end local v0    # "r":I
    .end local v1    # "resolutionIndex":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_display_auto_channel_selection"

    iget-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    if-eqz v6, :cond_8

    .line 3017
    :goto_3
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3020
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_max_resolution"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 3019
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3022
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_power_saving_option"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    .line 3021
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3024
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_power_saving_delay"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    .line 3023
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3027
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_latency_profiling"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    .line 3026
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3029
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_chosen_capability"

    const-string/jumbo v5, ""

    .line 3028
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3031
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->initPortraitResolutionSupport()V

    .line 3033
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetLatencyInfo()V

    .line 3034
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->initSecureOption()V

    .line 3037
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3038
    const-string/jumbo v3, "wifi_display_display_toast_time"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3037
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3039
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3040
    const-string/jumbo v3, "wifi_display_notification_time"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3039
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3041
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3042
    const-string/jumbo v3, "wifi_display_sqc_info_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3041
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3043
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3044
    const-string/jumbo v3, "wifi_display_qe_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3043
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3046
    const-string/jumbo v2, "ro.mtk_wfd_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3047
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3048
    const-string/jumbo v3, "wifi_display_auto_channel_selection"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3047
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3049
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3050
    const-string/jumbo v3, "wifi_display_max_resolution"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3049
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3051
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3052
    const-string/jumbo v3, "wifi_display_latency_profiling"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3051
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3053
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3054
    const-string/jumbo v3, "wifi_display_security_option"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3053
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3056
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3057
    const-string/jumbo v3, "wifi_display_portrait_resolution"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3056
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2955
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 2978
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 2980
    goto/16 :goto_1

    .line 2995
    .restart local v0    # "r":I
    :cond_4
    const/16 v2, 0x438

    if-lt p1, v2, :cond_5

    const/16 v2, 0x780

    if-lt p2, v2, :cond_5

    .line 2996
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 2998
    :cond_5
    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 3003
    :cond_6
    if-ltz v0, :cond_7

    if-gt v0, v9, :cond_7

    .line 3005
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 3007
    :cond_7
    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .end local v0    # "r":I
    :cond_8
    move v3, v4

    .line 3018
    goto/16 :goto_3
.end method

.method private reportFeatureState()V
    .locals 4

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    move-result v0

    .line 853
    .local v0, "featureState":I
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFeatureState(), featureState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$22;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$22;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 851
    return-void
.end method

.method private requestPeers()V
    .locals 3

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$25;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$25;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 978
    return-void
.end method

.method private resetLatencyInfo()V
    .locals 3

    .prologue
    .line 3476
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_wifi_info"

    const-string/jumbo v2, "0,0,0,0"

    .line 3475
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3478
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_wfd_latency"

    const-string/jumbo v2, "0,0,0"

    .line 3477
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3473
    return-void
.end method

.method private resetReconnectVariable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3875
    const-string/jumbo v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mReScanning:Z

    .line 3878
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3879
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    .line 3880
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    .line 3881
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3874
    return-void
.end method

.method private resetSignalParam()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2942
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2943
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2945
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 2946
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2947
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 2946
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2950
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 2951
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    .line 2941
    return-void
.end method

.method private resetWfdInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 735
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 737
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setUibcSupported(Z)V

    .line 739
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setContentProtected(Z)V

    .line 734
    return-void
.end method

.method private retryConnection()V
    .locals 2

    .prologue
    .line 1151
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1152
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 1147
    return-void
.end method

.method private revertResolutionChange()V
    .locals 5

    .prologue
    .line 3221
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "revertResolutionChange(), resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v0

    .line 3224
    .local v0, "idxModified":I
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 3227
    .local v1, "idxOriginal":I
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    const-string/jumbo v2, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 3234
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_max_resolution"

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 3233
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3219
    return-void
.end method

.method private reviseHDMIString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 4474
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    if-eqz v1, :cond_1

    .line 4475
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v1}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v1}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v1

    .line 4476
    const/4 v2, 0x1

    .line 4475
    if-ne v1, v2, :cond_1

    .line 4478
    :cond_0
    const-string/jumbo v1, "HDMI"

    const-string/jumbo v2, "MHL"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4480
    :catch_0
    move-exception v0

    .line 4481
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "HdmiManager.getDisplayType() RemoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4484
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object p1
.end method

.method private sendKeyEvent(II)V
    .locals 16
    .param p1, "keyCode"    # I
    .param p2, "isDown"    # I

    .prologue
    .line 2173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2174
    .local v4, "now":J
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 2175
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/WifiDisplayController;->translateAsciiToKeyCode(I)I

    move-result v9

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2176
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x101

    move-wide v6, v4

    .line 2175
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/WifiDisplayController;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 2172
    :goto_0
    return-void

    .line 2178
    :cond_0
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/WifiDisplayController;->translateAsciiToKeyCode(I)I

    move-result v9

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2179
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x101

    move-wide v6, v4

    .line 2178
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/WifiDisplayController;->injectKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private sendPortraitIntent()V
    .locals 3

    .prologue
    .line 3126
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "sendPortraitIntent()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.wfd.portrait"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3128
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3129
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3125
    return-void
.end method

.method private sendTap(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2185
    .local v0, "now":J
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 2186
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 2183
    return-void
.end method

.method private setAutoChannelSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3366
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoChannelSelection(), auto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    if-eqz v0, :cond_0

    .line 3369
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pAutoChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 3364
    :goto_0
    return-void

    .line 3371
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pAutoChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private setSinkMiracastMode()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 5018
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSinkMiracastMode(), freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5019
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    if-eqz v0, :cond_0

    .line 5020
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I

    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(II)V

    .line 5017
    :goto_0
    return-void

    .line 5022
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 1
    .param p1, "dialogID"    # I

    .prologue
    .line 4377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    .line 4378
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V

    .line 4376
    return-void
.end method

.method private showLatencyPanel()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 3266
    const-string/jumbo v3, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3269
    .local v0, "adbInflater":Landroid/view/LayoutInflater;
    const v3, 0x8070024

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 3272
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    const v4, 0x8110093

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 3273
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3274
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 3275
    const-string/jumbo v4, "AP:\nS:\nR:\nAL:\n"

    .line 3274
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3282
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 3283
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7f2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3285
    const/16 v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3287
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3288
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3289
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3290
    const v3, 0x3f333333    # 0.7f

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3294
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3293
    check-cast v2, Landroid/view/WindowManager;

    .line 3296
    .local v2, "windowManager":Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3265
    return-void
.end method

.method private showNotification(II)V
    .locals 7
    .param p1, "titleId"    # I
    .param p2, "contentId"    # I

    .prologue
    const/4 v6, 0x0

    .line 3796
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showNotification(), titleId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3802
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3799
    invoke-virtual {v3, v6, p1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3805
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3807
    .local v1, "mResource":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3808
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3807
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3809
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3807
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3810
    const v4, 0x8020067

    .line 3807
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3811
    const/4 v4, 0x1

    .line 3807
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3813
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 3814
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3813
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v2

    .line 3816
    .local v2, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3819
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3816
    invoke-virtual {v3, v6, p1, v2, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3794
    return-void
.end method

.method private startChannelConflictProcedure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5077
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startChannelConflictProcedure(), mChannelConflictState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mWifiApConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    sget-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5081
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "State is wrong !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5082
    return-void

    .line 5085
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    if-nez v0, :cond_1

    .line 5086
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "No WiFi AP Connected. Wrong !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5087
    return-void

    .line 5090
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->wifiApHasSameFreq()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5093
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiNetworkId:I

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    .line 5094
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Same Network Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5095
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayApToast:Z

    .line 5098
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 5099
    sget-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_DISCONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    .line 5076
    :goto_0
    return-void

    .line 5102
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getSameFreqNetworkId()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    .line 5104
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 5106
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setFreqConflictExResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 5108
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayApToast:Z

    .line 5111
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 5112
    sget-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_DISCONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0
.end method

.method private startProfilingInfo()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x64

    .line 3445
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3446
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->showLatencyPanel()V

    .line 3451
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3452
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3454
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3455
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3443
    return-void

    .line 3448
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->hideLatencyPanel()V

    goto :goto_0
.end method

.method private startWaitConnection()V
    .locals 4

    .prologue
    .line 4783
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mSinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscoverRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4784
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$71;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$71;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4782
    return-void
.end method

.method private stopPeerDiscovery()V
    .locals 3

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$24;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$24;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 960
    return-void
.end method

.method private stopProfilingInfo()V
    .locals 2

    .prologue
    .line 3461
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->hideLatencyPanel()V

    .line 3464
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3465
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3466
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3469
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetLatencyInfo()V

    .line 3458
    return-void
.end method

.method private stopWifiScan(Z)V
    .locals 3
    .param p1, "ifStop"    # Z

    .prologue
    .line 2319
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mStopWifiScan:Z

    if-eq v0, p1, :cond_0

    .line 2320
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopWifiScan(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/wifi/WifiManager;->stopReconnectAndScan(ZIZ)Z

    .line 2322
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mStopWifiScan:Z

    .line 2318
    :cond_0
    return-void
.end method

.method private translateAsciiToKeyCode(I)I
    .locals 5
    .param p1, "ascii"    # I

    .prologue
    const/4 v4, 0x0

    .line 2284
    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    .line 2285
    add-int/lit8 v1, p1, -0x29

    return v1

    .line 2286
    :cond_0
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_1

    .line 2287
    add-int/lit8 v1, p1, -0x24

    return v1

    .line 2289
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->translateSpecialCode(I)I

    move-result v0

    .line 2290
    .local v0, "newKeyCode":I
    if-lez v0, :cond_2

    .line 2291
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "special code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    return v0

    .line 2294
    :cond_2
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "translateAsciiToKeyCode: ascii is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    return v4
.end method

.method private translateSpecialCode(I)I
    .locals 1
    .param p1, "ascii"    # I

    .prologue
    .line 2204
    const/4 v0, 0x0

    .line 2205
    .local v0, "newKeyCode":I
    sparse-switch p1, :sswitch_data_0

    .line 2280
    :goto_0
    return v0

    .line 2207
    :sswitch_0
    const/16 v0, 0x43

    .line 2208
    goto :goto_0

    .line 2210
    :sswitch_1
    const/16 v0, 0x42

    .line 2211
    goto :goto_0

    .line 2213
    :sswitch_2
    const/16 v0, 0x3b

    .line 2214
    goto :goto_0

    .line 2216
    :sswitch_3
    const/16 v0, 0x73

    .line 2217
    goto :goto_0

    .line 2219
    :sswitch_4
    const/16 v0, 0x3e

    .line 2220
    goto :goto_0

    .line 2222
    :sswitch_5
    const/16 v0, 0x42

    .line 2223
    goto :goto_0

    .line 2225
    :sswitch_6
    const/16 v0, 0x38

    .line 2226
    goto :goto_0

    .line 2228
    :sswitch_7
    const/16 v0, 0x37

    .line 2229
    goto :goto_0

    .line 2231
    :sswitch_8
    const/16 v0, 0x4c

    .line 2232
    goto :goto_0

    .line 2234
    :sswitch_9
    const/16 v0, 0x49

    .line 2235
    goto :goto_0

    .line 2237
    :sswitch_a
    const/16 v0, 0x5c

    .line 2238
    goto :goto_0

    .line 2240
    :sswitch_b
    const/16 v0, 0x5d

    .line 2241
    goto :goto_0

    .line 2243
    :sswitch_c
    const/16 v0, 0x13

    .line 2244
    goto :goto_0

    .line 2246
    :sswitch_d
    const/16 v0, 0x14

    .line 2247
    goto :goto_0

    .line 2249
    :sswitch_e
    const/16 v0, 0x16

    .line 2250
    goto :goto_0

    .line 2252
    :sswitch_f
    const/16 v0, 0x15

    .line 2253
    goto :goto_0

    .line 2255
    :sswitch_10
    const/16 v0, 0x6f

    .line 2256
    goto :goto_0

    .line 2258
    :sswitch_11
    const/16 v0, 0x47

    .line 2259
    goto :goto_0

    .line 2261
    :sswitch_12
    const/16 v0, 0x48

    .line 2262
    goto :goto_0

    .line 2264
    :sswitch_13
    const/16 v0, 0x44

    .line 2265
    goto :goto_0

    .line 2267
    :sswitch_14
    const/16 v0, 0x45

    .line 2268
    goto :goto_0

    .line 2270
    :sswitch_15
    const/16 v0, 0x46

    .line 2271
    goto :goto_0

    .line 2273
    :sswitch_16
    const/16 v0, 0x4a

    .line 2274
    goto :goto_0

    .line 2276
    :sswitch_17
    const/16 v0, 0x4b

    .line 2277
    goto :goto_0

    .line 2205
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_5
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x14 -> :sswitch_3
        0x1b -> :sswitch_10
        0x20 -> :sswitch_4
        0x21 -> :sswitch_b
        0x22 -> :sswitch_a
        0x25 -> :sswitch_c
        0x26 -> :sswitch_d
        0x27 -> :sswitch_e
        0x28 -> :sswitch_f
        0xba -> :sswitch_16
        0xbb -> :sswitch_15
        0xbc -> :sswitch_7
        0xbd -> :sswitch_14
        0xbe -> :sswitch_6
        0xbf -> :sswitch_8
        0xc0 -> :sswitch_13
        0xdb -> :sswitch_11
        0xdc -> :sswitch_9
        0xdd -> :sswitch_12
        0xde -> :sswitch_17
    .end sparse-switch
.end method

.method private tryDiscoverPeers()V
    .locals 4

    .prologue
    .line 923
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "tryDiscoverPeers()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$23;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$23;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 948
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 951
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReScanning:Z

    if-eqz v0, :cond_1

    .line 952
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "mReScanning is true. post mDiscoverPeers every 2s"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 922
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private turnOffHdmi()V
    .locals 4

    .prologue
    .line 3903
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    if-eqz v1, :cond_0

    .line 3905
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mediatek/hdmi/IMtkHdmiManager;->enableHdmi(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3902
    :cond_0
    :goto_0
    return-void

    .line 3906
    :catch_0
    move-exception v0

    .line 3907
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hdmi manager RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unadvertiseDisplay()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    .line 1881
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1880
    return-void
.end method

.method private updateChosenCapability(IZ)V
    .locals 9
    .param p1, "usingUIBC"    # I
    .param p2, "portrait"    # Z

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    .line 3377
    const-string/jumbo v0, ""

    .line 3379
    .local v0, "capability":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-eqz v5, :cond_0

    .line 3381
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v4

    .line 3382
    .local v4, "usingPCMAudio":I
    if-ne v4, v7, :cond_1

    .line 3383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "LPCM(2 ch),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3390
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v1

    .line 3391
    .local v1, "isCBPOnly":I
    if-ne v1, v7, :cond_2

    .line 3392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "H.264(CBP level 3.1),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3399
    :goto_1
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v2

    .line 3400
    .local v2, "resolutionIndex":I
    const/4 v5, 0x5

    if-ne v2, v5, :cond_4

    .line 3401
    if-eqz p2, :cond_3

    .line 3402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "720x1280 30p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3417
    :goto_2
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v8}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v3

    .line 3418
    .local v3, "usingHDCP":I
    if-ne v3, v7, :cond_7

    .line 3419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "with HDCP,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3425
    :goto_3
    if-eqz p1, :cond_8

    .line 3426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "with UIBC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3434
    .end local v1    # "isCBPOnly":I
    .end local v2    # "resolutionIndex":I
    .end local v3    # "usingHDCP":I
    .end local v4    # "usingPCMAudio":I
    :cond_0
    :goto_4
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateChosenCapability(), connected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", capability:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", portrait:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3439
    const-string/jumbo v6, "wifi_display_chosen_capability"

    .line 3437
    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3375
    return-void

    .line 3386
    .restart local v4    # "usingPCMAudio":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "AAC(2 ch),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3395
    .restart local v1    # "isCBPOnly":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "H.264(CHP level 4.1),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 3404
    .restart local v2    # "resolutionIndex":I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "1280x720 30p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3406
    :cond_4
    if-ne v2, v8, :cond_6

    .line 3407
    if-eqz p2, :cond_5

    .line 3408
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "1080x1920 30p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3410
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "1920x1080 30p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3413
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "640x480 60p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3422
    .restart local v3    # "usingHDCP":I
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "without HDCP,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 3429
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "without UIBC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method private updateConnection()V
    .locals 19

    .prologue
    .line 1163
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_1

    .line 1171
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1172
    .local v13, "localInterface":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v12, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1174
    .local v12, "localDeviceName":Ljava/lang/String;
    :goto_2
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stopped listening for RTSP connection on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1175
    const-string/jumbo v5, " from Wifi display : "

    .line 1174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    .line 1178
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    .line 1179
    const-string/jumbo v2, "WifiDisplayController"

    const-string/jumbo v4, "\tbefore dispose() ---> "

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v2}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnecting()V

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2}, Landroid/media/RemoteDisplay;->dispose()V

    .line 1182
    const-string/jumbo v2, "WifiDisplayController"

    const-string/jumbo v4, "\t<--- after dispose()"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1185
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1186
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1190
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1196
    .end local v12    # "localDeviceName":Ljava/lang/String;
    .end local v13    # "localInterface":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_5

    .line 1197
    return-void

    .line 1170
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 1171
    :cond_2
    const-string/jumbo v13, "localhost"

    .restart local v13    # "localInterface":Ljava/lang/String;
    goto/16 :goto_1

    .line 1173
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v12, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .restart local v12    # "localDeviceName":Ljava/lang/String;
    goto/16 :goto_2

    .end local v12    # "localDeviceName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v12, "N/A"

    .restart local v12    # "localDeviceName":Ljava/lang/String;
    goto/16 :goto_2

    .line 1199
    .end local v12    # "localDeviceName":Ljava/lang/String;
    .end local v13    # "localInterface":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_6

    .line 1200
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Disconnecting from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1202
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1203
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1205
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1208
    .local v15, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$29;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1234
    return-void

    .line 1239
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_7

    .line 1240
    return-void

    .line 1242
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_8

    .line 1243
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Canceling connection to Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1245
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1247
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1251
    .restart local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$30;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/android/server/display/WifiDisplayController$30;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1282
    return-void

    .line 1287
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_a

    .line 1288
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_9

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 1291
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1292
    return-void

    .line 1296
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_10

    .line 1297
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connecting to Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1300
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v9}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1301
    .local v9, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    new-instance v18, Landroid/net/wifi/WpsInfo;

    invoke-direct/range {v18 .. v18}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 1302
    .local v18, "wps":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_b

    .line 1303
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1316
    :goto_3
    move-object/from16 v0, v18

    iput-object v0, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1321
    const-string/jumbo v2, "wfd.source.go_intent"

    .line 1322
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1320
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1324
    .local v10, "goIntent":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1326
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Source go_intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 1329
    .local v3, "display":Landroid/hardware/display/WifiDisplay;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1332
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->setAutoChannelSelection()V

    .line 1335
    sget-object v2, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1341
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/WifiDisplayController;->stopWifiScan(Z)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1345
    .local v14, "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$31;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/android/server/display/WifiDisplayController$31;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v9, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1378
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    .line 1381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1382
    .restart local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v16

    .line 1383
    .local v16, "port":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "127.0.0.1:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1384
    .local v11, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1387
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Listening for RTSP connection on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1388
    const-string/jumbo v5, " from Wifi display: "

    .line 1387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1389
    const-string/jumbo v5, " , Speed-Up rtsp setup, DRM Content isPlaying = "

    .line 1387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1389
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    .line 1387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    new-instance v2, Lcom/android/server/display/WifiDisplayController$32;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/android/server/display/WifiDisplayController$32;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1391
    invoke-static {v11, v2, v4, v5}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1492
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_f

    .line 1493
    const/16 v17, 0x78

    .line 1495
    .local v17, "rtspTimeout":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    move/from16 v0, v17

    mul-int/lit16 v5, v0, 0x3e8

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1497
    return-void

    .line 1304
    .end local v3    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v10    # "goIntent":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v14    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v16    # "port":I
    .end local v17    # "rtspTimeout":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1305
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1306
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1308
    const/4 v2, 0x2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1309
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1311
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1314
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1493
    .restart local v3    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v10    # "goIntent":Ljava/lang/String;
    .restart local v11    # "iface":Ljava/lang/String;
    .restart local v14    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v16    # "port":I
    :cond_f
    const/16 v17, 0x4b

    .restart local v17    # "rtspTimeout":I
    goto :goto_4

    .line 1501
    .end local v3    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v9    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v10    # "goIntent":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v14    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v16    # "port":I
    .end local v17    # "rtspTimeout":I
    .end local v18    # "wps":Landroid/net/wifi/WpsInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-nez v2, :cond_11

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v8

    .line 1503
    .local v8, "addr":Ljava/net/Inet4Address;
    if-nez v8, :cond_11

    .line 1504
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get local interface address for communicating with Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1505
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1504
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    .line 1507
    return-void

    .line 1160
    .end local v8    # "addr":Ljava/net/Inet4Address;
    :cond_11
    return-void
.end method

.method private updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1068
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1069
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1070
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1071
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDesiredDevice: new information "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1072
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    .line 1071
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1075
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_1

    .line 1076
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1075
    if-eqz v1, :cond_1

    .line 1077
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V

    .line 1065
    :cond_1
    return-void
.end method

.method private updateIfHdcp(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 2309
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2310
    .local v0, "secure":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2311
    const-string/jumbo v1, "media.wfd.hdcp"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    :goto_1
    return-void

    .line 2309
    .end local v0    # "secure":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "secure":Z
    goto :goto_0

    .line 2314
    :cond_1
    const-string/jumbo v1, "media.wfd.hdcp"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateIfSinkConnected(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4976
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-ne v0, p1, :cond_0

    .line 4977
    return-void

    .line 4979
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 4982
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->blockNotificationList(Z)V

    .line 4985
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set session available as "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4986
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 4987
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1, v2, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4991
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 4992
    if-eqz p1, :cond_4

    .line 4993
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5000
    :cond_1
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->getAudioFocus(Z)V

    .line 4975
    return-void

    :cond_2
    move v0, v2

    .line 4985
    goto :goto_0

    :cond_3
    move v1, v2

    .line 4986
    goto :goto_1

    .line 4995
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2
.end method

.method private updateScanState()V
    .locals 4

    .prologue
    .line 883
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScanState(), mSinkEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 884
    const-string/jumbo v2, "mDiscoverPeersInProgress:"

    .line 883
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 884
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 883
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string/jumbo v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 888
    return-void

    .line 891
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_3

    .line 893
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-nez v0, :cond_5

    .line 895
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "Starting Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 897
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanStarted()V

    .line 898
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    .line 882
    :cond_2
    :goto_0
    return-void

    .line 892
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReScanning:Z

    .line 891
    if-nez v0, :cond_1

    .line 905
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 912
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_2

    .line 913
    :cond_4
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "Stopping Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 915
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopPeerDiscovery()V

    .line 916
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    goto :goto_0

    .line 901
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 902
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateScoreLevel(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    const/4 v1, 0x0

    .line 2909
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 2910
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-gez v0, :cond_0

    .line 2911
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2913
    :cond_0
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2908
    :goto_0
    return-void

    .line 2915
    :cond_1
    const/16 v0, 0x50

    if-lt p1, v0, :cond_3

    .line 2916
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-gez v0, :cond_2

    .line 2917
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2919
    :cond_2
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2921
    :cond_3
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_5

    .line 2922
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_4

    .line 2923
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2925
    :cond_4
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2927
    :cond_5
    const/16 v0, 0xa

    if-lt p1, v0, :cond_7

    .line 2928
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_6

    .line 2929
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2931
    :cond_6
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2934
    :cond_7
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_8

    .line 2935
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2937
    :cond_8
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 531
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 533
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "wifi_display_on"

    .line 532
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 535
    const-string/jumbo v2, "wifi_display_certification_on"

    .line 534
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    .line 537
    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 538
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_0

    .line 540
    const-string/jumbo v2, "wifi_display_wps_config"

    .line 539
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->loadDebugLevel()V

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "HDMIOn":Z
    const-string/jumbo v2, "ro.mtk_hdmi_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    const-string/jumbo v2, "hdmi_enable_status"

    .line 547
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    .line 550
    :cond_1
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 551
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->dialogWfdHdmiConflict(I)V

    .line 530
    :goto_3
    return-void

    .end local v0    # "HDMIOn":Z
    :cond_2
    move v2, v4

    .line 532
    goto :goto_0

    :cond_3
    move v2, v4

    .line 534
    goto :goto_1

    .line 547
    .restart local v0    # "HDMIOn":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 555
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->enableWifiDisplay()V

    goto :goto_3
.end method

.method private updateSettingsHDMI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2610
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2612
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 2613
    .local v0, "HDMIOn":Z
    const-string/jumbo v2, "ro.mtk_hdmi_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2614
    const-string/jumbo v2, "hdmi_enable_status"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 2618
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v2, :cond_1

    .line 2619
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_3

    .line 2620
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->dialogWfdHdmiConflict(I)V

    .line 2609
    :cond_1
    :goto_1
    return-void

    .line 2614
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2623
    :cond_3
    sget-boolean v2, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 2624
    const-string/jumbo v2, "WifiDisplayController"

    const-string/jumbo v3, "HDMI on and WFD feature state isn\'t on --> turn off WifiDisplay directly"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private updateSignalLevel(Z)V
    .locals 11
    .param p1, "interference"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x5

    const/4 v7, 0x0

    .line 2793
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getAverageScore()I

    move-result v0

    .line 2796
    .local v0, "avarageScore":I
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateScoreLevel(I)V

    .line 2798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",I:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",L:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2801
    .local v4, "message":Ljava/lang/String;
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_7

    .line 2804
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_1

    .line 2805
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 2806
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "setWfdLevel():+2"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2810
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2813
    :cond_1
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2855
    :cond_2
    :goto_0
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-lez v5, :cond_3

    .line 2856
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2857
    :cond_3
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-ge v5, v8, :cond_4

    .line 2858
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2860
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2863
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleLevelChange()V

    .line 2865
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_10

    .line 2866
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v7}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v2

    .line 2867
    .local v2, "expectedBitRate":I
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v10}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v1

    .line 2868
    .local v1, "currentBitRate":I
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v3

    .line 2870
    .local v3, "fluencyRate":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",ER:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2871
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",CR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2873
    if-eq v3, v9, :cond_5

    .line 2874
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",FR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2877
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    if-eqz v5, :cond_6

    .line 2878
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2883
    :cond_6
    const-string/jumbo v5, "WifiDisplayController"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    .end local v1    # "currentBitRate":I
    .end local v2    # "expectedBitRate":I
    .end local v3    # "fluencyRate":I
    :goto_1
    return-void

    .line 2815
    :cond_7
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_a

    .line 2818
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_9

    .line 2819
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 2820
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "setWfdLevel():+1"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_8
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v10}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2823
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2826
    :cond_9
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2829
    :cond_a
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, -0x6

    if-gt v5, v6, :cond_d

    .line 2832
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_c

    .line 2833
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_b

    .line 2834
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "setWfdLevel():-2"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    :cond_b
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2837
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2839
    :cond_c
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2841
    :cond_d
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, -0x4

    if-gt v5, v6, :cond_2

    .line 2844
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_f

    .line 2845
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_e

    .line 2846
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "setWfdLevel():-1"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :cond_e
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v9}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2849
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2851
    :cond_f
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2887
    :cond_10
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "mRemoteDisplay is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateWfdEnableState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 684
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWfdEnableState(), mWifiDisplayOnSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mWifiP2pEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-eqz v0, :cond_3

    .line 688
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    .line 692
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-eqz v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 695
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 698
    const-string/jumbo v0, "ro.mtk_wfd_hdcp_tx_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 699
    const-string/jumbo v0, "ro.mtk_dx_hdcp_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 698
    if-eqz v0, :cond_0

    .line 700
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->updateWifiPowerSavingMode(Z)V

    goto :goto_0

    .line 707
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 710
    const-string/jumbo v0, "ro.mtk_wfd_hdcp_tx_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 711
    const-string/jumbo v0, "ro.mtk_dx_hdcp_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 710
    if-eqz v0, :cond_5

    .line 712
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->updateWifiPowerSavingMode(Z)V

    .line 717
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 718
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    .line 719
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    .line 720
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 721
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 725
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dismissDialog()V

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateWfdInfo(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 744
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWfdInfo(), enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",mWfdEnabling:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetWfdInfo()V

    .line 750
    if-nez p1, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 753
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$20;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$20;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 742
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 773
    const-string/jumbo v1, "ro.mtk_wfd_sink_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v1, :cond_4

    .line 774
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 779
    :goto_1
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "Set session available as true"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 781
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/16 v2, 0x1c44

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    .line 782
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    .line 785
    const-string/jumbo v1, "ro.mtk_wfd_sink_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v1, :cond_6

    .line 786
    const-string/jumbo v1, "ro.mtk_wfd_sink_uibc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 787
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setUibcSupported(Z)V

    .line 796
    :goto_2
    const-string/jumbo v1, "ro.mtk_wfd_hdcp_tx_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 797
    const-string/jumbo v1, "ro.mtk_dx_hdcp_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 796
    if-nez v1, :cond_1

    .line 798
    const-string/jumbo v1, "ro.mtk_wfd_hdcp_rx_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 796
    if-eqz v1, :cond_2

    .line 799
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setContentProtected(Z)V

    .line 802
    :cond_2
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HDCP Tx support? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ro.mtk_wfd_hdcp_tx_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v0, "ro.mtk_dx_hdcp_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", our wfd info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HDCP Rx support? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.mtk_wfd_hdcp_rx_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", our wfd info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-eqz v0, :cond_7

    .line 807
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$21;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 776
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    goto/16 :goto_1

    .line 789
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setUibcSupported(Z)V

    goto/16 :goto_2

    .line 792
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setUibcSupported(Z)V

    goto/16 :goto_2

    .line 843
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0
.end method

.method private updateWfdStatFile(I)V
    .locals 0
    .param p1, "wfd_stat"    # I

    .prologue
    .line 2632
    return-void
.end method

.method private updateWifiP2pChannelId(ZLandroid/content/Intent;)V
    .locals 5
    .param p1, "connected"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3522
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v2, :cond_1

    .line 3524
    :cond_0
    const-string/jumbo v2, "p2pGroupInfo"

    .line 3523
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 3526
    .local v1, "wifiP2pGroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v0

    .line 3528
    .local v0, "freq":I
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->getFreqId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    .line 3530
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWifiP2pChannelId(), freq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    .end local v0    # "freq":I
    .end local v1    # "wifiP2pGroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    :goto_0
    return-void

    .line 3534
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    .line 3536
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWifiP2pChannelId(), id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateWifiPowerSavingMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4414
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    if-eq v0, p1, :cond_0

    .line 4415
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    .line 4416
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPowerSavingMode():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setPowerSavingMode(Z)V

    .line 4413
    :cond_0
    return-void
.end method

.method private wifiApHasSameFreq()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5168
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "wifiApHasSameFreq()"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5170
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 5171
    :cond_0
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "mWifiApSsid is invalid !!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5172
    return v7

    .line 5176
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5178
    .local v0, "apSsid":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 5180
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v1, 0x0

    .line 5181
    .local v1, "found":Z
    if-eqz v4, :cond_3

    .line 5182
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "result$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 5183
    .local v2, "result":Landroid/net/wifi/ScanResult;
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SSID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5184
    const-string/jumbo v7, ",Freq:"

    .line 5183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5184
    iget v7, v2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 5183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5185
    const-string/jumbo v7, ",Level:"

    .line 5183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5185
    iget v7, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 5183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5186
    const-string/jumbo v7, ",BSSID:"

    .line 5183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5186
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 5183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5188
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 5189
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v6, "[IBSS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 5188
    if-nez v5, :cond_2

    .line 5194
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v2, Landroid/net/wifi/ScanResult;->frequency:I

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I

    if-ne v5, v6, :cond_2

    .line 5195
    const/4 v1, 0x1

    .line 5200
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v3    # "result$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AP SSID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", sameFreq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5201
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiDisplayOnSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiP2pEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWfdEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWfdEnabling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNetworkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScanRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDiscoverPeersInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDesiredDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDisconnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCancelingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectedDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectionRetriesLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplayInterface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplayConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplaySurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBackupShowTouchVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mBackupShowTouchVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFast_NeedFastRtsp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mFast_NeedFastRtsp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFast_DesiredMac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mFast_DesiredMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsNeedRotate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsNeedRotate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsConnected_OtherP2p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsConnecting_P2p_Rtsp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsWFDConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDRMContent_Mediaplayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPlayerID_Mediaplayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAvailableWifiDisplayPeers: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 596
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 561
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    return-void
.end method

.method public getIfSinkEnabled()Z
    .locals 4

    .prologue
    .line 4489
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    return v0
.end method

.method public requestConnect(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 624
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", address = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 633
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 634
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v2, "mAvailableWifiDisplayPeers dump:"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "device$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 638
    .local v6, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 639
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-eqz v0, :cond_3

    .line 645
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v2, "OtherP2P is connected! Show dialog!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 647
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 649
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 650
    return-void

    .line 654
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 623
    .end local v6    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    return-void
.end method

.method public requestDisconnect()V
    .locals 3

    .prologue
    .line 675
    const-string/jumbo v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 680
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 674
    return-void
.end method

.method public requestEnableSink(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 4495
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",Connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", option = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.mtk_wfd_sink_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", WfdEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    const-string/jumbo v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4498
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-eqz v0, :cond_1

    .line 4499
    :cond_0
    return-void

    .line 4503
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-eqz v0, :cond_2

    .line 4504
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "OtherP2P is connected! Only set variable. Ignore !"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4505
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    .line 4506
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4507
    return-void

    .line 4511
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->stopWifiScan(Z)V

    .line 4514
    if-eqz p1, :cond_3

    .line 4515
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestStopScan()V

    .line 4518
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    .line 4521
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 4524
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-nez v0, :cond_5

    .line 4525
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestStartScan()V

    .line 4494
    :cond_4
    :goto_0
    return-void

    .line 4529
    :cond_5
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    goto :goto_0
.end method

.method public requestPause()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    .line 662
    :cond_0
    return-void
.end method

.method public requestResume()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    .line 668
    :cond_0
    return-void
.end method

.method public requestStartScan()V
    .locals 4

    .prologue
    .line 601
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mSinkEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string/jumbo v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 605
    return-void

    .line 608
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-nez v0, :cond_1

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 611
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 600
    :cond_1
    return-void
.end method

.method public requestStopScan()V
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 618
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 615
    :cond_0
    return-void
.end method

.method public requestSuspendDisplay(ZLandroid/view/Surface;)V
    .locals 4
    .param p1, "suspend"    # Z
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 4578
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",suspend = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    .line 4581
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4582
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 4583
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteDisplay;->suspendDisplay(ZLandroid/view/Surface;)V

    .line 4586
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->blockNotificationList(Z)V

    .line 4577
    :goto_1
    return-void

    .line 4586
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4589
    :cond_2
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State is wrong !!!, SinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestWaitConnection(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 4535
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mSinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4538
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "State is wrong! Ignore the request !"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4539
    return-void

    .line 4542
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-eqz v0, :cond_1

    .line 4543
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "OtherP2P is connected! Show dialog!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4545
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$65;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$65;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 4553
    return-void

    .line 4556
    :cond_1
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    .line 4557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 4560
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscoverRetryCount:I

    .line 4561
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startWaitConnection()V

    .line 4563
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->setSinkMiracastMode()V

    .line 4565
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4567
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$66;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$66;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4534
    return-void
.end method

.method public sendUibcInputEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 4596
    const-string/jumbo v0, "ro.mtk_wfd_sink_uibc_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 4597
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 4598
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1}, Landroid/media/RemoteDisplay;->sendUibcEvent(Ljava/lang/String;)V

    .line 4595
    :cond_0
    return-void
.end method
