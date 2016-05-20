.class final Lcom/ushaqi/zhuishushenqi/widget/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/PostHeader;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/aq;->a:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aq;->a:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    instance-of v1, v0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    .line 108
    new-instance v1, Lcom/koushikdutta/async/http/a;

    invoke-direct {v1, v0, p1}, Lcom/koushikdutta/async/http/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 109
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/a;->b()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0d0003

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/a;->a()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    new-instance v2, Lcom/ushaqi/zhuishushenqi/widget/ar;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ar;-><init>(Lcom/ushaqi/zhuishushenqi/widget/aq;Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/a;->a(Landroid/support/v7/widget/m;)V

    .line 124
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/a;->c()V

    .line 126
    :cond_0
    return-void
.end method
