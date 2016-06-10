.class final Lcom/ushaqi/zhuishushenqi/ui/ae;
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
    .line 71
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "args_book_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "args_book_title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    const-string v1, "extra_tab_default_index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method
