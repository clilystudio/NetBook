.class final Lcom/ushaqi/zhuishushenqi/ui/post/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/I;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/I;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const-string v1, "book_post_list_bookId"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/I;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "book_post_list_bookTitle"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/I;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "add_post_mode"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/I;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "book_post_list_from_reader"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/I;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/I;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
