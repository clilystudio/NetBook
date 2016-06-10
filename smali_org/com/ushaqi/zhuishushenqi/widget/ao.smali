.class final Lcom/ushaqi/zhuishushenqi/widget/ao;
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
    .line 83
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ao;->a:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ao;->a:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    .line 89
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/cb;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/widget/ap;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/ap;-><init>(Lcom/ushaqi/zhuishushenqi/widget/ao;Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/cb;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/ui/cd;)V

    .line 95
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/cb;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 97
    :cond_0
    return-void
.end method
