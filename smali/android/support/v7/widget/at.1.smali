.class final Landroid/support/v7/widget/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v7/widget/RecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9018
    .line 11021
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 9018
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9018
    .line 10026
    new-array v0, p1, [Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 9018
    return-object v0
.end method
