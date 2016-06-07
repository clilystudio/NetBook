.class final Lcom/ushaqi/zhuishushenqi/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/PostComment;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;Lcom/ushaqi/zhuishushenqi/model/PostComment;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/m;->b:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/m;->a:Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/m;->b:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/m;->a:Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->toRepliedInfo()Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/m;->b:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a(Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;I)V

    .line 289
    return-void
.end method
