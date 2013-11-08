.class public Lcom/lenovo/SmartRoll/SmartRollSensorService;
.super Ljava/lang/Object;
.source "SmartRollSensorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;,
        Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;,
        Lcom/lenovo/SmartRoll/SmartRollSensorService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SmartRollService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventHandlerQuickRoll:Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;

.field private mHandler:Landroid/os/Handler;

.field private mIsEnabled:Z

.field private mIsScreenOn:Z

.field private mIsSettingOn:Z

.field private mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorListenerQuickRoll:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;)V
    .locals 5
    .parameter "context"
    .parameter "windowManager"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsEnabled:Z

    iput-boolean v3, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsSettingOn:Z

    iput-boolean v4, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsScreenOn:Z

    new-instance v2, Lcom/lenovo/SmartRoll/SmartRollSensorService$1;

    invoke-direct {v2, p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$1;-><init>(Lcom/lenovo/SmartRoll/SmartRollSensorService;)V

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mWindowManager:Landroid/view/IWindowManager;

    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mSensor:Landroid/hardware/Sensor;

    new-instance v2, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;

    invoke-direct {v2, p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$SensorListenerQuickRoll;-><init>(Lcom/lenovo/SmartRoll/SmartRollSensorService;)V

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mSensorListenerQuickRoll:Landroid/hardware/SensorEventListener;

    new-instance v2, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;

    invoke-direct {v2, p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;-><init>(Lcom/lenovo/SmartRoll/SmartRollSensorService;)V

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mEventHandlerQuickRoll:Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;

    invoke-direct {p0, v3, v3, v3}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->sendMsgToHandlerQuickRoll(III)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/SmartRoll/SmartRollSensorService$SettingsObserver;

    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/SmartRoll/SmartRollSensorService$SettingsObserver;-><init>(Lcom/lenovo/SmartRoll/SmartRollSensorService;Landroid/os/Handler;)V

    .local v1, settingsObserver:Lcom/lenovo/SmartRoll/SmartRollSensorService$SettingsObserver;
    invoke-virtual {v1}, Lcom/lenovo/SmartRoll/SmartRollSensorService$SettingsObserver;->observe()V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/SmartRoll/SmartRollSensorService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/SmartRoll/SmartRollSensorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/SmartRoll/SmartRollSensorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/SmartRoll/SmartRollSensorService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->sendMsgToHandlerQuickRoll(III)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/SmartRoll/SmartRollSensorService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->changeRtl(II)V

    return-void
.end method

.method private changeRtl(II)V
    .locals 2
    .parameter "fromAxis"
    .parameter "toAxis"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->changeTopAppSmartRoll(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMsgToHandlerQuickRoll(III)V
    .locals 2
    .parameter "msgType"
    .parameter "arg"
    .parameter "timestamp"

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mEventHandlerQuickRoll:Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;

    invoke-virtual {v1, v0}, Lcom/lenovo/SmartRoll/SmartRollSensorService$EventHandlerQuickRoll;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsSettingOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsScreenOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->enable()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->disable()V

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    const-string v0, "SmartRollService"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mSensorListenerQuickRoll:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsEnabled:Z

    goto :goto_0
.end method

.method public enable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    const-string v0, "SmartRollService"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mSensorListenerQuickRoll:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v3, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsEnabled:Z

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "smart_roll"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .local v0, newSetting:Z
    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/SmartRoll/SmartRollSensorService;->mIsSettingOn:Z

    invoke-direct {p0}, Lcom/lenovo/SmartRoll/SmartRollSensorService;->updateState()V

    return-void

    .end local v0           #newSetting:Z
    :cond_0
    move v0, v2

    goto :goto_0
.end method
