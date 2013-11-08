.class public Lcom/lenovo/widetouch/WideTouchWindow;
.super Landroid/widget/FrameLayout;
.source "WideTouchWindow.java"


# static fields
.field private static final MIN_GLOW_PAD_VIEW_WIDTH:I = 0x230

.field private static final TAG:Ljava/lang/String; = "WideTouchWindow"

.field private static mMotionUp_x:I

.field private static mMotionUp_y:I


# instance fields
.field private mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

.field private mGlowPadView_bottom:I

.field private mGlowPadView_left:I

.field private mGlowPadView_max_center_x:I

.field private mGlowPadView_max_center_y:I

.field private mGlowPadView_min_center_x:I

.field private mGlowPadView_min_center_y:I

.field private mGlowPadView_right:I

.field private mGlowPadView_top:I

.field private mIsAttachedToWindow:Z

.field private mMotionDown_x:I

.field private mMotionDown_y:I

.field private mPointDraw:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mResumeAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mResumeAnimation:Z

    const/16 v0, 0xf

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    const/16 v0, 0x127

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    const/16 v0, 0x2c1

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_right:I

    const/16 v0, 0x3d9

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_bottom:I

    const/16 v0, 0x118

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_x:I

    const/16 v0, 0x1b8

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_x:I

    const/16 v0, 0x159

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_y:I

    const/16 v0, 0x3a7

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mResumeAnimation:Z

    const/16 v0, 0xf

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    const/16 v0, 0x127

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    const/16 v0, 0x2c1

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_right:I

    const/16 v0, 0x3d9

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_bottom:I

    const/16 v0, 0x118

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_x:I

    const/16 v0, 0x1b8

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_x:I

    const/16 v0, 0x159

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_y:I

    const/16 v0, 0x3a7

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mResumeAnimation:Z

    const/16 v0, 0xf

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    const/16 v0, 0x127

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    const/16 v0, 0x2c1

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_right:I

    const/16 v0, 0x3d9

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_bottom:I

    const/16 v0, 0x118

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_x:I

    const/16 v0, 0x1b8

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_x:I

    const/16 v0, 0x159

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_y:I

    const/16 v0, 0x3a7

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_y:I

    return-void
.end method

.method public static getMotionDownPosition()J
    .locals 4

    .prologue
    sget v2, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionUp_x:I

    int-to-long v0, v2

    .local v0, position:J
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    sget v2, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionUp_y:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mResumeAnimation:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mPointDraw:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x30c000f

    invoke-virtual {p0, v0}, Lcom/lenovo/widetouch/WideTouchWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/widetouch/WideTouchGlowPadView;

    iput-object v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    new-instance v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30200b7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mPointDraw:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mPointDraw:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    return-void
.end method

.method public onInputTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "paramMotionEvent"

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    const/4 v1, 0x0

    .local v1, newEvent:Landroid/view/MotionEvent;
    sparse-switch v0, :sswitch_data_0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mPointDraw:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mPointDraw:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchWindow;->invalidate()V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v2, v4}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->reset(Z)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_x:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_y:I

    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchWindow;->requestLayout()V

    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    iget v4, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_bottom:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_1
    :goto_2
    iget v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v2, v1}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    return v5

    :sswitch_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :sswitch_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :sswitch_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionUp_x:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionUp_y:I

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mResumeAnimation:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    iget v4, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_bottom:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v2}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->resumeAnimations()V

    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v2}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->invalidate()V

    iput-boolean v5, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mResumeAnimation:Z

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0xb -> :sswitch_1
        0xc -> :sswitch_0
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchWindow;->getPaddingLeft()I

    move-result v0

    add-int/lit16 v0, v0, 0x118

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_x:I

    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchWindow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchWindow;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, -0x118

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_x:I

    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchWindow;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v1}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_y:I

    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchWindow;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchWindow;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v1}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_y:I

    iget v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_x:I

    iget v1, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_x:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_x:I

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_x:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_y:I

    iget v1, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_y:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_min_center_y:I

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_y:I

    :cond_1
    :goto_1
    iget v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_x:I

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v1}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    iget v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_y:I

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v1}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    iget v1, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v2}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->offsetLeftAndRight(I)V

    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    iget v1, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v2}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v0}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_left:I

    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v0}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_top:I

    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v0}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->getRight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_right:I

    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView:Lcom/lenovo/widetouch/WideTouchGlowPadView;

    invoke-virtual {v0}, Lcom/lenovo/widetouch/WideTouchGlowPadView;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_bottom:I

    return-void

    :cond_2
    iget v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_x:I

    iget v1, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_x:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_x:I

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_x:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_y:I

    iget v1, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_y:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mGlowPadView_max_center_y:I

    iput v0, p0, Lcom/lenovo/widetouch/WideTouchWindow;->mMotionDown_y:I

    goto :goto_1
.end method
