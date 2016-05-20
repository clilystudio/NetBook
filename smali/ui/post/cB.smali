.class final Lcom/ushaqi/zhuishushenqi/ui/post/cB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 690
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 693
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Lcom/ushaqi/zhuishushenqi/model/Review;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Lcom/ushaqi/zhuishushenqi/model/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Review;->getBook()Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Lcom/ushaqi/zhuishushenqi/model/Review;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Review;->getBook()Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 690
    :pswitch_data_0
    .packed-switch 0x7f0c01e4
        :pswitch_0
    .end packed-switch
.end method
