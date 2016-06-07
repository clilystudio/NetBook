.class final Lcom/ushaqi/zhuishushenqi/ui/post/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ct;->b:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ct;->a:Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ct;->b:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ct;->b:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ct;->a:Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Author;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 432
    return-void
.end method
