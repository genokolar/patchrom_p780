.class public Lcom/lenovo/systemtheme/SystemThemeResource;
.super Ljava/lang/Object;
.source "SystemThemeResource.java"


# static fields
.field private static final DBG:Z = true

.field public static final FRAMEWORK_RESOURCE_ID_BEGIN:I = 0x1000000

.field public static final FRAMEWORK_RESOURCE_ID_END:I = 0x1ffffff

.field public static final LENOVO_COLOR_START_ID:I = 0x3070000

.field public static final LENOVO_DRAWABLE_START_ID:I = 0x3020000

.field public static final LENOVO_RESOURCE_ID_BEGIN:I = 0x3000000

.field public static final LENOVO_RESOURCE_ID_END:I = 0x3ffffff

.field public static final MAX_LENOVO_RESOUCE_ID_COUNT:I = 0x320

.field public static final MIPMAP_TYPE:Ljava/lang/String; = "mipmap"

.field public static final RESOURCE_TYPE_COUNT:I = 0x10

.field public static final RESOURCE_TYPE_MASK:I = 0xff0000

.field public static final RESOURCE_TYPE_SHIFT:I = 0x10

.field public static final SUPPORT_SYSTEM_THEME:Z = true

.field private static final TAG:Ljava/lang/String; = "SystemThemeResource"

.field public static final THEME_DEBUG_PERSIST:Ljava/lang/String; = "persist.sys.theme.debug"

.field public static final THEME_RESOURCE_ID_BEGIN:I = 0x5000000

.field public static final THEME_RESOURCE_ID_END:I = 0x5ffffff


# instance fields
.field private mId2NameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mId2ThemeIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceReady:Z

.field private mThemePackageName:Ljava/lang/String;

.field private mThemeResource:Landroid/content/res/Resources;

