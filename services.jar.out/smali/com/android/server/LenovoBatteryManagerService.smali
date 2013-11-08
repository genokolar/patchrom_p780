.class public Lcom/android/server/LenovoBatteryManagerService;
.super Landroid/service/batterymanage/ILenovoBatteryManagerService$Stub;
.source "LenovoBatteryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;,
        Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;
    }
.end annotation


# static fields
.field private static final AVAILABLE_CPU_FREQS:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

.field private static final CPU_MAX_FREQ:Ljava/lang/String; = "lenovo_scaling_max_freq"

.field private static final MAX_FREQ_SET_FILE_PTATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

.field private static final MESSAGE_SET:I = 0x0

.field private static final MSG_UPDATE_CPU_SETTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LenovoBatteryManagerService"

.field private static final package_action:Ljava/lang/String; = "action.boardcast.resume.activity.info"


# instance fields
.field private currentCABCStates:I

.field private currentPackageName:Ljava/lang/String;

.field private gOldGovernor:Ljava/lang/String;

.field private mAvailableFreqs:[Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

.field private patternValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/service/batterymanage/ILenovoBatteryManagerService$Stub;-><init>()V

    iput v0, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    iput v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    iput-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LenovoBatteryManagerService$1;-><init>(Lcom/android/server/LenovoBatteryManagerService;)V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->gOldGovernor:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;-><init>(Lcom/android/server/LenovoBatteryManagerService;Lcom/android/server/LenovoBatteryManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    const-string v0, "LenovoBatteryManagerService"

    const-string v1, "LenovoBatteryManagerService() init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LenovoBatteryManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->executePackageChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/LenovoBatteryManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LenovoBatteryManagerService;)Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LenovoBatteryManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->updateCPUSettingValue(I)V

    return-void
.end method

.method private static echo2File(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "file"
    .parameter "value"

    .prologue
    invoke-static {p0}, Lcom/android/server/LenovoBatteryManagerService;->readEchoFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .local v0, bw:Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    const-string v2, "LenovoBatteryManagerService"

    const-string v3, "file write successed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #bw:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "LenovoBatteryManagerService"

    const-string v3, "file write failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized executePackageChange(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->isPackageChange(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "LenovoBatteryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package changed: current package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "P780"

    const-string v1, "P780"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.youku.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/android/server/LenovoBatteryManagerService;->setChargingCur(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    const-string v0, "P780"

    const-string v1, "P780"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "S820"

    const-string v1, "P780"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->setCpuPreformance(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/server/LenovoBatteryManagerService;->setChargingCur(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private isPackageChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    const-string v1, "LenovoBatteryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageChange, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static readCPUFreqSerial()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, builder:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .local v2, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static readEchoFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "file"

    .prologue
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setCABC(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    return-void
.end method

.method private setChargingCur(Ljava/lang/String;)Z
    .locals 9
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    :try_start_0
    const-string v1, "/sys/devices/platform/mt-battery/ChargeCurrent"

    .local v1, path:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v3, setBacklight:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .local v2, sbuf:[B
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ww_debug write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    .end local v1           #path:Ljava/lang/String;
    .end local v2           #sbuf:[B
    .end local v3           #setBacklight:Ljava/io/FileOutputStream;
    .end local v4           #str:Ljava/lang/String;
    :goto_0
    return v5

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v6, "LenovoBatteryManagerService"

    const-string v7, "write cali point err!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setCpuPreformance(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    const-string v0, "com.lenovo.scg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v0}, Lcom/android/server/LenovoBatteryManagerService;->readEchoFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->gOldGovernor:Ljava/lang/String;

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    const-string v1, "performance"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/module/mt_hotplug_mechanism/parameters/g_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpu1/online"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpu2/online"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpu3/online"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->gOldGovernor:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->gOldGovernor:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/module/mt_hotplug_mechanism/parameters/g_enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->gOldGovernor:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateCPUSettingValue(I)V
    .locals 9
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .local v3, isValueValid:Z
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCPUSettingValue,value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .local v5, tmp:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    .end local v5           #tmp:Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_3

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/LenovoBatteryManagerService;->echo2File(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .restart local v5       #tmp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v5           #tmp:Ljava/lang/String;
    :cond_3
    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The target value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but the available value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    const-string v6, "LenovoBatteryManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getPatternValue()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    return v0
.end method

.method public initReceiver()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const-string v2, "LenovoBatteryManagerService"

    const-string v3, "initReceiver() init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "action.boardcast.resume.activity.info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "action.sys.unlock.proximity.status.changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "action.batterysaving.killbackgroundservice"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LenovoBatteryManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lenovo_scaling_max_freq"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;

    invoke-direct {v5, p0}, Lcom/android/server/LenovoBatteryManagerService$CPUValueSettingsObserver;-><init>(Lcom/android/server/LenovoBatteryManagerService;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cpu_freq"

    invoke-static {}, Lcom/android/server/LenovoBatteryManagerService;->readCPUFreqSerial()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/server/LenovoBatteryManagerService;->readCPUFreqSerial()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mAvailableFreqs:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lenovo_scaling_max_freq"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, cpuValue:I
    if-ne v0, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/LenovoBatteryManagerService;->updateCPUSettingValue(I)V

    goto :goto_0
.end method

.method public setPatternValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    return-void
.end method
