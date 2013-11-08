.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$LinkSpec;,
        Landroid/text/util/Linkify$MatcherPos;,
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$MatchFilter;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addLenovoLinks(Landroid/text/Spannable;I)Z
    .locals 12
    .parameter "text"
    .parameter "mask"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_0

    move v1, v10

    :goto_0
    return v1

    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v10, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .local v9, old:[Landroid/text/style/URLSpan;
    array-length v1, v9

    add-int/lit8 v6, v1, -0x1

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_1

    aget-object v1, v9, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    sget-object v2, Landroid/util/Patterns;->LENOVO_WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v3, v10

    const-string v1, "https://"

    aput-object v1, v3, v11

    const/4 v1, 0x2

    const-string v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLenovoLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "mailto:"

    aput-object v1, v3, v10

    move-object v1, p0

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "tel:"

    aput-object v1, v3, v10

    sget-object v4, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    :cond_5
    invoke-static {v0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v10

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/util/Linkify$LinkSpec;

    .local v8, link:Landroid/text/util/Linkify$LinkSpec;
    iget-object v1, v8, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    iget v2, v8, Landroid/text/util/Linkify$LinkSpec;->start:I

    iget v3, v8, Landroid/text/util/Linkify$LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .end local v8           #link:Landroid/text/util/Linkify$LinkSpec;
    :cond_7
    move v1, v11

    goto/16 :goto_0
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .parameter "t"

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .local v0, m:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .parameter "pattern"
    .parameter "scheme"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 2
    .parameter "text"
    .parameter "p"
    .parameter "scheme"
    .parameter "matchFilter"
    .parameter "transformFilter"

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .local v0, s:Landroid/text/SpannableString;
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 12
    .parameter "text"
    .parameter "mask"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_0

    move v1, v10

    :goto_0
    return v1

    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v10, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .local v9, old:[Landroid/text/style/URLSpan;
    array-length v1, v9

    add-int/lit8 v6, v1, -0x1

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_1

    aget-object v1, v9, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v3, v10

    const-string v1, "https://"

    aput-object v1, v3, v11

    const/4 v1, 0x2

    const-string v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "mailto:"

    aput-object v1, v3, v10

    move-object v1, p0

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "tel:"

    aput-object v1, v3, v10

    sget-object v4, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    :cond_5
    invoke-static {v0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v10

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/util/Linkify$LinkSpec;

    .local v8, link:Landroid/text/util/Linkify$LinkSpec;
    iget-object v1, v8, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    iget v2, v8, Landroid/text/util/Linkify$LinkSpec;->start:I

    iget v3, v8, Landroid/text/util/Linkify$LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .end local v8           #link:Landroid/text/util/Linkify$LinkSpec;
    :cond_7
    move v1, v11

    goto/16 :goto_0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 1
    .parameter "text"
    .parameter "pattern"
    .parameter "scheme"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 10
    .parameter "s"
    .parameter "p"
    .parameter "scheme"
    .parameter "matchFilter"
    .parameter "transformFilter"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .local v2, hasMatches:Z
    if-nez p2, :cond_2

    const-string v4, ""

    .local v4, prefix:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .local v3, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .local v5, start:I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .local v1, end:I
    const/4 v0, 0x1

    .local v0, allowed:Z
    if-eqz p3, :cond_1

    invoke-interface {p3, p0, v5, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-static {v7, v8, v3, p4}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v6

    .local v6, url:Ljava/lang/String;
    invoke-static {v6, v5, v1, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    const/4 v2, 0x1

    goto :goto_1

    .end local v0           #allowed:Z
    .end local v1           #end:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #start:I
    .end local v6           #url:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local v3       #m:Ljava/util/regex/Matcher;
    .restart local v4       #prefix:Ljava/lang/String;
    :cond_3
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 5
    .parameter "text"
    .parameter "mask"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, t:Ljava/lang/CharSequence;
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    check-cast v1, Landroid/text/Spannable;

    .end local v1           #t:Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    goto :goto_0

    .restart local v1       #t:Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .local v0, s:Landroid/text/SpannableString;
    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    goto :goto_0
.end method

.method public static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .parameter "url"
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .local v0, span:Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static final gatherLenovoLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 32
    .parameter
    .parameter "s"
    .parameter "pattern"
    .parameter "schemes"
    .parameter "matchFilter"
    .parameter "transformFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Linkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .local v16, m:Ljava/util/regex/Matcher;
    const/16 v17, -0x1

    .local v17, nLast_end:I
    const/16 v19, 0x0

    .local v19, nlast_url_end:I
    const/16 v20, 0x0

    .local v20, nlast_url_start:I
    invoke-interface/range {p1 .. p1}, Landroid/text/Spannable;->length()I

    move-result v24

    .local v24, s_length:I
    const/4 v14, 0x0

    .local v14, is_default:Z
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->start()I

    move-result v26

    .local v26, start:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    .local v10, end:I
    if-eqz v14, :cond_1

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v21

    .local v21, nsize:I
    new-instance v27, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v27, temp:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .local v28, tempurl:Ljava/lang/String;
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v18

    .local v18, newurl:Ljava/lang/String;
    add-int/lit8 v30, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/text/util/Linkify$LinkSpec;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    add-int/lit8 v30, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/text/util/Linkify$LinkSpec;

    move/from16 v0, v17

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/util/Linkify$LinkSpec;->end:I

    .end local v18           #newurl:Ljava/lang/String;
    .end local v21           #nsize:I
    .end local v27           #temp:Ljava/lang/String;
    .end local v28           #tempurl:Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-interface {v0, v1, v2, v10}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v30

    if-eqz v30, :cond_0

    :cond_2
    const/4 v14, 0x0

    new-instance v27, Ljava/lang/String;

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v27       #temp:Ljava/lang/String;
    const-string v30, "(\uff0c|\u3001|\uff1b|\u3002)+[www.]+"

    invoke-static/range {v30 .. v30}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .local v8, domain_pattern:Ljava/util/regex/Pattern;
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .local v7, domain_match:Ljava/util/regex/Matcher;
    const/16 v22, 0x0

    .local v22, offset:I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .local v23, pos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$MatcherPos;>;"
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v30

    if-eqz v30, :cond_6

    const/4 v15, 0x1

    .local v15, isfirst:Z
    :cond_3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .local v9, domain_start:I
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .local v6, domain_end:I
    new-instance v25, Landroid/text/util/Linkify$LinkSpec;

    invoke-direct/range {v25 .. v25}, Landroid/text/util/Linkify$LinkSpec;-><init>()V

    .local v25, spec:Landroid/text/util/Linkify$LinkSpec;
    if-eqz v15, :cond_5

    const-string v30, "www."

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .local v13, index:I
    if-le v9, v13, :cond_4

    new-instance v11, Landroid/text/util/Linkify$MatcherPos;

    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-direct {v11, v0}, Landroid/text/util/Linkify$MatcherPos;-><init>(Landroid/text/util/Linkify$1;)V

    .local v11, first_pos:Landroid/text/util/Linkify$MatcherPos;
    const/16 v30, 0x0

    move/from16 v0, v30

    iput v0, v11, Landroid/text/util/Linkify$MatcherPos;->start:I

    const/16 v30, 0x0

    move/from16 v0, v30

    iput v0, v11, Landroid/text/util/Linkify$MatcherPos;->end:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v11           #first_pos:Landroid/text/util/Linkify$MatcherPos;
    :cond_4
    const/4 v15, 0x0

    .end local v13           #index:I
    :cond_5
    new-instance v4, Landroid/text/util/Linkify$MatcherPos;

    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/text/util/Linkify$MatcherPos;-><init>(Landroid/text/util/Linkify$1;)V

    .local v4, cur:Landroid/text/util/Linkify$MatcherPos;
    add-int/lit8 v30, v9, 0x1

    move/from16 v0, v30

    iput v0, v4, Landroid/text/util/Linkify$MatcherPos;->start:I

    add-int/lit8 v30, v9, 0x1

    move/from16 v0, v30

    iput v0, v4, Landroid/text/util/Linkify$MatcherPos;->end:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v30

    if-nez v30, :cond_3

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, cur_end:I
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v30

    add-int/lit8 v12, v30, -0x1

    .local v12, i:I
    :goto_1
    if-ltz v12, :cond_a

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #cur:Landroid/text/util/Linkify$MatcherPos;
    check-cast v4, Landroid/text/util/Linkify$MatcherPos;

    .restart local v4       #cur:Landroid/text/util/Linkify$MatcherPos;
    new-instance v25, Landroid/text/util/Linkify$LinkSpec;

    .end local v25           #spec:Landroid/text/util/Linkify$LinkSpec;
    invoke-direct/range {v25 .. v25}, Landroid/text/util/Linkify$LinkSpec;-><init>()V

    .restart local v25       #spec:Landroid/text/util/Linkify$LinkSpec;
    iget v0, v4, Landroid/text/util/Linkify$MatcherPos;->start:I

    move/from16 v30, v0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    iget v0, v4, Landroid/text/util/Linkify$MatcherPos;->start:I

    move/from16 v30, v0

    add-int v30, v30, v26

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Landroid/text/util/Linkify$LinkSpec;->start:I

    move-object/from16 v0, v25

    iget v0, v0, Landroid/text/util/Linkify$LinkSpec;->start:I

    move/from16 v30, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v0, v4, Landroid/text/util/Linkify$MatcherPos;->start:I

    move/from16 v30, v0

    add-int/lit8 v5, v30, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .end local v4           #cur:Landroid/text/util/Linkify$MatcherPos;
    .end local v5           #cur_end:I
    .end local v6           #domain_end:I
    .end local v9           #domain_start:I
    .end local v12           #i:I
    .end local v15           #isfirst:Z
    .end local v25           #spec:Landroid/text/util/Linkify$LinkSpec;
    :cond_6
    const/4 v14, 0x1

    new-instance v25, Landroid/text/util/Linkify$LinkSpec;

    invoke-direct/range {v25 .. v25}, Landroid/text/util/Linkify$LinkSpec;-><init>()V

    .restart local v25       #spec:Landroid/text/util/Linkify$LinkSpec;
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v29

    .local v29, url:Ljava/lang/String;
    move/from16 v17, v10

    move/from16 v0, v24

    if-le v0, v10, :cond_9

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->isSecondDomain(Landroid/text/Spannable;I)Z

    move-result v30

    if-nez v30, :cond_7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->isNonAscUrlString(Landroid/text/Spannable;I)Z

    move-result v30

    if-eqz v30, :cond_8

    :cond_7
    add-int/lit8 v17, v17, 0x2

    goto :goto_2

    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/text/util/Linkify;->isUrlChar(C)Z

    move-result v30

    if-eqz v30, :cond_9

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/text/util/Linkify$LinkSpec;->start:I

    move-object/from16 v0, v25

    iput v10, v0, Landroid/text/util/Linkify$LinkSpec;->end:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v29           #url:Ljava/lang/String;
    :cond_a
    move/from16 v20, v26

    move/from16 v19, v10

    goto/16 :goto_0

    .end local v7           #domain_match:Ljava/util/regex/Matcher;
    .end local v8           #domain_pattern:Ljava/util/regex/Pattern;
    .end local v10           #end:I
    .end local v22           #offset:I
    .end local v23           #pos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$MatcherPos;>;"
    .end local v25           #spec:Landroid/text/util/Linkify$LinkSpec;
    .end local v26           #start:I
    .end local v27           #temp:Ljava/lang/String;
    :cond_b
    if-eqz v14, :cond_c

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v21

    .restart local v21       #nsize:I
    new-instance v27, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v27       #temp:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .restart local v28       #tempurl:Ljava/lang/String;
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #newurl:Ljava/lang/String;
    add-int/lit8 v30, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/text/util/Linkify$LinkSpec;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    add-int/lit8 v30, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/text/util/Linkify$LinkSpec;

    move/from16 v0, v17

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/util/Linkify$LinkSpec;->end:I

    .end local v18           #newurl:Ljava/lang/String;
    .end local v21           #nsize:I
    .end local v27           #temp:Ljava/lang/String;
    .end local v28           #tempurl:Ljava/lang/String;
    :cond_c
    return-void
.end method

.method public static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .parameter
    .parameter "s"
    .parameter "pattern"
    .parameter "schemes"
    .parameter "matchFilter"
    .parameter "transformFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Linkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .local v3, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .local v0, end:I
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    new-instance v2, Landroid/text/util/Linkify$LinkSpec;

    invoke-direct {v2}, Landroid/text/util/Linkify$LinkSpec;-><init>()V

    .local v2, spec:Landroid/text/util/Linkify$LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .local v4, url:Ljava/lang/String;
    iput-object v4, v2, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    iput v3, v2, Landroid/text/util/Linkify$LinkSpec;->start:I

    iput v0, v2, Landroid/text/util/Linkify$LinkSpec;->end:I

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #end:I
    .end local v2           #spec:Landroid/text/util/Linkify$LinkSpec;
    .end local v3           #start:I
    .end local v4           #url:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
    .parameter
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Linkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, string:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, base:I
    :goto_0
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .local v7, start:I
    if-gez v7, :cond_1

    .end local v7           #start:I
    :cond_0
    return-void

    .restart local v7       #start:I
    :cond_1
    new-instance v6, Landroid/text/util/Linkify$LinkSpec;

    invoke-direct {v6}, Landroid/text/util/Linkify$LinkSpec;-><init>()V

    .local v6, spec:Landroid/text/util/Linkify$LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, length:I
    add-int v4, v7, v5

    .local v4, end:I
    add-int v9, v1, v7

    iput v9, v6, Landroid/text/util/Linkify$LinkSpec;->start:I

    add-int v9, v1, v4

    iput v9, v6, Landroid/text/util/Linkify$LinkSpec;->end:I

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v1, v4

    const/4 v3, 0x0

    .local v3, encodedAddress:Ljava/lang/String;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static isNonAscUrlString(Landroid/text/Spannable;I)Z
    .locals 9
    .parameter "s"
    .parameter "nstart"

    .prologue
    const/16 v8, 0x61

    const/16 v7, 0x46

    const/16 v6, 0x41

    const/16 v5, 0x39

    const/16 v4, 0x30

    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/lit8 v3, p1, 0x2

    if-le v2, v3, :cond_6

    invoke-interface {p0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v0

    .local v0, c1:C
    add-int/lit8 v2, p1, 0x2

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    .local v1, c2:C
    if-lt v0, v8, :cond_0

    const/16 v2, 0x66

    if-le v0, v2, :cond_2

    :cond_0
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    if-lt v0, v4, :cond_6

    if-gt v0, v5, :cond_6

    :cond_2
    if-lt v1, v8, :cond_3

    const/16 v2, 0x66

    if-le v1, v2, :cond_5

    :cond_3
    if-lt v1, v6, :cond_4

    if-le v1, v7, :cond_5

    :cond_4
    if-lt v0, v4, :cond_6

    if-gt v0, v5, :cond_6

    :cond_5
    const/4 v2, 0x1

    .end local v0           #c1:C
    .end local v1           #c2:C
    :goto_0
    return v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isSecondDomain(Landroid/text/Spannable;I)Z
    .locals 8
    .parameter "s"
    .parameter "nstart"

    .prologue
    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/lit8 v3, p1, 0x2

    if-le v2, v3, :cond_4

    invoke-interface {p0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v0

    .local v0, c1:C
    add-int/lit8 v2, p1, 0x2

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    .local v1, c2:C
    if-lt v0, v6, :cond_0

    if-le v0, v7, :cond_1

    :cond_0
    if-lt v0, v4, :cond_4

    if-gt v0, v5, :cond_4

    :cond_1
    if-lt v1, v6, :cond_2

    if-le v1, v7, :cond_3

    :cond_2
    if-lt v1, v4, :cond_4

    if-gt v1, v5, :cond_4

    :cond_3
    const/4 v2, 0x1

    .end local v0           #c1:C
    .end local v1           #c2:C
    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isUrlChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x26

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "prefixes"
    .parameter "m"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v7, 0x0

    .local v7, hasPrefix:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-nez v7, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Linkify$LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    new-instance v2, Landroid/text/util/Linkify$4;

    invoke-direct {v2}, Landroid/text/util/Linkify$4;-><init>()V

    .local v2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/text/util/Linkify$LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Linkify$LinkSpec;

    .local v0, a:Landroid/text/util/Linkify$LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/Linkify$LinkSpec;

    .local v1, b:Landroid/text/util/Linkify$LinkSpec;
    const/4 v5, -0x1

    .local v5, remove:I
    iget v6, v0, Landroid/text/util/Linkify$LinkSpec;->start:I

    iget v7, v1, Landroid/text/util/Linkify$LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v7, v1, Landroid/text/util/Linkify$LinkSpec;->start:I

    if-le v6, v7, :cond_3

    iget v6, v1, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/Linkify$LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    add-int/lit8 v5, v3, 0x1

    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    iget v6, v0, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    :cond_2
    iget v6, v0, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    move v5, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #a:Landroid/text/util/Linkify$LinkSpec;
    .end local v1           #b:Landroid/text/util/Linkify$LinkSpec;
    .end local v5           #remove:I
    :cond_4
    return-void
.end method
