.class public Lcom/lenovo/SmartRoll/SmartRollSoftwareRootView;
.super Landroid/widget/FrameLayout;
.source "SmartRollSoftwareRootView.java"


# instance fields
.field public mChildView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/lenovo/SmartRoll/SmartRollSoftwareRootView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public addRealView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    iput-object p1, p0, Lcom/lenovo/SmartRoll/SmartRollSoftwareRootView;->mChildView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/lenovo/SmartRoll/SmartRollSoftwareRootView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getRealView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/lenovo/SmartRoll/SmartRollSoftwareRootView;->mChildView:Landroid/view/View;

    return-object v0
.end method
