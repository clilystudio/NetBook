.class final Lcom/ushaqi/zhuishushenqi/ui/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aj;->c:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;

    iput-boolean p2, p0, Lcom/ushaqi/zhuishushenqi/ui/aj;->a:Z

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/aj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aj;->c:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aj;->c:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/aj;->a:Z

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/aj;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aj;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "\u7537\u751f - "

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aj;->c:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/aj;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->p(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    return-void

    .line 131
    :cond_0
    const-string v0, "\u5973\u751f - "

    goto :goto_0
.end method
