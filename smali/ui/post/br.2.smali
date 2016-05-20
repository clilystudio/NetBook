.class final Lcom/ushaqi/zhuishushenqi/ui/post/br;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/br;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;B)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/br;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;
    .locals 2

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->F(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/br;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 137
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;

    .line 1151
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1153
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;->getPost()Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/br;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->f()V

    .line 1155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/br;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;->getPost()Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;Lcom/ushaqi/zhuishushenqi/model/GirlTopic;)Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    .line 1156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/br;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/br;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;Lcom/ushaqi/zhuishushenqi/model/GirlTopic;)V

    .line 1158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/br;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/br;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getVotes()[Lcom/ushaqi/zhuishushenqi/model/Vote;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;[Lcom/ushaqi/zhuishushenqi/model/Vote;)V

    .line 1160
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/br;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getCommentCount()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/br;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)V

    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/br;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->h()V

    goto :goto_0
.end method
