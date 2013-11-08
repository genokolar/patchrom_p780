.class public Lcom/lenovo/smart/SmartAPI;
.super Ljava/lang/Object;
.source "SmartAPI.java"


# static fields
.field public static final START_PARA_LAUNCHER:I = 0x1

.field public static final START_PARA_UNDEFINED:I = 0x0

.field public static final STOP_PARA_CRASH:I = 0x1

.field public static final STOP_PARA_UNDEFINED:I

.field private static final SUPPORT_APPLICATION_DURATION_LOG:Z

.field private static final SUPPORT_APPLICATION_RUN_LOG:Z

.field public static final SUPPORT_SMART:Z

.field private static final SUPPORT_TELEPHONY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/lenovo/smart/Smart;->SMART_CONFIG:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/lenovo/smart/SmartAPI;->SUPPORT_SMART:Z

    sget v0, Lcom/lenovo/smart/Smart;->SMART_CONFIG:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/lenovo/smart/SmartAPI;->SUPPORT_TELEPHONY:Z

    sget v0, Lcom/lenovo/smart/Smart;->SMART_CONFIG:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/lenovo/smart/SmartAPI;->SUPPORT_APPLICATION_RUN_LOG:Z

    sget v0, Lcom/lenovo/smart/Smart;->SMART_CONFIG:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    :goto_3
    sput-boolean v1, Lcom/lenovo/smart/SmartAPI;->SUPPORT_APPLICATION_DURATION_LOG:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addApplicationDurationLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "date"
    .parameter "duration"

    .prologue
    sget-boolean v0, Lcom/lenovo/smart/SmartAPI;->SUPPORT_APPLICATION_DURATION_LOG:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/lenovo/smart/Smart;->addApplicationDurationLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method public static addApplicationStartLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "startType"

    .prologue
    sget-boolean v0, Lcom/lenovo/smart/SmartAPI;->SUPPORT_APPLICATION_RUN_LOG:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/lenovo/smart/Smart;->addApplicationStartLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static addApplicationStopLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "endType"

    .prologue
    sget-boolean v0, Lcom/lenovo/smart/SmartAPI;->SUPPORT_APPLICATION_RUN_LOG:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/lenovo/smart/Smart;->addApplicationStopLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static addCallLog(Landroid/content/Context;Ljava/lang/String;IJIII)V
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "simId"
    .parameter "vtCall"

    .prologue
    sget-boolean v0, Lcom/lenovo/smart/SmartAPI;->SUPPORT_TELEPHONY:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/lenovo/smart/Smart;->addCallLog(Landroid/content/Context;Ljava/lang/String;IJIII)V

    goto :goto_0
.end method

.method public static addMoMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    sget-boolean v0, Lcom/lenovo/smart/SmartAPI;->SUPPORT_TELEPHONY:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lenovo/smart/Smart;->addMoMmsLog(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static addMoSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    sget-boolean v0, Lcom/lenovo/smart/SmartAPI;->SUPPORT_TELEPHONY:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lenovo/smart/Smart;->addMoSmsLog(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static addMtMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    sget-boolean v0, Lcom/lenovo/smart/SmartAPI;->SUPPORT_TELEPHONY:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lenovo/smart/Smart;->addMtMmsLog(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static addMtSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    sget-boolean v0, Lcom/lenovo/smart/SmartAPI;->SUPPORT_TELEPHONY:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lenovo/smart/Smart;->addMtSmsLog(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
