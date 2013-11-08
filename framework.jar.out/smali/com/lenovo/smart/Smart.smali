.class public Lcom/lenovo/smart/Smart;
.super Ljava/lang/Object;
.source "Smart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/smart/Smart$ConductionProvider;,
        Lcom/lenovo/smart/Smart$HabitProvider;,
        Lcom/lenovo/smart/Smart$ConductionIntent;,
        Lcom/lenovo/smart/Smart$HabitIntent;,
        Lcom/lenovo/smart/Smart$Extra;
    }
.end annotation


# static fields
.field public static final MO_ENTRANCE_CALL_LOG:I = 0x14

.field public static final MO_ENTRANCE_DIALER_PAD:I = 0xa

.field public static final MO_ENTRANCE_END:I = 0x3c

.field public static final MO_ENTRANCE_PHONE_BOOK:I = 0x1e

.field public static final MO_ENTRANCE_SMS:I = 0x28

.field public static final MO_ENTRANCE_STARRED:I = 0x32

#the value of this static final field might be set in the static constructor
.field public static final SMART_CONFIG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Smart"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "ro.com.lenovo.smart.config"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lenovo/smart/Smart;->SMART_CONFIG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addApplicationDurationLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "date"
    .parameter "duration"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v1, "application"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v1, "Type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Package"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "class_name"

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Time"

    invoke-virtual {v0, v1, p3, p4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "duration"

    invoke-virtual {v0, v1, p5, p6}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/lenovo/smart/Smart;->sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addApplicationStartLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "startType"

    .prologue
    const-wide/16 v0, 0x0

    .local v0, duration:J
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .local v3, time:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v5, "application"

    invoke-direct {v2, v5}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v5, "Type"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "Package"

    invoke-virtual {v2, v5, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "class_name"

    invoke-virtual {v2, v5, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Time"

    invoke-virtual {v2, v5, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "duration"

    invoke-virtual {v2, v5, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "parameter"

    invoke-virtual {v2, v5, p3}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "Where"

    invoke-virtual {v2, v5, p3}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v2}, Lcom/lenovo/smart/Smart;->sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addApplicationStopLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "endType"

    .prologue
    const-wide/16 v0, 0x0

    .local v0, duration:J
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .local v3, time:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v5, "application"

    invoke-direct {v2, v5}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v5, "Type"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "Package"

    invoke-virtual {v2, v5, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "class_name"

    invoke-virtual {v2, v5, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Time"

    invoke-virtual {v2, v5, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "duration"

    invoke-virtual {v2, v5, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "parameter"

    invoke-virtual {v2, v5, p3}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "Flag"

    invoke-virtual {v2, v5, p3}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v2}, Lcom/lenovo/smart/Smart;->sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addCallLog(Landroid/content/Context;Ljava/lang/String;IJIII)V
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "simId"
    .parameter "vtCall"

    .prologue
    new-instance v0, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v1, "telephony"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    if-lez p7, :cond_0

    const-string v1, "transaction_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string v1, "transaction_sub_type"

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "date"

    invoke-virtual {v0, v1, p3, p4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "duration"

    invoke-virtual {v0, v1, p5}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sim_ID"

    invoke-virtual {v0, v1, p6}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "transaction_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static addMoMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v3, "transaction_type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "transaction_sub_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addMoSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v3, "transaction_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "transaction_sub_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addMtMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v3, "transaction_type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "transaction_sub_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addMtSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, date:J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v3, "transaction_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "transaction_sub_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Lcom/lenovo/smart/Smart$HabitIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addStatics_ImportPhoneBook(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "importFrom"

    .prologue
    const/16 v1, 0xa

    .local v1, IMPORT_FROM_INIT:I
    const/16 v4, 0xa

    .local v4, IMPORT_FROM_SIM:I
    const/16 v3, 0x14

    .local v3, IMPORT_FROM_SD:I
    const/16 v0, 0x1e

    .local v0, IMPORT_FROM_CLOUD:I
    const/16 v2, 0x28

    .local v2, IMPORT_FROM_PC_SYNC:I
    sparse-switch p1, :sswitch_data_0

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .local v5, exception:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .end local v5           #exception:Ljava/lang/Exception;
    :goto_0
    return-void

    :sswitch_0
    const-string v7, "import_from_sim"

    .local v7, paramName:Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v8, "statics"

    invoke-direct {v6, v8}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v6, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v8, "statics_type"

    const-string v9, "import_phone_book"

    invoke-virtual {v6, v8, v9}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "param_name"

    invoke-virtual {v6, v8, v7}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v6           #intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v7           #paramName:Ljava/lang/String;
    :sswitch_1
    const-string v7, "import_from_sd"

    .restart local v7       #paramName:Ljava/lang/String;
    goto :goto_1

    .end local v7           #paramName:Ljava/lang/String;
    :sswitch_2
    const-string v7, "import_from_cloud"

    .restart local v7       #paramName:Ljava/lang/String;
    goto :goto_1

    .end local v7           #paramName:Ljava/lang/String;
    :sswitch_3
    const-string v7, "import_from_pc_sync"

    .restart local v7       #paramName:Ljava/lang/String;
    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public static addStatics_InstallingThirdPartyApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const-string v0, "package:"

    .local v0, PACKAGE_INTENT_PREFIX:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .local v1, exception:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #exception:Ljava/lang/Exception;
    :goto_0
    return-void

    :cond_1
    const-string v3, "package:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "package:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v2, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v3, "statics"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v3, "statics_type"

    const-string v4, "installing_third_party_app"

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "param_name"

    invoke-virtual {v2, v3, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addStatics_MoCall(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "entrance"

    .prologue
    const-string v3, ""

    .local v3, paramName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, isEntranceError:Z
    const/16 v4, 0xa

    if-ge p1, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_b

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #exception:Ljava/lang/Exception;
    :goto_1
    return-void

    :cond_0
    const/16 v4, 0x14

    if-ge p1, v4, :cond_2

    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_DIALER_PAD:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0xa

    if-ge p1, v4, :cond_1

    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_DIALER_PAD:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0xa

    aget-object v3, v4, v5

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x1e

    if-ge p1, v4, :cond_4

    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_CALL_LOG:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x14

    if-ge p1, v4, :cond_3

    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_CALL_LOG:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x14

    aget-object v3, v4, v5

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/16 v4, 0x28

    if-ge p1, v4, :cond_6

    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_PHONE_BOOK:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1e

    if-ge p1, v4, :cond_5

    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_PHONE_BOOK:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x1e

    aget-object v3, v4, v5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const/16 v4, 0x32

    if-ge p1, v4, :cond_8

    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_SMS:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x28

    if-ge p1, v4, :cond_7

    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_SMS:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x28

    aget-object v3, v4, v5

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :cond_8
    const/16 v4, 0x3c

    if-ge p1, v4, :cond_a

    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_STARRED:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x32

    if-ge p1, v4, :cond_9

    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_STARRED:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x32

    aget-object v3, v4, v5

    goto :goto_0

    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    :cond_a
    const/4 v2, 0x1

    goto :goto_0

    :cond_b
    new-instance v1, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v4, "statics"

    invoke-direct {v1, v4}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v4, "statics_type"

    const-string v5, "mo_call_entrance"

    invoke-virtual {v1, v4, v5}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "param_name"

    invoke-virtual {v1, v4, v3}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public static addStatics_MoCallMistake(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "statics"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "statics_type"

    const-string v2, "mo_call_mistake"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_name"

    const-string v2, "mo_call_mistake"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addStatics_SwitchMasterCard(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "entrance"

    .prologue
    const/16 v1, 0xa

    .local v1, SWITCH_ENTRANCE_INIT:I
    const/16 v2, 0xa

    .local v2, SWITCH_ENTRANCE_NOTIFICATION:I
    const/16 v0, 0x14

    .local v0, SWITCH_ENTRANCE_DUAL_SIM_SETTING:I
    sparse-switch p1, :sswitch_data_0

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .local v3, exception:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3           #exception:Ljava/lang/Exception;
    :goto_0
    return-void

    :sswitch_0
    const-string v5, "switch_master_call_from_notification_bar"

    .local v5, paramName:Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v6, "statics"

    invoke-direct {v4, v6}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v6, "statics_type"

    const-string v7, "switch_master_call"

    invoke-virtual {v4, v6, v7}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "param_name"

    invoke-virtual {v4, v6, v5}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v4           #intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v5           #paramName:Ljava/lang/String;
    :sswitch_1
    const-string v5, "switch_master_call_from_dual_sim_setting"

    .restart local v5       #paramName:Ljava/lang/String;
    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public static addStatus_CallMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "setting"

    .prologue
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_name"

    const-string v2, "call_master_card"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addStatus_ContactsNumber(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "storageType"
    .parameter "number"

    .prologue
    if-nez p1, :cond_0

    const-string v2, "contacts_number_phone_only"

    .local v2, paramName:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v3, "status"

    invoke-direct {v1, v3}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v3, "status_type"

    const-string v4, "contacts_number"

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "param_name"

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "param_value"

    invoke-virtual {v1, v3, p2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1           #intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v2           #paramName:Ljava/lang/String;
    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const-string v2, "contacts_number_sim_only"

    .restart local v2       #paramName:Ljava/lang/String;
    goto :goto_0

    .end local v2           #paramName:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const-string v2, "contacts_number_all"

    .restart local v2       #paramName:Ljava/lang/String;
    goto :goto_0

    .end local v2           #paramName:Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static addStatus_DataMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "setting"

    .prologue
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_name"

    const-string v2, "data_master_card"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addStatus_HaveDualSim(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "haveDualSim"

    .prologue
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "have_dual_sim"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addStatus_IMEI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "imei"

    .prologue
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addStatus_InstalledThirdPartyApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "installed_third_party_app"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addStatus_ShowContactsFilter(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "showFilter"

    .prologue
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "show_contacts_filter"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addStatus_Slot1SimType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "simType"

    .prologue
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "slot1_sim_type"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addStatus_Slot2SimType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "simType"

    .prologue
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "slot2_sim_type"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addStatus_SmsMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "setting"

    .prologue
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_name"

    const-string v2, "sms_master_card"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_value"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static addStatus_SwVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "swVersion"

    .prologue
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "sw_version"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "param_name"

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/smart/Smart$ConductionIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Smart"

    const-string v1, "sendSmartBroadcast : system not ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
