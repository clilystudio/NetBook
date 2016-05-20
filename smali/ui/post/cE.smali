.class final Lcom/ushaqi/zhuishushenqi/ui/post/cE;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ReviewResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;B)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/cE;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewResult;
    .locals 2

    .prologue
    .line 424
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->D(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/cE;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 419
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ReviewResult;

    .line 1433
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1435
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ReviewResult;->getReview()Lcom/ushaqi/zhuishushenqi/model/Review;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->f()V

    .line 1437
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ReviewResult;->getReview()Lcom/ushaqi/zhuishushenqi/model/Review;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Lcom/ushaqi/zhuishushenqi/model/Review;)Lcom/ushaqi/zhuishushenqi/model/Review;

    .line 1438
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Lcom/ushaqi/zhuishushenqi/model/Review;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Lcom/ushaqi/zhuishushenqi/model/Review;)V

    .line 1440
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V

    :goto_0
    return-void

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h()V

    goto :goto_0
.end method
