.class Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;
.super Landroid/os/AsyncTask;
.source "LenovoMmsUnreadContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->refreshUnreadNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;

    iget-wide v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mLastClearTime:J

    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    .local v7, lastClearTimeSecond:J
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mLenovoUnreadObserver:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->access$000()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->access$100()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(seen = 0  AND (m_type <> 134 AND m_type <> 136) AND date >= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, mmsCount:I
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mLenovoUnreadObserver:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->access$200()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->access$300()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(type = 1 AND seen = 0  AND date >= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;

    iget-wide v11, v5, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->mLastClearTime:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v10, 0x0

    .local v10, smsCount:I
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v10

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    add-int v0, v9, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .end local v10           #smsCount:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    throw v0

    .restart local v10       #smsCount:I
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver;->updateUnreadNumber(I)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LenovoMmsUnreadContentObserver$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method