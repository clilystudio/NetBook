.class final Lcom/ushaqi/zhuishushenqi/ui/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/af;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/af;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_book_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/af;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v2, "bookReviewBookId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/af;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
