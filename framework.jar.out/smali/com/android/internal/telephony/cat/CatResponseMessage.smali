.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field additionalInfo:[B

.field cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field destinationId:I

.field event:I

.field oneShot:Z

.field resCode:Lcom/android/internal/telephony/cat/ResultCode;

.field sourceId:I

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->sourceId:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->destinationId:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->oneShot:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->sourceId:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->destinationId:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->oneShot:Z

    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->sourceId:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->destinationId:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->oneShot:Z

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo([B)V
    .locals 0
    .parameter "additionalInfo"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:[B

    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    return-void
.end method

.method public setDestinationId(I)V
    .locals 0
    .parameter "dId"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->destinationId:I

    return-void
.end method

.method public setEventId(I)V
    .locals 0
    .parameter "event"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->event:I

    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    return-void
.end method

.method public setOneShot(Z)V
    .locals 0
    .parameter "shot"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->oneShot:Z

    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    return-void
.end method

.method public setSourceId(I)V
    .locals 0
    .parameter "sId"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->sourceId:I

    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    return-void
.end method
