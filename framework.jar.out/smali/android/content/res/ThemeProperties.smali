.class public Landroid/content/res/ThemeProperties;
.super Ljava/lang/Object;
.source "ThemeProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentControlTheme()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .local v0, index:I
    return v0
.end method

.method public static getCurrentThemeButtonIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, index:I
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "persist.sys.skin.button"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeCheckBoxIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, index:I
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "persist.sys.skin.checkbox"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeDialogIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, index:I
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "persist.sys.skin.dialog"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeIndex()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .local v0, index:I
    return v0
.end method

.method public static getCurrentThemeRadioIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, index:I
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "persist.sys.skin.radio"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeSectionLineIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, index:I
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "persist.sys.skin.sectionline"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeSeekbarIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, index:I
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "persist.sys.skin.seekbar"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeSwitchIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, index:I
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "persist.sys.skin.switch"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeTabBackgroundIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, index:I
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "persist.sys.skin.tab"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeTitleBackgroundIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, index:I
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "persist.sys.skin.titleback"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentThemeTitleColorIndex(Z)I
    .locals 3
    .parameter "islight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, index:I
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "persist.sys.skin.titlecolor"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setControlTheme(I)V
    .locals 2
    .parameter "controltheme"

    .prologue
    if-gtz p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "persist.sys.skin.control"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCurrentThemeButtonIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    move v0, p0

    .local v0, newid:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "persist.sys.skin.button"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentThemeCheckBoxIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    move v0, p0

    .local v0, newid:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "persist.sys.skin.checkbox"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentThemeDialogIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    move v0, p0

    .local v0, newid:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "persist.sys.skin.dialog"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentThemeRadioIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    move v0, p0

    .local v0, newid:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "persist.sys.skin.radio"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentThemeSectionLineIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    move v0, p0

    .local v0, newid:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "persist.sys.skin.sectionline"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentThemeSeekbarIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    move v0, p0

    .local v0, newid:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "persist.sys.skin.seekbar"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentThemeSwitchIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    move v0, p0

    .local v0, newid:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "persist.sys.skin.switch"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentThemeTabBackgroundIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    move v0, p0

    .local v0, newid:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "persist.sys.skin.tab"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentThemeTitleBackgroundIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    move v0, p0

    .local v0, newid:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "persist.sys.skin.titleback"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentThemeTitleColorIndex(II)V
    .locals 3
    .parameter "id"
    .parameter "dark_id"

    .prologue
    move v0, p0

    .local v0, newid:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "persist.sys.skin.titlecolor"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setThemeId(I)V
    .locals 2
    .parameter "theme_id"

    .prologue
    if-gtz p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "persist.sys.skin.theme"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
