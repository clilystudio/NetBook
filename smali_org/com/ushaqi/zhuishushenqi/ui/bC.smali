.class final Lcom/ushaqi/zhuishushenqi/ui/bC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bC;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/bC;->a:Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bC;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->a:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v1, "book_id"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bC;->a:Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bC;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->a:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
