.class final Lcom/ushaqi/zhuishushenqi/widget/ab;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ab;->a:Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;B)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/ab;-><init>(Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;
    .locals 2

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->T(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/widget/ab;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 32
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;

    .line 1046
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1047
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;->getComments()[Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;->getComments()[Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ab;->a:Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;

    const v1, 0x7f0c028d

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ab;->a:Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;

    const v1, 0x7f0c028e

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ab;->a:Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1053
    const/4 v0, 0x2

    .line 1054
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;->getComments()[Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v5

    move v1, v2

    move v3, v0

    .line 1055
    :goto_0
    array-length v0, v5

    if-ge v1, v0, :cond_0

    .line 1056
    aget-object v6, v5, v1

    .line 1057
    const v0, 0x7f030110

    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/widget/ab;->a:Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;

    invoke-virtual {v4, v0, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1058
    const v0, 0x7f0c037e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    .line 1059
    const/4 v8, -0x1

    invoke-virtual {v0, v6, v8}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b(Lcom/ushaqi/zhuishushenqi/model/PostComment;I)V

    .line 1060
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ab;->a:Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;

    invoke-virtual {v0, v7, v3}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->addView(Landroid/view/View;I)V

    .line 1062
    add-int/lit8 v3, v3, 0x1

    .line 1055
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
