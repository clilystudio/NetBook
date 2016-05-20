.class final Lcom/ushaqi/zhuishushenqi/ui/home/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/D;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/D;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public final synthetic onSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    .locals 3

    .prologue
    .line 497
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;

    .line 1500
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/D;->a:I

    rem-int/lit8 v0, v0, 0x64

    .line 1501
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 1502
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/D;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/util/as;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/util/as;->a(Ljava/util/List;I)V

    .line 497
    return-void

    .line 1501
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
