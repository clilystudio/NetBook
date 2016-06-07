.class final Lcom/ushaqi/zhuishushenqi/ui/bB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;Lcom/ushaqi/zhuishushenqi/model/BookSummary;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bB;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/bB;->a:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bB;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bB;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bB;->a:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rec_C6613205_93B6_61A6_9FEC_180B70F91B94"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bB;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "book_info_recommend_click"

    const-string v2, "bfd"

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x3

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bB;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bB;->a:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bB;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bB;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "book_info_recommend_click"

    const-string v2, "zhuishu"

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method
