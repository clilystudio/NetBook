.class final Lcom/ushaqi/zhuishushenqi/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/model/PostComment;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;[Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/PostComment;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->c:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->b:Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v6, :cond_1

    if-nez p2, :cond_1

    .line 128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->c:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->n()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->b:Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getReplyTo()Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->get_id()Ljava/lang/String;

    move-result-object v1

    .line 130
    new-instance v2, Lcom/ushaqi/zhuishushenqi/widget/o;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->c:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->c:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/widget/o;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;Landroid/app/Activity;)V

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/o;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->c:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->k()V

    .line 136
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->a:[Ljava/lang/String;

    array-length v0, v0

    if-eq v0, v5, :cond_2

    if-ne p2, v5, :cond_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->c:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/l;->b:Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
