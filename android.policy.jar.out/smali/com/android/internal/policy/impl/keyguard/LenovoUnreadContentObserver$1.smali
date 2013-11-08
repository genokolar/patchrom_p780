.class Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver$1;
.super Ljava/lang/Object;
.source "LenovoUnreadContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->updateUnreadNumber(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LenovoUnreadContentObserver;->updateUnreadNumberUiThread()V

    return-void
.end method
