.class final Landroid/telephony/CellSignalStrengthLte$1;
.super Ljava/lang/Object;
.source "CellSignalStrengthLte.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellSignalStrengthLte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telephony/CellSignalStrengthLte;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellSignalStrengthLte;
    .locals 2
    .parameter "in"

    .prologue
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellSignalStrengthLte;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/telephony/CellSignalStrengthLte;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte$1;->newArray(I)[Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method
