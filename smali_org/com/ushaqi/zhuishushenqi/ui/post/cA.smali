.class final Lcom/ushaqi/zhuishushenqi/ui/post/cA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cA;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cA;->a:Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cA;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cA;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cA;->a:Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Author;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 566
    return-void
.end method
