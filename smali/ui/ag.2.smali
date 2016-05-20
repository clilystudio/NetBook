.class final Lcom/ushaqi/zhuishushenqi/ui/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/BookReview;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;Lcom/ushaqi/zhuishushenqi/model/BookReview;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ag;->b:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ag;->a:Lcom/ushaqi/zhuishushenqi/model/BookReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ag;->b:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const-string v1, "extraReviewId"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ag;->a:Lcom/ushaqi/zhuishushenqi/model/BookReview;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/model/BookReview;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ag;->b:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method
