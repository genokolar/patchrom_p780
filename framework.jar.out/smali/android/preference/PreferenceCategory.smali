.class public Landroid/preference/PreferenceCategory;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCategory"


# instance fields
.field private mCategoryStyleId:I

.field private mCategoryTitleColor_Dark:Landroid/content/res/ColorStateList;

.field private mCategoryTitleColor_Light:Landroid/content/res/ColorStateList;

.field private mSeparatorId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x101008c

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Landroid/preference/PreferenceCategory;->mCategoryStyleId:I

    iput v2, p0, Landroid/preference/PreferenceCategory;->mSeparatorId:I

    iput-object v1, p0, Landroid/preference/PreferenceCategory;->mCategoryTitleColor_Light:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/preference/PreferenceCategory;->mCategoryTitleColor_Dark:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceCategory;->mCategoryStyleId:I

    const/16 v1, 0x60

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceCategory;->mSeparatorId:I

    iget-object v1, p0, Landroid/preference/PreferenceCategory;->mCategoryTitleColor_Dark:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3080015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/PreferenceCategory;->mCategoryTitleColor_Dark:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v1, p0, Landroid/preference/PreferenceCategory;->mCategoryTitleColor_Light:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3080016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/PreferenceCategory;->mCategoryTitleColor_Light:Landroid/content/res/ColorStateList;

    :cond_1
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "convertView"
    .parameter "parent"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceGroup;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .local v3, ret_V:Landroid/view/View;
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->isCts()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x0

    .local v1, isDark:Z
    const/4 v2, 0x0

    .local v2, isLight:Z
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, title:Landroid/widget/TextView;
    iget v5, p0, Landroid/preference/PreferenceCategory;->mSeparatorId:I

    const v6, 0x103027c

    if-ne v5, v6, :cond_3

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget v5, p0, Landroid/preference/PreferenceCategory;->mCategoryStyleId:I

    const v6, 0x1030229

    if-ne v5, v6, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getThemeSectionBackground(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, dtemp:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v0           #dtemp:Landroid/graphics/drawable/Drawable;
    .end local v1           #isDark:Z
    .end local v2           #isLight:Z
    .end local v4           #title:Landroid/widget/TextView;
    :cond_2
    :goto_1
    return-object v3

    .restart local v1       #isDark:Z
    .restart local v2       #isLight:Z
    .restart local v4       #title:Landroid/widget/TextView;
    :cond_3
    iget v5, p0, Landroid/preference/PreferenceCategory;->mSeparatorId:I

    const v6, 0x103025d

    if-ne v5, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .restart local v0       #dtemp:Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eqz v2, :cond_5

    iget-object v5, p0, Landroid/preference/PreferenceCategory;->mCategoryTitleColor_Light:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_2

    iget-object v5, p0, Landroid/preference/PreferenceCategory;->mCategoryTitleColor_Dark:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareAddPreference(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    instance-of v0, p1, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
