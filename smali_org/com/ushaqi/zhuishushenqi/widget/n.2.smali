.class final Lcom/ushaqi/zhuishushenqi/widget/n;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ResultStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/n;->a:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;B)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/n;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 246
    check-cast p1, [Ljava/lang/String;

    .line 2259
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/n;->a:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    .line 246
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 246
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    .line 1264
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1265
    if-eqz p1, :cond_0

    .line 1266
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->isOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/n;->a:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    move-result-object v0

    const-string v1, "\u5df2\u540c\u611f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/e;->onPreExecute()V

    .line 251
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/n;->a:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/n;->a:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setLikedInView(Z)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/n;->a:Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->c(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)V

    .line 255
    return-void
.end method
