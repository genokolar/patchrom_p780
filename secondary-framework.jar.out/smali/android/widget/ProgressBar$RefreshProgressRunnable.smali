.class Landroid/widget/ProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    iget-object v6, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    instance-of v5, v5, Landroid/widget/SeekBar;

    if-eqz v5, :cond_1

    iget-object v4, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    check-cast v4, Landroid/widget/SeekBar;

    .local v4, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    const-string v5, "android"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #getter for: Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/widget/ProgressBar;->access$000(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #getter for: Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/widget/ProgressBar;->access$000(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar$RefreshData;

    .local v3, rd:Landroid/widget/ProgressBar$RefreshData;
    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #getter for: Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/widget/ProgressBar;->access$000(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    iget v7, v3, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v8, v3, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v9, v3, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v10, 0x1

    #calls: Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    invoke-static {v5, v7, v8, v9, v10}, Landroid/widget/ProgressBar;->access$100(Landroid/widget/ProgressBar;IIZZ)V

    invoke-virtual {v3}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    goto :goto_0

    .end local v0           #context:Landroid/content/Context;
    .end local v3           #rd:Landroid/widget/ProgressBar$RefreshData;
    .end local v4           #seekBar:Landroid/widget/SeekBar;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #context:Landroid/content/Context;
    .restart local v4       #seekBar:Landroid/widget/SeekBar;
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #getter for: Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/widget/ProgressBar;->access$000(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    #setter for: Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    invoke-static {v5, v7}, Landroid/widget/ProgressBar;->access$202(Landroid/widget/ProgressBar;Z)Z

    monitor-exit v6

    .end local v0           #context:Landroid/content/Context;
    .end local v4           #seekBar:Landroid/widget/SeekBar;
    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #getter for: Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/widget/ProgressBar;->access$000(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_2

    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #getter for: Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/widget/ProgressBar;->access$000(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar$RefreshData;

    .restart local v3       #rd:Landroid/widget/ProgressBar$RefreshData;
    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    iget v7, v3, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v8, v3, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v9, v3, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v10, 0x1

    #calls: Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    invoke-static {v5, v7, v8, v9, v10}, Landroid/widget/ProgressBar;->access$100(Landroid/widget/ProgressBar;IIZZ)V

    invoke-virtual {v3}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v3           #rd:Landroid/widget/ProgressBar$RefreshData;
    :cond_2
    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    #getter for: Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/widget/ProgressBar;->access$000(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    #setter for: Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    invoke-static {v5, v7}, Landroid/widget/ProgressBar;->access$202(Landroid/widget/ProgressBar;Z)Z

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
