.class final Lcom/ushaqi/zhuishushenqi/reader/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1255
    .line 3258
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1255
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1255
    .line 2263
    new-array v0, p1, [Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;

    .line 1255
    return-object v0
.end method
