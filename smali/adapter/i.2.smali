.class final Lcom/ushaqi/zhuishushenqi/adapter/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/BookReview;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/h;Lcom/ushaqi/zhuishushenqi/model/BookReview;)V
    .locals 0

    .prologue
    .line 61
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/i;->a:Lcom/ushaqi/zhuishushenqi/model/BookReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/i;->a:Lcom/ushaqi/zhuishushenqi/model/BookReview;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/model/BookReview;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Author;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
