.class Lcom/mediatek/op/sms/WapPushFwkExt$2;
.super Landroid/content/BroadcastReceiver;
.source "WapPushFwkExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/sms/WapPushFwkExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private hasNotifiedForAutoPush:Z

.field private mBootCompleted:Z

.field private mSimInfoUpdated:Z

.field final synthetic this$0:Lcom/mediatek/op/sms/WapPushFwkExt;


# direct methods
.method constructor <init>(Lcom/mediatek/op/sms/WapPushFwkExt;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->this$0:Lcom/mediatek/op/sms/WapPushFwkExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean v0, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->mSimInfoUpdated:Z

    iput-boolean v0, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->mBootCompleted:Z

    iput-boolean v0, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->hasNotifiedForAutoPush:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v5, 0x3a98

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/op/sms/WapPushFwkExt;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive an intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/mediatek/op/sms/WapPushFwkExt;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sim info db has been updated"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->hasNotifiedForAutoPush:Z

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/mediatek/op/sms/WapPushFwkExt;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no need to show the notification again"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->hasNotifiedForAutoPush:Z

    iget-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->this$0:Lcom/mediatek/op/sms/WapPushFwkExt;

    iget v1, v1, Lcom/mediatek/op/sms/WapPushFwkExt;->mPhoneId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->this$0:Lcom/mediatek/op/sms/WapPushFwkExt;

    invoke-virtual {v1}, Lcom/mediatek/op/sms/WapPushFwkExt;->shouldNotifyUser()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->mBootCompleted:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->this$0:Lcom/mediatek/op/sms/WapPushFwkExt;

    #getter for: Lcom/mediatek/op/sms/WapPushFwkExt;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/op/sms/WapPushFwkExt;->access$100(Lcom/mediatek/op/sms/WapPushFwkExt;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->mSimInfoUpdated:Z

    goto :goto_0

    :cond_3
    const-string v1, "com.mediatek.cu_wap_push_permission_cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/mediatek/op/sms/WapPushFwkExt;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "to cancel the notification"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->this$0:Lcom/mediatek/op/sms/WapPushFwkExt;

    invoke-virtual {v1}, Lcom/mediatek/op/sms/WapPushFwkExt;->cancelAutoPushNotification()V

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->this$0:Lcom/mediatek/op/sms/WapPushFwkExt;

    invoke-virtual {v1}, Lcom/mediatek/op/sms/WapPushFwkExt;->shouldNotifyUser()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->mSimInfoUpdated:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->this$0:Lcom/mediatek/op/sms/WapPushFwkExt;

    #getter for: Lcom/mediatek/op/sms/WapPushFwkExt;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/op/sms/WapPushFwkExt;->access$100(Lcom/mediatek/op/sms/WapPushFwkExt;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    iput-boolean v4, p0, Lcom/mediatek/op/sms/WapPushFwkExt$2;->mBootCompleted:Z

    goto :goto_0
.end method
