.class final Lcom/ushaqi/zhuishushenqi/ui/post/dC;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/PostPublish;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    .line 224
    const v0, 0x7f050169

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 225
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3

    .prologue
    .line 230
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/dC;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 221
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    .line 1240
    if-eqz p1, :cond_0

    .line 1242
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    const-string v1, "\u8f6c\u53d1\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V

    .line 1245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->save2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method