.field private mTypeNameArray:[Ljava/lang/String;

.field private mUserContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v4, 0x10

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mTypeNameArray:[Ljava/lang/String;

    iput-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    invoke-static {}, Landroid/content/res/Configuration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, themePackageName:Ljava/lang/String;
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    const-string v4, "com.lenovo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SystemThemeResource"

    const-string v5, "SystemThemeResource: set to default lenovo theme"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    iput-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemePackageName:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    :goto_0
    return-void

    :cond_0
    const-string v4, "SystemThemeResource"

    const-string v5, "Start create SystemThemeResource"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, startTime:J
    invoke-virtual {p0}, Lcom/lenovo/systemtheme/SystemThemeResource;->initId2Name()V

    invoke-virtual {p0, v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .local v3, themeRes:Landroid/content/res/Resources;
    if-nez v3, :cond_1

    const-string v4, "SystemThemeResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to createThemeResource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    iput-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemePackageName:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    :cond_2
    const-string v4, "SystemThemeResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End create SystemThemeResource in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms. mResourceReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMappedLenovoBackgroundResourceId(I)I
    .locals 2
    .parameter "resid"

    .prologue
    move v0, p0

    .local v0, newRes:I
    invoke-static {p0}, Lcom/lenovo/systemtheme/SystemThemeResource;->isFrameworkResourceId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    sparse-switch p0, :sswitch_data_0

    :goto_1
    move p0, v0

    goto :goto_0

    :sswitch_0
    const v0, 0x3020015

    goto :goto_1

    :sswitch_1
    const v0, 0x302001b

    goto :goto_1

    :sswitch_2
    const v0, 0x302001c

    goto :goto_1

    :sswitch_3
    const v0, 0x3020042

    goto :goto_1

    :sswitch_4
    const v0, 0x3020041

    goto :goto_1

    :sswitch_5
    const v0, 0x3020091

    goto :goto_1

    :sswitch_6
    const v0, 0x3020090

    goto :goto_1

    :sswitch_7
    const v0, 0x3020105

    goto :goto_1

    :sswitch_8
    const v0, 0x3020106

    goto :goto_1

    :sswitch_9
    const v0, 0x3020101

    goto :goto_1

    :sswitch_a
    const v0, 0x3020102

    goto :goto_1

    :sswitch_b
    const v0, 0x3020071

    goto :goto_1

    :sswitch_c
    const v0, 0x3020072

    goto :goto_1

    :sswitch_d
    const v0, 0x302009c

    goto :goto_1

    :sswitch_e
    const v0, 0x302009d

    goto :goto_1

    :sswitch_f
    const v0, 0x3020010

    goto :goto_1

    :sswitch_10
    const v0, 0x302016a

    goto :goto_1

    :sswitch_11
    const v0, 0x302016b

    goto :goto_1

    :sswitch_12
    const v0, 0x3020129

    goto :goto_1

    :sswitch_13
    const v0, 0x302000e

    goto :goto_1

    :sswitch_14
    const v0, 0x302000f

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x108009a -> :sswitch_0
        0x10800c2 -> :sswitch_13
        0x10800c3 -> :sswitch_14
        0x10800c5 -> :sswitch_f
        0x10800d7 -> :sswitch_1
        0x10800d8 -> :sswitch_2
        0x1080120 -> :sswitch_4
        0x1080121 -> :sswitch_3
        0x1080255 -> :sswitch_b
        0x1080256 -> :sswitch_c
        0x108037a -> :sswitch_6
        0x108037b -> :sswitch_5
        0x10803cf -> :sswitch_d
        0x10803d0 -> :sswitch_e
        0x10804fc -> :sswitch_9
        0x10804fd -> :sswitch_a
        0x1080500 -> :sswitch_7
        0x1080501 -> :sswitch_8
        0x10805ac -> :sswitch_12
        0x10805f6 -> :sswitch_10
        0x10805f7 -> :sswitch_11
    .end sparse-switch
.end method

.method public static getMappedLenovoImageResourceId(I)I
    .locals 2
    .parameter "resid"

    .prologue
    move v0, p0

    .local v0, newRes:I
    invoke-static {p0}, Lcom/lenovo/systemtheme/SystemThemeResource;->isFrameworkResourceId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    sparse-switch p0, :sswitch_data_0

    :goto_1
    move p0, v0

    goto :goto_0

    :sswitch_0
    const v0, 0x302007a

    goto :goto_1

    :sswitch_1
    const v0, 0x302007b

    goto :goto_1

    :sswitch_2
    const v0, 0x3020086

    goto :goto_1

    :sswitch_3
    const v0, 0x3020087

    goto :goto_1

    :sswitch_4
    const v0, 0x3020089

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1080291 -> :sswitch_0
        0x1080292 -> :sswitch_1
        0x10802b1 -> :sswitch_2
        0x10802b2 -> :sswitch_3
        0x10802b3 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMappedLenovoLayoutResourceId(I)I
    .locals 2
    .parameter "resid"

    .prologue
    move v0, p0

    .local v0, newRes:I
    invoke-static {p0}, Lcom/lenovo/systemtheme/SystemThemeResource;->isFrameworkResourceId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    packed-switch p0, :pswitch_data_0

    :goto_1
    move p0, v0

    goto :goto_0

    :pswitch_0
    const v0, 0x3040003

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x10900b2
        :pswitch_0
    .end packed-switch
.end method

.method public static isFrameworkResourceId(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    const/high16 v0, 0x100

    if-lt p0, v0, :cond_0

    const v0, 0x1ffffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLenovoResourceId(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    const/high16 v0, 0x300

    if-lt p0, v0, :cond_0

    const v0, 0x3ffffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThemeResourceId(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    const/high16 v0, 0x500

    if-lt p0, v0, :cond_0

    const v0, 0x5ffffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetSystemThemeToLenovoDefault()V
    .locals 3

    .prologue
    const-string v1, "com.lenovo"

    invoke-static {v1}, Landroid/content/res/Configuration;->setSystemThemePackageName(Ljava/lang/String;)V

    const-string v1, "com.lenovo"

    invoke-static {}, Landroid/content/res/Configuration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SystemThemeResource"

    const-string v2, "resetSystemThemeToDefault success"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .local v0, e:Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "SystemThemeResource"

    const-string v2, "resetSystemThemeToDefault fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 2
    .parameter "themePackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, Pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColor(I)I
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLenovoColorResourceId(I)I
    .locals 2
    .parameter "resid"

    .prologue
    move v0, p1

    .local v0, newRes:I
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isCts()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    move p1, v0

    goto :goto_0

    :pswitch_0
    const v0, 0x3080014

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1060012
        :pswitch_0
    .end packed-switch
.end method

.method public getThemeResourceId(I)I
    .locals 3
    .parameter "resid"

    .prologue
    iget-boolean v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    if-nez v1, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public getTypeNameById(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    const/high16 v1, 0xff

    and-int/2addr v1, p1

    shr-int/lit8 v0, v1, 0x10

    .local v0, type:I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mTypeNameArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mTypeNameArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initId2Name()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    const-string v4, "SystemThemeResource"

    const-string v5, "initId2Name already inited"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x10

    if-ge v1, v4, :cond_2

    const/high16 v4, 0x300

    shl-int/lit8 v5, v1, 0x10

    add-int v2, v4, v5

    .local v2, startId:I
    const/4 v3, 0x0

    .local v3, typeName:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mipmap"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mTypeNameArray:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mTypeNameArray:[Ljava/lang/String;

    aput-object v3, v4, v1

    invoke-virtual {p0, v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->loadTypeId2Name(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mTypeNameArray:[Ljava/lang/String;

    aput-object v6, v4, v1

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #startId:I
    .end local v3           #typeName:Ljava/lang/String;
    :cond_2
    const-string v4, "SystemThemeResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initId2Name end. Current "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 9
    .parameter "themeRes"
    .parameter "themePackageName"

    .prologue
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz p1, :cond_0

    const-string v6, "SystemThemeResource"

    const-string v7, "initId2Themeid start "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, resid:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, resourceName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/lenovo/systemtheme/SystemThemeResource;->getTypeNameById(I)Ljava/lang/String;

    move-result-object v5

    .local v5, resourceType:Ljava/lang/String;
    invoke-virtual {p1, v4, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, mapId:I
    invoke-static {v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->isThemeResourceId(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_2

    const-string v6, "SystemThemeResource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initId2Themeid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " map a invalid ID of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2           #mapId:I
    .end local v3           #resid:I
    .end local v4           #resourceName:Ljava/lang/String;
    .end local v5           #resourceType:Ljava/lang/String;
    :cond_4
    const-string v6, "SystemThemeResource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initId2Themeid end. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " records."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public loadTypeId2Name(I)Z
    .locals 6
    .parameter "startId"

    .prologue
    move v3, p1

    .local v3, resid:I
    :goto_0
    add-int/lit16 v4, p1, 0x320

    if-ge v3, v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, index:I
    if-ltz v1, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2NameMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .end local v1           #index:I
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public updateSystemThemeConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    :cond_0
    return-void
.end method
