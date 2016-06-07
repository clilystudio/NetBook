.class final Lcom/ushaqi/zhuishushenqi/widget/o;
.super Lcom/ushaqi/zhuishushenqi/ui/post/f;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/o;->a:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    .line 398
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/post/f;-><init>(Landroid/app/Activity;)V

    .line 399
    return-void
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/model/CommentDetail;)V
    .locals 2

    .prologue
    .line 403
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;->getComment()Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/o;->a:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;->getComment()Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;Lcom/ushaqi/zhuishushenqi/model/PostComment;)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/o;->a:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u697c\u5c42\u4e0d\u5b58\u5728"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
