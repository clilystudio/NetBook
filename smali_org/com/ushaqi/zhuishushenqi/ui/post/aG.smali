.class final Lcom/ushaqi/zhuishushenqi/ui/post/aG;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/Review;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    .line 177
    const-string v0, "\u6b63\u5728\u83b7\u53d6\u5386\u53f2\u4e66\u8bc4..."

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private static a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Review;
    .locals 3

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->q(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewHistory;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/ushaqi/zhuishushenqi/model/ReviewHistory;->ok:Z

    if-eqz v1, :cond_0

    .line 185
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/ReviewHistory;->review:Lcom/ushaqi/zhuishushenqi/model/Review;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/aG;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Review;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 174
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Review;

    .line 1195
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aG;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1198
    if-eqz p1, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;Lcom/ushaqi/zhuishushenqi/model/Review;)V

    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "saveToLocalReviewTitle"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "saveToLocalReviewDesc"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a([Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V

    goto :goto_0
.end method
