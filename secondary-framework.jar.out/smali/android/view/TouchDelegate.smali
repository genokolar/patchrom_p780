.class public Landroid/view/TouchDelegate;
.super Ljava/lang/Object;
.source "TouchDelegate.java"


# static fields
.field public static final ABOVE:I = 0x1

.field public static final BELOW:I = 0x2

.field public static final TO_LEFT:I = 0x4

.field public static final TO_RIGHT:I = 0x8


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private mDelegateView:Landroid/view/View;

.field private mSlop:I

.field private mSlopBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3
    .parameter "bounds"
    .parameter "delegateView"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/TouchDelegate;->mSlop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/TouchDelegate;->mSlop:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/TouchDelegate;->mSlop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    iput-object p2, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    return-void
.end method

.method private getSmartRolledBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .parameter "orgBound"

    .prologue
    iget-object v6, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, parentView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .local v5, parentWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .local v2, parentPaddingLeft:I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .local v3, parentPaddingRight:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v5, v6

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    sub-int v7, v3, v2

    sub-int v0, v6, v7

    .local v0, newLeft:I
    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int v6, v5, v6

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    sub-int v7, v3, v2

    sub-int v1, v6, v7

    .local v1, newRight:I
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v0, v7, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .local v8, y:I
    const/4 v4, 0x0

    .local v4, sendToDelegate:Z
    const/4 v3, 0x1

    .local v3, hit:Z
    const/4 v2, 0x0

    .local v2, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    iget-object v1, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    .local v1, delegateView:Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .end local v1           #delegateView:Landroid/view/View;
    :cond_1
    return v2

    :pswitch_0
    iget-object v0, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    iget-boolean v9, v9, Landroid/view/View;->mIsViewSmartRolled:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v9}, Landroid/view/TouchDelegate;->getSmartRolledBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_2
    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    const/4 v4, 0x1

    goto :goto_0

    .end local v0           #bounds:Landroid/graphics/Rect;
    :pswitch_1
    iget-boolean v4, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    if-eqz v4, :cond_0

    iget-object v6, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .local v6, slopBounds:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    iget-boolean v9, v9, Landroid/view/View;->mIsViewSmartRolled:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v9}, Landroid/view/TouchDelegate;->getSmartRolledBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    :cond_3
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .end local v6           #slopBounds:Landroid/graphics/Rect;
    :pswitch_2
    iget-boolean v4, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    goto :goto_0

    .restart local v1       #delegateView:Landroid/view/View;
    :cond_4
    iget v5, p0, Landroid/view/TouchDelegate;->mSlop:I

    .local v5, slop:I
    mul-int/lit8 v9, v5, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    mul-int/lit8 v10, v5, 0x2

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
