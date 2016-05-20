.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 84
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    .line 1087
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    .line 84
    goto :goto_0
.end method
