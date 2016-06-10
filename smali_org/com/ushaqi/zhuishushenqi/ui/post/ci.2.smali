.class final Lcom/ushaqi/zhuishushenqi/ui/post/ci;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/FollowResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ci;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;B)V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/ci;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowResult;
    .locals 3

    .prologue
    .line 667
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 671
    :goto_0
    return-object v0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 671
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 662
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/ci;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 662
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/FollowResult;

    .line 1676
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/FollowResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1677
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/FollowResult;->isFollowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ci;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;I)I

    .line 1685
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ci;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->z(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    .line 662
    return-void

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ci;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;I)I

    goto :goto_0

    .line 1683
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ci;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;I)I

    goto :goto_0
.end method
