.class final Lcom/ushaqi/zhuishushenqi/ui/u;
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
        "Lcom/ximalaya/ting/android/opensdk/model/tag/TagList;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/u;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/u;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;I)V

    .line 136
    return-void
.end method

.method public final synthetic onSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    .locals 2

    .prologue
    .line 126
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/tag/TagList;

    .line 1129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/u;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;I)V

    .line 1130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/u;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;Lcom/ximalaya/ting/android/opensdk/model/tag/TagList;)V

    .line 126
    return-void
.end method
