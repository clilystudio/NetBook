.class final Lcom/ushaqi/zhuishushenqi/adapter/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/TopicPost;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/j;Lcom/ushaqi/zhuishushenqi/model/TopicPost;)V
    .locals 0

    .prologue
    .line 59
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/k;->a:Lcom/ushaqi/zhuishushenqi/model/TopicPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/k;->a:Lcom/ushaqi/zhuishushenqi/model/TopicPost;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Author;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
