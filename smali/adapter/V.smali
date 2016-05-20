.class final Lcom/ushaqi/zhuishushenqi/adapter/V;
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
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/adapter/G;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/G;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/V;->b:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/G;B)V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/V;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 772
    check-cast p1, [Ljava/lang/String;

    .line 2777
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/V;->a:Ljava/lang/String;

    .line 2778
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/V;->c()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    .line 772
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 772
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    .line 1783
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1784
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 1785
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->isOk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1786
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/event/q;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/event/q;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1787
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/V;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->cancelFollow(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1788
    :cond_1
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/V;->b:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/V;->b:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0501b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
